.class public Lorg/chromium/ui/picker/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private final mMaxTimeMillis:J

.field private final mMinTimeMillis:J

.field private final mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;IIIIIZDD)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I
    .param p6, "hourOfDay"    # I
    .param p7, "minute"    # I
    .param p8, "is24HourView"    # Z
    .param p9, "min"    # D
    .param p11, "max"    # D

    .prologue
    .line 67
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 69
    move-wide/from16 v0, p9

    double-to-long v4, v0

    iput-wide v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMinTimeMillis:J

    .line 70
    move-wide/from16 v0, p11

    double-to-long v4, v0

    iput-wide v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMaxTimeMillis:J

    .line 72
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;

    .line 74
    const/4 v3, -0x1

    sget v4, Lorg/chromium/ui/R$string;->date_picker_dialog_set:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 76
    const/4 v4, -0x2

    const/high16 v3, 0x1040000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v3}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 78
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setIcon(I)V

    .line 79
    sget v3, Lorg/chromium/ui/R$string;->date_time_picker_dialog_title:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    const-string v3, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 83
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lorg/chromium/ui/R$layout;->date_time_picker_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 84
    .local v14, "view":Landroid/view/View;
    invoke-virtual {p0, v14}, Lorg/chromium/ui/picker/DateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 85
    sget v3, Lorg/chromium/ui/R$id;->date_picker:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 86
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-wide v10, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMinTimeMillis:J

    iget-wide v12, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMaxTimeMillis:J

    move-object v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v3 .. v13}, Lorg/chromium/ui/picker/DateDialogNormalizer;->normalize(Landroid/widget/DatePicker;Landroid/widget/DatePicker$OnDateChangedListener;IIIIIJJ)V

    .line 89
    sget v3, Lorg/chromium/ui/R$id;->time_picker:I

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 90
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 91
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 92
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 93
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 94
    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lorg/chromium/ui/picker/DateTimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 96
    return-void
.end method

.method public static onTimeChangedInternal(IIILandroid/widget/TimePicker;JJ)V
    .locals 8
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "picker"    # Landroid/widget/TimePicker;
    .param p4, "minTimeMillis"    # J
    .param p6, "maxTimeMillis"    # J
    .annotation build Lorg/chromium/base/VisibleForTesting;
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 134
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 135
    invoke-virtual {p3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 137
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v1, v2, p4

    if-gez v1, :cond_1

    .line 138
    invoke-virtual {v0, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 142
    :cond_0
    :goto_0
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 143
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 144
    return-void

    .line 139
    :cond_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v1, v2, p6

    if-lez v1, :cond_0

    .line 140
    invoke-virtual {v0, p6, p7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private tryNotifyDateTimeSet()V
    .locals 8

    .prologue
    .line 104
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 106
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 107
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mCallBack:Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    iget-object v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    iget-object v6, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v6}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface/range {v0 .. v7}, Lorg/chromium/ui/picker/DateTimePickerDialog$OnDateTimeSetListener;->onDateTimeSet(Landroid/widget/DatePicker;Landroid/widget/TimePicker;IIIII)V

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/chromium/ui/picker/DateTimePickerDialog;->tryNotifyDateTimeSet()V

    .line 101
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/chromium/ui/picker/DateTimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 121
    :cond_0
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v0

    iget-object v1, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v1}, Landroid/widget/DatePicker;->getMonth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-wide v4, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMinTimeMillis:J

    iget-wide v6, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mMaxTimeMillis:J

    invoke-static/range {v0 .. v7}, Lorg/chromium/ui/picker/DateTimePickerDialog;->onTimeChangedInternal(IIILandroid/widget/TimePicker;JJ)V

    .line 127
    return-void
.end method

.method public updateDateTime(IIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minutOfHour"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 156
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 157
    iget-object v0, p0, Lorg/chromium/ui/picker/DateTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 158
    return-void
.end method
