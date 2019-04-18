.class public interface abstract Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;
.super Ljava/lang/Object;
.source "UdpSocket.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Callbacks$Callback3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/UdpSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/Callbacks$Callback3",
        "<",
        "Lorg/chromium/mojom/mojo/NetworkError;",
        "Lorg/chromium/mojom/mojo/NetAddress;",
        "Lorg/chromium/mojo/bindings/InterfaceRequest",
        "<",
        "Lorg/chromium/mojom/mojo/UdpSocketReceiver;",
        ">;>;"
    }
.end annotation
