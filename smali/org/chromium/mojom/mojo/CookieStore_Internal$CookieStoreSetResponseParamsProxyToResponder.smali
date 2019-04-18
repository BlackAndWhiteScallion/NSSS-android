.class Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;
.super Ljava/lang/Object;
.source "CookieStore_Internal.java"

# interfaces
.implements Lorg/chromium/mojom/mojo/CookieStore$SetResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojom/mojo/CookieStore_Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CookieStoreSetResponseParamsProxyToResponder"
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
    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    .line 521
    iput-object p2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    .line 522
    iput-wide p3, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mRequestId:J

    .line 523
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 527
    new-instance v1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;

    invoke-direct {v1}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;-><init>()V

    .line 528
    .local v1, "_response":Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->success:Z

    .line 529
    iget-object v2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mCore:Lorg/chromium/mojo/system/Core;

    new-instance v3, Lorg/chromium/mojo/bindings/MessageHeader;

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-wide v6, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mRequestId:J

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/chromium/mojo/bindings/MessageHeader;-><init>(IIJ)V

    invoke-virtual {v1, v2, v3}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParams;->serializeWithHeader(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageHeader;)Lorg/chromium/mojo/bindings/ServiceMessage;

    move-result-object v0

    .line 536
    .local v0, "_message":Lorg/chromium/mojo/bindings/ServiceMessage;
    iget-object v2, p0, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiver;

    invoke-interface {v2, v0}, Lorg/chromium/mojo/bindings/MessageReceiver;->accept(Lorg/chromium/mojo/bindings/Message;)Z

    .line 537
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 510
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/chromium/mojom/mojo/CookieStore_Internal$CookieStoreSetResponseParamsProxyToResponder;->call(Ljava/lang/Boolean;)V

    return-void
.end method
