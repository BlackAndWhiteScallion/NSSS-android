'use strict';
game.import('mode',function(lib,game,ui,get,ai,_status){
	return {
		name:'boss',
		start:function(){
			"step 0"
			var playback=localStorage.getItem(lib.configprefix+'playback');
			if(playback){
				ui.create.me();
				ui.arena.style.display='none';
				ui.system.style.display='none';
				_status.playback=playback;
				localStorage.removeItem(lib.configprefix+'playback');
				var store=lib.db.transaction(['video'],'readwrite').objectStore('video');
				store.get(parseInt(playback)).onsuccess=function(e){
					if(e.target.result){
						game.playVideoContent(e.target.result.video);
					}
					else{
						alert('播放失败：找不到录像');
						game.reload();
					}
				}
				event.finish();
				return;
			}
			for(var i in lib.characterPack.mode_boss){
				lib.character[i]=lib.characterPack.mode_boss[i];
				if(!lib.character[i][4]){
					lib.character[i][4]=[];
				}
			}
			for(var i in lib.cardPack.mode_boss){
				lib.card[i]=lib.cardPack.mode_boss[i];
			}
			for(var i in lib.skill){
				if(lib.skill[i].changeSeat){
					lib.skill[i]={};
					if(lib.translate[i+'_info']){
						lib.translate[i+'_info']='此模式下不可用';
					}
				}
			}
			if (_status.connectMode){
				event.current = {};
				event.current.name = lib.configOL.boss;
				event.goto(2);
			}
			lib.setPopped(ui.rules,function(){
				var uiintro=ui.create.dialog('hidden');
					uiintro.add('<div class="text left">选3个角色，挑战大魔王！<br>也可以作为大魔王揍3个角色。<br>最右边两个是另类挑战，建议尝试。</div>');
					uiintro.add('<div class="text left"><a href = "https://mp.weixin.qq.com/s/eEbCgLswPGXEhzl702FZzQ" target="_blank">了解更多的魔王</a></div>');
					uiintro.add(ui.create.div('.placeholder.slim'))
				return uiintro;
			},400);
			lib.translate.restart='返回';
			lib.init.css(lib.assetURL+'layout/mode','boss');
			game.delay(0.1);
			"step 1"
			var bosslist=ui.create.div('#bosslist.hidden');
			event.bosslist=bosslist;
			bosslist.ontouchmove = ui.click.touchScroll;
			bosslist.style.WebkitOverflowScrolling='touch';
			if(!lib.config.touchscreen&&lib.config.mousewheel){
				bosslist._scrollspeed=30;
				bosslist._scrollnum=10;
				bosslist.onmousewheel=ui.click.mousewheel;
			}
			var onpause=function(){
				ui.window.classList.add('bosspaused');
			}
			var onresume=function(){
				ui.window.classList.remove('bosspaused');
			}
			game.onpause=onpause;
			game.onpause2=onpause;
			game.onresume=onresume;
			game.onresume2=onresume;
			ui.create.div(bosslist);

			event.current=null;
			var list=[];
			for(var i in lib.character){
				var info=lib.character[i];
				if(info[4].contains('boss')){
					var player=ui.create.player(bosslist).init(i);
					if(lib.characterPack.mode_boss[i]&&get.config(i+'_boss_config')==false){
						player.style.display='none';
					}
					if(player.hp==0){
						player.node.hp.style.display='none';
					}
					player.node.lili.style.display='none';
					list.push(player);
					player.node.hp.classList.add('text');
					player.node.hp.dataset.condition='';
					player.node.hp.innerHTML=info[2];
					if(info[2]==Infinity){
						player.node.hp.innerHTML='∞';
					}
					player.setIdentity(player.name);
					player.node.identity.dataset.color=info[5];
					// bosslistlinks[cfg]=player;
					player.classList.add('bossplayer');

					if(lib.storage.current==i){
						event.current=player;
						player.classList.add('highlight');
					}

					// if(!get.config(cfg)){
					// 	player.style.display='none';
					// }
				}
			}
			lib.character['aya'][3] = ['longjuan', 'fengmi'];
			if(!list.length){
				alert('没有可挑战的BOSS');
				event.finish();
				lib.init.onfree();
				_status.over=true;
				return;
			}
			if(!event.current){
				event.current=bosslist.childNodes[1];
				event.current.classList.add('highlight');
			}
			ui.create.div(bosslist);
			ui.control.style.transitionProperty='opacity';
			ui.control.classList.add('bosslist');
			setTimeout(function(){
				ui.control.style.transitionProperty='';
			},1000);

			ui.window.appendChild(bosslist);

			setTimeout(function(){
				if(event.current){
					var left=event.current.offsetLeft-(ui.window.offsetWidth-180)/2;
					if(bosslist.scrollLeft<left){
						bosslist.scrollLeft=left;
					}
				}
				bosslist.show();
			},200);
			game.me=ui.create.player();
			if(lib.config.continue_name_boss){
				event.noslide=true;
				lib.init.onfree();
			}
			else{
				game.chooseCharacter(function(target){
					if(event.current){
						event.current.classList.remove('highlight');
					}
					event.current=target;
					game.save('current',target.name);
					target.classList.add('highlight');
				});
			}
			if(lib.config.test_game){
				event.current.classList.remove('highlight');
				if(event.current.nextSibling&&event.current.nextSibling.classList.contains('player')){
					event.current=event.current.nextSibling;
				}
				else{
					event.current=event.current.parentNode.childNodes[1];
				}
				game.save('current',event.current.name);
			}
			"step 2"
			// 换掉牌堆里的冰域和令避
			lib.card.list = lib.card.list.concat([[null,0,'boss_sansi'],[null,0,'boss_sansi'],[null,0,'boss_gushou'],[null,0,'boss_gushou'],[null,0,'boss_poxian'],[null,0,'boss_poxian']]);
			ui.create.cardsAsync();
			game.finishCards();
			game.addGlobalSkill('autoswap');
			ui.arena.setNumber(8);
			var list=['bingyu', 'lingbi', 'caifang', 'reidaisai'];
			var map={
				bingyu:'shenlin',
				lingbi:'dianche',
				caifang:'tancheng',
				reidaisai:'reidaisai2',
			};
			for(var i=0;i<list.length;i++){
				if (!lib.card[list[i]].forbid) lib.card[list[i]].forbid = ['boss'];
				else lib.card[list[i]].forbid.push('boss');
				game.removeCard(list[i], map[list[i]]);
			}

			lib.skill['saiqian_skill3'].viewAs = {name:'reidaisai2'};
			game.bossinfo=lib.boss.global;
			for(var i in lib.boss[event.current.name]){
				game.bossinfo[i]=lib.boss[event.current.name][i];
			}
			delete lib.boss;
			setTimeout(function(){
				ui.control.classList.remove('bosslist');
			},500);
			var boss=ui.create.player();
			boss.getId();
			game.boss=boss;
			boss.init(event.current.name);
			boss.side=true;
			if (status.connectMode){
				event.current = boss;
				ui.window.appendChild(boss);
				ui.arena.appendChild(boss);
			}
			else if(!event.noslide){
				var rect=event.current.getBoundingClientRect();
				boss.animate('bossing');
				boss.node.hp.animate('start');
				boss.bossinginfo=[rect.left+rect.width/2,rect.top+rect.height/2];
				boss.style.transition='all 0s';
				boss.node.equips.style.opacity='0';
			}
			else{
				boss.animate('start');
			}
			boss.setIdentity('zhu');
			boss.identity='zhu';
			if(lib.config.continue_name_boss){
				result=lib.config.continue_name_boss;
				game.saveConfig('continue_name_boss');
			}
			//result.links = ['reimu', 'reimu', 'reimu'];
			for(var i=0;i<result.links.length;i++){
				var player=ui.create.player();
				player.getId();
				player.init(result.links[i]).animate('start');
				player.setIdentity('cai');
				player.identity='cai';
				player.side=false;
				game.players.push(player);
				if(result.boss){
					player.dataset.position=(i+1)*2;
				}
				else{
					player.dataset.position=i+1;
				}
				ui.arena.appendChild(player);
			}
			if(result.boss){
				game.players.unshift(boss);
				boss.dataset.position=0;
			}
			else{
				game.players.push(boss);
				boss.dataset.position=7;
			}
			ui.create.me();
			ui.fakeme=ui.create.div('.fakeme.avatar',ui.me);
			if(game.me!==boss){
				game.singleHandcard=true;
				ui.arena.classList.add('single-handcard');
				ui.window.classList.add('single-handcard');
				game.onSwapControl();

				if(lib.config.show_handcardbutton){
					lib.setPopped(ui.create.system('手牌',null,true),function(){
						var uiintro=ui.create.dialog('hidden');

						var players=game.players.concat(game.dead);
						for(var i=0;i<players.length;i++){
							if(players[i].side==game.me.side&&players[i]!=game.me){
								uiintro.add(get.translation(players[i]));
								var cards=players[i].getCards('h');
								if(cards.length){
									uiintro.addSmall(cards,true);
								}
								else{
									uiintro.add('（无）');
								}
							}
						}

						return uiintro;
					},220);
				}
			}
			else{
				ui.fakeme.style.display='none';
			}
			if(game.bossinfo.chongzheng){
				lib.setPopped(ui.create.system('重整',null,true),function(){
					var uiintro=ui.create.dialog('hidden');

					uiintro.add('重整');
					uiintro.add('');
					var table=ui.create.div('.bosschongzheng');

					var tr,td,added=false;
					for(var i=0;i<game.dead.length;i++){
						if(typeof game.dead[i].storage.boss_chongzheng!=='number') continue;
						added=true;
						tr=ui.create.div(table);
						td=ui.create.div(tr);
						td.innerHTML=get.translation(game.dead[i]);
						td=ui.create.div(tr);
						if(game.dead[i].maxHp>0){
							td.innerHTML='剩余'+(game.dead[i].storage.boss_chongzheng)+'回合';
						}
						else{
							td.innerHTML='无法重整'
						}
					}

					if(!added){
						uiintro.add('<div class="text center">（无重整角色）</div>');
						uiintro.add(ui.create.div('.placeholder.slim'))
					}
					else{
						uiintro.add(table);
					}

					return uiintro;
				},180);
			}
			ui.single_swap=ui.create.system('换人',function(){
				var players=get.players(game.me);
				players.remove(game.boss);
				if(players.length>1){
					if(ui.auto.classList.contains('hidden')){
						game.me.popup('请稍后换人');
						return;
					}
					if(_status.event.isMine()){
						ui.click.auto();
						setTimeout(function(){
							ui.click.auto();
						},500);
					}
					game.modeSwapPlayer(players[1]);
				}
			},true);
			if(!get.config('single_control')||game.me==game.boss){
				ui.single_swap.style.display='none';
			}

			ui.arena.appendChild(boss);
			if(boss.bossinginfo){
				var rect=boss.getBoundingClientRect();
				boss.style.transform='translate('+(boss.bossinginfo[0]-rect.left-rect.width/2)+'px,'+(boss.bossinginfo[1]-rect.top-rect.height/2)+'px) scale(1.1)';
				ui.refresh(boss);
				boss.style.transition='';
				boss.style.transform='';
				delete boss.bossinginfo;
				setTimeout(function(){
					boss.node.equips.style.opacity='';
				},500);
			}

			lib.setPopped(ui.rules,function(){
				var uiintro=ui.create.dialog('hidden');
					uiintro.add('<div class="text left"></div>');
				if (game.bossinfo.loopType == 2){
					uiintro.add('<div class="text left">回合顺序：魔王→勇者→魔王</div>');
					if (get.config('free_turn')){
						uiintro.add('<div class="text left">进行回合的勇者由你选择</div>');
					}
				} else {
					uiintro.add('<div class="text left">回合顺序：魔王→勇者→勇者→勇者→魔王</div>');
				}
				if (game.bossinfo.chongzheng !== false){
					uiintro.add('<div class="text left">勇者坠机后进入重整状态<br>重整需要'+game.bossinfo.chongzheng+'个回合');
				} else {
					uiintro.add('<div class="text left">这个魔王不可以重整！');
				}
				uiintro.add(ui.create.div('.placeholder.slim'))
				return uiintro;
			},400);
			event.bosslist.delete();

			game.arrangePlayers();
			for(var i=0;i<game.players.length;i++){
				game.players[i].node.action.innerHTML='玩家';
			}

			var players=get.players(lib.sort.position);
			var info=[];
			for(var i=0;i<players.length;i++){
				info.push({
					name:players[i].name,
					identity:players[i].identity,
					position:players[i].dataset.position
				});
			}
			_status.videoInited=true,
			info.boss=(game.me==game.boss);
			game.addVideo('init',null,info);
			if(game.bossinfo.init){
				game.bossinfo.init();
			}
			"step 3"
			if(get.config('single_control')){
				for(var i=0;i<game.players.length;i++){
					if(game.players[i].side==game.me.side){
						game.addRecentCharacter(game.players[i].name);
					}
				}
			}
			else{
				game.addRecentCharacter(game.me.name);
			}
			event.trigger('gameStart');
			_status.roundStart=game.boss;
			game.gameDraw(game.boss,game.bossinfo.gameDraw||4);
			game.bossPhaseLoop();
			setTimeout(function(){
				ui.updatehl();
			},200);
		},
		element:{
			player:{
				dieAfter:function(){
					if(this!=game.boss){
						this.storage.boss_chongzheng=0;
						if(!this.node.dieidentity && game.bossinfo.chongzheng){
							this.storage.boss_chongzheng = game.bossinfo.chongzheng;
							var node=ui.create.div('.damage.dieidentity',this.storage.boss_chongzheng.toString(),this);
							ui.refresh(node);
							node.style.opacity=1;
							this.node.dieidentity=node;
							var trans=this.style.transform;
							if(trans){
								if(trans.indexOf('rotateY')!=-1){
									this.node.dieidentity.style.transform='rotateY(180deg)';
								}
								else if(trans.indexOf('rotateX')!=-1){
									this.node.dieidentity.style.transform='rotateX(180deg)';
								}
								else{
									this.node.dieidentity.style.transform='';
								}
							}
							else{
								this.node.dieidentity.style.transform='';
							}
						}
					}
					if(game.bossinfo.checkResult&&game.bossinfo.checkResult(this)===false){
						return;
					}
					if(this==game.boss||!game.hasPlayer(function(current){
						return !current.side;
					})){
						game.checkResult();
					}
				},
			}
		},
		card:{
			dianche:{
				audio:true,
				fullskin:true,
				type:'jinji',
				enable:true,
				modeimage:'boss',
				selectTarget:1,
				filterTarget:function(card,player,target){
					return player != target;
				},	
				contentBefore:function(){
					player.$skill('废线电车',null,null,true);
				},
				content:function(){
					'step 0'
					target.chooseControl(['弃置三张牌','你与'+get.translation(player)+'以外角色各弃置两张牌'],function(event,player){
							if (target.identity == 'zhu') return '你与'+get.translation(player)+'以外角色各弃置两张牌';
							else{
								if (player.countCards('hej') < 3) return '弃置三张牌';
								else return '你与'+get.translation(player)+'以外角色各弃置两张牌';
							}
							return '弃置三张牌';
						});
					'step 1'
					if(result.control){
						if(result.control=='弃置三张牌'){
							target.chooseToDiscard(3, true);
						} else {
							var players = game.filterPlayer();
							for (var i = 0; i < players.length; i ++){
								if (players[i] == player || players[i] == target) continue;
								players[i].chooseToDiscard(2, true);
							}
						}
					}
				},
				ai:{
					basic:{
						order:5,
						useful:5,
						value:5,
					},
					result:{
						target:function(player,target){
							if (game.countPlayer(function(current){
								if (get.attitude(target, current) >= 0 && target != current) return 1;
								return 0;
							})) return -3;
							return 2;
						},
					},
					tag:{
						loseCard:1.5,
					}
				}
			},
			shenlin:{
				audio:true,
				fullskin:true,
				type:'jinji',
				enable:true,
				modeimage:'boss',
				selectTarget:1,
				filterTarget:function(card,player,target){
					return game.dead.contains(target);
				},	
				contentBefore:function(){
					player.$skill('神灵复苏',null,null,true);
					targets[0].lili = 1;
					targets[0].revive(1);
					if (targets[0].node.dieidentity){
						targets[0].node.dieidentity.hide();
						delete targets[0].node.dieidentity;
					}
				},
				content:function(){
					'step 0'
					targets[0].discard(targets[0].getCards('h'));
					targets[0].draw();
				},
				ai:{
					die:true,
					basic:{
						order:5,
						useful:5,
						value:5,
					},
					result:{
						target:function(player,target){
							if (player == game.boss) return 1000;
							if (game.countPlayer(function(current){
								if (get.attitude(target, current) >= 0 && target != current) return 1;
								return 0;
							})) return -3;
							return 2;
						},
					},
					tag:{
						loseCard:1.5,
					}
				}
			},
			tancheng:{
				audio:true,
				fullskin:true,
				type:'trick',
				subtype:'disrupt',
				enable:true,
				modeimage:'boss',
				selectTarget:-1,
				filterTarget:function(card,player,target){
					return target != player;
				},
				content:function(){
					'step 0'
					target.showCards(target.get('h'));
					'step 1'
					player.chooseCard('你可以用一张牌交换'+get.translation(target)+'一张不同类型的牌', 1, 'hej', function(card){
						return target.countCards('h') > target.countCards('h', {type: get.type(card)})
					}).ai=function(card){
						return 7-get.value(card);
					};
					"step 2"
					if(result.bool){
						event.card = result.cards[0];
						target.gain(result.cards);
					}
					else{
						event.finish();
					}
					"step 3"
					player.chooseCardButton(target.get('h'),'获得一张牌',1,true).set('filterButton',function(button){
						return get.type(button.link) != get.type(event.card);
					}).ai=function(button){
						return get.value(button.link) > 7;
					}
					if(player==game.me&&!event.isMine()){
						game.delay(0.5);
					}
					"step 4"
					player.gain(result.links);
				},
				ai:{
					wuxie:function(target,card,player,viewer){
						if (game.countPlayer(function(current){
							return ai.get.attitude(viewer,current)<=0;
						}) == 1){
							return 0;
						};
						if (ai.get.attitude(viewer,target)<=0 && target.countCards('e',function(card){
							return get.bonus(card) > 0;	
						})){
							if(Math.random()<0.5) return 0;
							return 1;
						}
						return 0; 
					},
					basic:{
						order:5,
						useful:1,
						value:1,
					},
					result:{
						target:function(player,target){
							return -0.5;
						},
						player:function(player, target){
							return 1;
						},
					},
					tag:{
						multitarget:1
					}
				}
			},
			reidaisai2:{
				audio:true,
				fullskin:true,
				type:'trick',
				subtype:'support',
				enable:true,
				modeimage:'boss',
				selectTarget:[1, Infinity],
				filterTarget:function(card,player,target){
					return target.identity != player.identity;
				},
				contentBefore:function(){
					if (player.name == 'sanae'){
						player.say('守矢神社例大祭开始啦！我们可比那个穷酸的神社好玩多了！');
					}
				},
				content:function(){
					'step 0'
					target.draw();
				},
				contentAfter:function(){
					'step 0'
					player.draw(targets.length + 1);
					'step 1'
					player.chooseCardTarget({
						selectCard:[1,Infinity],
						position:'hej',
						filterTarget:function(card,player,target){
							return player != target;
						},
						ai1:function(card){
							/*
							var player=_status.event.player;
							var check=_status.event.check;
							if(check<1) return 0;
							if(player.hp>1&&check<2) return 0;
							*/
							if (player.countCards('e',function(card){
								return get.bonus(card) > 0;	
							})){
								return get.bonus(card) > 0;
							}
							return get.unuseful(card)+9;
						},
						ai2:function(target){
							return ai.get.attitude(_status.event.player,target);
						},
						prompt:'你可以分出去任意张牌（点取消停止给牌）'
					});
					'step 2'
					if(result.targets&&result.targets[0]){
						result.targets[0].gain(result.cards);
						player.$give(result.cards.length,result.targets[0]);
						event.goto(1);
					}
				},
				ai:{
					wuxie:function(target,card,player,viewer){
						if (game.countPlayer(function(current){
							return ai.get.attitude(viewer,current)<=0;
						}) == 1){
							return 0;
						};
						if (ai.get.attitude(viewer,target)<=0 && target.countCards('e',function(card){
							return get.bonus(card) > 0;	
						})){
							if(Math.random()<0.5) return 0;
							return 1;
						}
						return 0; 
					},
					basic:{
						order:5,
						useful:1,
						value:1,
					},
					result:{
						target:function(player,target){
							return 1;
						},
						player:function(player,target){
							return 2;
						},
					},
					tag:{
						multitarget:1
					}
				}
			},
			boss_sansi:{
				audio:true,
				fullskin:true,
				type:'delay',
				modeimage:'boss',
				filterTarget:function(card,player,target){
					return true;
				},
				judge:function(card){
					return 0;
				},
				effect:function(){
				},
				ai:{
					basic:{
						useful:5,
						value:5,
					},
					result:{target:1},
				},
				skills:['boss_sansi_skill']
			},
			boss_gushou:{
				audio:true,
				fullskin:true,
				type:'delay',
				modeimage:'boss',
				filterTarget:function(card,player,target){
					return true;
				},
				judge:function(card){
					return 0;
				},
				effect:function(){
				},
				ai:{
					basic:{
						useful:5,
						value:5,
					},
					result:{target:1},
				},
				skills:['boss_gushou_skill']
			},
			boss_poxian:{
				audio:true,
				fullskin:true,
				type:'delay',
				modeimage:'boss',
				filterTarget:function(card,player,target){
					return true;
				},
				judge:function(card){
					return 0;
				},
				effect:function(){
				},
				ai:{
					basic:{
						useful:5,
						value:5,
					},
					result:{target:1},
				},
				skills:['boss_poxian_skill']
			},
		},
		characterPack:{
			mode_boss:{
				boss_cirno:['female', '0', 9, ['jidong', 'bianshen_cirno'], ['boss'], 'wei','9'],
				boss_cirno2:['female', '0', 4, ['jiqiang','zuanshi','jubing'], ['hiddenboss'], 'wei', '9'],
				boss_reimu:['female','0',8,['lingji','bianshen_reimu'],['boss'], 'shu'],
				boss_reimu2:['female','0',4,['lingji','mengxiangtiansheng'],['hiddenboss'], 'shu'],
				boss_mokou:['female','5',4,['huoniao1', 'bianshen_mokou'],['boss'], 'shu'],
				boss_mokou2:['female','0',8,['huoniao2', 'businiao_boss'],['hiddenboss'], 'shu'],
				boss_zhaoyun:['male','0',1,['boss_juejing','longhun'],['shu','boss','bossallowed'],'shen'],
				//boss_test:['male','2',8,[],['shu','boss','bossallowed'],'shen'],
				boss_nianshou:['male','0',10000,['boss_nianrui','boss_qixiang','skipfirst','boss_damagecount'],['boss'],'shu','10000'],
				//boss_saitama:['male','0',Infinity,['punch','serious','skipfirst','boss_turncount'],['boss'],'shen','1'],
				boss_saitama:['male','0',Infinity,['punch','skipfirst','boss_turncount'],['boss'],'shen'],
				boss_fapaiji:['female', '5', 3, ['huanri', 'toutian', 'boss_turncount'], ['boss'], 'shen'],
				yuri:['female', '3', 3, ['chongzou', 'moxin1'], []],
				priestress:['female', '3', 3, ['xiaoyu', 'jinhua', 'shengbi'], [], '', '3'],
				tamamo:['female', '2', 3, ['liyu', 'zhoufa', 'shuitian'], []],
			},
		},
		characterIntro:{
			boss_reimu:'啊，真是一个好天气啊……如果今天能有赛钱的话就更好了……咦，我赛钱箱呢？<br>画师：萩原',
			boss_reimu2:'不要在灵梦面前提钱，不要动灵梦的赛钱箱，不要对博丽神社做任何事情。<br>——来自造成了目前整个事态的某个魔法师的灵梦三戒律<br>画师：Ran',
			boss_cirno:'要我说几遍啊，我不是什么⑨！我是幻想乡最强的！<br>画师：原悠衣',
			boss_cirno2:'虽然成功的获得了超越常人的力量，但是这力量对于超越常人的家伙们来说……还是⑨级别的。<br>画师：しがらき',
			boss_mokou:'',
			boss_mokou2:'',
			boss_nianshou:'比起加一堆没人想要的大杂烩设定，把本来欢乐的活动变成一个累死人的掀桌活动，还是回到最开始的简单欢乐日子好。',
			boss_zhaoyun:'幻想乡是一切皆有可能的地方。<br>即使是那个只存在于传说中的男人……！',
			boss_saitama:'买菜时因走错路偶然路过幻想乡的光头<br>………等等，什么？<br>画师：',
			boss_fapaiji:'本次四轰鬼抽由Love Live!赞助提供。<br>谢谢来自μ\'s的东条希的友情出演！<br>………等等，什么？<br>画师：醐味屑',
			yuri:'全名仲村由理，死后世界的学校中，死后世界战线的领导者，旨在与神，与神的天使对抗。<br>出自：angel beats! 画师：戦-G',
		},
		cardPack:{
			mode_boss:['dianche', 'shenlin', 'reidaisai2', 'tancheng', 'boss_poxian', 'boss_gushou', 'boss_sansi'],
		},
		init:function(){
			/*
			for(var i in lib.characterPack.mode_boss){
				if(lib.characterPack.mode_boss[i][4].contains('hiddenboss')) continue;
				lib.mode.boss.config[i+'_boss_config']={
					name:get.translation(i),
					init:true,
					unfrequent:true,
				}
			}
			*/
		},
		game:{
			reserveDead:true,
			addBossFellow:function(position,name){
				var fellow=game.addFellow(position,name,'zoominanim');
				fellow.directgain(get.cards(4));
				fellow.side=true;
				fellow.identity='zhong';
				fellow.setIdentity('zhong');
				game.addVideo('setIdentity',fellow,'zhong');
			},
			addRecord:function(bool){
				if(typeof bool=='boolean'){
					if (!lib.config.gameRecord.boss) lib.config.gameRecord["boss"] = {data:{}};
					var data=lib.config.gameRecord.boss.data;
					var identity=game.me.identity;
					var name = game.boss.name;
					var boss = game.boss;
					if(!data[name]){
						if (boss.hasSkill('boss_damagecount') || boss.hasSkill('boss_turncount')){
							data[name] = [0];
						} else {
							data[name]=[0,0,0,0];
						}
					}
					if (boss.hasSkill('boss_damagecount') && _status.damageCount > data[name][0]){
						data[name][0] = _status.damageCount;
					} else if (boss.hasSkill('boss_turncount') && game.roundNumber > data[name][0]) {
						data[name][0] = game.roundNumber;
					} else {
						if(bool){
							if (identity == 'cai'){
								data[name][2]++;
							} else {
								data[name][0]++;
							}
						}
						else{
							if (identity == 'cai'){
								data[name][3]++;
							} else {
								data[name][1]++;
							}
						}
					}
					var list = [];
					for(var i in lib.character){
						var info=lib.character[i];
						if(info[4].contains('boss') || info[4].contains('hiddenboss')){ 
							list.push(i);
						}
					}
					var str='';
					for(var i=0;i<list.length;i++){
						if(data[list[i]]){
							if (lib.character[list[i]][3].contains('boss_damagecount')){
								str+= lib.translate[list[i]] + ': <br> 最高伤害：'+ data[list[i]][0] + '<br>';
							} else if (lib.character[list[i]][3].contains('boss_turncount')){
								str+= lib.translate[list[i]] + ': <br> 最大轮次数：'+ data[list[i]][0] + '<br>';
							} else {
								str+=lib.translate[list[i]] + ': <br> 魔王：'+data[list[i]][0]+'胜 '+data[list[i]][1]+'负<br> 勇者：'+data[list[i]][2]+'胜  '+data[list[i]][3]+'负 <br>';
							}
						}
					}
					lib.config.gameRecord.boss.str=str;
					game.saveConfig('gameRecord',lib.config.gameRecord);
				}
			},
			changeBoss:function(name,player){
				if(!player){
					if(game.additionaldead){
						game.additionaldead.push(game.boss);
					}
					else{
						game.additionaldead=[game.boss];
					}
					player=game.boss;
					delete game.boss;
				}

				player.delete();
				game.players.remove(player);
				game.dead.remove(player);
				var boss=ui.create.player();
				boss.getId();
				boss.init(name);
				boss.side=true;
				game.addVideo('bossSwap',player,(game.boss?'_':'')+boss.name);
				boss.dataset.position=player.dataset.position;
				if(game.me==player){
					game.swapControl(boss);
				}
				game.players.push(boss.animate('zoominanim'));
				game.arrangePlayers();
				if(!game.boss){
					game.boss=boss;
					boss.setIdentity('zhu');
					boss.identity='zhu';
				}
				else{
					boss.setIdentity('zhong');
					boss.identity='zhong';
				}
				ui.arena.appendChild(boss);
				boss.directgain(get.cards(4));
			},
			checkResult:function(){
				if(game.boss==game.me){
					game.over(game.boss.isAlive());
				}
				else{
					game.over(!game.boss.isAlive());
				}
			},
			getVideoName:function(){
				var str=get.translation(game.me.name);
				if(game.me.name2){
					str+='/'+get.translation(game.me.name2);
				}
				var str2='挑战';
				if(game.me!=game.boss){
					str2+=' - '+get.translation(game.boss);
				}
				var name=[str,str2];
				return name;
			},
			// 这里是回合顺序的地方
			bossPhaseLoop:function(){
				// 创建回合顺序，默认player为boss
				// player指的就是当前回合角色了。
				var next=game.createEvent('phaseLoop');
				next.player=game.boss;
				_status.looped=true;
				next.setContent(function(){
					"step 0"
					if (result.bool) result.bool = false;
					// 如果player重整，退出重整
					// 这个重整的只有下面用，简单来说，轮到boss的回合了，boss头上的chongzheng是false
					// 1->1的情况下，一名角色重整流程后，会把boss头上的chongzheng变成true
					// 换句话来说，使用这个chongzheng可以检测本轮是否重整过了。
					if(player.chongzheng){
						player.chongzheng=false;
					}
					// 如果玩家不是重整（而是死亡）
					// player.storage.boss_chongzheng就是重整回合的计数了
					else if(game.dead.length && player == game.boss){
						// 计数+1，血量补到0，如果血上限大于0，且这个BOSS让重整的话，开始重整
						var players = game.dead;
						for (var i = 0; i < players.length; i ++){
							if(players[i].hp<0) players[i].hp=0;
							if(players[i].maxHp>0&&game.bossinfo.chongzheng){
								// 重整顺序：回血，摸牌
								players[i].storage.boss_chongzheng--;
								game.log(players[i],'还有'+players[i].storage.boss_chongzheng+'回合回归');
								players[i].node.dieidentity.innerHTML=players[i].storage.boss_chongzheng.toString();
								if(players[i].hp<players[i].maxHp){
									players[i].hp++;
								}
								else{
									var card=get.cards()[0];
									var sort=lib.config.sort_card(card);
									var position=sort>0?players[i].node.handcards1:players[i].node.handcards2;
									card.fix();
									card.animate('start');
									position.insertBefore(card,position.firstChild);
								}
								players[i].node.hp.show();
								players[i].node.count.show();
								players[i].update();
								if(players[i].storage.boss_chongzheng<=0){
									players[i].node.dieidentity.hide();
									delete players[i].node.dieidentity;
									delete players[i].storage.boss_chongzheng;
									players[i].revive(players[i].hp);
								}
							}
						}
					}
					else{
						// 如果player是主（boss）并且boss不是player，把player改成boss
						// 不太懂怎么用，什么情况会触发这个条件？
						if(player.identity=='zhu'&&game.boss!=player){
							player=game.boss;
						}
						// 不在重整状态的玩家进行一个回合
						// 在这里加入让玩家选顺序应该就可以
						if (game.bossinfo.loopType == 2){
							for (var i = 0; i < game.players.length; i ++){
								if (game.players[i].identity == 'cai'){
									if (game.players[i].isTurnedOver()){
										if (game.players[i].storage.spell){
											var info = lib.skill[game.players[i].storage.spell];
											if (info.spell){
												if (!info.infinite) game.players[i].turnOver();
											}
										}
									}
								}
							}
							if (get.config('free_turn') && player != game.boss && game.me != game.boss && player.isAlive()){
								game.me.chooseTarget('选择下一名进行回合的我方角色',function(card,player,target){
								return target.identity == 'cai';
								}).set('ai',function(target){
										return get.attitude(game.me,target);
								});
							}
						}
					}
					"step 1"
					//console.log(player);
					if (result.bool){
						//console.log(result.targets[0]);
						result.targets[0].phase();
					} else {
						player.phase();
					}
					"step 2"
					// step 1就已经是回合结束后了，进入下一个回合了。
					// 如果当前为1→1
					if(game.bossinfo.loopType==2){
						// 轮次开始（？）
						_status.roundStart=true;
						// 如果当前回合角色是boss
						if(event.player==game.boss){
							if(!_status.last||_status.last.nextSeat==game.boss){
								event.player=game.boss.nextSeat;
							}
							else{
								event.player=_status.last.nextSeat;
							}
						}
						else{
							// 如果当前玩家已死亡（BOSS死亡会自动游戏结束，所以只检测盟军方），改为进入下一个盟军的回合。
							if (player.isDead()){
								event.player = player.nextSeat;
								if (player.nextSeat == game.boss){
									event.player = game.boss.nextSeat;
									delete _status.roundStart;
								}
							} else {
								_status.last=player;
								event.player=game.boss;
								if(player.nextSeat==game.boss){
									delete _status.roundStart;
								}
							}
						}
					}
					// 如果是3->1就进入下一个座位的角色的回合
					else{
						event.player=event.player.nextSeat;
					}
					// 进入下一个回合
					event.goto(0);
				});
			},
			onSwapControl:function(){
				//if(game.me==game.boss) return;
				game.addVideo('onSwapControl');
				var name=game.me.name;
				if(ui.fakeme&&ui.fakeme.current!=name){
					ui.fakeme.current=name;
					if(ui.versushighlight&&ui.versushighlight!=game.me){
						ui.versushighlight.classList.remove('current_action');
					}
					ui.versushighlight=game.me;
					game.me.classList.add('current_action');
					// game.me.line(ui.fakeme,{opacity:0.5,dashed:true});

					ui.fakeme.style.backgroundImage=game.me.node.avatar.style.backgroundImage;
					// ui.fakeme.style.backgroundSize='cover';
				}
				ui.updatehl();
			},
			modeSwapPlayer:function(player){
				var bool=(game.me==game.boss||player==game.boss);
				game.swapControl(player);
				game.onSwapControl();
				if(!bool) return;
				if(game.me==game.boss){
					game.singleHandcard=false;
					ui.arena.classList.remove('single-handcard');
					ui.window.classList.remove('single-handcard');
					ui.fakeme.style.display='none';
					game.me.dataset.position=0;
					game.me.nextSeat.dataset.position=2;
					game.me.nextSeat.nextSeat.dataset.position=4;
					game.me.nextSeat.nextSeat.nextSeat.dataset.position=6;
				}
				else{
					game.singleHandcard=true;
					ui.arena.classList.add('single-handcard');
					ui.window.classList.add('single-handcard');
					ui.fakeme.style.display='';
					game.boss.dataset.position=7;
					game.boss.nextSeat.dataset.position=1;
					game.boss.nextSeat.nextSeat.dataset.position=2;
					game.boss.nextSeat.nextSeat.nextSeat.dataset.position=3;
					if(game.me&&game.me.node.handcards2.childNodes.length){
						while(game.me.node.handcards2.childNodes.length){
							game.me.node.handcards1.appendChild(game.me.node.handcards2.firstChild);
						}
					}
				}
			},
			chooseCharacter:function(func){
				var next=game.createEvent('chooseCharacter',false);
				next.showConfig=true;
				next.customreplacetarget=func;
				next.ai=function(player,list){
					if(get.config('double_character')){
						player.init(list[0],list[1]);
					}
					else{
						player.init(list[0]);
					}
				}
				next.setContent(function(){
					"step 0"
					var i;
					var list=[];
					event.list=list;
					for(i in lib.character){
						if(lib.character[i][4].contains('minskin')) continue;
						/*
						if(lib.character[i][4].contains('boss')){
							if (!lib.config.gameRecord.boss.data[i] || !lib.config.boss_enable_playpackconfig) continue;
						}
						*/
						if(lib.character[i][4].contains('boss')) continue;
						if(lib.character[i][4].contains('hiddenboss')) continue;
						//if(lib.character[i][4]&&lib.character[i][4].contains('forbidai')) continue;
						if(lib.config.forbidboss.contains(i)) continue;
						if(lib.filter.characterDisabled(i)) continue;
						list.push(i);
					}
					list.randomSort();
					var dialog=ui.create.dialog('选择3名勇者角色','hidden');
					dialog.classList.add('fixed');
					ui.window.appendChild(dialog);
					dialog.classList.add('bosscharacter');
					dialog.classList.add('withbg');
					//dialog.add('0/3');
					dialog.add([list.slice(0,20),'character']);
					dialog.noopen=true;
					var next=game.me.chooseButton(dialog,true).set('onfree',true);
					next._triggered=null;
					next.custom.replace.target=event.customreplacetarget;
					next.selectButton=[3,3];
					/*
					next.custom.add.button=function(){
						if(ui.cheat2&&ui.cheat2.backup) return;
					 	_status.event.dialog.content.childNodes[1].innerHTML= ui.selected.buttons.length+'/3';
					 };
					 */
					event.changeDialog=function(){
						if(ui.cheat2&&ui.cheat2.dialog==_status.event.dialog){
							return;
						}
						list.randomSort();

						var buttons=ui.create.div('.buttons');
						var node=_status.event.dialog.buttons[0].parentNode;
						_status.event.dialog.buttons=ui.create.buttons(list.slice(0,20),'character',buttons);
						_status.event.dialog.content.insertBefore(buttons,node);
						buttons.animate('start');
						node.remove();

						game.uncheck();
						game.check();
					};
					ui.create.cheat=function(){
						_status.createControl=ui.cheat2||event.asboss;
						ui.cheat=ui.create.control('更换',event.changeDialog);
						delete _status.createControl;
					};
					var createCharacterDialog=function(){
						event.dialogxx=ui.create.characterDialog();
						event.dialogxx.classList.add('bosscharacter');
						event.dialogxx.classList.add('withbg');
						event.dialogxx.classList.add('fixed');
						if(ui.cheat2){
							ui.cheat2.animate('controlpressdownx',500);
							ui.cheat2.classList.remove('disabled');
						}
					};
					if(lib.onfree){
						lib.onfree.push(createCharacterDialog);
					}
					else{
						createCharacterDialog();
					}
					ui.create.cheat2=function(){
						_status.createControl=event.asboss;
						ui.cheat2=ui.create.control('自由选将',function(){
							if(this.dialog==_status.event.dialog){

								this.dialog.close();
								_status.event.dialog=this.backup;
								ui.window.appendChild(this.backup);
								delete this.backup;
								game.uncheck();
								game.check();
								if(ui.cheat){
                                    ui.cheat.animate('controlpressdownx',500);
									ui.cheat.classList.remove('disabled');
								}
							}
							else{
								this.backup=_status.event.dialog;
								_status.event.dialog.close();
								_status.event.dialog=_status.event.parent.dialogxx;
								this.dialog=_status.event.dialog;
								ui.window.appendChild(this.dialog);
								game.uncheck();
								game.check();
								if(ui.cheat){
									ui.cheat.classList.add('disabled');
								}
							}
						});
						if(lib.onfree){
							ui.cheat2.classList.add('disabled');
						}
						delete _status.createControl;
					}
					if(!ui.cheat&&get.config('change_choice'))
					ui.create.cheat();
					if(!ui.cheat2&&get.config('free_choose'))
					ui.create.cheat2();

					event.asboss=ui.create.control('我要当魔王！',function(){
						event.boss=true;
						event.enemy=[];
						for(var i=0;i<ui.selected.buttons.length;i++){
							event.enemy.push(ui.selected.buttons[i].link);
							event.list.remove(ui.selected.buttons[i].link);
						}
						while(event.enemy.length<3){
							event.enemy.push(event.list.randomRemove());
						}
						game.uncheck();
						if(ui.confirm){
							ui.confirm.close();
						}
						game.resume();
					});
					"step 1"
					if(ui.cheat){
						ui.cheat.close();
						delete ui.cheat;
					}
					if(ui.cheat2){
						ui.cheat2.close();
						delete ui.cheat2;
					}
					event.asboss.close();
					if(event.boss){
						event.result={
							boss:true,
							links:event.enemy
						};
					}
					else{
						event.result={
							boss:false,
							links:result.links
						};
						_status.coinCoeff=get.coinCoeff(result.links);
					}
				});
				return next;
			},
		},
		boss:{
			boss_cirno:{
				loopType:2,
				gameDraw:function(player){
					return player==game.boss?9:4;
				}
			},
			boss_cirno2:{
				loopType:1,
			},
			boss_reimu:{
				loopType:2,
				gameDraw:function(player){
					return player==game.boss?8:4;
				},
			},
			boss_reimu2:{
				loopType:1,
			},
			boss_mokou:{
				loopType:1,
				gameDraw:function(player){
					return player==game.boss?6:4;
				},
			},
			boss_mokou2:{
				loopType:2,
			},
			boss_nianshou:{
				loopType:1,
				chongzheng:1,
				init:function(){
					game.boss.node.action.classList.add('freecolor');
					game.boss.node.action.style.opacity=1;
					game.boss.node.action.style.letterSpacing='4px';
					game.boss.node.action.style.marginRight=0;
					game.boss.node.action.style.fontFamily='huangcao';
					game.boss.node.action.innerHTML='';
					_status.additionalReward=function(){
						return Math.round(Math.pow(_status.damageCount,2.4))*2;
					}
					var time=360;
					var interval=setInterval(function(){
						if(_status.over){
							clearInterval(interval);
							return;
						}
						var sec=time%60;
						if(sec<10){
							sec='0'+sec;
						}
						game.boss.node.action.innerHTML=Math.floor(time/60)+':'+sec;
						if(time<=0){
							delete _status.additionalReward;
							if(typeof _status.coin=='number'){
								if(game.me==game.boss){
									_status.coin+=Math.round(Math.pow(_status.damageCount,2.4));
								}
								else{
									_status.coin+=Math.round(Math.pow(_status.damageCount,1.8));
								}
							}
							game.forceOver(true);
							clearInterval(interval);
						}
						time--;
					},1000);
					_status.damageCount=0;
					ui.damageCount=ui.create.system('伤害: 0',null,true);
					lib.setPopped(ui.rules,function(){
						var uiintro=ui.create.dialog('hidden');
							uiintro.add('<div class="text left">[选项→游戏]里可以提高游戏速度<br>关掉[回合顺序自选]和[单人控制]也可以显著提升游戏速度<br>不要想了，快点打上去！<br>勇者坠机后进入重整状态<br>重整需要0个回合</div>');
							uiintro.add(ui.create.div('.placeholder.slim'))
						return uiintro;
					},400);
					game.boss.say('嗷呜~~~~');
				}
			},
			boss_patchy1:{
				loopType:2,
				gameDraw:function(player){
					return player==game.boss?8:4;
				},
				init:function(){
					game.loadModeAsync('stg',function(mode){
						for(var i in mode.translate){
							lib.translate[i]=lib.translate[i]||mode.translate[i];
							//lib.translate[i]=mode.translate[i];
						}
						for(var i in mode.skill){
							if(lib.skill[i]) console.log(i);
							//console.log(i);
							lib.skill[i]=mode.skill[i];
							game.finishSkill(i);
						}
						if(get.mode()!='stg'){
							lib.skill['juguang'].forced = false;
						}
						for(var i in mode.card){
							if(lib.card[i]) console.log(i);
							//console.log(i);
							lib.card[i]=mode.card[i];
							game.finishCards();
						}
					});
				}
			},
			boss_patchy2:{
				loopType:1,
			},
			boss_test:{
				loopType:2,
				chongzheng:5,
			},
			boss_zhaoyun:{
				loopType:1,
				init:function(){
					//lib.backgroundmusicURL = ui.backgroundMusic.src;
					game.playBackgroundMusic('boss');
				},
			},
			boss_saitama:{
				loopType:2,
				chongzheng:false,
				init:function(){
                    if (ui.cardPileNumber.style.display=='none'){
						ui.cardPileNumber.style.display='initial';
					}
					ui.cardPileNumber.style.color='red';
					game.boss.say('？<br>我走哪儿来了？');
					ui.backgroundMusic.src = '';
					lib.config.background_music = '';
					lib.setPopped(ui.rules,function(){
						var uiintro=ui.create.dialog('hidden');
							uiintro.add('<div class="text left">[选项→魔王]里可以打开单人控制<br>不要放弃治疗啊！<br>这个魔王不可以重整</div>');
							uiintro.add(ui.create.div('.placeholder.slim'))
						return uiintro;
					},400);
				},
				gameDraw:function(player){
					return player==game.boss?8:4;
				},
			},
			boss_fapaiji:{
				loopType:2,
				chongzheng:false,
				init:function(){
                    if (ui.cardPileNumber.style.display=='none'){
						ui.cardPileNumber.style.display='initial';
					}
					ui.cardPileNumber.style.color='red';
					lib.setPopped(ui.rules,function(){
						var uiintro=ui.create.dialog('hidden');
							uiintro.add('<div class="text left">[选项→魔王]里可以打开单人控制<br>不要放弃治疗啊！<br>这个魔王不可以重整</div>');
							uiintro.add(ui.create.div('.placeholder.slim'))
						return uiintro;
					},400);
				},
				/*
				gameDraw:function(player){
					return player==game.boss?4:4;
				},
				*/
			},
			global:{
				loopType:2,
				chongzheng:5,
			},
		},
		skill:{
			_dianche:{
				enable:'phaseUse',
				filter:function(event,player){
					return player.countCards('h', {name:'dianche'}) && player.countCards('hej') > 1;  
				},
				selectCard:2,
				discard:false,
				line:true,
				position:'hej',
				selectTarget:1,
				prepare:function(cards,player,targets){
					player.$give(cards.length,targets[0]);
				},
				filterTarget:function(card,player,target){
					return target != player;
				},
				filterCard:function(card,player){
					if(ui.selected.cards.length){
						if (ui.selected.cards[0].name == 'dianche') return true;
						return card.name == 'dianche';
					} else{
						return true;
					}
					return false;
				},
				content:function(){
					target.gain(cards);
				},
				complexCard:true,
				prompt:'你可以将废线电车和一张牌交给一名其他角色。',
				ai:{
					expose:0.3,
					order:1,
					result:{
						target:function(player,target){
							if (target.countCards('h') <= target.getHandcardLimit()) return 1;
							else return 0.5;
						},
						player:function(player,target){
							if (player.countCards('h') > player.getHandcardLimit()) return 0;
							else return -0.5;
						}
					}
				}
			},
			_shenlin_use:{
				onChooseToUse:function(event){
					if (!game.dead || game.dead.length == 0) return ;
					if (event.player.countCards('h', {name:'shenlin'}) || event.player.hasSkill('kedan') && game.players.length < 4){
						game.players.addArray(game.dead);
					} else if (game.countPlayer(function(current){
						return game.dead.contains(current);
					})){
						game.players.remove(game.dead);
					}
				},
			},
			_shenlin:{
				trigger:{player:'damageAfter'},
				filter:function(event,player){
					return player.countCards('h', {name:'shenlin'});
				},
				content:function(){
					var cards = player.getCards('h');
					for (var i = 0; i <= cards.length; i ++){
						if(cards[i]&&cards[i].name == 'shenlin'){
							player.discard(cards[i]);
							break;
						}
					}
					player.addTempSkill('mianyi');		
				},
			},
			lingji:{
    			audio:2,
    			trigger:{player:'damageAfter',source:'damageAfter'},
				group:['saiqian_use','saiqian_die'],
    			forced:true,
    			filter:function(event,player){
    				return event.nature != 'thunder';
    			},
    			content:function(){
    				"step 0"
    				player.judge(function(card){
						return get.color(card)=='red'?1:-1;
    				});
    				"step 1"
					player.gain(result.card, 'draw2');
    				if(result.bool){
    					player.gainlili();
    				}
    			}
    		},
			saiqian_use:{
				direct:true,
				trigger:{global:'useCard'},
				filter:function(event, player){
					return event.player != player && event.card.name == 'saiqianxiang';
				},
				content:function(){
					player.say('我的赛钱箱！你要是敢对它做什么奇怪的事情……');
				}
			},
			saiqian_die:{
				direct:true,
				trigger:{global:'loseEnd'},
				filter:function(event,player){
					if (event.player == player) return false;
					for (var i = 0; i < event.cards.length; i ++){
						if (event.cards[i].name == 'saiqianxiang' && get.position(event.cards[i])=='d') return true;
					}
					return false;
				},
				content:function(){
					game.pause();
					player.say('啊啊啊啊啊啊啊啊，你对我的赛钱箱做了什么！！！！！！');
					setTimeout(function(){
						player.say('你，我要把你变成十八层地狱底层的锅底废油！');
						setTimeout(function(){
							game.resume();
							player.maxlili = 10;
							player.gainlili(2000);
							plaer.update();
						}, 2500);
					}, 2500);
				},
			},
    		bianshen_reimu:{
    			audio:1,
    			trigger:{player:['damageAfter','gainliliAfter','loseHpAfter']},
    			forced:true,
    			skillAnimation:true,
    			init:function(player){
					player.lili = 0;
				},
    			filter:function(event,player){
    				return (player.lili >= 5) || (player.hp <= 4);
    			},
    			content:function(){
					var lili=player.lili;
					var maxlili = player.maxlili;
					player.init('boss_reimu2');
					player.$skill('到此为止了！',null,null,true);
					player.lili=lili;
					player.maxlili=maxlili;
					player.update();
					while(_status.event.name!='phaseLoop'){
						_status.event=_status.event.parent;
					}
					game.resetSkills();
					setTimeout(function(){
						game.playBackgroundMusic('reimu');
					},500);
					_status.paused=false;
					_status.event.player=player;
					_status.event.step=0;
					if(game.bossinfo){
						game.bossinfo.loopType=1;
						_status.roundStart=game.boss;
					}
    			}
    		},
    		mengxiangtiansheng:{
    			audio:2,
    			trigger:{player:['phaseBegin','phaseEnd']},
    			filter:function(event,player){
    				return player.lili > 0;
    			},
    			content:function(){
    				var players=game.filterPlayer();
    				for (var i = 0; i < players.length; i++){
    					if (!player.canUse('sha',players[i], false)) players.remove(players[i]);
    				}
					players.remove(player);
					player.loselili(); 
    				player.useCard({name:'sha'},players,false);
    			},
    			check:function(event,player){
    				return player.lili > 1; 
    			},
    		},
    		bianshen_cirno:{
    			audio:1,
    			trigger:{player:['damageAfter','gainAfter','loseHpAfter']},
    			forced:true,
    			skillAnimation:true,
    			init:function(player){
					player.lili = 0;
				},
    			filter:function(event,player){
    				return player.hp <= 4 || player.countCards('h') > game.countPlayer(function(current){
						if(current != player) return current.countCards('h');
					});
    			},
    			content:function(){
					var lili=player.lili;
					player.init('boss_cirno2');
					player.$skill('最强的来了！',null,null,true);
					player.lili=lili;
					player.update();
					while(_status.event.name!='phaseLoop'){
						_status.event=_status.event.parent;
					}
					game.resetSkills();
					setTimeout(function(){
						game.playBackgroundMusic('cirno');
					},500);
					_status.paused=false;
					_status.event.player=player;
					_status.event.step=0;
					if(game.bossinfo){
						game.bossinfo.loopType=1;
						_status.roundStart=game.boss;
					}
    			}
			},
			jiqiang:{
				global:'jiqiang1',
				trigger:{global:'phaseEnd'},
				forced:true,
				filter:function(event,player){
					return event.player.countCards('h') < player.countCards('h');
				},
				content:function(){
					trigger.player.damage('thunder');
					player.draw();
					player.chooseToUse(trigger.player, -1,'冰柱机枪：你可以对'+get.translation(trigger.player)+'使用一张牌');
				}
			},
			jiqiang1:{
				mod:{
					maxHandcard:function(player,num){
						return num - game.countPlayer(function(current){
							if(current != player && current.hasSkill('jiqiang')) return 2;
						});
					}
				},
			},
			zuanshi:{
				forced:true,
				trigger:{player:'phaseUseBegin'},
				group:'zuanshi1',
				global:'zuanshi2',
				init:function(player){
					player.storage.zuanshi = [];
				},
				intro:{
					content:function(storage){
						var str = '视为【轰！】的牌：';
						if (storage){
							for (var i = 0; i < storage.length; i ++){
								if (!str.includes(get.translation(storage[i]))) str += get.translation(storage[i]) + ',';
							}
						}
						return str; 
					},
				},
				content:function(){
					'step 0'
					player.storage.zuanshi = [];
					var num = player.countCards('h', {name:'sha'});
					player.draw(num);
				},
				mod:{
					maxHandcard:function(player,num){
						return num + player.storage.zuanshi.length;
					},
				},
			},
			zuanshi1:{
				direct:true,
				trigger:{player:'gainBegin'},
				filter:function(event,player){
					var e = event.getParent('useSkill');
					if (!e || event.skill != 'zuanshi') return false;
					return true;
				},
				content:function(){
					player.showCards(trigger.cards);
					for(var i=0;i<trigger.cards.length;i++){
						player.storage.zuanshi.push(trigger.cards[i].name);
					}
					player.markSkill('zuanshi');
				},
			},
			zuanshi2:{
				mod:{
					cardEnabled:function(card,player){
						if(_status.event.skill==undefined&&game.hasPlayer(function(current){
							return current.hasSkill('zuanshi') && current.storage.zuanshi.contains(card.name) && card.name != 'sha';
						})) return false;
					},
					cardUsable:function(card,player){
						if(_status.event.skill==undefined&&game.hasPlayer(function(current){
							return current.hasSkill('zuanshi') && current.storage.zuanshi.contains(card.name) && card.name != 'sha';
						})) return false;
					},
					cardRespondable:function(card,player){
						if(_status.event.skill==undefined&&game.hasPlayer(function(current){
							return current.hasSkill('zuanshi') && current.storage.zuanshi.contains(card.name) && card.name != 'sha';
						})) return false;
					},
					cardSavable:function(card,player){
						if(_status.event.skill==undefined&&game.hasPlayer(function(current){
							return current.hasSkill('zuanshi') && current.storage.zuanshi.contains(card.name) && card.name != 'sha';
						})) return false;
					},
				},
				enable:["chooseToUse",'chooseToRespond'],
				filterCard:function(card){
					return game.hasPlayer(function(current){
						return current.hasSkill('zuanshi') && current.storage.zuanshi.contains(card.name);
					});
				},
				viewAs:{name:"sha"},
				prompt:"将【钻石风暴】指定的牌名当【轰！】使用/打出",
				ai:{
					respondSha:true,
				},
			},
			jubing:{
				trigger:{player:'phaseBegin'},
				forced:true,
				limited:true,
				skillAnimation:true,
				mark:true,
				filter:function(event,player){
					return player.hp == 1;
				},
				content:function(){
					player.awakenSkill('jubing');
					var list = game.filterPlayer();
					list.remove(player);
					for (var i = 0; i < list.length; i ++){
						list[i].damage(9, 'thunder');
					};
				},
			},
			huoniao1:{
				trigger:{player:'phaseBegin'},
				audio:2,
				content:function(){
					player.loseHp();
					player.useCard({name:'danmakucraze'}, player);
				},
				check:function(){
					return true;
				},
			},
			huoniao2:{
				trigger:{player:'phaseBegin'},
				audio:2,
				forced:true,
				content:function(){
					player.storage._enhance = 1;
					player.useCard({name:'danmakucraze'}, player, 'nowuxie');
				},
			},
			bianshen_mokou:{
				audio:1,
				trigger:{player:'dyingBegin'},
				forced:true,
				skillAnimation:true,
				content:function(){
					player.init('boss_mokou2');
					//player.$skill('最强的来了！',null,null,true);
					player.hp = 1;
					player.update();
					while(_status.event.name!='phaseLoop'){
						_status.event=_status.event.parent;
					}
					game.resetSkills();
					_status.paused=false;
					_status.event.player=player;
					_status.event.step=0;
					if(game.bossinfo){
						game.bossinfo.loopType=2;
						_status.roundStart=game.boss;
					}
    			},
				ai:{
					effect:{
						target:function(card,player,target){
							if(get.tag(card,'recover')) return 'zeroplayertarget';
						},
					},
				},
			},
			businiao_boss:{
				audio:2,
				trigger:{player:'phaseEnd'},
				forced:true,
				content:function(){
					var num = player.getStat('damage');
					//if (num != 0) player.draw(num * player.countUsed('huazhi'));
					//player.removeSkill('huazhi_skill');
					if (num) {
						player.recover(num + 1);
						player.gainlili(num + 1);
					} else {
						player.recover();
						player.gainlili();
					}
				},
			},
    		boss_damagecount:{
				mode:['boss'],
				global:'boss_damagecount2',
				direct:true,
				trigger:{player:'phaseBegin'},
				content:function(){
					player.skip('phaseUse');
				},
			},
			boss_damagecount2:{
				trigger:{source:'damageEnd'},
				silent:true,
				filter:function(event,player){
					if(!ui.damageCount) return false;
					return event.num>0&&player.isFriendOf(game.me)&&event.player.isEnemyOf(game.me);
				},
				content:function(){
					_status.damageCount+=trigger.num;
					ui.damageCount.innerHTML='伤害: '+_status.damageCount;
				}
			},
    		boss_nianrui:{
				trigger:{player:'phaseDrawBegin'},
				forced:true,
				content:function(){
					trigger.num+=2;
				},
				ai:{
					threaten:1.6
				}
			},
			boss_qixiang:{
				group:['boss_qixiang1','boss_qixiang2'],
				ai:{
					effect:{
						target:function(card,player,target,current){
							if(card.name=='lebu'&&card.name=='bingliang') return 0.8;
						}
					}
				}
			},
			boss_qixiang1:{
				trigger:{player:'judge'},
				forced:true,
				filter:function(event,player){
					if(event.card){
						if(event.card.viewAs){
							return event.card.viewAs=='lebu';
						}
						else{
							return event.card.name=='lebu';
						}
					}
				},
				content:function(){
					player.addTempSkill('boss_qixiang3','judgeAfter');
				}
			},
			boss_qixiang2:{
				trigger:{player:'judge'},
				forced:true,
				filter:function(event,player){
					if(event.card){
						if(event.card.viewAs){
							return event.card.viewAs=='bingliang';
						}
						else{
							return event.card.name=='bingliang';
						}
					}
				},
				content:function(){
					player.addTempSkill('boss_qixiang4','judgeAfter');
				}
			},
			boss_qixiang3:{
				mod:{
					suit:function(card,suit){
						if(suit=='diamond') return 'heart';
					}
				}
			},
			boss_qixiang4:{
				mod:{
					suit:function(card,suit){
						if(suit=='spade') return 'club';
					}
				}
			},
			boss_juejing:{
				trigger:{player:'phaseDrawBefore'},
				forced:true,
				content:function(){
					trigger.cancel();
				},
				ai:{
					noh:true,
				},
				group:'boss_juejing2'
			},
			boss_juejing2:{
				trigger:{player:'loseEnd'},
				forced:true,
				filter:function(event,player){
					return player.countCards('h')<4;
				},
				content:function(){
					player.draw(4-player.countCards('h'));
				}
			},
			longhun:{
				group:['longhun1','longhun2','longhun3','longhun4'],
				ai:{
					skillTagFilter:function(player,tag){
						switch(tag){
							case 'respondSha':{
								if(player.countCards('he',{suit:'diamond'})<Math.max(1,player.hp)) return false;
								break;
							}
							case 'respondShan':{
								if(player.countCards('he',{suit:'club'})<Math.max(1,player.hp)) return false;
								break;
							}
							case 'save':{
								if(player.countCards('he',{suit:'heart'})<Math.max(1,player.hp)) return false;
								break;
							}
						}
					},
					maixie:true,
					save:true,
					respondSha:true,
					respondShan:true,
					effect:{
						target:function(card,player,target){
							if(get.tag(card,'recover')&&target.hp>=1) return [0,0];
							if(!target.hasFriend()) return;
							if((get.tag(card,'damage')==1||get.tag(card,'loseHp'))&&target.hp>1) return [0,1];
						}
					},
					threaten:function(player,target){
						if(target.hp==1) return 2;
						return 0.5;
					},
				}
			},
			longhun1:{
				audio:true,
				enable:['chooseToUse','chooseToRespond'],
				prompt:function(){
					return '将'+get.cnNumber(Math.max(1,_status.event.player.hp))+'张红桃牌当作桃使用';
				},
				position:'he',
				check:function(card,event){
					if(_status.event.player.hp>1) return 0;
					return 10-get.value(card);
				},
				selectCard:function(){
					return Math.max(1,_status.event.player.hp);
				},
				viewAs:{name:'tao'},
				filter:function(event,player){
					return player.countCards('he',{suit:'heart'})>=player.hp;
				},
				filterCard:function(card){
					return get.suit(card)=='heart';
				}
			},
			longhun2:{
				audio:true,
				enable:['chooseToUse','chooseToRespond'],
				prompt:function(){
					return '将'+get.cnNumber(Math.max(1,_status.event.player.hp))+'张方片当作火杀使用或打出';
				},
				position:'he',
				check:function(card,event){
					if(_status.event.player.hp>1) return 0;
					return 10-get.value(card);
				},
				selectCard:function(){
					return Math.max(1,_status.event.player.hp);
				},
				viewAs:{name:'sha',nature:'fire'},
				filter:function(event,player){
					return player.countCards('he',{suit:'diamond'})>=player.hp;
				},
				filterCard:function(card){
					return get.suit(card)=='diamond';
				}
			},
			longhun3:{
				audio:true,
				enable:['chooseToUse','chooseToRespond'],
				prompt:function(){
					return '将'+get.cnNumber(Math.max(1,_status.event.player.hp))+'张黑桃牌当作【请你住口！】使用';
				},
				position:'he',
				check:function(card,event){
					if(_status.event.player.hp>1) return 0;
					return 7-get.value(card);
				},
				selectCard:function(){
					return Math.max(1,_status.event.player.hp);
				},
				viewAs:{name:'wuxie'},
				viewAsFilter:function(player){
					return player.countCards('he',{suit:'spade'})>=player.hp;
				},
				filterCard:function(card){
					return get.suit(card)=='spade';
				}
			},
			longhun4:{
				audio:true,
				enable:['chooseToUse','chooseToRespond'],
				prompt:function(){
					return '将'+get.cnNumber(Math.max(1,_status.event.player.hp))+'张梅花牌当作闪打出';
				},
				position:'he',
				check:function(card,event){
					if(_status.event.player.hp>1) return 0;
					return 10-get.value(card);
				},
				selectCard:function(){
					return Math.max(1,_status.event.player.hp);
				},
				viewAs:{name:'shan'},
				filterCard:function(card){
					return get.suit(card)=='club';
				}
			},
			punch:{
				audio:2,
				forced:true,
				trigger:{source:'damageBegin'},
				content:function(){
					trigger.num += Number.MAX_SAFE_INTEGER;
				},
				mod:{
					cardEnabled:function(card,player){
						if(card.name == 'huazhi') return false;
					},
					cardUsable:function(card,player){
						if(card.name == 'huazhi') return false;
					},
				},
			},
			// 用来从玩家游戏开始的技能
			skipfirst:{
				direct:true,
				trigger:{player:'phaseBegin'},
				content:function(){
					trigger.cancel();
					player.removeSkill('skipfirst');
				},
			},
			serious:{
				audio:2,
				forced:true,
				trigger:{player:'phaseEnd'},
				content:function(){
					player.draw(game.roundNumber);
					if (player.maxlili < game.roundNumber){
						player.gainMaxlili(game.roundNumber - player.maxlili);
					}
					player.gainlili(game.roundNumber - player.lili);
				},
			},
			// 无限血的家伙回合外没有理由出牌
			boss_turncount:{
				mode:['boss'],
				/*
				mod:{
					cardEnabled:function(card,player){
						if(player != _status.currentPhase) return false;
					},
					cardUsable:function(card,player){
						if(player != _status.currentPhase) return false;
					},
					cardRespondable:function(card,player){
						if(player != _status.currentPhase) return false;
					},
					cardSavable:function(card,player){
						if(player != _status.currentPhase) return false;
					},
				},
				*/
			},
			huanri:{
				trigger:{global:['drawBefore', 'gameDrawBefore']},
				group:['huanri_start', 'huanri_judge'],
				filter:function(event, player){
					return event.num > 0 && ui.cardPile.childNodes.length > 0;
				},
				check:function(event,player){
					if (event.name == 'gameDraw' && player.storage.huanri == 3) return false;
					return true; 
				},
				content:function(){
					'step 0'
					var num = 0;
					if (trigger.name == 'draw'){
						num = trigger.num;
					} else if (trigger.name == 'gameDraw'){
						num = trigger.num * game.players.length;
					}
					var cards = [];
					var choices = [0, 0, 0, 0, 0];
					for(var i=0;i<ui.cardPile.childNodes.length;i++){
						cards.push(ui.cardPile.childNodes[i]);
						if (ui.cardPile.childNodes[i].name == 'wuzhong'){
							choices[2] ++;
							continue;
						}
						if (player.storage.huanri == 1){
							if (ui.cardPile.childNodes[i].name == 'sha') choices[0] ++;
							else if (ui.cardPile.childNodes[i].name == 'danmakucraze') choices[1] ++;
							else if (ui.cardPile.childNodes[i].name == 'tianguo') choices[3] ++;
						} else if (player.storage.huanri == 2){
							if (ui.cardPile.childNodes[i].name == 'juedou') choices[0] ++;
							else if (ui.cardPile.childNodes[i].name == 'zuiye') choices[1] ++;
							else if (ui.cardPile.childNodes[i].name == 'tianguo') choices[3] ++;
						}
					}					
					if (player.storage.huanri == 1){
						if (trigger.name == 'gameDraw'){
							choices = ['sha'];
						} else if (trigger.name == 'draw'){
							if (trigger.player == player){
								if (player.hp < trigger.player.maxHp && !trigger.player.countCards('h', {name:'tao'})) choices = ['tao'];
								else if (choices[2] + choices[1] >= trigger.num){
									choices = ['danmakucraze', 'wuzhong', 'huazhi'];
								} else if (choices[1] == 0){
									choices = ['tianguo', 'wuzhong', 'zuiye', 'sijing'];
								} else {
									choices = ['tianguo', 'sijing', 'dianche'];
								}
								if (player.hasSkill('danmaku_skill')){
									choices.push('sha');
								}
								if (trigger.getParent('phaseEnd') || _status.currentPhase != player){
									choices = ['bailou', 'lunadial', 'mirror', 'dianche', 'tao'];
								}
							} else {
								choices = ['sha', 'tancheng'];
							}
						}
					} else if (player.storage.huanri == 2){
						if (trigger.name == 'gameDraw'){
							choices = ['juedou', 'shan'];
						} else if (trigger.name == 'draw'){
							if (trigger.player == player){
								if (player.hp < trigger.player.maxHp && !trigger.player.countCards('h', {name:'tao'})) choices = ['tao'];
								else if (choices[0] + choices[1] + choices[2] >= trigger.num){
									choices = ['juedou', 'wuzhong', 'huazhi', 'zuiye'];
								} else if (choices[0] == 0){
									choices = ['tianguo', 'wuzhong', 'zuiye', 'sijing'];
								} else {
									choices = ['tianguo', 'sijing', 'dianche'];
								}
								if (trigger.getParent('phaseEnd') || _status.currentPhase != player){
									choices = ['bailou', 'lunadial', 'mirror', 'dianche', 'tao', 'book', 'hourai'];
								}
							} else {
								choices = ['shan', 'louguan', 'bailou', 'pantsu', 'yuzhi', 'gungnir', 'tancheng'];
							}
						}
					} else {
						if (get.attitude(player, trigger.player) > 0){
							if (trigger.player.hp < trigger.player.maxHp && !trigger.player.countCards('h', {name:'tao'})) choices = ['tao'];
							else if (choices[2] > 0) choices = ['wuzhong'];
							else if (trigger.player.countCards('he', {type:'equip'}) < 3) choices = ['mirror', 'book', 'lunadial', 'hourai', 'pantsu', 'stone', 'windfan', 'lantern'];
							else if (_status.currentPhase != trigger.player || trigger.getParent('phaseEnd')) choices = ['shan', 'bingyu'];
							else choices = ['shunshou', 'guohe', 'lingbi', 'sha', 'huazhi'];
						}
					}
					player.chooseCardButton(num, '将'+num+'张牌置于牌堆顶（先选的在上面）', cards).set('filterButton',function(button){
						return true;
					}).set('ai',function(button){
						var trigger=_status.event.getTrigger();
						var player=_status.event.player;
						if (choices.length){
							return choices.contains(button.link.name);
						} else if (get.attitude(player, trigger.player) > 0){
							return get.value(button.link) <= 5;
						}
					}).set('choices', choices);
					'step 1'
					if (result.bool){
						if (!player.isUnderControl(true) && trigger.name == 'gameDraw'){
							for (var i = result.links.length -1; i >= 0; i --){
								if (result.links[i].name == 'juedou') result.links.splice(0, 0, result.links.splice(i, 1)[0]);
								if (result.links[i].name == 'sha' && result.links[i].bonus > 0) result.links.splice(0, 0, result.links.splice(i, 1)[0]);
							}
							/*var playernum = 0;
							var tplayer = trigger.player;
							while (tplayer != player){
								playernum ++;
								tplayer = tplayer.next;
							}*/

						}
						for (var i = result.links.length-1; i >=0; i --){
							ui.cardPile.insertBefore(result.links[i],ui.cardPile.firstChild);
						}
					}
				},
				ai:{
					effect:{
						player:function(card,player,target){
							if (card.name == 'tianguo' || card.name == 'sijing'){
								var count = 0;
								for(var i=0;i<ui.cardPile.childNodes.length;i++){
									if (ui.cardPile.childNodes[i] == 'wuzhong') count ++;
								}
								if (count == 0) return [1,10000];
							}
						}
					},
				},
			},
			huanri_judge:{
				trigger:{global:'judgeBegin'},
				//frequent:true,
				filter:function(){
					return true;
				},
				check:function(){
					return true;
				},
				content:function(){
					'step 0'
					var cards = [];
					for(var i=0;i<ui.cardPile.childNodes.length;i++){
						cards.push(ui.cardPile.childNodes[i]);
					}
					player.chooseCardButton(1, '将一张牌置于牌堆顶（先选的在上面）', cards).set('filterButton',function(button){
						return true;
					}).set('ai',function(button){
						var trigger=_status.event.getTrigger();
						var player=_status.event.player;
						var t = _status.event.getParent('useSkill');
						if (t && t.skill == 'mingyun2'){
							var e = trigger.getParent('useCard');
							console.log(e.targets[0]);
							if (get.attitude(player,e.targets[0]) > 0){
								return get.subtype(button.link) == 'support';
							} else {
								return button.link.name == 'sha';
							}
						}
						var judging=trigger.player.judging[0];
						var result=trigger.judge(button.link)-trigger.judge(ui.cardPile.childNodes[0]);
						var attitude=get.attitude(player,trigger.player);
						if(attitude==0||result==0) return 0;
						if(attitude>0){
							return result;
						}
						else{
							return -result;
						}
					});
					'step 1'
					if (result.bool){
						for (var i = result.links.length-1; i >=0; i --){
							ui.cardPile.insertBefore(result.links[i],ui.cardPile.firstChild);
						}
					}
				},
				ai:{
					expose:0.1,
					tag:{
						rejudge:0.5
					}
				}
			},
			huanri_start:{
				trigger:{global:'gameStart'},
				direct:true,
				content:function(){
					if (get.mode() == 'boss') {
						var i = Math.random();
						if (i > 0.7) player.storage.huanri = 1;
						else player.storage.huanri = 2;
					} else {
						player.storage.huanri = 3;
					}
				},
			},
			toutian:{
				init:function(player){
					game.loadModeAsync('stg',function(mode){
						for(var i in mode.translate){
						lib.translate[i]=lib.translate[i]||mode.translate[i];
						}
						for(var i in mode.skill){
							if (!lib.skill[i]) lib.skill[i]=mode.skill[i];
							game.finishSkill(i);
						}
						for(var i in mode.card){
							if (!lib.card[i]) lib.card[i]=mode.card[i];
							game.finishCards();
						}
					});
					/*
					game.loadModeAsync('chess',function(mode){
						for(var i in mode.translate){
							lib.translate[i]=lib.translate[i]||mode.translate[i];
						}
						for(var i in mode.skill){
							lib.skill[i]=mode.skill[i];
							game.finishSkill(i);
						}
						for(var i in mode.card){
							lib.card[i]=mode.card[i];
							game.finishCards();
						}
					});
					*/
				},
				enable:'phaseUse',
				usable:1,
				filter:function(event,player){
					return player.lili > 0;
				},
				content:function(){
					'step 0'
					var list = [];
                    for (var i in lib.card){
						if (!lib.translate[i]) continue;
						list.add(i);
                    }
                    if(list.length){
                        player.chooseButton(['创建并获得一张牌',[list,'vcard']]).set('ai',function(button){
							var count = 0;
							for (var i=0;i<ui.cardPile.childNodes.length;i++){
								if (ui.cardPile.childNodes[i] == 'wuzhong') count ++;
							}
							if (player.countCards('h', {name:'sha'})) return button.link[2] == 'lianji' || button.link[2] == 'danmakucraze';
							if (player.getStat('damage') >= 2) return button.link[2] == 'huazhi'; 
							if (count == 0) return button.link[2] == 'tianguo' || button.link[2] == 'sijing';
							if (player.hp < player.maxHp) return button.link[2] == 'tao';
							return button.link[2] == 'wuzhong';
                        });
                    }
                    'step 1'
                    if(result&&result.bool&&result.links[0]){
						player.gain(game.createCard(result.links[0][2]));
						player.loselili();
                    }
				},
				ai:{
					order:1,
					result:{
						player:function(player){
							return 10;
						}
					},
				}
			},
			longjuan:{
				audio:2,
				trigger:{player:'phaseAfter'},
				group:'longjuan_count',
				direct:true,
				content:function(){
					'step 0'
					if (player.storage.longjuan_count <= 0) event.turn = true; 
					player.storage.longjuan_count = 6;
					player.chooseTarget(event.turn?'龙卷：令一名角色进行一个额外回合':'龙卷：令一名角色进行一个额外的出牌阶段').set('ai',function(target){
						return get.attitude(player, target) > 0;
					});
					'step 1'
					if (result.bool){
						if (event.turn){
							result.targets[0].insertPhase();
						} else {
							result.targets[0].phaseUse();
						}
					}
					'step 2'
					player.syncStorage('longjuan_count');
				},
			},
			longjuan_count:{
				direct:true,
				trigger:{global:'phaseBegin'},
				mark:true,
				intro:{
					marktext:'卷',
					content:function(storage,player){
						return '还有'+player.storage.longjuan_count+'回合升级';
					}
				},
				init:function(player){
					player.storage.longjuan_count = 6;
					player.markSkill('longjuan_count');
				},
				filter:function(event, player){
					return event.player != player;
				},
				content:function(){
					if (player.storage.longjuan_count > 0) player.storage.longjuan_count -= 1;
					player.syncStorage('longjuan_count');
				}
			},
			chongzou:{
				enable:'phaseUse',
				group:'chongzou_1',
				init:function(player){
					player.storage.chongzou = [];
				},
				selectTarget:1,
				filterTarget:function(card,player,target){
					return true;
				},
				filter:function(event, player){
					return player.storage.chongzou.length < 3 && player.lili > 0;
				},
				content:function(){
					'step 0'
					var control = [ '获得【雨至】一次', '获得【潜行】并暗置', '使用攻击牌指定目标后，对目标造成1点灵击伤害，直到其回合结束'];
					if (player.storage.chongzou.contains(1)) control.remove('获得【潜行】并暗置');
					if (player.storage.chongzou.contains(2)) control.remove('获得【雨至】一次');
					if (player.storage.chongzou.contains(3)) control.remove('使用攻击牌指定目标后，对目标造成1点灵击伤害，直到其回合结束');
					if (control.length == 0) event.finish();
					event.controlList = control;
					player.chooseControlList(control, function(event, player){
						if (target.hp <= 1 && control.contains('获得【潜行】并暗置')) return control.indexOf('获得【潜行】并暗置');
						if (target.countCards('h', {name:'sha'}) && control.contains('使用攻击牌指定目标后，对目标造成1点灵击伤害，直到其回合结束')) 
							return control.indexOf('使用攻击牌指定目标后，对目标造成1点灵击伤害，直到其回合结束');
						if (!target.hasSkill('kc_yuzhi')) return 0;
						return control.length - 1;
					}).set('prompt','重奏：为'+get.translation(target)+'选择一项效果：');
					'step 1'
					if (result.control){
						player.loselili();
						if (event.controlList[result.index] == '获得【潜行】并暗置'){
							for(var i=0;i<ui.skillPile.childNodes.length;i++){
								if (ui.skillPile.childNodes[i].name == 'qianxing'){
									target.gain(ui.skillPile.childNodes[i]);
									target.addSkill('qianxing_skill2');
									break;
								} else if (i == ui.skillPile.childNodes.length -1){
									player.say('没找到【潜行】');                      
								}
							}
							player.storage.chongzou.push(1);
						} else if (event.controlList[result.index] == '获得【雨至】一次'){
							target.addSkill('kc_yuzhi');
							target.addSkill('chongzou_2');
							player.storage.chongzou.push(2);
						} else if (event.controlList[result.index] == '使用攻击牌指定目标后，对目标造成1点灵击伤害，直到其回合结束'){
							target.addTempSkill('chongzou_3',{player:'phaseAfter'});
							player.storage.chongzou.push(3);
						}
						game.log(player, '令', target, '获得了以下效果：'+event.controlList[result.index]);
					}
				},
				ai:{
					order:4,
					result:{
						target:function(player,target){
							if(get.attitude(player,target)>0){
								if (player.lili <= 2) return 0; 
								return 2;
							}
							return 0;
						}
					},
				},
			},
			chongzou_1:{
				direct:true,
				trigger:{player:'phaseBegin'},
				content:function(){
					player.storage.chongzou=[];
				},
			},
			chongzou_2:{
				direct:true,
				trigger:{player:'useSkillAfter'},
				filter:function(event, player){
					return event.skill == 'kc_yuzhi_2';
				},
				content:function(){
					if (player.name != 'shigure') player.removeSkill('kc_yuzhi');
					player.removeSkill('chongzou_1');
				}
			},
			chongzou_3:{
				forced:true,
				trigger:{player:'useCardToBefore'},
				filter:function(event, player){
					return get.subtype(event.card) == 'attack';
				},
				content:function(){
					trigger.target.damage('thunder');
				},
			},
			moxin1:{
				trigger:{global:'phaseEnd'},
				//direct:true,
				filter:function(event,player){
					return event.player.isAlive() && event.player.getStat('damage');
				},
				check:function(event,player){
					return get.attitude(player,event.player) >= 0;
				},
				content:function(){
					'step 0'
					var list = [];
					if (trigger.player.lili<trigger.player.maxlili){
						list.push(get.translation(trigger.player)+'获得灵力');
					}
					list.push('摸一张牌，交给'+get.translation(trigger.player)+'一张牌');
					player.chooseControl(list,function(event,player){
						if (!_status.currentPhase.isTurnedOver() && _status.currentPhase.lili < 3) return get.translation(trigger.player)+'获得灵力';
						return '摸一张牌，交给'+get.translation(trigger.player)+'一张牌';
					});
					'step 1'
					if (result.control == get.translation(trigger.player)+'获得灵力'){
						trigger.player.gainlili();
					} else if (result.control == '摸一张牌，交给'+get.translation(trigger.player)+'一张牌'){
						player.draw();
						if (trigger.player != player){
							player.chooseCard('hej','交给'+get.translation(trigger.player)+'一张牌',true).set('ai',function(card){
								return 5-get.value(card);
							});
						}
					}
					'step 2'
					if(result.bool){
						trigger.player.gain(result.cards[0]);
						player.$give(1,trigger.player);
					}
				},
			},
			xiaoyu:{
				audio:2,
				enable:'phaseUse',
				usable:1,
				filter:function(event,player){
					return player.lili>0;
				},
				filterTarget:function(card,player,target){
					if(target.hp>=target.maxHp) return false;
					return true;
				},
				selectTarget:1,
				content:function(){
					if (player.lili > 0) player.loselili();
					target.recover();
				},
				ai:{
					order:7,
					result:{
						target:function(player,target){
							if(get.attitude(player,target)>0){
								return get.recoverEffect(target,player,player)+1;
							}
							return 0;
						}
					},
					threaten:2
				}
			},
			jinhua:{
				audio:2,
				enable:'phaseUse',
				usable:1,
				filter:function(event,player){
					return player.lili>0;
				},
				filterTarget:function(card,player,target){
					return target.countCards('hej');
				},
				selectTarget:1,
				content:function(){
					"step 0"
					if (player.lili > 0) player.loselili();
					target.chooseCard('hej','净化：你可以重铸任意张牌', [1, Infinity]).set('ai',function(card){
						return -get.value(card);
					});
					"step 1"
					if (result.bool&&result.cards.length){
						target.recast(result.cards);
					}
				},
				ai:{
					order:1,
					result:{
						target:function(player,target){
							return target.countCards('h') - 3;
						}
					},
				}
			},
			shengbi:{
				audio:2,
				trigger:{global:'phaseBegin'},
				filter:function(event, player){
					if (get.mode() == 'boss' && event.player != game.boss) return false;
					return player.lili > 0;
				},
				content:function(){
					"step 0"
					player.loselili();
					player.chooseTarget('圣壁：指定一名角色，该角色本回合受到的第一次伤害-1。').set('ai',function(target){
						return get.attitude(_status.event.player,target);
					});
					'step 1'
					if (result.bool){
						player.logSkill('shengbi',result.targets);
						game.notify('圣壁发动');
						result.targets[0].addTempSkill('shengbi_skill');
						
					}
				},
				check:function(event, player){
					return -get.attitude(player, event.player) && player.lili > 2; 
				},
			},
			shengbi_skill:{
				trigger:{player:'damageBegin'},
				forced:true,
				content:function(){
					player.removeSkill('shengbi_skill');
					trigger.num--;
				}
			},
			liyu:{
				audio:2,
				trigger:{player:'phaseDrawBefore'},
				content:function(){
					"step 0"
					player.chooseTarget(get.prompt('liyu'),function(card,player,target){
						return player!=target;
					},function(target){
						return get.attitude(_status.event.player,target);
					});
					"step 1"
					if(result.bool){
						event.target = result.targets[0];
						event.list = ['对方摸一张牌','对方回复1点体力','对方获得1点灵力','对方摸一张技能牌'];
						player.logSkill('liyu',result.targets);
						player.chooseControl(event.list, true).set('prompt','要送给'+get.translation(event.target)+'什么？');
						trigger.cancel();
					}
					else{
						event.finish();
					}
					"step 2"
					if (result.control){
						if (result.control == '对方摸一张牌'){
							event.target.draw();
						} else if (result.control == '对方回复1点体力'){
							event.target.recover();
						} else if (result.control == '对方获得1点灵力'){
							event.target.gainlili();
						} else if (result.control == '对方摸一张技能牌'){
							event.target.drawSkill();
						}
						event.list.remove(result.control);
						event.target.chooseControl(event.list, true).set('prompt','要送给'+get.translation(player)+'什么？');
					}
					"step 3"
					if (result.control){
						if (result.control == '对方摸一张牌'){
							player.draw();
						} else if (result.control == '对方回复1点体力'){
							player.recover();
						} else if (result.control == '对方获得1点灵力'){
							player.gainlili();
						} else if (result.control == '对方摸一张技能牌'){
							player.drawSkill();
						}
					}
				},
				check:function(event, player){
					return true;
				}
			},
			zhoufa:{
				audio:2,
				trigger:{player:'phaseEnd'},
				filter:function(event, player){
					return player.countCards('he',function(card){
						return get.bonus(card) > 0;	
					});
				},
				content:function(){
					"step 0"
					player.chooseCardTarget({
						prompt:'弃置一张有灵力的牌，令一名角色获得一个摸牌阶段或出牌阶段',
						filterCard:function(card,player){
							return get.bonus(card) > 0;
						},
						position:'he',
						filterTarget:function(card,player,target){
							return true;
						},
						ai1:function(card){
							if(_status.event.check) return 0;
							return 6-get.value(card);
						},
						ai2:function(target){
							return get.attitude(player, target);
						},
					});
					"step 1"
					if(result.targets){
						player.discard(result.cards[0]);
						player.line(result.targets[0], 'green');
						event.target = result.targets[0];
						event.target.chooseControl(['摸牌阶段','出牌阶段'], true).set('prompt','选择一个阶段执行');
					}
					"step 2"
					if (result.control){
						event.target.addSkill('zhoufa_phase');
						event.target.storage.zhoufa = result.control;
					}
				},		
				check:function(event, player){
					return true;
				},
			},
			zhoufa_phase:{
				trigger:{global:'phaseAfter'},
				direct:true,
				content:function(){
					if (player.storage.zhoufa){
						if (player.storage.zhoufa == '摸牌阶段'){
							player.phaseDraw();
						} else if (player.storage.zhoufa == '出牌阶段'){
							player.phaseUse();
						}
					}
					player.removeSkill('zhoufa_phase');
					delete player.storage.zhoufa;
				},
			},
			shuitian:{
				spell:['shuitian_1'],
				cost:0,
				audio:2,
				trigger:{player:'phaseBeginStart'},
				filter:function(event,player){
					return player.lili > 1 && game.hasPlayer(function(current){
						return current.hp < current.maxHp || current.lili < current.maxlili;
					});
				},
				check:function(event,player){
					if(player.lili > 2) return true;
				},
				content:function(){
					player.storage.shuitian = player.lili - 1; 
					player.loselili(player.lili - 1);
					player.turnOver();
				},
			},
			shuitian_1:{
				trigger:{player:'phaseBegin'},
				direct:true,
				content:function(){
					"step 0"
					if (!player.storage.shuitian){
						delete player.storage.shuitian;
						event.finish();
					}
					if (player.storage.shuitian == 4){
						if (!game.dead || game.dead.length == 0) return ;
						game.players.addArray(game.dead);
					}
					"step 1"
					player.chooseTarget('为一名角色分配1点体力或1点灵力，还剩'+player.storage.shuitian+'点', function(card, player, target){
						if ((target.hp >= target.maxHp || target.storage.shuihp) && (target.lili >= target.maxlili || target.storage.shuilili)) return false;
						return true;
					}).ai=function(target){
						return get.attitude(player,target)>0;
					};
					"step 2"
					if(result.bool){
						event.target = result.targets[0];
						event.control = ['回复1点体力','获得1点灵力'];
						if (event.target.storage.shuihp || event.target.hp >= event.target.maxHp){
							event.control.remove('回复1点体力');
						}
						if (event.target.storage.shuilili || event.target.lili >= event.target.maxlili){
							event.control.remove('获得1点灵力');
						}
						player.chooseControl(event.control, true).set('prompt','要让'+get.translation(event.target)+'怎么做？');
					} else {
						event.finish();
					}
					"step 3"
					if (result.control == '回复1点体力'){
						if (event.target.isDead()){
							event.target.revive(1);
							if (event.target.node.dieidentity){
								event.target.node.dieidentity.hide();
								delete event.target.node.dieidentity;
							}
						} else {
							event.target.recover();
						}
						event.target.storage.shuihp = true;
					} else if (result.control == '获得1点灵力'){
						event.target.gainlili();
						event.target.storage.shuilili = true;
					}
					"step 4"
					player.storage.shuitian --;
					if (player.storage.shuitian){
						event.goto(1);
					} else if (!player.storage.shuitian){
						game.players.remove(game.dead);
						delete player.storage.shuitian;
						var players = game.filterPlayer();
						for (var i = 0; i < players.length; i ++){
							delete players[i].storage.shuihp;
							delete players[i].storage.shuilili;
						}
					}
				},
			},
			boss_sansi_skill:{
				global:'boss_sansi2',
			},
			boss_sansi2:{
				audio:2,
				enable:'phaseUse',
				usable:1,
				filter:function(event,player){
					return game.hasPlayer(function(target){
						return target.identity == player.identity&&target.hasSkill('boss_sansi_skill');
					});
				},
				position:'hej',
				filterCard:true,
				selectCard:function(){
					var player=_status.event.player;
					var num = game.countPlayer(function(current){
						return current.isEnemyOf(player);
					});
					return [1,num];
				},
				prompt:'重铸至多X张牌，X为与你不同阵营的角色数',
				check:function(card){
					return 6-get.value(card)
				},
				discard:false,
				content:function(){
					player.recast(cards);
				},
				ai:{
					order:1,
					result:{
						player:1
					},
					threaten:1.5
				},
			},
			boss_gushou_skill:{
				global:'boss_gushou2',
			},
			boss_gushou2:{
				mod:{
					maxHandcard:function(player,num){
						return num + 2 * game.countPlayer(function(current){
							return current.isFriendOf(player) && current.hasSkill('boss_gushou_skill');
						});
					},
				}
			},
			boss_poxian_skill:{
				forced:true,
				trigger:{global:['dieAfter', 'revive']},
				init:function(player){
					player.useSkill('boss_poxian_skill');
				},
				onremove:function(player){
					if (!player.countCards('j', 'boss_poxian')){
						player.removeSkill('boss_poxian_lianji');
					}
					if (!player.countCards('j', 'ziheng')){
						player.removeSkill('ziheng_skill');
					}
					if (!player.countCards('j', 'jinu')){
						player.removeSkill('jinu_skill');
					}
				},
				content:function(){
					if (game.countPlayer(function(current){
						return current.isFriendOf(player);
					}) == 1){
						player.addSkill('boss_poxian_lianji');
						player.addSkill('jinu_skill');
						player.addSkill('ziheng_skill');
					} else {
						if (!player.countCards('j', 'boss_poxian')){
							player.removeSkill('boss_poxian_lianji');
						}
						if (!player.countCards('j', 'ziheng')){
							player.removeSkill('ziheng_skill');
						}
						if (!player.countCards('j', 'jinu')){
							player.removeSkill('jinu_skill');
						}
					}
				},
			},
			boss_poxian_lianji:{
				mod:{
					cardUsable:function(card,player,num){
						if(card.name=='sha') return num + player.countCards('j', {name:'boss_poxian'});
					}
				},
			},
		},
		translate:{
			mode_boss_card_config:'魔王模式',
			zhu:'魔王',
			zhu2:'魔王',
			zhu_win:'<u>胜利条件：</u>所有勇者进入重整状态',
			zhu_lose:'<u>失败条件：</u>魔王坠机',
			cai:'勇者',
			cai2:'勇者',
			cai_win:'<u>胜利条件：</u>魔王坠机',
			cai_lose:'<u>失败条件：</u>所有勇者进入重整状态',
			zhong:'从',
			dianche:'废线电车',
			_dianche:'废线电车（给牌）',
			dianche_info:'出牌阶段，对一名其他角色使用；其选择一项：弃置三张牌，或你与其以外的角色各弃置两张牌。<br><u>追加效果：出牌阶段，你可以将此牌和一张牌交给一名其他角色。</u>',
			shenlin:'神灵复苏',
			_shenlin:'神灵复苏（护盾）',
			shenlin_info:'出牌阶段，对一名坠机/重整中的角色使用；该角色以1体力/1灵力/1手牌重新加入游戏。<br><u>追加效果：你受到伤害后，可以弃置此牌：防止你受到的伤害，直到回合结束。</u>',
			reidaisai2:'例大祭',
			reidaisai2_info:'出牌阶段，对任意名与你身份不同的角色使用；目标摸一张牌，你摸X张牌（X为目标数+1），然后你可以将任意张牌交给任意名其他角色。',
			tancheng:'坦诚相待',
			tancheng_info:'出牌阶段，对所有其他角色使用；目标展示所有手牌，然后你可以用一张牌交换其中一张与之不同类型的牌。',
			boss_sansi:'三思',
			boss_sansi2:'三思',
			boss_sansi_info:'一回合一次，与你相同阵营的角色的出牌阶段，其可以重铸X张牌（X为与其不同阵营的角色数）。',
			boss_poxian:'破限',
			boss_poxian_skill:'破限',
			boss_poxian_info:'锁定技，若没有其他与你相同阵营的角色，你视为持有【连击】，【激怒】，【制衡】。',
			boss_gushou:'固守',
			boss_gushou_info:'锁定技，与你相同阵营的角色的手牌上限+2。',
			boss_reimu:'灵梦',
			boss_reimu2:'灵梦',
			lingji:'灵击',
			lingji_info:'锁定技，你造成或受到弹幕伤害后，须判定，并获得判定牌：若为红色，你获得1点灵力。',
			bianshen_reimu:'二阶段转换',
			bianshen_reimu_info:'体力值变为4时，或灵力值变为5时。',
			mengxiangtiansheng:'梦想天生',
			mengxiangtiansheng_info:'准备阶段，或结束阶段，你可以消耗1点灵力，视为对所有其他角色使用了一张【轰！】。',
			boss_cirno:'琪露诺',
			boss_cirno2:'琪露诺',
			bianshen_cirno:'二阶段转换',
			bianshen_cirno_info:'体力值变为4时，或你获得牌后，手牌数大于其他角色手牌数总和。',
			jiqiang:"冰柱机枪",
			jiqiang_info:'锁定技，所有其他角色的手牌上限-2；一名其他角色的回合结束时，若其手牌数小于你，摸一张牌，对其造成1点灵击伤害，然后你可以对其使用一张牌。',
			zuanshi:'钻石风暴',
			zuanshi_info:'锁定技，出牌阶段开始时，你摸X张牌并展示（X为你手牌中【轰！】的数量）：直到你的回合开始，与这些牌同名的牌均视为【轰！】，且你的手牌上限+X。',
			zuanshi2:'钻石风暴（转化【轰！】）',
			jubing:'巨冰破碎',
			jubing_info:'限定技，锁定技，准备阶段，若你的体力为1，你对所有其他角色造成9点灵击伤害。',
			boss_nianshou:'年兽',
			boss_nianrui:'年瑞',
			boss_nianrui_info:'锁定技，摸牌阶段，你额外摸两张牌。',
			boss_qixiang:'祺祥',
			boss_qixiang1:'祺祥',
			boss_qixiang2:'祺祥',
			boss_qixiang_info:'乐不思蜀判定时，你的方块判定牌视为红桃；兵粮寸断判定时，你的黑桃判定牌视为草花',
			boss_damagecount:'沙袋挑战',
			boss_damagecount_info:'锁定技，跳过你的出牌阶段。<br>你在6分钟之内可以对我造成多少伤害呢？',
			mode_boss_character_config:'挑战角色',
			boss_zhaoyun:'高达一号',
			boss_juejing:'绝境',
			boss_juejing2:'绝境',
			boss_juejing_info:'锁定技，摸牌阶段开始时，你不摸牌；锁定技，你失去牌时，若你的手牌数小于4，你将手牌补至四张',
			longhun:'龙魂',
			longhun1:'龙魂♥︎',
			longhun2:'龙魂♦︎',
			longhun3:'龙魂♠︎',
			longhun4:'龙魂♣︎',
			longhun_info:'你可以将同花色的X张牌按下列规则使用或打出：红桃当【葱】，方块当具火焰伤害的【轰！】，梅花当【躲～】，黑桃当【请你住口！】（X为你的体力且至少为1）',
			boss_saitama:'斗篷光头',
			punch:'普通的技能',
			punch_audio1:'啊，用力过猛了。',
			punch_audio2:'今天是星期几来着……',
			punch_info:'锁定技，你造成伤害时，该伤害……啊，怎么又是一拳就打死了啊？！',
			serious:'认真一点吧',
			serious_audio1:'你们好像很厉害的样子。',
			serious_audio2:'稍微认真一点吧？',
			serious_info:'锁定技，结束阶段，你摸X张牌，并将灵力和灵力上限补至X（X为游戏轮次数）。',
			boss_saitama_die:'啊……就是这种感觉……',
			boss_fapaiji:'发牌姬',
			toutian:'偷天',
			toutian_info:'一回合一次，出牌阶段，你可以消耗1点灵力，创建一张牌（可以是其他模式或其他游戏的牌）并获得之。',
			huanri:'换日',
			huanri_judge:'换日',
			huanri_info:'一名角色摸一张牌时，或判定时，你可以观看牌堆，将其中一张牌置于牌堆顶。',
			huanri_judge_info:'一名角色摸一张牌时，或判定时，你可以观看牌堆，将其中一张牌置于牌堆顶。',
			boss_turncount:'存活挑战',
			boss_turncount_info:'锁定技，你在游戏失败前，能够撑多少轮呢？<br><br>注：建议在左上角[选项-开始-魔王]中将[单人控制]选项打开',
			longjuan:'龙卷',
			longjuan_count:'龙卷（计数）',
			longjuan_count_bg:'卷',
			longjuan_info:'结束阶段，你可以令一名角色于回合结束后进行一个额外的出牌阶段；若你在本回合前的6回合内没有进行过回合，改为令其进行一个额外的回合。',
			yuri:'由理',
			chongzou:'重奏',
			chongzou_info:'一回合每项各一次，出牌阶段，你可以消耗1点灵力，令一名角色：获得一张【潜行】并暗置之；获得【雨至】，该技能发动后失去；直到其回合结束，其使用攻击牌指定目标时，对目标造成1点灵击伤害。',
			moxin1:'齐心',
			moxin1_info:'一名角色的结束阶段，若其本回合造成过伤害，你可以令其获得一点灵力，或摸一张牌然后交给其一张牌。',
			priestress:'女神官',
			xiaoyu:'小愈',
			xiaoyu_info:'一回合一次，出牌阶段，你可以消耗1点灵力，令一名角色回复1点体力。',
			jinhua:'净化',
			jinhua_info:'一回合一次，出牌阶段，你可以消耗1点灵力，令一名角色可以重铸任意张牌。',
			shengbi:'圣壁',
			shengbi_info:'魔王的回合开始时，你可以消耗1点灵力并指定一名角色：其本回合第一次受到伤害时，该伤害-1。',
			tamamo:'玉藻前',
			liyu:'礼浴',
			liyu_info:'你可以跳过摸牌阶段，并指定一名其他角色：你与其各选择不同的一项：令对方摸一张牌；令对方回复1点体力；令对方获得1点灵力；或令对方摸一张技能牌。',
			zhoufa:'咒法',
			zhoufa_info:'结束阶段，你可以弃置一张有灵力的牌，令一名角色选择一项：回合结束后，其进行一个额外的：摸牌阶段，或出牌阶段。',
			shuitian:'水天日光天照八野镇石',
			shuitian_info:'符卡技（X）（X为你的灵力值-1）准备阶段，你可以为任意名角色分配体力回复或灵力获得，一名角色至多各1点，共计X点；若X为4，你可以以此法指定坠机/重整中的角色，令其重新加入游戏。',
			boss_mokou:'妹红',
			boss_mokou2:'妹红',
			huoniao1:'火鸟　-凤翼天翔-',
			huoniao1_info:'准备阶段，你可以失去1点体力，视为使用了一张【弹幕狂欢】。',
			huoniao2:'火鸟　‐不死传说‐',
			huoniao2_info:'锁定技，准备阶段，你视为使用了一张强化的【弹幕狂欢】。',
			bianshen_mokou:'二阶段转换',
			bianshen_mokou_info:'你进入决死状态。',
			businiao_boss:'不死鸟重生',
			businiao_boss_info:'锁定技，结束阶段，你回复X点体力，并获得X点灵力（X为你本回合造成的伤害值+1）。',
		},
		get:{
			rawAttitude:function(from,to){
				return (from.side===to.side?100:-100);
			}
		}
	};
});
