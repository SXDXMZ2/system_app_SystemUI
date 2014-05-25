.class public Lcom/android/systemui/statusbar/policy/BatteryController;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field private static final CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;


# instance fields
.field private mBatteryView:Landroid/view/View;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mExcludedIconsObserver:Landroid/database/ContentObserver;

.field private mLevel:I

.field private mNotificationCreated:Z

.field private mPercentMode:Z

.field private final mPercentModeObserver:Landroid/database/ContentObserver;

.field private mPlugged:Z

.field private mStaminaIconExcluded:Z

.field private mStaminaMode:Z

.field private final mTextCriticalLimit:I

.field private final mTextLowLimit:I

.field private final mUrgentIconLimit:I

.field private mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mXssmObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 52
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    .line 60
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    iput v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$2;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mXssmObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$3;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    .line 62
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryController$4;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController$4;-><init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getPercentMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isXssmEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isStaminaIconExcluded()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaIconExcluded:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mXssmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "somc.show_battery_percent"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextCriticalLimit:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextLowLimit:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUrgentIconLimit:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "com.sonymobile.BATTERY_PERCENTAGE_VISIBLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getPercentMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/BatteryController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isXssmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/BatteryController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaIconExcluded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/BatteryController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isStaminaIconExcluded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private createUsbLowNotification(Z)V
    .locals 11
    .parameter "create"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const v8, 0x7f0a0008

    .line 148
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 151
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz v3, :cond_0

    .line 152
    const v2, 0x7f0a0008

    .line 154
    .local v2, id:I
    if-eqz p1, :cond_1

    .line 155
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 156
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 157
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x7f0a0009

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 159
    .local v1, contentText:Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 160
    .local v0, builder:Landroid/app/Notification$Builder;
    const v6, 0x7f020157

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 161
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 162
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 163
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 164
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v10, v8, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 165
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    .line 171
    .end local v0           #builder:Landroid/app/Notification$Builder;
    .end local v1           #contentText:Ljava/lang/CharSequence;
    .end local v2           #id:I
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 167
    .restart local v2       #id:I
    :cond_1
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v10, v8, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 168
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    goto :goto_0
.end method

.method private getBatteryTextColor()I
    .locals 3

    .prologue
    const v0, 0x7f08000c

    .line 69
    .local v0, colorId:I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextCriticalLimit:I

    if-ge v1, v2, :cond_1

    const v0, 0x7f08000d

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 70
    return v1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mTextLowLimit:I

    if-ge v1, v2, :cond_0

    const v0, 0x7f08000e

    goto :goto_0
.end method

.method private getPercentMode()Z
    .locals 5

    .prologue
    .line 104
    .line 83
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "somc.show_battery_percent"

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v4}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 88
    .local v1, shown:Z
    :goto_0
    return v1

    .line 111
    .end local v1           #shown:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v1, 0x0

    .restart local v1       #shown:Z
    goto :goto_0
.end method

