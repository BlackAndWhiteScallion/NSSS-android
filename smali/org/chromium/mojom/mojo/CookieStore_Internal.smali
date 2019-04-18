.class Lorg/chromium/mojom/mojo/CookieStore_Internal;
.super Ljava/lang/Object;
.source "CookieStore_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetParams;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsForwardToCallback;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetParams;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$Stub;,
        Lorg/chromium/mojom/mojo/CookieStore_Internal$Proxy;
    }
.end annotation


# static fields
.field private static final GET_ORDINAL:I = 0x0

.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/CookieStore;",
            "Lorg/chromium/mojom/mojo/CookieStore$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_ORDINAL:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/CookieStore_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/CookieStore_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    return-void
.end method
