.class public interface abstract Lorg/chromium/mojom/mojo/HttpConnectionDelegate$OnReceivedWebSocketRequestResponse;
.super Ljava/lang/Object;
.source "HttpConnectionDelegate.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Callbacks$Callback3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/HttpConnectionDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnReceivedWebSocketRequestResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/Callbacks$Callback3",
        "<",
        "Lorg/chromium/mojo/bindings/InterfaceRequest",
        "<",
        "Lorg/chromium/mojom/mojo/WebSocket;",
        ">;",
        "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
        "Lorg/chromium/mojom/mojo/WebSocketClient;",
        ">;"
    }
.end annotation
