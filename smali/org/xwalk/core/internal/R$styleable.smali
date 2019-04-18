.class public final Lorg/xwalk/core/internal/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xwalk/core/internal/R;
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

    .line 240
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f010002

    aput v1, v0, v2

    sput-object v0, Lorg/xwalk/core/internal/R$styleable;->ButtonCompat:[I

    .line 254
    sput v2, Lorg/xwalk/core/internal/R$styleable;->ButtonCompat_buttonColor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
