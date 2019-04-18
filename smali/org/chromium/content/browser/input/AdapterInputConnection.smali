.class public Lorg/chromium/content/browser/input/AdapterInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "AdapterInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;
    }
.end annotation


# static fields
.field public static final INVALID_COMPOSITION:I = -0x1

.field public static final INVALID_SELECTION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "cr.Ime"


# instance fields
.field private final mEditable:Landroid/text/Editable;

.field private final mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

.field private final mInternalView:Landroid/view/View;

.field private mLastUpdateCompositionEnd:I

.field private mLastUpdateCompositionStart:I

.field private mLastUpdateSelectionEnd:I

.field private mLastUpdateSelectionStart:I

.field private mNumNestedBatchEdits:I

.field private mPendingAccent:I

.field private mSingleLine:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lorg/chromium/content/browser/input/ImeAdapter;Landroid/text/Editable;Landroid/view/inputmethod/EditorInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "imeAdapter"    # Lorg/chromium/content/browser/input/ImeAdapter;
    .param p3, "editable"    # Landroid/text/Editable;
    .param p4, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, -0x1

    .line 56
    invoke-direct {p0, p1, v4}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    .line 45
    iput v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 48
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 49
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 50
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    .line 51
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    .line 57
    iput-object p1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    .line 58
    iput-object p2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    .line 59
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v2, p0}, Lorg/chromium/content/browser/input/ImeAdapter;->setInputConnection(Lorg/chromium/content/browser/input/AdapterInputConnection;)V

    .line 60
    iput-object p3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    .line 65
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 67
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    .line 68
    const/high16 v2, 0x12000000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 70
    const/16 v2, 0xa1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 73
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputType()I

    move-result v1

    .line 74
    .local v1, "inputType":I
    invoke-virtual {p2}, Lorg/chromium/content/browser/input/ImeAdapter;->getTextInputFlags()I

    move-result v0

    .line 75
    .local v0, "inputFlags":I
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    .line 76
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 79
    :cond_0
    if-ne v1, v4, :cond_4

    .line 81
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 82
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_1

    .line 83
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 129
    :cond_1
    :goto_0
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_d

    .line 130
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 137
    :cond_2
    :goto_1
    if-ne v1, v7, :cond_3

    .line 138
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 141
    :cond_3
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 142
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 143
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 144
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 145
    const-string v2, "cr.Ime"

    const-string v3, "Constructor called with outAttrs: %s"

    invoke-direct {p0, p4}, Lorg/chromium/content/browser/input/AdapterInputConnection;->dumpEditorInfo(Landroid/view/inputmethod/EditorInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    iget v3, p4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    iget v4, p4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 148
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 149
    return-void

    .line 85
    :cond_4
    const/16 v2, 0xe

    if-eq v1, v2, :cond_5

    if-ne v1, v7, :cond_7

    .line 87
    :cond_5
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 88
    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_6

    .line 89
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 91
    :cond_6
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 92
    iput-boolean v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    goto :goto_0

    .line 93
    :cond_7
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 95
    const/16 v2, 0xe1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 97
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 98
    :cond_8
    if-ne v1, v6, :cond_9

    .line 100
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x3

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 101
    :cond_9
    const/4 v2, 0x7

    if-ne v1, v2, :cond_a

    .line 103
    const/16 v2, 0x11

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 105
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 106
    :cond_a
    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    .line 108
    const/16 v2, 0xd1

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 110
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 111
    :cond_b
    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 115
    iput v6, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 116
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 117
    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 119
    const/16 v2, 0x2002

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 122
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v2, v2, 0x5

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto/16 :goto_0

    .line 131
    :cond_d
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_e

    .line 132
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1

    .line 133
    :cond_e
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2

    .line 134
    iget v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1
.end method

.method private deleteSurroundingTextImpl(IIZ)Z
    .locals 16
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I
    .param p3, "fromPhysicalKey"    # Z

    .prologue
    .line 362
    const-string v2, "cr.Ime"

    const-string v3, "deleteSurroundingText [%d %d %b]"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v2, v3, v4, v5, v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    move-object/from16 v0, p0

    iget v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    if-eqz v2, :cond_0

    .line 365
    invoke-virtual/range {p0 .. p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 368
    :cond_0
    move/from16 v12, p1

    .line 369
    .local v12, "originalBeforeLength":I
    move/from16 v11, p2

    .line 370
    .local v11, "originalAfterLength":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v15

    .line 371
    .local v15, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v14

    .line 372
    .local v14, "selectionEnd":I
    move v10, v15

    .line 373
    .local v10, "availableBefore":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    sub-int v9, v2, v14

    .line 374
    .local v9, "availableAfter":I
    move/from16 v0, p1

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 375
    move/from16 v0, p2

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    sub-int v3, v15, p1

    invoke-static {v2, v3}, Lorg/chromium/content/browser/input/AdapterInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    add-int/lit8 p1, p1, 0x1

    .line 382
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    add-int v3, v14, p2

    invoke-static {v2, v3}, Lorg/chromium/content/browser/input/AdapterInputConnection;->isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 383
    add-int/lit8 p2, p2, 0x1

    .line 386
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    .line 387
    invoke-direct/range {p0 .. p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 391
    if-eqz p3, :cond_3

    .line 392
    const/4 v13, 0x1

    .line 416
    :goto_0
    return v13

    .line 398
    :cond_3
    const/4 v6, 0x0

    .line 399
    .local v6, "keyCode":I
    const/4 v2, 0x1

    if-ne v12, v2, :cond_5

    if-nez v11, :cond_5

    .line 400
    const/16 v6, 0x43

    .line 405
    :cond_4
    :goto_1
    const/4 v13, 0x1

    .line 406
    .local v13, "result":Z
    if-nez v6, :cond_6

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v3, 0x7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    move-result v13

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->deleteSurroundingText(II)Z

    move-result v2

    and-int/2addr v13, v2

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v3, 0x9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    move-result v2

    and-int/2addr v13, v2

    goto :goto_0

    .line 401
    .end local v13    # "result":Z
    :cond_5
    if-nez v12, :cond_4

    const/4 v2, 0x1

    if-ne v11, v2, :cond_4

    .line 402
    const/16 v6, 0x70

    goto :goto_1

    .line 413
    .restart local v13    # "result":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v3, 0x6

    invoke-virtual {v2, v6, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_0
.end method

.method private dumpEditorInfo(Landroid/view/inputmethod/EditorInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Landroid/util/StringBuilderPrinter;

    invoke-direct {v1, v0}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 154
    .local v1, "printer":Landroid/util/StringBuilderPrinter;
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    return-object v0
.end method

.method static isIndexBetweenUtf16SurrogatePair(Ljava/lang/CharSequence;I)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;
    .param p1, "index"    # I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 356
    if-lez p1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v6, -0x1

    .line 592
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    .line 593
    .local v4, "selectionStart":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 594
    .local v3, "selectionEnd":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v1

    .line 595
    .local v1, "compositionStart":I
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v0

    .line 596
    .local v0, "compositionEnd":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v4, v3, :cond_0

    if-eq v1, v6, :cond_0

    if-eq v0, v6, :cond_0

    .line 599
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->beginBatchEdit()Z

    .line 600
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    .line 601
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 602
    .local v2, "selection":I
    sub-int v5, v2, v1

    sub-int v6, v2, v0

    invoke-virtual {p0, v5, v6}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingText(II)Z

    .line 603
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->endBatchEdit()Z

    .line 604
    const/4 v5, 0x1

    .line 606
    .end local v2    # "selection":I
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private replaceSelectionWithUnicodeChar(I)V
    .locals 5
    .param p1, "unicodeChar"    # I

    .prologue
    .line 482
    if-nez p1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 484
    .local v1, "selectionStart":I
    iget-object v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 485
    .local v0, "selectionEnd":I
    if-le v1, v0, :cond_1

    .line 486
    move v2, v1

    .line 487
    .local v2, "temp":I
    move v1, v0

    .line 488
    move v0, v2

    .line 490
    .end local v2    # "temp":I
    :cond_1
    iget-object v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    int-to-char v4, p1

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v0, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 491
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    goto :goto_0
.end method

.method private updateSelectionIfRequired()V
    .locals 10

    .prologue
    .line 222
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v9

    .line 224
    .local v9, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 225
    .local v8, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v7

    .line 226
    .local v7, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v6

    .line 228
    .local v6, "compositionEnd":I
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    if-ne v0, v8, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    if-ne v0, v7, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    if-eq v0, v6, :cond_0

    .line 234
    :cond_2
    const-string v0, "cr.Ime"

    const-string v1, "updateSelectionIfRequired [%d %d] [%d %d]"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 238
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    move v2, v9

    move v3, v8

    move v4, v7

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->updateSelection(Landroid/view/View;IIII)V

    .line 240
    iput v9, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionStart:I

    .line 241
    iput v8, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateSelectionEnd:I

    .line 242
    iput v7, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionStart:I

    .line 243
    iput v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mLastUpdateCompositionEnd:I

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 323
    const-string v2, "cr.Ime"

    const-string v3, "beginBatchEdit [%b]"

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 325
    return v1

    .line 323
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 264
    const-string v2, "cr.Ime"

    const-string v3, "commitText [%s] [%d]"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, p1, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 265
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    :goto_0
    return v0

    .line 266
    :cond_0
    iput v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 267
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 268
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 269
    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v2, p1, p2, v0}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public deleteSurroundingText(II)Z
    .locals 1
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    move-result v0

    return v0
.end method

.method public endBatchEdit()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return v2

    .line 334
    :cond_0
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 335
    const-string v3, "cr.Ime"

    const-string v4, "endBatchEdit [%b]"

    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 337
    :cond_1
    iget v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    if-eqz v0, :cond_3

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 335
    goto :goto_1

    :cond_3
    move v1, v2

    .line 337
    goto :goto_2
.end method

.method public finishComposingText()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 499
    const-string v0, "cr.Ime"

    const-string v1, "finishComposingText"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 502
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 510
    :goto_0
    return v2

    .line 506
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 507
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 508
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->finishComposingText()V

    goto :goto_0
.end method

.method public getEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    return-object v0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2, "flags"    # I

    .prologue
    .line 308
    const-string v1, "cr.Ime"

    const-string v2, "getExtractedText"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 310
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 311
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 312
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 313
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 314
    iget-boolean v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mSingleLine:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 315
    return-object v0

    .line 314
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getImeStateForTesting()Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;
    .locals 6
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "text":Ljava/lang/String;
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    .line 631
    .local v2, "selectionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 632
    .local v3, "selectionEnd":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 633
    .local v4, "compositionStart":I
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v5

    .line 634
    .local v5, "compositionEnd":I
    new-instance v0, Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;

    invoke-direct/range {v0 .. v5}, Lorg/chromium/content/browser/input/AdapterInputConnection$ImeState;-><init>(Ljava/lang/String;IIII)V

    return-object v0
.end method

.method isActive()Z
    .locals 2

    .prologue
    .line 575
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public performContextMenuAction(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 298
    const-string v0, "cr.Ime"

    const-string v1, "performContextMenuAction [%d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method public performEditorAction(I)Z
    .locals 7
    .param p1, "actionCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 278
    const-string v0, "cr.Ime"

    const-string v1, "performEditorAction [%d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    .line 282
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 283
    .local v2, "timeStampMs":J
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/4 v1, 0x7

    const/16 v4, 0x3d

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->sendSyntheticKeyEvent(IJIII)Z

    .line 290
    .end local v2    # "timeStampMs":J
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 286
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    const/16 v1, 0x42

    const/16 v4, 0x16

    invoke-virtual {v0, v1, v4}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    goto :goto_0
.end method

.method restartInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 531
    const-string v0, "cr.Ime"

    const-string v1, "restartInput"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mInternalView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 533
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mNumNestedBatchEdits:I

    .line 534
    iput v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 535
    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 424
    const-string v6, "cr.Ime"

    const-string v7, "sendKeyEvent [%d] [%d] [%d]"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 428
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 429
    .local v3, "keycode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v5

    .line 434
    .local v5, "unicodeChar":I
    if-eqz v0, :cond_0

    .line 435
    iget-object v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v6, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    .line 473
    :goto_0
    return v11

    .line 443
    :cond_0
    const/16 v6, 0x43

    if-ne v3, v6, :cond_2

    .line 444
    invoke-direct {p0, v11, v12, v11}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    .line 471
    :cond_1
    :goto_1
    invoke-direct {p0, v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->replaceSelectionWithUnicodeChar(I)V

    .line 472
    iget-object v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v6, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    goto :goto_0

    .line 445
    :cond_2
    const/16 v6, 0x70

    if-ne v3, v6, :cond_3

    .line 446
    invoke-direct {p0, v12, v11, v11}, Lorg/chromium/content/browser/input/AdapterInputConnection;->deleteSurroundingTextImpl(IIZ)Z

    goto :goto_1

    .line 447
    :cond_3
    const/16 v6, 0x42

    if-ne v3, v6, :cond_4

    .line 450
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    goto :goto_1

    .line 451
    :cond_4
    const/high16 v6, -0x80000000

    and-int/2addr v6, v5

    if-eqz v6, :cond_5

    .line 453
    const v6, 0x7fffffff

    and-int v4, v5, v6

    .line 454
    .local v4, "pendingAccent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 456
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v11}, Lorg/chromium/content/browser/input/AdapterInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 457
    iput v4, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    goto :goto_0

    .line 459
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "pendingAccent":I
    :cond_5
    iget v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    .line 460
    iget v6, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    invoke-static {v6, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v2

    .line 461
    .local v2, "combined":I
    if-eqz v2, :cond_6

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v11}, Lorg/chromium/content/browser/input/AdapterInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 469
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->finishComposingText()Z

    goto :goto_1
.end method

.method public setComposingRegion(II)Z
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 542
    const-string v5, "cr.Ime"

    const-string v6, "setComposingRegion [%d %d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v5, v6, v7, v8}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 543
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v4

    .line 544
    .local v4, "textLength":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 545
    .local v0, "a":I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 546
    .local v1, "b":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 547
    :cond_0
    if-gez v1, :cond_1

    const/4 v1, 0x0

    .line 548
    :cond_1
    if-le v0, v4, :cond_2

    move v0, v4

    .line 549
    :cond_2
    if-le v1, v4, :cond_3

    move v1, v4

    .line 551
    :cond_3
    const/4 v3, 0x0

    .line 552
    .local v3, "regionText":Ljava/lang/CharSequence;
    if-ne v0, v1, :cond_4

    .line 553
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v5}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 569
    :goto_0
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 571
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v5, v3, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->setComposingRegion(Ljava/lang/CharSequence;II)Z

    move-result v5

    :goto_1
    return v5

    .line 555
    :cond_4
    if-nez v0, :cond_6

    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-ne v1, v5, :cond_6

    .line 556
    iget-object v5, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v5, v0, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 563
    move v2, v0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 564
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const v6, 0xfffc

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    .line 563
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 567
    .end local v2    # "i":I
    :cond_6
    invoke-super {p0, v0, v1}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I

    .prologue
    const/4 v3, 0x0

    .line 251
    const-string v0, "cr.Ime"

    const-string v1, "setComposingText [%s] [%d]"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->maybePerformEmptyCompositionWorkaround(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 256
    :goto_0
    return v0

    .line 253
    :cond_0
    iput v3, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mPendingAccent:I

    .line 254
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 255
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 256
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v0, p1, p2, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 518
    const-string v1, "cr.Ime"

    const-string v2, "setSelection [%d %d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 519
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 520
    .local v0, "textLength":I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, v0, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 523
    :goto_0
    return v1

    .line 521
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->setSelection(II)Z

    .line 522
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    .line 523
    iget-object v1, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mImeAdapter:Lorg/chromium/content/browser/input/ImeAdapter;

    invoke-virtual {v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->setEditableSelectionOffsets(II)Z

    move-result v1

    goto :goto_0
.end method

.method public updateState(Ljava/lang/String;IIIIZ)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "compositionStart"    # I
    .param p5, "compositionEnd"    # I
    .param p6, "isNonImeChange"    # Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    const-string v0, "cr.Ime"

    const-string v1, "updateState [%s] [%s %s] [%s %s] [%b]"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    if-nez p6, :cond_0

    .line 207
    :goto_0
    return-void

    .line 185
    :cond_0
    const/16 v0, 0xa0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 188
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 192
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "prevText":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 195
    .local v9, "textUnchanged":Z
    if-nez v9, :cond_1

    .line 196
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 199
    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0, p2, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 201
    if-ne p4, p5, :cond_2

    .line 202
    iget-object v0, p0, Lorg/chromium/content/browser/input/AdapterInputConnection;->mEditable:Landroid/text/Editable;

    invoke-static {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 206
    :goto_1
    invoke-direct {p0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->updateSelectionIfRequired()V

    goto :goto_0

    .line 204
    :cond_2
    invoke-super {p0, p4, p5}, Landroid/view/inputmethod/BaseInputConnection;->setComposingRegion(II)Z

    goto :goto_1
.end method
