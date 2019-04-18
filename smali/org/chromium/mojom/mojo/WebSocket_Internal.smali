.class Lorg/chromium/mojom/mojo/WebSocket_Internal;
.super Ljava/lang/Object;
.source "WebSocket_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketCloseParams;,
        Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketFlowControlParams;,
        Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketSendParams;,
        Lorg/chromium/mojom/mojo/WebSocket_Internal$WebSocketConnectParams;,
        Lorg/chromium/mojom/mojo/WebSocket_Internal$Stub;,
        Lorg/chromium/mojom/mojo/WebSocket_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final CLOSE_ORDINAL:I = 0x3

.field private static final CONNECT_ORDINAL:I = 0x0

.field private static final FLOW_CONTROL_ORDINAL:I = 0x2

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/WebSocket;",
            "Lorg/chromium/mojom/mojo/WebSocket$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEND_ORDINAL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/WebSocket_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/WebSocket_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    return-void
.end method
