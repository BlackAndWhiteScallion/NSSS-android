.class Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal;
.super Ljava/lang/Object;
.source "HttpConnectionDelegate_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestResponseParams;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedWebSocketRequestParams;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestResponseParams;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$HttpConnectionDelegateOnReceivedRequestParams;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$Stub;,
        Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/HttpConnectionDelegate;",
            "Lorg/chromium/mojom/mojo/HttpConnectionDelegate$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final ON_RECEIVED_REQUEST_ORDINAL:I = 0x0

.field private static final ON_RECEIVED_WEB_SOCKET_REQUEST_ORDINAL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/HttpConnectionDelegate_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    return-void
.end method
