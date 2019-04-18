.class public final Lorg/chromium/ui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ButtonCompat:[I

.field public static ButtonCompat_buttonColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f010000

    aput v1, v0, v2

    sput-object v0, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    .line 193
    sput v2, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
