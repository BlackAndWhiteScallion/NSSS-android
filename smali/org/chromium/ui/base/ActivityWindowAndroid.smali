.class public Lorg/chromium/ui/base/ActivityWindowAndroid;
.super Lorg/chromium/ui/base/WindowAndroid;
.source "ActivityWindowAndroid.java"

# interfaces
.implements Lorg/chromium/base/ApplicationStatus$ActivityStateListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PERMISSION_QUERIED_KEY_PREFIX:Ljava/lang/String; = "HasRequestedAndroidPermission::"

.field private static final REQUEST_CODE_PREFIX:I = 0x3e8

.field private static final REQUEST_CODE_RANGE_SIZE:I = 0x64


# instance fields
.field private final mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mNextRequestCode:I

.field private final mOutstandingPermissionRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/ui/base/ActivityWindowAndroid;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/app/Activity;Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listenToActivityState"    # Z

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/ui/base/WindowAndroid;-><init>(Landroid/content/Context;)V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    .line 67
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    .line 70
    if-eqz p2, :cond_0

    .line 71
    invoke-static {p0, p1}, Lorg/chromium/base/ApplicationStatus;->registerStateListenerForActivity(Lorg/chromium/base/ApplicationStatus$ActivityStateListener;Landroid/app/Activity;)V

    .line 73
    :cond_0
    return-void
.end method

.method private generateNextRequestCode()I
    .locals 2

    .prologue
    .line 287
    iget v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    add-int/lit16 v0, v1, 0x3e8

    .line 288
    .local v0, "requestCode":I
    iget v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x64

    iput v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mNextRequestCode:I

    .line 289
    return v0
.end method

.method private getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 160
    move-object v1, p1

    .line 169
    .local v1, "permissionQueriedKey":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 172
    .local v0, "permissionInfo":Landroid/content/pm/PermissionInfo;
    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HasRequestedAndroidPermission::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 175
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .prologue
    const/4 v2, 0x0

    .line 229
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v2

    .line 230
    :cond_1
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 231
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v1

    .line 234
    .local v1, "requestCode":I
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 236
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    .line 293
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public canRequestPermission(Ljava/lang/String;)Z
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-static {}, Lorg/chromium/base/BuildInfo;->isMncOrLater()Z

    move-result v4

    if-nez v4, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v3

    .line 186
    :cond_1
    iget-object v4, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 187
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "permissionQueriedKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 197
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public cancelIntent(I)V
    .locals 2
    .param p1, "requestCode"    # I

    .prologue
    .line 129
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 130
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->finishActivity(I)V

    goto :goto_0
.end method

.method public getActivity()Ljava/lang/ref/WeakReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 142
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/base/WindowAndroid$IntentCallback;

    .line 143
    .local v0, "callback":Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingIntents:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 144
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mIntentErrors:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "errorMessage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 147
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-interface {v0, p0, p2, v3, p3}, Lorg/chromium/ui/base/WindowAndroid$IntentCallback;->onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V

    .line 156
    :goto_0
    return v2

    .line 151
    :cond_0
    if-eqz v1, :cond_1

    .line 152
    invoke-virtual {p0, v1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->showCallbackNonExistentError(Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "newState"    # I

    .prologue
    .line 273
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityStopped()V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->onActivityStarted()V

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->keyboardVisibilityPossiblyChanged(Z)V

    .line 284
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v4, 0x1

    .line 248
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 249
    .local v0, "activity":Landroid/app/Activity;
    sget-boolean v5, Lorg/chromium/ui/base/ActivityWindowAndroid;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 251
    :cond_0
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 253
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_1

    .line 254
    aget-object v5, p2, v3

    invoke-direct {p0, v5}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getHasRequestedPermissionKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 258
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .line 259
    .local v1, "callback":Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mOutstandingPermissionRequests:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 260
    if-nez v1, :cond_2

    const/4 v4, 0x0

    .line 262
    :goto_1
    return v4

    .line 261
    :cond_2
    invoke-interface {v1, p2, p3}, Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method protected registerKeyboardVisibilityCallbacks()V
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 78
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 79
    :cond_0
    const v2, 0x1020002

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "content":Landroid/view/View;
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, Lorg/chromium/ui/UiUtils;->isKeyboardShowing(Landroid/content/Context;Landroid/view/View;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mIsKeyboardShowing:Z

    .line 81
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method

.method public requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/ActivityWindowAndroid;->requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/chromium/ui/base/ActivityWindowAndroid$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/ui/base/ActivityWindowAndroid$1;-><init>(Lorg/chromium/ui/base/ActivityWindowAndroid;[Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 9
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    const/4 v8, -0x1

    .line 94
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 95
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    move v2, v8

    .line 107
    :goto_0
    return v2

    .line 97
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v2

    .line 100
    .local v2, "requestCode":I
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-direct {p0, v2, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    goto :goto_0

    .line 102
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/IntentSender$SendIntentException;
    move v2, v8

    .line 103
    goto :goto_0
.end method

.method public showCancelableIntent(Landroid/content/Intent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$IntentCallback;
    .param p3, "errorId"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, -0x1

    .line 112
    iget-object v4, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 113
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    move v2, v3

    .line 124
    :goto_0
    return v2

    .line 115
    :cond_0
    invoke-direct {p0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->generateNextRequestCode()I

    move-result v2

    .line 118
    .local v2, "requestCode":I
    :try_start_0
    invoke-virtual {v0, p1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    invoke-direct {p0, v2, p2, p3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->storeCallbackData(ILorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)V

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/ActivityNotFoundException;
    move v2, v3

    .line 120
    goto :goto_0
.end method

.method protected unregisterKeyboardVisibilityCallbacks()V
    .locals 2

    .prologue
    .line 86
    iget-object v1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 87
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0
.end method
