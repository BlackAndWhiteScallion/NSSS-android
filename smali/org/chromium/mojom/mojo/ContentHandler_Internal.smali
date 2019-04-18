.class Lorg/chromium/mojom/mojo/ContentHandler_Internal;
.super Ljava/lang/Object;
.source "ContentHandler_Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/ContentHandler_Internal$ContentHandlerStartApplicationParams;,
        Lorg/chromium/mojom/mojo/ContentHandler_Internal$Stub;,
        Lorg/chromium/mojom/mojo/ContentHandler_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/ContentHandler;",
            "Lorg/chromium/mojom/mojo/ContentHandler$Proxy;",
            ">;"
        }
    .end annotation
.end field

.field private static final START_APPLICATION_ORDINAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal$1;

    invoke-direct {v0}, Lorg/chromium/mojom/mojo/ContentHandler_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

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
