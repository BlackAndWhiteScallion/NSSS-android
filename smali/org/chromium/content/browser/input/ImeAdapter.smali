.class public Lorg/chromium/content/browser/input/ImeAdapter;
.super Ljava/lang/Object;
.source "ImeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ImeAdapter$AdapterInputConnectionFactory;,
        Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;
    }
.end annotation

.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
    value = "content"
.end annotation


# static fields
.field private static final COMPOSITION_KEY_CODE:I = 0xe5

.field private static final INPUT_DISMISS_DELAY:I = 0x96

.field private static final TAG:Ljava/lang/String; = "cr.Ime"

.field static sKeyCharacterMap:Landroid/view/KeyCharacterMap;

.field static sSingleCharArray:[C


# instance fields
.field private final mDismissInputRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

.field private mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

.field mIsShowWithoutHideOutstanding:Z
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private mLastComposeText:Ljava/lang/String;

.field mLastSyntheticKeyCode:I
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation
.end field

.field private mNativeImeAdapterAndroid:J

.field private mTextInputFlags:I

.field private mTextInputType:I

.field private final mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lorg/chromium/content/browser/input/ImeAdapter;->sSingleCharArray:[C

    return-void
.end method

.method public constructor <init>(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;)V
    .locals 1
    .param p1, "wrapper"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .param p2, "embedder"    # Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lorg/chromium/content/browser/input/ImeAdapter$1;

    invoke-direct {v0, p0}, Lorg/chromium/content/browser/input/ImeAdapter$1;-><init>(Lorg/chromium/content/browser/input/ImeAdapter;)V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInputRunnable:Ljava/lang/Runnable;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    .line 126
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 127
    iput-object p2, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    .line 128
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/content/browser/input/ImeAdapter;)V
    .locals 0
    .param p0, "x0"    # Lorg/chromium/content/browser/input/ImeAdapter;

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideSoftKeyboard()V

    return-void
.end method

.method private static androidKeyEventForCharacter(C)Landroid/view/KeyEvent;
    .locals 5
    .param p0, "chr"    # C

    .prologue
    const/4 v2, 0x0

    .line 339
    sget-object v3, Lorg/chromium/content/browser/input/ImeAdapter;->sKeyCharacterMap:Landroid/view/KeyCharacterMap;

    if-nez v3, :cond_0

    .line 340
    const/4 v3, -0x1

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v3

    sput-object v3, Lorg/chromium/content/browser/input/ImeAdapter;->sKeyCharacterMap:Landroid/view/KeyCharacterMap;

    .line 342
    :cond_0
    sget-object v3, Lorg/chromium/content/browser/input/ImeAdapter;->sSingleCharArray:[C

    const/4 v4, 0x0

    aput-char p0, v3, v4

    .line 344
    sget-object v3, Lorg/chromium/content/browser/input/ImeAdapter;->sKeyCharacterMap:Landroid/view/KeyCharacterMap;

    sget-object v4, Lorg/chromium/content/browser/input/ImeAdapter;->sSingleCharArray:[C

    invoke-virtual {v3, v4}, Landroid/view/KeyCharacterMap;->getEvents([C)[Landroid/view/KeyEvent;

    move-result-object v0

    .line 345
    .local v0, "events":[Landroid/view/KeyEvent;
    if-nez v0, :cond_2

    .line 356
    :cond_1
    :goto_0
    return-object v2

    .line 349
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 350
    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 352
    aget-object v2, v0, v1

    goto :goto_0

    .line 349
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private attach(JIIZ)V
    .locals 5
    .param p1, "nativeImeAdapter"    # J
    .param p3, "textInputType"    # I
    .param p4, "textInputFlags"    # I
    .param p5, "delayDismissInput"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 241
    const-string v0, "cr.Ime"

    const-string v1, "attach"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 243
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeResetImeAdapter(J)V

    .line 245
    :cond_0
    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 246
    invoke-direct {p0, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAttachImeAdapter(J)V

    .line 248
    :cond_1
    iput-wide p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 250
    iput p4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    .line 251
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-ne p3, v0, :cond_3

    .line 265
    :cond_2
    :goto_0
    return-void

    .line 252
    :cond_3
    iput p3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 253
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-nez v0, :cond_2

    .line 255
    if-eqz p5, :cond_4

    .line 258
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInputRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    goto :goto_0

    .line 262
    :cond_4
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hideSoftKeyboard()V

    goto :goto_0
.end method

.method private cancelComposition()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 597
    const-string v0, "cr.Ime"

    const-string v1, "cancelComposition"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    .line 599
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 600
    return-void
.end method

.method private focusedNodeChanged(Z)V
    .locals 2
    .param p1, "isEditable"    # Z
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 571
    const-string v0, "cr.Ime"

    const-string v1, "focusedNodeChanged"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0}, Lorg/chromium/content/browser/input/AdapterInputConnection;->restartInput()V

    .line 573
    :cond_0
    return-void
.end method

.method private static getModifiers(I)I
    .locals 2
    .param p0, "metaState"    # I

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "modifiers":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 188
    or-int/lit8 v0, v0, 0x1

    .line 190
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 191
    or-int/lit8 v0, v0, 0x4

    .line 193
    :cond_1
    and-int/lit16 v1, p0, 0x1000

    if-eqz v1, :cond_2

    .line 194
    or-int/lit8 v0, v0, 0x2

    .line 196
    :cond_2
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_3

    .line 197
    or-int/lit16 v0, v0, 0x200

    .line 199
    :cond_3
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 200
    or-int/lit16 v0, v0, 0x400

    .line 202
    :cond_4
    return v0
.end method

.method public static getTypedKeyEventGuess(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyEvent;
    .locals 4
    .param p0, "oldtext"    # Ljava/lang/String;
    .param p1, "newtext"    # Ljava/lang/String;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 372
    if-nez p0, :cond_1

    .line 373
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 374
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->androidKeyEventForCharacter(C)Landroid/view/KeyEvent;

    move-result-object v0

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 381
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->androidKeyEventForCharacter(C)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v1, 0x43

    invoke-direct {v0, v3, v1}, Landroid/view/KeyEvent;-><init>(II)V

    goto :goto_0
.end method

.method private hasInputType()Z
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    const-string v1, "cr.Ime"

    const-string v2, "hideSoftKeyboard"

    invoke-static {v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    .line 293
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v0

    .line 294
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v1, v0}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v3}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v1, v2, v4, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    .line 298
    :cond_0
    return-void
.end method

.method private static isTextInputType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 305
    if-eqz p0, :cond_0

    invoke-static {p0}, Lorg/chromium/ui/picker/InputDialogContainer;->isDialogInputType(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeAppendBackgroundColorSpan(JIII)V
.end method

.method private static native nativeAppendUnderlineSpan(JII)V
.end method

.method private native nativeAttachImeAdapter(J)V
.end method

.method private native nativeCommitText(JLjava/lang/String;)V
.end method

.method private native nativeDeleteSurroundingText(JII)V
.end method

.method private native nativeFinishComposingText(J)V
.end method

.method private native nativeResetImeAdapter(J)V
.end method

.method private native nativeSendKeyEvent(JLandroid/view/KeyEvent;IIJIZI)Z
.end method

.method private native nativeSendSyntheticKeyEvent(JIJIII)Z
.end method

.method private native nativeSetComposingRegion(JII)V
.end method

.method private native nativeSetComposingText(JLjava/lang/CharSequence;Ljava/lang/String;I)V
.end method

.method private native nativeSetEditableSelectionOffsets(JII)V
.end method

.method private populateUnderlinesFromSpans(Ljava/lang/CharSequence;J)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "underlines"    # J
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 577
    const-string v6, "cr.Ime"

    const-string v7, "populateUnderlinesFromSpans: text [%s], underlines [%d]"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7, p1, v8}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 578
    instance-of v6, p1, Landroid/text/SpannableString;

    if-nez v6, :cond_1

    .line 593
    :cond_0
    return-void

    :cond_1
    move-object v4, p1

    .line 580
    check-cast v4, Landroid/text/SpannableString;

    .line 581
    .local v4, "spannableString":Landroid/text/SpannableString;
    const/4 v6, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Landroid/text/style/CharacterStyle;

    invoke-virtual {v4, v6, v7, v8}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    .line 583
    .local v5, "spans":[Landroid/text/style/CharacterStyle;
    move-object v0, v5

    .local v0, "arr$":[Landroid/text/style/CharacterStyle;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 584
    .local v3, "span":Landroid/text/style/CharacterStyle;
    instance-of v6, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_3

    .line 585
    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    check-cast v3, Landroid/text/style/BackgroundColorSpan;

    .end local v3    # "span":Landroid/text/style/CharacterStyle;
    invoke-virtual {v3}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v8

    invoke-static {p2, p3, v6, v7, v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAppendBackgroundColorSpan(JIII)V

    .line 583
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .restart local v3    # "span":Landroid/text/style/CharacterStyle;
    :cond_3
    instance-of v6, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_2

    .line 589
    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-static {p2, p3, v6, v7}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeAppendUnderlineSpan(JII)V

    goto :goto_1
.end method

.method private shouldSendKeyEventWithKeyCode(Ljava/lang/String;)I
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0xe5

    .line 322
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    const/16 v0, 0x42

    goto :goto_0

    .line 326
    :cond_2
    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    const/16 v0, 0x3d

    goto :goto_0
.end method


# virtual methods
.method public attach(J)V
    .locals 7
    .param p1, "nativeImeAdapter"    # J

    .prologue
    const/4 v4, 0x0

    .line 273
    move-object v1, p0

    move-wide v2, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(JIIZ)V

    .line 274
    return-void
.end method

.method checkCompositionQueueAndCallNative(Ljava/lang/CharSequence;IZ)Z
    .locals 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .param p3, "isCommit"    # Z

    .prologue
    .line 412
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 487
    :goto_0
    return v2

    .line 413
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v2}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 415
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 416
    .local v15, "textStr":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/chromium/content/browser/input/ImeAdapter;->shouldSendKeyEventWithKeyCode(Ljava/lang/String;)I

    move-result v8

    .line 417
    .local v8, "keyCode":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 419
    .local v6, "timeStampMs":J
    const/16 v2, 0xe5

    if-eq v8, v2, :cond_1

    .line 420
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->sendKeyEventWithKeyCode(II)V

    .line 486
    :goto_1
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 487
    const/4 v2, 0x1

    goto :goto_0

    .line 423
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    invoke-static {v2, v15}, Lorg/chromium/content/browser/input/ImeAdapter;->getTypedKeyEventGuess(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v17

    .line 424
    .local v17, "keyEvent":Landroid/view/KeyEvent;
    const/4 v9, 0x0

    .line 425
    .local v9, "modifiers":I
    if-eqz v17, :cond_2

    .line 426
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 427
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    invoke-static {v2}, Lorg/chromium/content/browser/input/ImeAdapter;->getModifiers(I)I

    move-result v9

    .line 437
    :goto_2
    if-lez v8, :cond_5

    if-eqz p3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    if-nez v2, :cond_5

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 438
    move-object/from16 v0, p0

    iput v8, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSyntheticKeyCode:I

    .line 439
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    .line 428
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 429
    const/4 v8, 0x0

    goto :goto_2

    .line 431
    :cond_3
    const/4 v8, -0x1

    goto :goto_2

    .line 439
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 445
    :cond_5
    const/16 v8, 0xe5

    .line 446
    const/4 v9, 0x0

    .line 466
    if-ltz v8, :cond_6

    .line 467
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/4 v5, 0x7

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 471
    :cond_6
    if-eqz p3, :cond_8

    .line 472
    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v15}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeCommitText(JLjava/lang/String;)V

    .line 473
    const/4 v15, 0x0

    .line 478
    :goto_3
    if-ltz v8, :cond_7

    .line 479
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const/16 v5, 0x9

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 483
    :cond_7
    move-object/from16 v0, p0

    iput v8, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSyntheticKeyCode:I

    goto/16 :goto_1

    .line 475
    :cond_8
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    move-object/from16 v11, p0

    move-object/from16 v14, p1

    move/from16 v16, p2

    invoke-direct/range {v11 .. v16}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingText(JLjava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_3
.end method

.method deleteSurroundingText(II)Z
    .locals 4
    .param p1, "beforeLength"    # I
    .param p2, "afterLength"    # I

    .prologue
    .line 538
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 539
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    .line 540
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeDeleteSurroundingText(JII)V

    .line 541
    const/4 v0, 0x1

    goto :goto_0
.end method

.method detach()V
    .locals 2
    .annotation build Lorg/chromium/base/annotations/CalledByNative;
    .end annotation

    .prologue
    .line 604
    const-string v0, "cr.Ime"

    const-string v1, "detach"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mDismissInputRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 606
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    .line 607
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    .line 608
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 313
    const-string v0, "cr.Ime"

    const-string v1, "dispatchKeyEvent: action [%d], keycode [%d]"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/input/AdapterInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 318
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finishComposingText()V
    .locals 4
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 493
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeFinishComposingText(J)V

    goto :goto_0
.end method

.method getInputMethodManagerWrapper()Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    return-object v0
.end method

.method getTextInputFlags()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputFlags:I

    return v0
.end method

.method getTextInputType()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    return v0
.end method

.method public hasTextInputType()Z
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->isTextInputType(I)Z

    move-result v0

    return v0
.end method

.method public performContextMenuAction(I)Z
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 363
    const-string v0, "cr.Ime"

    const-string v1, "performContextMenuAction: id [%d]"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0, p1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->performContextMenuAction(I)Z

    move-result v0

    return v0
.end method

.method sendKeyEventWithKeyCode(II)V
    .locals 19
    .param p1, "keyCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 396
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 397
    .local v4, "eventTime":J
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lorg/chromium/content/browser/input/ImeAdapter;->mLastSyntheticKeyCode:I

    .line 398
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-wide v6, v4

    move/from16 v9, p1

    move/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    .line 402
    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-wide v10, v4

    move/from16 v13, p1

    move/from16 v18, p2

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/chromium/content/browser/input/ImeAdapter;->translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z

    .line 406
    return-void
.end method

.method sendSyntheticKeyEvent(IJIII)Z
    .locals 10
    .param p1, "eventType"    # I
    .param p2, "timestampMs"    # J
    .param p4, "keyCode"    # I
    .param p5, "modifiers"    # I
    .param p6, "unicodeChar"    # I

    .prologue
    .line 522
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 526
    :goto_0
    return v0

    .line 524
    :cond_0
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    move-object v0, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendSyntheticKeyEvent(JIJIII)Z

    .line 526
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setComposingRegion(Ljava/lang/CharSequence;II)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 563
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 566
    :goto_0
    return v0

    .line 564
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p2, p3}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetComposingRegion(JII)V

    .line 565
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 566
    const/4 v0, 0x1

    goto :goto_0

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setEditableSelectionOffsets(II)Z
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 551
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 553
    :goto_0
    return v0

    .line 552
    :cond_0
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSetEditableSelectionOffsets(JII)V

    .line 553
    const/4 v0, 0x1

    goto :goto_0
.end method

.method setInputConnection(Lorg/chromium/content/browser/input/AdapterInputConnection;)V
    .locals 1
    .param p1, "inputConnection"    # Lorg/chromium/content/browser/input/AdapterInputConnection;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputConnection:Lorg/chromium/content/browser/input/AdapterInputConnection;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mLastComposeText:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setInputMethodManagerWrapper(Lorg/chromium/content/browser/input/InputMethodManagerWrapper;)V
    .locals 0
    .param p1, "immw"    # Lorg/chromium/content/browser/input/InputMethodManagerWrapper;
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    iput-object p1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    .line 149
    return-void
.end method

.method public showSoftKeyboard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 280
    const-string v0, "cr.Ime"

    const-string v1, "showKeyboard"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iput-boolean v4, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mIsShowWithoutHideOutstanding:Z

    .line 282
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v3}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getNewShowKeyboardReceiver()Landroid/os/ResultReceiver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)V

    .line 284
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v4, :cond_0

    .line 286
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onKeyboardBoundsUnchanged()V

    .line 288
    :cond_0
    return-void
.end method

.method translateAndSendNativeEvents(Landroid/view/KeyEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x0

    .line 498
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v9

    .line 500
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v11

    .line 501
    .local v11, "action":I
    if-eqz v11, :cond_2

    const/4 v0, 0x1

    if-ne v11, v0, :cond_0

    .line 514
    :cond_2
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v0}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->onImeEvent()V

    .line 515
    iget-wide v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-static {v0}, Lorg/chromium/content/browser/input/ImeAdapter;->getModifiers(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v10

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v10}, Lorg/chromium/content/browser/input/ImeAdapter;->nativeSendKeyEvent(JLandroid/view/KeyEvent;IIJIZI)Z

    move-result v9

    goto :goto_0
.end method

.method public updateKeyboardVisibility(JIIZ)V
    .locals 7
    .param p1, "nativeImeAdapter"    # J
    .param p3, "textInputType"    # I
    .param p4, "textInputFlags"    # I
    .param p5, "showIfNeeded"    # Z

    .prologue
    .line 213
    const-string v0, "cr.Ime"

    const-string v1, "updateKeyboardVisibility: type [%d], flags [%d], show [%b]"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 217
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-nez v0, :cond_1

    if-nez p5, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-wide v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mNativeImeAdapterAndroid:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eq v0, p3, :cond_3

    .line 226
    :cond_2
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/chromium/content/browser/input/ImeAdapter;->attach(JIIZ)V

    .line 228
    iget v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mTextInputType:I

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mInputMethodManagerWrapper:Lorg/chromium/content/browser/input/InputMethodManagerWrapper;

    iget-object v1, p0, Lorg/chromium/content/browser/input/ImeAdapter;->mViewEmbedder:Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;

    invoke-interface {v1}, Lorg/chromium/content/browser/input/ImeAdapter$ImeAdapterDelegate;->getAttachedView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/input/InputMethodManagerWrapper;->restartInput(Landroid/view/View;)V

    .line 230
    if-eqz p5, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showSoftKeyboard()V

    goto :goto_0

    .line 234
    :cond_3
    invoke-direct {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->hasInputType()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/chromium/content/browser/input/ImeAdapter;->showSoftKeyboard()V

    goto :goto_0
.end method
