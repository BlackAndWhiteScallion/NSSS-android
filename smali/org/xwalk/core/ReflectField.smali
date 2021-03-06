.class Lorg/xwalk/core/ReflectField;
.super Ljava/lang/Object;
.source "ReflectField.java"


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mField:Ljava/lang/reflect/Field;

.field private mInstance:Ljava/lang/Object;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lorg/xwalk/core/ReflectField;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/xwalk/core/ReflectField;->init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z

    .line 21
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 48
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Lorg/xwalk/core/ReflectField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lorg/xwalk/core/ReflectField;->mInstance:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 58
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ExceptionInInitializerError;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 54
    .end local v0    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public getInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/xwalk/core/ReflectField;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/xwalk/core/ReflectField;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .param p1, "instance"    # Ljava/lang/Object;
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    iput-object p1, p0, Lorg/xwalk/core/ReflectField;->mInstance:Ljava/lang/Object;

    .line 29
    if-eqz p2, :cond_0

    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object p2, p0, Lorg/xwalk/core/ReflectField;->mClass:Ljava/lang/Class;

    .line 30
    iput-object p3, p0, Lorg/xwalk/core/ReflectField;->mName:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    .line 33
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mClass:Ljava/lang/Class;

    if-nez v1, :cond_2

    .line 44
    :goto_1
    return v3

    .line 29
    .restart local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    goto :goto_0

    .line 36
    .end local p2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mClass:Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/ReflectField;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_2
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    move v3, v1

    goto :goto_1

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :try_start_1
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mClass:Ljava/lang/Class;

    iget-object v4, p0, Lorg/xwalk/core/ReflectField;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    .line 40
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 41
    :catch_1
    move-exception v1

    goto :goto_2

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_3
    move v1, v3

    .line 44
    goto :goto_3
.end method

.method public isNull()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const-string v0, ""

    .line 71
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/ReflectField;->mClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_2
    iget-object v1, p0, Lorg/xwalk/core/ReflectField;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/xwalk/core/ReflectField;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
