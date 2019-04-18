.class public Lorg/chromium/ui/autofill/AutofillSuggestion;
.super Ljava/lang/Object;
.source "AutofillSuggestion.java"

# interfaces
.implements Lorg/chromium/ui/DropdownItem;


# instance fields
.field private final mDeletable:Z

.field private final mIconId:I

.field private final mLabel:Ljava/lang/String;

.field private final mSublabel:Ljava/lang/String;

.field private final mSuggestionId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "sublabel"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "suggestionId"    # I
    .param p5, "deletable"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mLabel:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mSublabel:Ljava/lang/String;

    .line 30
    iput p3, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mIconId:I

    .line 31
    iput p4, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mSuggestionId:I

    .line 32
    iput-boolean p5, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mDeletable:Z

    .line 33
    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mIconId:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSublabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mSublabel:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestionId()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mSuggestionId:I

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lorg/chromium/ui/autofill/AutofillSuggestion;->mDeletable:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public isGroupHeader()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method
