.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.super Ljava/lang/Object;
.source "QuickSettingsModel.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
.implements Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationGpsStateChangeCallback;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BasicRefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;,
        Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    }
.end annotation


# instance fields
.field private mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

.field private mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

.field private mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

.field private mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

.field private mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private final mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

.field private mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasMobileData:Z

.field private mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mImeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

.field private mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

.field private mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mTimeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

.field private mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mWifiDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mWifiDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

.field private mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

.field private mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 262
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 204
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    .line 208
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mTimeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 212
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 216
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 220
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    .line 224
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 228
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    .line 232
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    .line 236
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    .line 240
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 243
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 244
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 248
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 252
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    .line 256
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 260
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    .line 264
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    .line 265
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 275
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    .line 276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mNextAlarmObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$NextAlarmObserver;->startObserving()V

    .line 277
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    .line 278
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BugreportObserver;->startObserving()V

    .line 279
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    .line 280
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;->startObserving()V

    .line 282
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 284
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHasMobileData:Z

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, alarmIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ALARM_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/settings/CurrentUserTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setAirplaneModeState(Z)V

    return-void
.end method

.method private static getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "resolver"
    .parameter "imm"
    .parameter
    .parameter "pm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v5, 0x0

    .line 666
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-object v5

    .line 667
    :cond_1
    const-string v6, "default_input_method"

    invoke-static {p1, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, currentInputMethodId:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 670
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 671
    .local v2, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 672
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v3

    .line 673
    .local v3, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0, v5, v6}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 677
    .local v4, summary:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 673
    .end local v4           #summary:Ljava/lang/CharSequence;
    :cond_3
    const v5, 0x7f0a00de

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z
    .locals 14
    .parameter "imm"

    .prologue
    .line 610
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v5

    .line 611
    .local v5, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 612
    .local v0, N:I
    const/4 v12, 0x2

    if-le v0, v12, :cond_0

    const/4 v12, 0x1

    .line 650
    :goto_0
    return v12

    .line 613
    :cond_0
    const/4 v12, 0x1

    if-ge v0, v12, :cond_1

    const/4 v12, 0x0

    goto :goto_0

    .line 614
    :cond_1
    const/4 v7, 0x0

    .line 615
    .local v7, nonAuxCount:I
    const/4 v1, 0x0

    .line 616
    .local v1, auxCount:I
    const/4 v8, 0x0

    .line 617
    .local v8, nonAuxSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    .line 618
    .local v2, auxSubtype:Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 619
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 620
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    const/4 v12, 0x1

    invoke-virtual {p1, v4, v12}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    .line 622
    .local v11, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 623
    .local v10, subtypeCount:I
    if-nez v10, :cond_3

    .line 624
    add-int/lit8 v7, v7, 0x1

    .line 618
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 626
    :cond_3
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v10, :cond_2

    .line 627
    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    .line 628
    .local v9, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v12

    if-nez v12, :cond_4

    .line 629
    add-int/lit8 v7, v7, 0x1

    .line 630
    move-object v8, v9

    .line 626
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 632
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 633
    move-object v2, v9

    goto :goto_3

    .line 638
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #j:I
    .end local v9           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10           #subtypeCount:I
    .end local v11           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_5
    const/4 v12, 0x1

    if-gt v7, v12, :cond_6

    const/4 v12, 0x1

    if-le v1, v12, :cond_7

    .line 639
    :cond_6
    const/4 v12, 0x1

    goto :goto_0

    .line 640
    :cond_7
    const/4 v12, 0x1

    if-ne v7, v12, :cond_a

    const/4 v12, 0x1

    if-ne v1, v12, :cond_a

    .line 641
    if-eqz v8, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_8
    const-string v12, "TrySuppressingImeSwitcher"

    invoke-virtual {v8, v12}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 646
    const/4 v12, 0x0

    goto :goto_0

    .line 648
    :cond_9
    const/4 v12, 0x1

    goto :goto_0

    .line 650
    :cond_a
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 404
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 409
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 405
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 406
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 407
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 413
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 418
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 414
    .end local v0           #length:I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 415
    .restart local v0       #length:I
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const/4 v1, 0x0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    goto :goto_0
.end method

