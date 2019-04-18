.class public interface abstract Lorg/chromium/mojom/mojo/TcpServerSocket$AcceptResponse;
.super Ljava/lang/Object;
.source "TcpServerSocket.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Callbacks$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/TcpServerSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AcceptResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/chromium/mojo/bindings/Callbacks$Callback2",
        "<",
        "Lorg/chromium/mojom/mojo/NetworkError;",
        "Lorg/chromium/mojom/mojo/NetAddress;",
        ">;"
    }
.end annotation
