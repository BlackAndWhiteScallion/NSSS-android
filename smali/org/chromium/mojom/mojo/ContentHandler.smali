.class public interface abstract Lorg/chromium/mojom/mojo/ContentHandler;
.super Ljava/lang/Object;
.source "ContentHandler.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/ContentHandler$Proxy;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/mojo/ContentHandler_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/ContentHandler;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract startApplication(Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/UrlResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/mojo/bindings/InterfaceRequest",
            "<",
            "Lorg/chromium/mojom/mojo/Application;",
            ">;",
            "Lorg/chromium/mojom/mojo/UrlResponse;",
            ")V"
        }
    .end annotation
.end method
