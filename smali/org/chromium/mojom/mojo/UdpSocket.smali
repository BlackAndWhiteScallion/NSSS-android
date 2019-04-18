.class public interface abstract Lorg/chromium/mojom/mojo/UdpSocket;
.super Ljava/lang/Object;
.source "UdpSocket.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/UdpSocket$SendToResponse;,
        Lorg/chromium/mojom/mojo/UdpSocket$NegotiateMaxPendingSendRequestsResponse;,
        Lorg/chromium/mojom/mojo/UdpSocket$SetReceiveBufferSizeResponse;,
        Lorg/chromium/mojom/mojo/UdpSocket$SetSendBufferSizeResponse;,
        Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;,
        Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;,
        Lorg/chromium/mojom/mojo/UdpSocket$AllowAddressReuseResponse;,
        Lorg/chromium/mojom/mojo/UdpSocket$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/UdpSocket;",
            "Lorg/chromium/mojom/mojo/UdpSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/mojo/UdpSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/UdpSocket;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract allowAddressReuse(Lorg/chromium/mojom/mojo/UdpSocket$AllowAddressReuseResponse;)V
.end method

.method public abstract bind(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/UdpSocket$BindResponse;)V
.end method

.method public abstract connect(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/UdpSocket$ConnectResponse;)V
.end method

.method public abstract negotiateMaxPendingSendRequests(ILorg/chromium/mojom/mojo/UdpSocket$NegotiateMaxPendingSendRequestsResponse;)V
.end method

.method public abstract receiveMore(I)V
.end method

.method public abstract sendTo(Lorg/chromium/mojom/mojo/NetAddress;[BLorg/chromium/mojom/mojo/UdpSocket$SendToResponse;)V
.end method

.method public abstract setReceiveBufferSize(ILorg/chromium/mojom/mojo/UdpSocket$SetReceiveBufferSizeResponse;)V
.end method

.method public abstract setSendBufferSize(ILorg/chromium/mojom/mojo/UdpSocket$SetSendBufferSizeResponse;)V
.end method
