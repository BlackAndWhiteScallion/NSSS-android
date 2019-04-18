.class public Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;
.super Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;
.source "XWalkHttpAuthHandlerBridge.java"


# instance fields
.field private cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

.field private internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

.field private proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

.field private wrapper:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;)V
    .locals 5
    .param p1, "internal"    # Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 18
    invoke-direct {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;-><init>()V

    .line 40
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "proceed"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 59
    new-instance v0, Lorg/xwalk/core/internal/ReflectMethod;

    const-string v1, "cancel"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-direct {v0, v4, v1, v2}, Lorg/xwalk/core/internal/ReflectMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    .line 19
    iput-object p1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    .line 20
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->reflectionInit()V

    .line 21
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelSuper()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cancelSuper()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->cancel()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->cancel()V

    goto :goto_0
.end method

.method public getWrapper()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;

    return-object v0
.end method

.method public proceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectMethod;->isNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedSuper(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectMethod;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public proceedSuper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    if-nez v0, :cond_0

    .line 34
    invoke-super {p0, p1, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->internal:Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;

    invoke-virtual {v0, p1, p2}, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerInternal;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method reflectionInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 63
    invoke-static {}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getInstance()Lorg/xwalk/core/internal/XWalkCoreBridge;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    .line 64
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v0, Lorg/xwalk/core/internal/ReflectConstructor;

    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->coreBridge:Lorg/xwalk/core/internal/XWalkCoreBridge;

    const-string v2, "XWalkHttpAuthHandler"

    invoke-virtual {v1, v2}, Lorg/xwalk/core/internal/XWalkCoreBridge;->getWrapperClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lorg/xwalk/core/internal/ReflectConstructor;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 68
    .local v0, "constructor":Lorg/xwalk/core/internal/ReflectConstructor;
    invoke-virtual {v0}, Lorg/xwalk/core/internal/ReflectConstructor;->isNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Lorg/xwalk/core/internal/ReflectConstructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->proceedStringStringMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "proceed"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    .line 73
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->cancelMethod:Lorg/xwalk/core/internal/ReflectMethod;

    iget-object v2, p0, Lorg/xwalk/core/internal/XWalkHttpAuthHandlerBridge;->wrapper:Ljava/lang/Object;

    const-string v3, "cancel"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8, v3, v4}, Lorg/xwalk/core/internal/ReflectMethod;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Z

    goto :goto_0
.end method
