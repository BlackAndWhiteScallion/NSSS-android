.class public Lorg/chromium/ui/widget/ButtonCompat;
.super Landroid/widget/Button;
.source "ButtonCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final DISABLED_COLOR:I = 0x1f000000

.field private static final PRE_L_PRESSED_BRIGHTNESS:F = 0.85f


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonColor"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "buttonColor"    # I
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lorg/chromium/ui/R$style;->ButtonCompatOverlay:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v1, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-virtual {p0, p2}, Lorg/chromium/ui/widget/ButtonCompat;->setButtonColor(I)V

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    const v4, 0x1010448

    aput v4, v3, v5

    const v4, 0x1030258

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/chromium/ui/widget/ButtonCompat;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 88
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 67
    invoke-static {p1, p2}, Lorg/chromium/ui/widget/ButtonCompat;->getColorFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lorg/chromium/ui/widget/ButtonCompat;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public static createBorderlessButton(Landroid/content/Context;)Landroid/widget/Button;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Landroid/widget/Button;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    sget v2, Lorg/chromium/ui/R$style;->ButtonCompatBorderlessOverlay:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getBackgroundColorPreL()I
    .locals 8

    .prologue
    const v7, 0x3f59999a    # 0.85f

    .line 129
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getDrawableState()[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v3, v0, v1

    .line 130
    .local v3, "state":I
    const v4, 0x10100a7

    if-eq v3, v4, :cond_0

    const v4, 0x101009c

    if-eq v3, v4, :cond_0

    const v4, 0x10100a1

    if-ne v3, v4, :cond_1

    .line 133
    :cond_0
    iget v4, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 144
    .end local v3    # "state":I
    :goto_1
    return v4

    .line 129
    .restart local v3    # "state":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v3    # "state":I
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getDrawableState()[I

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    .line 140
    .restart local v3    # "state":I
    const v4, 0x101009e

    if-ne v3, v4, :cond_3

    .line 141
    iget v4, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 144
    .end local v3    # "state":I
    :cond_4
    const/high16 v4, 0x1f000000

    goto :goto_1
.end method

.method private static getColorFromAttributeSet(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 148
    sget-object v2, Lorg/chromium/ui/R$styleable;->ButtonCompat:[I

    invoke-virtual {p0, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lorg/chromium/ui/R$styleable;->ButtonCompat_buttonColor:I

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 150
    .local v1, "color":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    return v1
.end method

.method private updateButtonBackgroundL()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    new-instance v0, Landroid/content/res/ColorStateList;

    new-array v2, v7, [[I

    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v5, [I

    aput-object v3, v2, v6

    new-array v3, v7, [I

    const/high16 v4, 0x1f000000

    aput v4, v3, v5

    iget v4, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    aput v4, v3, v6

    invoke-direct {v0, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 117
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    .line 119
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 121
    return-void
.end method

.method private updateButtonBackgroundPreL()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 125
    .local v0, "background":Landroid/graphics/drawable/GradientDrawable;
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->getBackgroundColorPreL()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 126
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 108
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundPreL()V

    .line 110
    :cond_0
    return-void
.end method

.method public setButtonColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 94
    iget v0, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    if-ne p1, v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    iput p1, p0, Lorg/chromium/ui/widget/ButtonCompat;->mColor:I

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 98
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundL()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-direct {p0}, Lorg/chromium/ui/widget/ButtonCompat;->updateButtonBackgroundPreL()V

    goto :goto_0
.end method
