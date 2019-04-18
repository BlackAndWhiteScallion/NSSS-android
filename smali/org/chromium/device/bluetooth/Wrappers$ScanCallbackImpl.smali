.class Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;
.super Landroid/bluetooth/le/ScanCallback;
.source "Wrappers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/device/bluetooth/Wrappers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScanCallbackImpl"
.end annotation


# instance fields
.field final mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;


# direct methods
.method constructor <init>(Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;)V
    .locals 0
    .param p1, "wrapperCallback"    # Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    .line 166
    iput-object p1, p0, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    .line 167
    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v2, "resultsWrapped":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    .line 174
    .local v1, "result":Landroid/bluetooth/le/ScanResult;
    new-instance v3, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;

    invoke-direct {v3, v1}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;-><init>(Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v1    # "result":Landroid/bluetooth/le/ScanResult;
    :cond_0
    iget-object v3, p0, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    invoke-virtual {v3, v2}, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;->onBatchScanResult(Ljava/util/List;)V

    .line 177
    return-void
.end method

.method public onScanFailed(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    invoke-virtual {v0, p1}, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;->onScanFailed(I)V

    .line 187
    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 2
    .param p1, "callbackType"    # I
    .param p2, "result"    # Landroid/bluetooth/le/ScanResult;

    .prologue
    .line 181
    iget-object v0, p0, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackImpl;->mWrapperCallback:Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;

    new-instance v1, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;

    invoke-direct {v1, p2}, Lorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;-><init>(Landroid/bluetooth/le/ScanResult;)V

    invoke-virtual {v0, p1, v1}, Lorg/chromium/device/bluetooth/Wrappers$ScanCallbackWrapper;->onScanResult(ILorg/chromium/device/bluetooth/Wrappers$ScanResultWrapper;)V

    .line 182
    return-void
.end method
