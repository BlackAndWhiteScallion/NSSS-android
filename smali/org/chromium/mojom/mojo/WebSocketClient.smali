.class public interface abstract Lorg/chromium/mojom/mojo/WebSocketClient;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/WebSocketClient$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager",
            "<",
            "Lorg/chromium/mojom/mojo/WebSocketClient;",
            "Lorg/chromium/mojom/mojo/WebSocketClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/mojo/WebSocketClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/WebSocketClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract didClose(ZSLjava/lang/String;)V
.end method

.method public abstract didConnect(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;)V
.end method

.method public abstract didFail(Ljava/lang/String;)V
.end method

.method public abstract didReceiveData(ZII)V
.end method

.method public abstract didReceiveFlowControl(J)V
.end method
