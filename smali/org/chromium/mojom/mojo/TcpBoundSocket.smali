.class public interface abstract Lorg/chromium/mojom/mojo/TcpBoundSocket;
.super Ljava/lang/Object;
.source "TcpBoundSocket.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/TcpBoundSocket$ConnectResponse;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;,
        Lorg/chromium/mojom/mojo/TcpBoundSocket$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/TcpBoundSocket;",
            "Lorg/chromium/mojom/mojo/TcpBoundSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/mojo/TcpBoundSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/TcpBoundSocket;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract connect(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/TcpBoundSocket$ConnectResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojom/mojo/NetAddress;",
            "Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;",
            "Lorg/chromium/mojo/system/DataPipe$ProducerHandle;",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/TcpConnectedSocket;",
            ">;",
            "Lorg/chromium/mojom/mojo/TcpBoundSocket$ConnectResponse;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startListening(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/TcpServerSocket;",
            ">;",
            "Lorg/chromium/mojom/mojo/TcpBoundSocket$StartListeningResponse;",
            ")V"
        }
    .end annotation
.end method
