.class Lorg/xwalk/core/XWalkActivity$2;
.super Ljava/lang/Object;
.source "XWalkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xwalk/core/XWalkActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xwalk/core/XWalkActivity;


# direct methods
.method constructor <init>(Lorg/xwalk/core/XWalkActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lorg/xwalk/core/XWalkActivity$2;->this$0:Lorg/xwalk/core/XWalkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/xwalk/core/XWalkActivity$2;->this$0:Lorg/xwalk/core/XWalkActivity;

    invoke-virtual {v0}, Lorg/xwalk/core/XWalkActivity;->onXWalkReady()V

    .line 123
    return-void
.end method
