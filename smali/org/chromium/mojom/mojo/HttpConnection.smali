.class public interface abstract Lorg/chromium/mojom/mojo/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/HttpConnection$SetReceiveBufferSizeResponse;,
        Lorg/chromium/mojom/mojo/HttpConnection$SetSendBufferSizeResponse;,
        Lorg/chromium/mojom/mojo/HttpConnection$Proxy;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/mojo/HttpConnection_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/HttpConnection;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract setReceiveBufferSize(ILorg/chromium/mojom/mojo/HttpConnection$SetReceiveBufferSizeResponse;)V
.end method

.method public abstract setSendBufferSize(ILorg/chromium/mojom/mojo/HttpConnection$SetSendBufferSizeResponse;)V
.end method
