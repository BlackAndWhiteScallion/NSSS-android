.class Lorg/chromium/mojom/mojo/HttpConnection_Internal;
.super Ljava/lang/Object;
.source "HttpConnection_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeResponseParams;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetReceiveBufferSizeParams;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeResponseParams;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$HttpConnectionSetSendBufferSizeParams;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$Stub;,
        Lorg/chromium/mojom/mojo/HttpConnection_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/HttpConnection;",
            "Lorg/chromium/mojom/mojo/HttpConnection$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_RECEIVE_BUFFER_SIZE_ORDINAL:I = 0x1

.field private static final SET_SEND_BUFFER_SIZE_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/HttpConnection_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    return-void
.end method
