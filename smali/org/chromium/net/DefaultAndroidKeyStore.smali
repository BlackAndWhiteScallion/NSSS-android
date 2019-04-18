.class public Lorg/chromium/net/DefaultAndroidKeyStore;
.super Ljava/lang/Object;
.source "DefaultAndroidKeyStore.java"

# interfaces
.implements Lorg/chromium/net/AndroidKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidKeyStoreInProcessImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private getOpenSSLKeyForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    const/4 v5, 0x0

    .line 124
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v2

    .line 126
    .local v2, "javaKey":Ljava/security/PrivateKey;
    if-nez v2, :cond_1

    .line 127
    const-string v6, "AndroidKeyStoreInProcessImpl"

    const-string v7, "key == null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 177
    :cond_0
    :goto_0
    return-object v3

    .line 130
    :cond_1
    instance-of v6, v2, Ljava/security/interfaces/RSAPrivateKey;

    if-nez v6, :cond_2

    .line 131
    const-string v6, "AndroidKeyStoreInProcessImpl"

    const-string v7, "does not implement RSAPrivateKey"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 132
    goto :goto_0

    .line 138
    :cond_2
    :try_start_0
    const-string v6, "org.apache.harmony.xnet.provider.jsse.OpenSSLRSAPrivateKey"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 147
    .local v4, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 151
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Private key is not an OpenSSLRSAPrivateKey instance, its class name is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 153
    goto :goto_0

    .line 140
    .end local v4    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find system OpenSSLRSAPrivateKey class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 145
    goto :goto_0

    .line 161
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :try_start_1
    const-string v6, "getOpenSSLKey"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 162
    .local v1, "getKey":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    const/4 v3, 0x0

    .line 165
    .local v3, "opensslKey":Ljava/lang/Object;
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 167
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 169
    if-nez v3, :cond_0

    .line 171
    const-string v6, "AndroidKeyStoreInProcessImpl"

    const-string v7, "getOpenSSLKey() returned null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 172
    goto :goto_0

    .line 167
    :catchall_0
    move-exception v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 175
    .end local v1    # "getKey":Ljava/lang/reflect/Method;
    .end local v3    # "opensslKey":Ljava/lang/Object;
    :catch_1
    move-exception v0

    .line 176
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while trying to retrieve system EVP_PKEY handle: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 177
    goto/16 :goto_0
.end method


# virtual methods
.method public createKey(Ljava/security/PrivateKey;)Lorg/chromium/net/AndroidPrivateKey;
    .locals 1
    .param p1, "javaKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 47
    new-instance v0, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    invoke-direct {v0, p1, p0}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;-><init>(Ljava/security/PrivateKey;Lorg/chromium/net/DefaultAndroidKeyStore;)V

    return-object v0
.end method

.method public getECKeyOrder(Lorg/chromium/net/AndroidPrivateKey;)[B
    .locals 4
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 62
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 63
    .local v0, "javaKey":Ljava/security/PrivateKey;
    instance-of v2, v0, Ljava/security/interfaces/ECKey;

    if-eqz v2, :cond_0

    .line 64
    check-cast v0, Ljava/security/interfaces/ECKey;

    .end local v0    # "javaKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 65
    .local v1, "params":Ljava/security/spec/ECParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 68
    .end local v1    # "params":Ljava/security/spec/ECParameterSpec;
    :goto_0
    return-object v2

    .line 67
    .restart local v0    # "javaKey":Ljava/security/PrivateKey;
    :cond_0
    const-string v2, "AndroidKeyStoreInProcessImpl"

    const-string v3, "Not an ECKey instance!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getOpenSSLEngineForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;
    .locals 9
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    const/4 v5, 0x0

    .line 226
    :try_start_0
    const-string v6, "org.apache.harmony.xnet.provider.jsse.OpenSSLEngine"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 236
    .local v2, "engineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lorg/chromium/net/DefaultAndroidKeyStore;->getOpenSSLKeyForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;

    move-result-object v4

    .line 237
    .local v4, "opensslKey":Ljava/lang/Object;
    if-nez v4, :cond_1

    move-object v1, v5

    .line 271
    .end local v2    # "engineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "opensslKey":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v1

    .line 228
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find system OpenSSLEngine class: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 233
    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "engineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "opensslKey":Ljava/lang/Object;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getEngine"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 250
    .local v3, "getEngine":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 251
    const/4 v1, 0x0

    .line 253
    .local v1, "engine":Ljava/lang/Object;
    const/4 v6, 0x0

    :try_start_3
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 255
    const/4 v6, 0x0

    :try_start_4
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 257
    if-nez v1, :cond_2

    .line 259
    const-string v6, "AndroidKeyStoreInProcessImpl"

    const-string v7, "getEngine() returned null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 263
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Engine is not an OpenSSLEngine instance, its class name is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 265
    goto :goto_0

    .line 245
    .end local v1    # "engine":Ljava/lang/Object;
    .end local v3    # "getEngine":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No getEngine() method on OpenSSLKey member:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 248
    goto/16 :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "engine":Ljava/lang/Object;
    .restart local v3    # "getEngine":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 269
    .end local v1    # "engine":Ljava/lang/Object;
    .end local v3    # "getEngine":Ljava/lang/reflect/Method;
    :catch_2
    move-exception v0

    .line 270
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v6, "AndroidKeyStoreInProcessImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while trying to retrieve OpenSSLEngine object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v5

    .line 271
    goto/16 :goto_0
.end method

.method public getOpenSSLHandleForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)J
    .locals 10
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    const-wide/16 v6, 0x0

    .line 183
    invoke-direct {p0, p1}, Lorg/chromium/net/DefaultAndroidKeyStore;->getOpenSSLKeyForPrivateKey(Lorg/chromium/net/AndroidPrivateKey;)Ljava/lang/Object;

    move-result-object v4

    .line 184
    .local v4, "opensslKey":Ljava/lang/Object;
    if-nez v4, :cond_1

    move-wide v2, v6

    .line 217
    :cond_0
    :goto_0
    return-wide v2

    .line 196
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "getPkeyContext"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v5, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 202
    .local v1, "getPkeyContext":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    const-wide/16 v2, 0x0

    .line 205
    .local v2, "evp_pkey":J
    const/4 v5, 0x0

    :try_start_2
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 207
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 209
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    .line 211
    const-string v5, "AndroidKeyStoreInProcessImpl"

    const-string v8, "getPkeyContext() returned null"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 215
    .end local v1    # "getPkeyContext":Ljava/lang/reflect/Method;
    .end local v2    # "evp_pkey":J
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AndroidKeyStoreInProcessImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while trying to retrieve system EVP_PKEY handle: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v6

    .line 217
    goto :goto_0

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 199
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "AndroidKeyStoreInProcessImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No getPkeyContext() method on OpenSSLKey member:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v6

    .line 200
    goto :goto_0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "getPkeyContext":Ljava/lang/reflect/Method;
    .restart local v2    # "evp_pkey":J
    :catchall_0
    move-exception v5

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method

