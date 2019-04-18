.class final Lorg/chromium/mojom/mojo/Shell_Internal$Proxy;
.super Lorg/chromium/mojo/bindings/Interface$AbstractProxy;
.source "Shell_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/Shell$Proxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Shell_Internal;
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
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V

    .line 48
    return-void
.end method


# virtual methods
.method public connectToApplication(Lorg/chromium/mojom/mojo/UrlRequest;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/ServiceProvider;Lorg/chromium/mojom/mojo/CapabilityFilter;)V
    .locals 5
    .param p1, "applicationUrl"    # Lorg/chromium/mojom/mojo/UrlRequest;
    .param p3, "exposedServices"    # Lorg/chromium/mojom/mojo/ServiceProvider;
    .param p4, "filter"    # Lorg/chromium/mojom/mojo/CapabilityFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojom/mojo/UrlRequest;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            ">;",
            "Lorg/chromium/mojom/mojo/ServiceProvider;",
            "Lorg/chromium/mojom/mojo/CapabilityFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "services":Lorg/chromium/mojo/bindings/InterfaceRequest;, "Lorg/chromium/mojo/bindings/InterfaceRequest<Lorg/chromium/mojom/mojo/ServiceProvider;>;"
    new-instance v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;-><init>()V

    .line 53
    .local v0, "_message":Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;
    iput-object p1, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->applicationUrl:Lorg/chromium/mojom/mojo/UrlRequest;

    .line 54
    iput-object p2, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    .line 55
    iput-object p3, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    .line 56
    iput-object p4, v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->filter:Lorg/chromium/mojom/mojo/CapabilityFilter;

    .line 57
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Shell_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Shell_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellConnectToApplicationParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 61
    return-void
.end method

.method public quitApplication()V
    .locals 5

    .prologue
    .line 65
    new-instance v0, Lorg/chromium/mojom/mojo/Shell_Internal$ShellQuitApplicationParams;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellQuitApplicationParams;-><init>()V

    .line 66
    .local v0, "_message":Lorg/chromium/mojom/mojo/Shell_Internal$ShellQuitApplicationParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Shell_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Shell_Internal$Proxy;->getProxyHandler()Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lorg/chromium/mojom/mojo/Shell_Internal$ShellQuitApplicationParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 70
    return-void
.end method
