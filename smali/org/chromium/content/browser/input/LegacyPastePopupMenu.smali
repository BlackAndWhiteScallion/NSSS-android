.class public Lorg/chromium/content/browser/input/LegacyPastePopupMenu;
.super Ljava/lang/Object;
.source "LegacyPastePopupMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lorg/chromium/content/browser/input/PastePopupMenu;


# instance fields
.field private final mContainer:Landroid/widget/PopupWindow;

.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

.field private final mLineOffsetY:I

.field private final mParent:Landroid/view/View;

.field private mPasteView:Landroid/view/View;

.field private final mPasteViewLayout:I

.field private mPositionX:I

.field private mPositionY:I

.field private mRawPositionX:I

.field private mRawPositionY:I

.field private mStatusBarHeight:I

.field private final mWidthOffsetX:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;)V
    .locals 10
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "delegate"    # Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    .line 38
    iput-object p2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    .line 40
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    const v5, 0x10102c8

    invoke-direct {v3, v4, v9, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    .line 41
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v7}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 42
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 43
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 45
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 46
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 48
    new-array v1, v7, [I

    const v3, 0x1010314

    aput v3, v1, v6

    .line 52
    .local v1, "popupLayoutAttrs":[I
    iput-object v9, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    .line 53
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, "attrs":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteViewLayout:I

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    const/high16 v3, 0x40a00000    # 5.0f

    iget-object v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    .line 61
    const/high16 v3, 0x41f00000    # 30.0f

    iget-object v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v7, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mWidthOffsetX:I

    .line 64
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "status_bar_height"

    const-string v5, "dimen"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, "statusBarHeightResourceId":I
    if-lez v2, :cond_0

    .line 67
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mStatusBarHeight:I

    .line 70
    :cond_0
    return-void
.end method

.method private paste()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mDelegate:Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/PastePopupMenu$PastePopupMenuDelegate;->paste()V

    .line 170
    return-void
.end method

.method private positionAt(II)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 95
    iget v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionX:I

    if-ne v7, p1, :cond_0

    iget v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionY:I

    if-ne v7, p2, :cond_0

    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 142
    :goto_0
    return-void

    .line 96
    :cond_0
    iput p1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionX:I

    .line 97
    iput p2, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mRawPositionY:I

    .line 99
    iget-object v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, "contentView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 101
    .local v6, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 103
    .local v3, "height":I
    int-to-float v7, p1

    int-to-float v8, v6

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPositionX:I

    .line 104
    sub-int v7, p2, v3

    iget v8, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    sub-int/2addr v7, v8

    iput v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPositionY:I

    .line 106
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 107
    .local v1, "coords":[I
    iget-object v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 108
    aget v7, v1, v11

    iget v8, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPositionX:I

    add-int/2addr v7, v8

    aput v7, v1, v11

    .line 109
    aget v7, v1, v10

    iget v8, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPositionY:I

    add-int/2addr v7, v8

    aput v7, v1, v10

    .line 111
    const/4 v4, 0x0

    .line 112
    .local v4, "minOffsetY":I
    iget-object v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 113
    iget v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mStatusBarHeight:I

    .line 116
    :cond_1
    iget-object v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 117
    .local v5, "screenWidth":I
    aget v7, v1, v10

    if-ge v7, v4, :cond_3

    .line 120
    aget v7, v1, v10

    add-int/2addr v7, v3

    aput v7, v1, v10

    .line 121
    aget v7, v1, v10

    iget v8, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mLineOffsetY:I

    add-int/2addr v7, v8

    aput v7, v1, v10

    .line 124
    iget v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mWidthOffsetX:I

    div-int/lit8 v2, v7, 0x2

    .line 126
    .local v2, "handleHalfWidth":I
    add-int v7, p1, v6

    if-ge v7, v5, :cond_2

    .line 127
    aget v7, v1, v11

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v2

    add-int/2addr v7, v8

    aput v7, v1, v11

    .line 137
    .end local v2    # "handleHalfWidth":I
    :goto_1
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->isShowing()Z

    move-result v7

    if-nez v7, :cond_4

    .line 138
    iget-object v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mParent:Landroid/view/View;

    aget v9, v1, v11

    aget v10, v1, v10

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_0

    .line 129
    .restart local v2    # "handleHalfWidth":I
    :cond_2
    aget v7, v1, v11

    div-int/lit8 v8, v6, 0x2

    add-int/2addr v8, v2

    sub-int/2addr v7, v8

    aput v7, v1, v11

    goto :goto_1

    .line 133
    .end local v2    # "handleHalfWidth":I
    :cond_3
    aget v7, v1, v11

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v1, v11

    .line 134
    sub-int v7, v5, v6

    aget v8, v1, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v1, v11

    goto :goto_1

    .line 140
    :cond_4
    iget-object v7, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    aget v8, v1, v11

    aget v9, v1, v10

    invoke-virtual {v7, v8, v9, v12, v12}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0
.end method

.method private updateContent()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x2

    .line 145
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    if-nez v3, :cond_2

    .line 146
    iget v1, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteViewLayout:I

    .line 147
    .local v1, "layout":I
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 149
    .local v0, "inflater":Landroid/view/LayoutInflater;
    if-eqz v0, :cond_0

    .line 150
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    .line 153
    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    if-nez v3, :cond_1

    .line 154
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to inflate TextEdit paste window"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 158
    .local v2, "size":I
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    .line 162
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "layout":I
    .end local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mPasteView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 166
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 81
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->paste()V

    .line 91
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->hide()V

    .line 92
    return-void
.end method

.method public show(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->updateContent()V

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/LegacyPastePopupMenu;->positionAt(II)V

    .line 76
    return-void
.end method