.method public getPrivateKeyType(Lorg/chromium/net/AndroidPrivateKey;)I
    .locals 3
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 112
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 113
    .local v0, "javaKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "keyAlgorithm":Ljava/lang/String;
    const-string v2, "RSA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v2, 0x0

    .line 119
    :goto_0
    return v2

    .line 116
    :cond_0
    const-string v2, "EC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const/4 v2, 0x2

    goto :goto_0

    .line 119
    :cond_1
    const/16 v2, 0xff

    goto :goto_0
.end method

.method public getRSAKeyModulus(Lorg/chromium/net/AndroidPrivateKey;)[B
    .locals 3
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 52
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v0

    .line 53
    .local v0, "javaKey":Ljava/security/PrivateKey;
    instance-of v1, v0, Ljava/security/interfaces/RSAKey;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Ljava/security/interfaces/RSAKey;

    .end local v0    # "javaKey":Ljava/security/PrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    .line 56
    .restart local v0    # "javaKey":Ljava/security/PrivateKey;
    :cond_0
    const-string v1, "AndroidKeyStoreInProcessImpl"

    const-string v2, "Not a RSAKey instance!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rawSignDigestWithPrivateKey(Lorg/chromium/net/AndroidPrivateKey;[B)[B
    .locals 8
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;
    .param p2, "message"    # [B

    .prologue
    const/4 v4, 0x0

    .line 74
    check-cast p1, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;

    .end local p1    # "key":Lorg/chromium/net/AndroidPrivateKey;
    invoke-virtual {p1}, Lorg/chromium/net/DefaultAndroidKeyStore$DefaultAndroidPrivateKey;->getJavaKey()Ljava/security/PrivateKey;

    move-result-object v1

    .line 76
    .local v1, "javaKey":Ljava/security/PrivateKey;
    const/4 v3, 0x0

    .line 80
    .local v3, "signature":Ljava/security/Signature;
    :try_start_0
    invoke-interface {v1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "keyAlgorithm":Ljava/lang/String;
    const-string v5, "RSA"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    const-string v5, "NONEwithRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 93
    .end local v2    # "keyAlgorithm":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 94
    const-string v5, "AndroidKeyStoreInProcessImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported private key algorithm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_1
    return-object v4

    .line 86
    .restart local v2    # "keyAlgorithm":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v5, "EC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    const-string v5, "NONEwithECDSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 100
    .end local v2    # "keyAlgorithm":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 101
    invoke-virtual {v3, p2}, Ljava/security/Signature;->update([B)V

    .line 102
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "AndroidKeyStoreInProcessImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while signing message with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " private key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public releaseKey(Lorg/chromium/net/AndroidPrivateKey;)V
    .locals 0
    .param p1, "key"    # Lorg/chromium/net/AndroidPrivateKey;

    .prologue
    .line 278
    return-void
.end method
