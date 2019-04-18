.class Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal;
.super Ljava/lang/Object;
.source "HttpServerDelegate_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$HttpServerDelegateOnConnectedParams;,
        Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$Stub;,
        Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/HttpServerDelegate;",
            "Lorg/chromium/mojom/mojo/HttpServerDelegate$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final ON_CONNECTED_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/HttpServerDelegate_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    return-void
.end method
