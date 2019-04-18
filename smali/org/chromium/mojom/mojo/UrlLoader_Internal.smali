.class Lorg/chromium/mojom/mojo/UrlLoader_Internal;
.super Ljava/lang/Object;
.source "UrlLoader_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusResponseParams;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderQueryStatusParams;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectResponseParams;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderFollowRedirectParams;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartResponseParams;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$UrlLoaderStartParams;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$Stub;,
        Lorg/chromium/mojom/mojo/UrlLoader_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final FOLLOW_REDIRECT_ORDINAL:I = 0x1

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/UrlLoader;",
            "Lorg/chromium/mojom/mojo/UrlLoader$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUERY_STATUS_ORDINAL:I = 0x2

.field private static final START_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/UrlLoader_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/UrlLoader_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    return-void
.end method
