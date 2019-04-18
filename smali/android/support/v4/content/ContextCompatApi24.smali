.class public Landroid/support/v4/content/ContextCompatApi24;
.super Ljava/lang/Object;
.source "ContextCompatApi24.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDeviceEncryptedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceEncryptedStorageContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static isDeviceEncryptedStorage(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceEncryptedStorage()Z

    move-result v0

    return v0
.end method
