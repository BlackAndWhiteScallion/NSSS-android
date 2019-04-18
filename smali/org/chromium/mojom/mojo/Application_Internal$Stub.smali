.class final Lorg/chromium/mojom/mojo/Application_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "Application_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/Application_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/mojo/Application;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/Application;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/mojo/Application;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 95
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 12
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v9

    .line 102
    .local v9, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v9}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v8

    .line 103
    .local v8, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v10

    .line 126
    .end local v8    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v9    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v0

    .line 106
    .restart local v8    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v9    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v8}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v10

    .line 123
    goto :goto_0

    .line 108
    :pswitch_1
    sget-object v0, Lorg/chromium/mojom/mojo/Application_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v0, v9}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v0

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-virtual {v9}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;

    move-result-object v6

    .line 113
    .local v6, "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/Application;

    iget-object v1, v6, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->shell:Lorg/chromium/mojom/mojo/Shell;

    iget-object v2, v6, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/chromium/mojom/mojo/Application;->initialize(Lorg/chromium/mojom/mojo/Shell;Ljava/lang/String;)V

    move v0, v11

    .line 114
    goto :goto_0

    .line 117
    .end local v6    # "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationInitializeParams;
    :pswitch_3
    invoke-virtual {v9}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;

    move-result-object v6

    .line 119
    .local v6, "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojom/mojo/Application;

    iget-object v1, v6, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->requestorUrl:Ljava/lang/String;

    iget-object v2, v6, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->services:Lorg/chromium/mojo/bindings/InterfaceRequest;

    iget-object v3, v6, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->exposedServices:Lorg/chromium/mojom/mojo/ServiceProvider;

    iget-object v4, v6, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->allowedInterfaces:[Ljava/lang/String;

    iget-object v5, v6, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;->resolvedUrl:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lorg/chromium/mojom/mojo/Application;->acceptConnection(Ljava/lang/String;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/ServiceProvider;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    .line 120
    goto :goto_0

    .line 125
    .end local v6    # "data":Lorg/chromium/mojom/mojo/Application_Internal$ApplicationAcceptConnectionParams;
    .end local v8    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v9    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v7

    .local v7, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    move v0, v10

    .line 126
    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 10
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 133
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v2

    .line 135
    .local v2, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v1

    .line 136
    .local v1, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 152
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v3

    .line 139
    .restart local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v3, v4

    .line 149
    goto :goto_0

    .line 141
    :pswitch_1
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v3

    sget-object v5, Lorg/chromium/mojom/mojo/Application_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v3, v5, v2, p2}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v3

    goto :goto_0

    .line 144
    :pswitch_2
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v3

    invoke-static {v3}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedParams;

    .line 145
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v3

    check-cast v3, Lorg/chromium/mojom/mojo/Application;

    new-instance v6, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;

    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/Application_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v7

    invoke-virtual {v1}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v8

    invoke-direct {v6, v7, p2, v8, v9}, Lorg/chromium/mojom/mojo/Application_Internal$ApplicationOnQuitRequestedResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v3, v6}, Lorg/chromium/mojom/mojo/Application;->onQuitRequested(Lorg/chromium/mojom/mojo/Application$OnQuitRequestedResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 146
    goto :goto_0

    .line 151
    .end local v1    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v2    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v0

    .local v0, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    move v3, v4

    .line 152
    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
