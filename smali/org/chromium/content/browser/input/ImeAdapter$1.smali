.class Lorg/chromium/content/browser/input/ImeAdapter$1;
.super Ljava/lang/Object;
.source "ImeAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/input/ImeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/ImeAdapter;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter$1;->this$0:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->access$000(Lorg/chromium/content/browser/input/ImeAdapter;)V

    .line 99
    return-void
.end method
