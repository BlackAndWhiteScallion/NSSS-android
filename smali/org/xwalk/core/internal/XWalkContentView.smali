.class public Lorg/xwalk/core/internal/XWalkContentView;
.super Lorg/chromium/content/browser/ContentView;
.source "XWalkContentView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XWalkContentView"


# instance fields
.field private mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;Lorg/xwalk/core/internal/XWalkViewInternal;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cvc"    # Lorg/chromium/content/browser/ContentViewCore;
    .param p3, "xwView"    # Lorg/xwalk/core/internal/XWalkViewInternal;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    .line 28
    iput-object p3, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    .line 29
    return-void
.end method


# virtual methods
.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 3

    .prologue
    .line 68
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 69
    invoke-super {p0}, Lorg/chromium/content/browser/ContentView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v1, p0, Lorg/xwalk/core/internal/XWalkContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 74
    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_0

    .line 77
    invoke-super {p0}, Lorg/chromium/content/browser/ContentView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputConnectionSuper(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lorg/chromium/content/browser/ContentView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 102
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1, p2, p3}, Lorg/xwalk/core/internal/XWalkViewInternal;->onFocusChangedDelegate(ZILandroid/graphics/Rect;)V

    .line 103
    invoke-super {p0, p1, p2, p3}, Lorg/chromium/content/browser/ContentView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 104
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/xwalk/core/internal/XWalkViewInternal;->onScrollChangedDelegate(IIII)V

    .line 98
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0, p1}, Lorg/xwalk/core/internal/XWalkViewInternal;->onTouchEventDelegate(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 92
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 54
    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->supportsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/chromium/content/browser/ContentView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/xwalk/core/internal/XWalkContentView;->mXWalkView:Lorg/xwalk/core/internal/XWalkViewInternal;

    invoke-virtual {v0}, Lorg/xwalk/core/internal/XWalkViewInternal;->performLongClickDelegate()Z

    move-result v0

    return v0
.end method
