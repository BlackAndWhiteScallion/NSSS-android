.class final Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;
.super Lorg/chromium/mojo/bindings/Interface$Stub;
.source "NetworkService_Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/NetworkService_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/mojo/bindings/Interface$Stub",
        "<",
        "Lorg/chromium/mojom/mojo/NetworkService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojom/mojo/NetworkService;)V
    .locals 0
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "impl"    # Lorg/chromium/mojom/mojo/NetworkService;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lorg/chromium/mojo/bindings/Interface$Stub;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V

    .line 130
    return-void
.end method


# virtual methods
.method public accept(Lorg/chromium/mojo/bindings/Message;)Z
    .locals 7
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;

    .prologue
    const/4 v5, 0x0

    .line 135
    :try_start_0
    invoke-virtual {p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v3

    .line 137
    .local v3, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v2

    .line 138
    .local v2, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 155
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v4

    .line 141
    .restart local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v2}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v4, v5

    .line 152
    goto :goto_0

    .line 143
    :sswitch_0
    sget-object v4, Lorg/chromium/mojom/mojo/NetworkService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    invoke-static {v4, v3}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRunOrClosePipe(Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;)Z

    move-result v4

    goto :goto_0

    .line 146
    :sswitch_1
    invoke-virtual {v3}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v4

    invoke-static {v4}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;

    move-result-object v0

    .line 148
    .local v0, "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;
    invoke-virtual {p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v4

    check-cast v4, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v6, v0, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;->socket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    invoke-interface {v4, v6}, Lorg/chromium/mojom/mojo/NetworkService;->createUdpSocket(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    const/4 v4, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateUdpSocketParams;
    .end local v2    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v3    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v1

    .local v1, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    move v4, v5

    .line 155
    goto :goto_0

    .line 141
    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method public acceptWithResponder(Lorg/chromium/mojo/bindings/Message;Lorg/chromium/mojo/bindings/MessageReceiver;)Z
    .locals 16
    .param p1, "message"    # Lorg/chromium/mojo/bindings/Message;
    .param p2, "receiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;

    .prologue
    .line 162
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/mojo/bindings/Message;->asServiceMessage()Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v11

    .line 164
    .local v11, "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    invoke-virtual {v11}, Lorg/chromium/mojo/bindings/ServiceMessage;->getHeader()Lorg/chromium/mojo/bindings/MessageHeader;

    move-result-object v10

    .line 165
    .local v10, "header":Lorg/chromium/mojo/bindings/MessageHeader;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lorg/chromium/mojo/bindings/MessageHeader;->validateHeader(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const/4 v2, 0x0

    .line 200
    .end local v10    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v11    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :goto_0
    return v2

    .line 168
    .restart local v10    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .restart local v11    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :cond_0
    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/MessageHeader;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 197
    :pswitch_0
    const/4 v2, 0x0

    goto :goto_0

    .line 170
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v2

    sget-object v3, Lorg/chromium/mojom/mojo/NetworkService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    move-object/from16 v0, p2

    invoke-static {v2, v3, v11, v0}, Lorg/chromium/mojo/bindings/InterfaceControlMessagesHelper;->handleRun(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/mojo/bindings/ServiceMessage;Lorg/chromium/mojo/bindings/MessageReceiver;)Z

    move-result v2

    goto :goto_0

    .line 173
    :pswitch_2
    invoke-virtual {v11}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;

    move-result-object v8

    .line 175
    .local v8, "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v3, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v4, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;->boundSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v5, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v12

    move-object/from16 v0, p2

    invoke-direct {v5, v6, v0, v12, v13}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v4, v5}, Lorg/chromium/mojom/mojo/NetworkService;->createTcpBoundSocket(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/NetworkService$CreateTcpBoundSocketResponse;)V

    .line 176
    const/4 v2, 0x1

    goto :goto_0

    .line 179
    .end local v8    # "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpBoundSocketParams;
    :pswitch_3
    invoke-virtual {v11}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;

    move-result-object v8

    .line 181
    .local v8, "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v3, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->remoteAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v4, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->sendStream:Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;

    iget-object v5, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->receiveStream:Lorg/chromium/mojo/system/DataPipe$ProducerHandle;

    iget-object v6, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;->clientSocket:Lorg/chromium/mojo/bindings/InterfaceRequest;

    new-instance v7, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v12

    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v14

    move-object/from16 v0, p2

    invoke-direct {v7, v12, v0, v14, v15}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface/range {v2 .. v7}, Lorg/chromium/mojom/mojo/NetworkService;->createTcpConnectedSocket(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/NetworkService$CreateTcpConnectedSocketResponse;)V

    .line 182
    const/4 v2, 0x1

    goto :goto_0

    .line 185
    .end local v8    # "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateTcpConnectedSocketParams;
    :pswitch_4
    invoke-virtual {v11}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;

    move-result-object v8

    .line 187
    .local v8, "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v3, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->localAddress:Lorg/chromium/mojom/mojo/NetAddress;

    iget-object v4, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;->delegate:Lorg/chromium/mojom/mojo/HttpServerDelegate;

    new-instance v5, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v6

    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v12

    move-object/from16 v0, p2

    invoke-direct {v5, v6, v0, v12, v13}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v4, v5}, Lorg/chromium/mojom/mojo/NetworkService;->createHttpServer(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/HttpServerDelegate;Lorg/chromium/mojom/mojo/NetworkService$CreateHttpServerResponse;)V

    .line 188
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 191
    .end local v8    # "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceCreateHttpServerParams;
    :pswitch_5
    invoke-virtual {v11}, Lorg/chromium/mojo/bindings/ServiceMessage;->getPayload()Lorg/chromium/mojo/bindings/Message;

    move-result-object v2

    invoke-static {v2}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;->deserialize(Lorg/chromium/mojo/bindings/Message;)Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;

    move-result-object v8

    .line 193
    .local v8, "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v2

    check-cast v2, Lorg/chromium/mojom/mojo/NetworkService;

    iget-object v3, v8, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;->filePath:Ljava/lang/String;

    new-instance v4, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParamsProxyToResponder;

    invoke-virtual/range {p0 .. p0}, Lorg/chromium/mojom/mojo/NetworkService_Internal$Stub;->getCore()Lorg/chromium/mojo/system/Core;

    move-result-object v5

    invoke-virtual {v10}, Lorg/chromium/mojo/bindings/MessageHeader;->getRequestId()J

    move-result-wide v6

    move-object/from16 v0, p2

    invoke-direct {v4, v5, v0, v6, v7}, Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileResponseParamsProxyToResponder;-><init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V

    invoke-interface {v2, v3, v4}, Lorg/chromium/mojom/mojo/NetworkService;->getMimeTypeFromFile(Ljava/lang/String;Lorg/chromium/mojom/mojo/NetworkService$GetMimeTypeFromFileResponse;)V
    :try_end_0
    .catch Lorg/chromium/mojo/bindings/DeserializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 199
    .end local v8    # "data":Lorg/chromium/mojom/mojo/NetworkService_Internal$NetworkServiceGetMimeTypeFromFileParams;
    .end local v10    # "header":Lorg/chromium/mojo/bindings/MessageHeader;
    .end local v11    # "messageWithHeader":Lorg/chromium/mojo/bindings/ServiceMessage;
    :catch_0
    move-exception v9

    .line 200
    .local v9, "e":Lorg/chromium/mojo/bindings/DeserializationException;
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
