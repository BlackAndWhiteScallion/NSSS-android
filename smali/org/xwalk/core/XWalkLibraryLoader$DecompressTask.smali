.class Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;
.super Landroid/os/AsyncTask;
.source "XWalkLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/XWalkLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecompressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIsCompressed:Z

.field mIsDecompressed:Z

.field mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;Landroid/content/Context;)V
    .locals 0
    .param p1, "listener"    # Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 227
    iput-object p1, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;

    .line 228
    iput-object p2, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    .line 229
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v1, 0x0

    .line 243
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsCompressed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsDecompressed:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 247
    :goto_0
    return-object v0

    .line 245
    :cond_1
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryDecompressor;->decompressLibrary(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 252
    const-string v0, "XWalkLib"

    const-string v1, "DecompressTask cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 254
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;->onDecompressCancelled()V

    .line 255
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->onCancelled(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 259
    const-string v0, "XWalkLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecompressTask finished, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 261
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 262
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;->onDecompressCompleted()V

    .line 263
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 233
    const-string v0, "XWalkLib"

    const-string v1, "DecompressTask started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-static {p0}, Lorg/xwalk/core/XWalkLibraryLoader;->access$002(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 236
    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryDecompressor;->isCompressed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsCompressed:Z

    .line 237
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsCompressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/xwalk/core/XWalkLibraryDecompressor;->isDecompressed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsDecompressed:Z

    .line 238
    :cond_0
    iget-boolean v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsCompressed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mIsDecompressed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/xwalk/core/XWalkLibraryLoader$DecompressTask;->mListener:Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;

    invoke-interface {v0}, Lorg/xwalk/core/XWalkLibraryLoader$DecompressListener;->onDecompressStarted()V

    .line 239
    :cond_1
    return-void
.end method
