.class final Lorg/chromium/base/ApplicationStatus$2;
.super Ljava/lang/Object;
.source "ApplicationStatus.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/ApplicationStatus;->initialize(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 138
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 142
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 143
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 147
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 148
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 152
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 153
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 160
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 161
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 165
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lorg/chromium/base/ApplicationStatus;->access$100(Landroid/app/Activity;I)V

    .line 166
    return-void
.end method
