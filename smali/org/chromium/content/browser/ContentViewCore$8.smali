.class Lorg/chromium/content/browser/ContentViewCore$8;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/ContentViewCore;->getPastePopup()Lorg/chromium/content/browser/input/PastePopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 0

    .prologue
    .line 2699
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$8;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public paste()V
    .locals 1

    .prologue
    .line 2702
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$8;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1100(Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->paste()V

    .line 2703
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$8;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-static {v0}, Lorg/chromium/content/browser/ContentViewCore;->access$1000(Lorg/chromium/content/browser/ContentViewCore;)V

    .line 2704
    return-void
.end method
