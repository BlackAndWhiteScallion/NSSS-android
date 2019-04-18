.class Lorg/chromium/content/browser/input/JoystickScrollProvider$1;
.super Ljava/lang/Object;
.source "JoystickScrollProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/input/JoystickScrollProvider;->onMotion(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/input/JoystickScrollProvider;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/input/JoystickScrollProvider;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider$1;->this$0:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/input/JoystickScrollProvider$1;->this$0:Lorg/chromium/content/browser/input/JoystickScrollProvider;

    invoke-static {v0}, Lorg/chromium/content/browser/input/JoystickScrollProvider;->access$000(Lorg/chromium/content/browser/input/JoystickScrollProvider;)V

    .line 86
    return-void
.end method