.method private isStaminaIconExcluded()Z
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "excluded_system_bar_icons"

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v3}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .local v0, excludedIcons:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "stamina"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isXssmEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/policy/BatteryController;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 83
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 88
    :goto_0
    return v0

    .line 111
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetImageView(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 190
    .local v0, image:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    :cond_0
    return-void
.end method

.method private updateView()V
    .locals 17

    .prologue
    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    if-nez v11, :cond_0

    .line 105
    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mUrgentIconLimit:I

    if-ge v11, v12, :cond_3

    const/4 v7, 0x1

    .line 117
    .local v7, showUrgentIcon:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    const v12, 0x7f0700f3

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 120
    .local v9, status:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    if-nez v11, :cond_1

    if-eqz v7, :cond_4

    :cond_1
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    if-nez v11, :cond_5

    .line 121
    const v11, 0x7f0201fb

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    const v12, 0x7f0700f4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 123
    .local v1, batteryMeter:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    const v12, 0x7f0700f5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 125
    .local v2, batteryPercent:Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    if-nez v11, :cond_7

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    const v12, 0x7f0700f2

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 91
    .local v5, icon:Landroid/widget/ImageView;
    const v11, 0x7f0201fc

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    const v12, 0x7f0700f6

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 163
    .local v8, stamina:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    if-eqz v11, :cond_6

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaIconExcluded:Z

    if-nez v11, :cond_6

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .end local v5           #icon:Landroid/widget/ImageView;
    .end local v8           #stamina:Landroid/widget/ImageView;
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const v13, 0x7f0a00ab

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 141
    .end local v1           #batteryMeter:Landroid/view/View;
    .end local v2           #batteryPercent:Landroid/view/View;
    .end local v7           #showUrgentIcon:Z
    .end local v9           #status:Landroid/widget/ImageView;
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 135
    .restart local v7       #showUrgentIcon:Z
    .restart local v9       #status:Landroid/widget/ImageView;
    :cond_4
    const/16 v11, 0x8

    goto/16 :goto_2

    .line 147
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    if-eqz v11, :cond_2

    .line 148
    const v11, 0x7f0201fd

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 138
    .restart local v1       #batteryMeter:Landroid/view/View;
    .restart local v2       #batteryPercent:Landroid/view/View;
    .restart local v5       #icon:Landroid/widget/ImageView;
    .restart local v8       #stamina:Landroid/widget/ImageView;
    :cond_6
    const/16 v11, 0x8

    goto :goto_4

    .line 165
    .end local v5           #icon:Landroid/widget/ImageView;
    .end local v8           #stamina:Landroid/widget/ImageView;
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 139
    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    const v12, 0x7f0700f7

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 140
    .local v3, bg:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaMode:Z

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mStaminaIconExcluded:Z

    if-nez v11, :cond_8

    const v6, 0x7f0201fe

    .line 141
    .local v6, image:I
    :goto_6
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    const/16 v12, 0x63

    if-le v11, v12, :cond_9

    const v4, 0x7f0a0103

    .local v4, format:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    const v12, 0x7f07006d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .local v10, text:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->getBatteryTextColor()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 141
    .end local v4           #format:I
    .end local v6           #image:I
    .end local v10           #text:Landroid/widget/TextView;
    :cond_8
    const v6, 0x7f0201ff

    goto :goto_6

    .line 142
    .restart local v6       #image:I
    :cond_9
    const v4, 0x7f0a004f

    goto :goto_7
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mBatteryView:Landroid/view/View;

    .line 186
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 242
    const-string v7, "level"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 243
    .local v3, level:I
    const-string v7, "status"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 246
    .local v6, status:I
    const/4 v5, 0x0

    .line 247
    .local v5, plugged:Z
    packed-switch v6, :pswitch_data_0

    .line 254
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 255
    const-string v7, "plugged"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 262
    .local v4, plugType:I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 263
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    if-nez v7, :cond_0

    .line 264
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/policy/BatteryController;->createUsbLowNotification(Z)V

    .end local v4           #plugType:I
    :cond_0
    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mLevel:I

    .line 275
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPlugged:Z

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V

    .line 278
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 279
    .local v1, cb:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    invoke-interface {v1, v3, v5}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZ)V

    goto :goto_2

    .end local v1           #cb:Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_1
    const/4 v5, 0x1

    goto :goto_0

    .line 268
    .restart local v4       #plugType:I
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mNotificationCreated:Z

    if-eqz v7, :cond_0

    .line 269
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/policy/BatteryController;->createUsbLowNotification(Z)V

    goto :goto_1

    .line 282
    .end local v3           #level:I
    .end local v4           #plugType:I
    .end local v5           #plugged:Z
    .end local v6           #status:I
    :cond_2
    const-string v7, "com.sonymobile.BATTERY_PERCENTAGE_VISIBLE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "visible"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentMode:Z

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V

    :cond_3
    return-void

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateResources()V
    .locals 1

    .prologue
    .line 189
    const v0, 0x7f0700f2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->resetImageView(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->updateView()V

    .line 200
    return-void
.end method