.method private setAirplaneModeState(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 381
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 382
    return-void

    .line 375
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addAirplaneModeTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 4
    .parameter "view"
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 355
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 356
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickSettingsModel;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 367
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 369
    .local v0, airplaneMode:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onAirplaneModeChanged(Z)V

    .line 370
    return-void
.end method

.method addAlarmTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 2
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 333
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 335
    return-void
.end method

.method addBatteryTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 534
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 536
    return-void
.end method

.method addBluetoothTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 4
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 487
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 489
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 490
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 491
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 493
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 494
    return-void

    .line 491
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method addBrightnessTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 713
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 715
    return-void
.end method

.method addBugreportTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 565
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 566
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBugreportChanged()V

    .line 567
    return-void
.end method

.method addLocationTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 550
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 551
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 553
    return-void
.end method

.method addRSSITile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 454
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 456
    return-void
.end method

.method addRotationLockTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 685
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 686
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 687
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 688
    return-void
.end method

.method addSettingsTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 302
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshSettingsTile()V

    .line 304
    return-void
.end method

.method addUserTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 314
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 316
    return-void
.end method

.method addWifiDisplayTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 0
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 584
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 585
    return-void
.end method

.method addWifiTile(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;)V
    .locals 3
    .parameter "view"
    .parameter "cb"

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    .line 399
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 401
    return-void
.end method

.method deviceHasMobileData()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mHasMobileData:Z

    return v0
.end method

.method deviceSupportsBluetooth()Z
    .locals 1

    .prologue
    .line 496
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 388
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 389
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz p1, :cond_0

    const v1, 0x7f02003a

    :goto_0
    iput v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 392
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAirplaneModeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 394
    return-void

    .line 389
    :cond_0
    const v1, 0x7f020039

    goto :goto_0
.end method

.method onAlarmChanged(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const-string v1, "alarmSet"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 339
    return-void
.end method

.method public onBatteryLevelChanged(IZ)V
    .locals 3
    .parameter "level"
    .parameter "pluggedIn"

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    .line 541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    iput-boolean p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 543
    return-void
.end method

.method public onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V
    .locals 4
    .parameter "bluetoothStateIn"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 507
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 508
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v2, p1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 509
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-eqz v1, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020055

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 512
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a009b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    .line 517
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a00d8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 523
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 524
    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020053

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 515
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a0099

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    goto :goto_0

    .line 519
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f020054

    iput v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 520
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a00da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 521
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    const v2, 0x7f0a009a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->stateContentDescription:Ljava/lang/String;

    goto :goto_1
.end method

.method public onBluetoothStateChange(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;)V

    .line 503
    return-void
.end method

.method public onBrightnessLevelChanged()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 718
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 719
    .local v1, r:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v6}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v6

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 723
    .local v0, mode:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v2, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->autoBrightness:Z

    .line 725
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;->autoBrightness:Z

    if-eqz v2, :cond_1

    const v2, 0x7f020057

    :goto_1
    iput v2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 728
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    const v3, 0x7f0a00db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 729
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBrightnessState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BrightnessState;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 730
    return-void

    :cond_0
    move v2, v3

    .line 723
    goto :goto_0

    .line 725
    :cond_1
    const v2, 0x7f020056

    goto :goto_1
.end method

.method public onBugreportChanged()V
    .locals 5

    .prologue
    .line 570
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 571
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 573
    .local v1, enabled:Z
    :try_start_0
    const-string v2, "bugreport_in_power_menu"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 577
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 578
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBugreportState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 579
    return-void

    .line 573
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 574
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method onImeWindowStatusChanged(Z)V
    .locals 6
    .parameter "visible"

    .prologue
    .line 653
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 655
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 657
    .local v0, imis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz p1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->needsToShowImeSwitchOngoingNotification(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 658
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v3, v4, v1, v0, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 660
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mImeState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 663
    :cond_0
    return-void

    .line 657
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onLocationGpsStateChanged(ZLjava/lang/String;)V
    .locals 3
    .parameter "inUse"
    .parameter "description"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mLocationState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 560
    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "enabled"
    .parameter "mobileSignalIconId"
    .parameter "signalContentDescription"
    .parameter "dataTypeIconId"
    .parameter "dataContentDescription"
    .parameter "enabledDesc"

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->deviceHasMobileData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 465
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_1

    if-lez p2, :cond_1

    move v1, p2

    :goto_0
    iput v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->signalIconId:I

    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_2

    if-lez p2, :cond_2

    .end local p3
    :goto_1
    iput-object p3, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->signalContentDescription:Ljava/lang/String;

    .line 471
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_3

    if-lez p4, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-nez v1, :cond_3

    move v1, p4

    :goto_2
    iput v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataTypeIconId:I

    .line 474
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_4

    if-lez p4, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    if-nez v2, :cond_4

    .end local p5
    :goto_3
    iput-object p5, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;->dataContentDescription:Ljava/lang/String;

    .line 477
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    if-eqz p1, :cond_5

    invoke-static {p6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->removeTrailingPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 480
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSICallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSITile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRSSIState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RSSIState;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 482
    .end local v0           #r:Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 465
    .restart local v0       #r:Landroid/content/res/Resources;
    .restart local p3
    .restart local p5
    :cond_1
    const v1, 0x7f02007e

    goto :goto_0

    .line 468
    :cond_2
    const v2, 0x7f0a0092

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 471
    .end local p3
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 474
    :cond_4
    const v2, 0x7f0a0082

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    goto :goto_3

    .line 477
    .end local p5
    :cond_5
    const v1, 0x7f0a00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method onNextAlarmChanged()V
    .locals 4

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "next_alarm_formatted"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, alarmText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 350
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mAlarmState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 351
    return-void

    .line 348
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onRotationLockChanged()V
    .locals 4

    .prologue
    .line 690
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 691
    .local v0, locked:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 692
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz v0, :cond_1

    const v1, 0x7f020060

    :goto_0
    iput v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 695
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00dd

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 700
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 703
    :cond_0
    return-void

    .line 692
    :cond_1
    const v1, 0x7f02003c

    goto :goto_0

    .line 695
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00dc

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onWifiDisplayStateChanged(Landroid/hardware/display/WifiDisplayStatus;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 589
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v1, 0x7f02005f

    iput v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 597
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 599
    return-void

    .line 587
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    const v2, 0x7f0a00eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 595
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiDisplayState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v1, 0x7f02005e

    iput v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    goto :goto_1
.end method

.method public onWifiSignalChanged(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "enabled"
    .parameter "wifiSignalIconId"
    .parameter "wifiSignalContentDescription"
    .parameter "enabledDesc"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 425
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 427
    .local v0, r:Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-eqz p4, :cond_0

    move v1, v2

    .line 428
    .local v1, wifiConnected:Z
    :goto_0
    if-lez p2, :cond_1

    if-nez p4, :cond_1

    .line 429
    .local v2, wifiNotConnected:Z
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-boolean p1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 430
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-boolean v1, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->connected:Z

    .line 431
    if-eqz v1, :cond_2

    .line 432
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput p2, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 433
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-static {p4}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 434
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    iput-object p3, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    .line 444
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 445
    return-void

    .end local v1           #wifiConnected:Z
    .end local v2           #wifiNotConnected:Z
    :cond_0
    move v1, v3

    .line 427
    goto :goto_0

    .restart local v1       #wifiConnected:Z
    :cond_1
    move v2, v3

    .line 428
    goto :goto_1

    .line 435
    .restart local v2       #wifiNotConnected:Z
    :cond_2
    if-eqz v2, :cond_3

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f020082

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 437
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a00e6

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 438
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a0088

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    goto :goto_2

    .line 440
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f02008d

    iput v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    .line 441
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a00e9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 442
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mWifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    const v4, 0x7f0a0087

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    goto :goto_2
.end method

.method refreshBatteryTile()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBatteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 546
    return-void
.end method

.method refreshBluetoothTile()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBluetoothStateChange(Z)V

    .line 529
    :cond_0
    return-void
.end method

.method refreshBrightnessTile()V
    .locals 0

    .prologue
    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onBrightnessLevelChanged()V

    .line 733
    return-void
.end method

.method refreshRotationLockTile()V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mRotationLockTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    if-eqz v0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->onRotationLockChanged()V

    .line 708
    :cond_0
    return-void
.end method

.method refreshSettingsTile()V
    .locals 4

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 307
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const v2, 0x7f0a00e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 308
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mSettingsState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 309
    return-void
.end method

.method setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "name"
    .parameter "avatar"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    iput-object p1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;->avatar:Landroid/graphics/drawable/Drawable;

    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserTile:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->mUserState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$UserState;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 321
    return-void
.end method

.method updateResources()V
    .locals 0

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshSettingsTile()V

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBatteryTile()V

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBluetoothTile()V

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshBrightnessTile()V

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->refreshRotationLockTile()V

    .line 297
    return-void
.end method
