.class public abstract Lorg/xwalk/core/XWalkDownloadListener;
.super Ljava/lang/Object;
.source "XWalkDownloadListener.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private bridge:Ljava/lang/Object;

.field private constructorParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private constructorTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

.field private postWrapperMethod:Lorg/xwalk/core/ReflectMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lorg/xwalk/core/XWalkDownloadListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/xwalk/core/XWalkDownloadListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorTypes:Ljava/util/ArrayList;

    .line 33
    iget-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorTypes:Ljava/util/ArrayList;

    const-class v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lorg/xwalk/core/XWalkDownloadListener;->reflectionInit()V

    .line 39
    return-void
.end method


# virtual methods
.method getBridge()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lorg/xwalk/core/XWalkDownloadListener;->bridge:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method reflectionInit()V
    .locals 8

    .prologue
    .line 54
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->initEmbeddedMode()V

    .line 56
    invoke-static {}, Lorg/xwalk/core/XWalkCoreWrapper;->getInstance()Lorg/xwalk/core/XWalkCoreWrapper;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    .line 57
    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    if-nez v5, :cond_1

    .line 58
    invoke-static {p0}, Lorg/xwalk/core/XWalkCoreWrapper;->reserveReflectObject(Ljava/lang/Object;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 63
    .local v2, "length":I
    add-int/lit8 v5, v2, 0x1

    new-array v3, v5, [Ljava/lang/Class;

    .line 64
    .local v3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 65
    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorTypes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 66
    .local v4, "type":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 67
    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    check-cast v4, Ljava/lang/String;

    .end local v4    # "type":Ljava/lang/Object;
    invoke-virtual {v5, v4}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v3, v1

    .line 68
    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    iget-object v6, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    iget-object v7, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    .restart local v4    # "type":Ljava/lang/Object;
    :cond_3
    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_4

    .line 70
    check-cast v4, Ljava/lang/Class;

    .end local v4    # "type":Ljava/lang/Object;
    aput-object v4, v3, v1

    goto :goto_2

    .line 72
    .restart local v4    # "type":Ljava/lang/Object;
    :cond_4
    sget-boolean v5, Lorg/xwalk/core/XWalkDownloadListener;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 76
    .end local v4    # "type":Ljava/lang/Object;
    :cond_5
    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v2

    .line 77
    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lorg/xwalk/core/ReflectConstructor;

    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->coreWrapper:Lorg/xwalk/core/XWalkCoreWrapper;

    const-string v6, "XWalkDownloadListenerBridge"

    invoke-virtual {v5, v6}, Lorg/xwalk/core/XWalkCoreWrapper;->getBridgeClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lorg/xwalk/core/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 81
    .local v0, "constructor":Lorg/xwalk/core/ReflectConstructor;
    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->constructorParams:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/xwalk/core/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->bridge:Ljava/lang/Object;

    .line 83
    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/xwalk/core/XWalkDownloadListener;->postWrapperMethod:Lorg/xwalk/core/ReflectMethod;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Lorg/xwalk/core/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
