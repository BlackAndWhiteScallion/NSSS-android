.class Lorg/chromium/ui/VSyncMonitor$2;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lorg/chromium/ui/VSyncMonitor$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/VSyncMonitor;


# direct methods
.method constructor <init>(Lorg/chromium/ui/VSyncMonitor;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/chromium/ui/VSyncMonitor$2;->this$0:Lorg/chromium/ui/VSyncMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    const-string v2, "VSyncTimer"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lorg/chromium/ui/VSyncMonitor$2;->this$0:Lorg/chromium/ui/VSyncMonitor;

    invoke-static {v2}, Lorg/chromium/ui/VSyncMonitor;->access$500(Lorg/chromium/ui/VSyncMonitor;)J

    move-result-wide v0

    .line 124
    .local v0, "currentTime":J
    iget-object v2, p0, Lorg/chromium/ui/VSyncMonitor$2;->this$0:Lorg/chromium/ui/VSyncMonitor;

    invoke-static {v2, v0, v1, v0, v1}, Lorg/chromium/ui/VSyncMonitor;->access$600(Lorg/chromium/ui/VSyncMonitor;JJ)V

    .line 125
    const-string v2, "VSyncTimer"

    invoke-static {v2}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 126
    return-void
.end method
