.class public interface abstract Lorg/chromium/mojom/mojo/CookieStore;
.super Ljava/lang/Object;
.source "CookieStore.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/mojom/mojo/CookieStore$SetResponse;,
        Lorg/chromium/mojom/mojo/CookieStore$GetResponse;,
        Lorg/chromium/mojom/mojo/CookieStore$Proxy;
    }
.end annotation


# static fields
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/mojom/mojo/CookieStore_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/CookieStore;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/String;Lorg/chromium/mojom/mojo/CookieStore$GetResponse;)V
.end method

.method public abstract set(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/mojom/mojo/CookieStore$SetResponse;)V
.end method
