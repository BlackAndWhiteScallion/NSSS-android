.class Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "Application_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/Application$OnQuitRequestedResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationOnQuitRequestedResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;
    .param p3, "requestId"    # J

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 515
    iput-object p2, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 516
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;->mRequestId:J

    .line 517
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "canQuit"    # Ljava/lang/Boolean;

    .prologue
    const/4 v6, 0x2

    .line 521
    new-instance v1, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParams;-><init>()V

    .line 522
    .local v1, "_response":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParams;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParams;->canQuit:Z

    .line 523
    iget-object v2, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    iget-wide v4, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v6, v6, v4, v5}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 530
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 531
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 504
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;->call(Ljava/lang/Boolean;)V

    return-void
.end method
