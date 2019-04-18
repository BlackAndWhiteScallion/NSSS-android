.class public interface abstract Lorg/chromium/mojom/mojo/WebSocket;
.super Ljava/lang/Object;
.source "WebSocket.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/WebSocket$Proxy;,
        Lorg/chromium/mojom/mojo/WebSocket$MessageType;
    }
.end annotation


# static fields
.field public static final ABNORMAL_CLOSE_CODE:S = 0x3ees

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocket_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocket;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract close(SLjava/lang/String;)V
.end method

.method public abstract connect(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojom/mojo/WebSocketClient;)V
.end method

.method public abstract flowControl(J)V
.end method

.method public abstract send(ZII)V
.end method
