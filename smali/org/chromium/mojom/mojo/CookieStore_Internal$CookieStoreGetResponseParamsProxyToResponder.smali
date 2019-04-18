.class Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "CookieStore_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/CookieStore$GetResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/CookieStore_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CookieStoreGetResponseParamsProxyToResponder"
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

.field private final mRequestId:J


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiver;J)V
    .locals 1
    .param p1, "core"    # Lorg/chromium/mojo/system/Core;
    .param p2, "messageReceiver"    # Lorg/chromium/mojo/bindings/MessageReceiver;
    .param p3, "requestId"    # J

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 318
    iput-object p2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 319
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mRequestId:J

    .line 320
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 307
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 8
    .param p1, "cookies"    # Ljava/lang/String;

    .prologue
    .line 324
    new-instance v1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;-><init>()V

    .line 325
    .local v1, "_response":Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;
    iput-object p1, v1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;->cookies:Ljava/lang/String;

    .line 326
    iget-object v2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 333
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreGetResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 334
    return-void
.end method
