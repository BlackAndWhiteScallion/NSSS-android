.class final Lorg/chromium/mojom/mojo/Application_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "Application_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/Application$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 49
    return-void
.end method


# virtual methods
.method public acceptConnection(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/ServiceProvider;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "requestorUrl"    # Ljava/lang/String;
    .param p3, "exposedServices"    # Lorg/chromium/mojom/mojo/ServiceProvider;
    .param p4, "allowedInterfaces"    # [Ljava/lang/String;
    .param p5, "resolvedUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            ">;",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "services":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/mojo/ServiceProvider;>;"
    new-instance v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;-><init>()V

    .line 65
    .local v0, "_message":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->requestorUrl:Ljava/lang/String;

    .line 66
    iput-object p2, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 67
    iput-object p3, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    .line 68
    iput-object p4, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->allowedInterfaces:[Ljava/lang/String;

    .line 69
    iput-object p5, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->resolvedUrl:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 74
    return-void
.end method

.method public initialize(Lorg/chromium/mojom/mojo/Shell;Ljava/lang/String;)V
    .locals 5
    .param p1, "shell"    # Lorg/chromium/mojom/mojo/Shell;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;-><init>()V

    .line 54
    .local v0, "_message":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    .line 55
    iput-object p2, v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->url:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 60
    return-void
.end method

.method public onQuitRequested(Lorg/chromium/mojom/mojo/Application$OnQuitRequestedResponse;)V
    .locals 8
    .param p1, "callback"    # Lorg/chromium/mojom/mojo/Application$OnQuitRequestedResponse;

    .prologue
    .line 78
    new-instance v0, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedParams;-><init>()V

    .line 79
    .local v0, "_message":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsForwardToCallback;

    invoke-direct {v3, p1}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsForwardToCallback;-><init>(Lorg/chromium/mojom/mojo/Application$OnQuitRequestedResponse;)V

    invoke-interface {v1, v2, v3}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    .line 87
    return-void
.end method
