.class public Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;
.super Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;
.source "XWalkWebResourceRequestHandlerBridge.java"


# instance fields
.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

.field private isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;-><init>()V

    .line 45
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getUrl"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 67
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "isForMainFrame"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 89
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "hasGesture"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 111
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getMethod"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 133
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "getRequestHeaders"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 21
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    .line 22
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->reflectionInit()V

    .line 23
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodSuper()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getMethodSuper()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 103
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getMethod()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersSuper()Ljava/util/Map;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public getRequestHeadersSuper()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 125
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 129
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 130
    .end local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v0

    .line 127
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .restart local v0    # "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getUrl()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlSuper()Landroid/net/Uri;

    move-result-object v0

    .line 30
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method public getUrlSuper()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 36
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_1

    .line 37
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .line 41
    .local v0, "ret":Landroid/net/Uri;
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 42
    .end local v0    # "ret":Landroid/net/Uri;
    :cond_0
    return-object v0

    .line 39
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->getUrl()Landroid/net/Uri;

    move-result-object v0

    .restart local v0    # "ret":Landroid/net/Uri;
    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public hasGesture()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureSuper()Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public hasGestureSuper()Z
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_0

    .line 81
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->hasGesture()Z

    move-result v0

    .line 86
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 83
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->hasGesture()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method public isForMainFrame()Z
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameSuper()Z

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isForMainFrameSuper()Z
    .locals 2

    .prologue
    .line 58
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    if-nez v1, :cond_0

    .line 59
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->isForMainFrame()Z

    move-result v0

    .line 64
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 61
    .end local v0    # "ret":Z
    :cond_0
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;

    invoke-virtual {v1}, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerInternal;->isForMainFrame()Z

    move-result v0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method reflectionInit()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 137
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 138
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkWebResourceRequestHandler"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 142
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectConstructor;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getUrlMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getUrl"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 147
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->isForMainFrameMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "isForMainFrame"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 149
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->hasGestureMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "hasGesture"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 151
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getMethodMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getMethod"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 153
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->getRequestHeadersMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkWebResourceRequestHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "getRequestHeaders"

    new-array v4, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v6, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
