.class Lorg/chromium/content/browser/ContentReadbackHandler$1;
.super Ljava/lang/Object;
.source "ContentReadbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentReadbackHandler;->getCompositorBitmapAsync(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentReadbackHandler;

.field final synthetic val$callback:Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentReadbackHandler;Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lorg/chromium/content/browser/ContentReadbackHandler$1;->this$0:Lorg/chromium/content/browser/ContentReadbackHandler;

    iput-object p2, p0, Lorg/chromium/content/browser/ContentReadbackHandler$1;->val$callback:Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lorg/chromium/content/browser/ContentReadbackHandler$1;->val$callback:Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lorg/chromium/content/browser/ContentReadbackHandler$GetBitmapCallback;->onFinishGetBitmap(Landroid/graphics/Bitmap;I)V

    .line 113
    return-void
.end method
