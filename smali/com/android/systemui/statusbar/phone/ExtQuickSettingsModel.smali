.class Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.source "ExtQuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsForeignState:Z

.field private mPhoneCount:I

.field private mRoamingCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

.field private mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

.field private mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mIsForeignState:Z

    .line 59
    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 87
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;Landroid/os/Handler;)V

    .line 88
    .local v1, roamingDataObserver:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$RoamingDataObserver;->startObserving()V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->onRoamingDataStateChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->getDataRoaming(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->setDataRoaming(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    return-object v0
.end method

.method private getDataRoaming(I)Z
    .locals 6
    .parameter "sub"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 177
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mPhoneCount:I

    if-le v3, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, val:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_roaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    .local v0, enabled:Z
    :goto_1
    return v0

    .line 177
    .end local v0           #enabled:Z
    .end local v1           #val:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .restart local v1       #val:Ljava/lang/String;
    :cond_1
    move v0, v2

    .line 178
    goto :goto_1
.end method

.method private isValidNumeric(Ljava/lang/String;)Z
    .locals 1
    .parameter "numeric"

    .prologue
    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "00000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onRoamingDataStateChanged()V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->getDataRoaming(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 173
    return-void
.end method

.method private setDataRoaming(ZI)V
    .locals 5
    .parameter "enabled"
    .parameter "sub"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 185
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mPhoneCount:I

    if-le v0, v1, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_roaming"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_roaming"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 198
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 187
    goto :goto_0

    :cond_2
    move v1, v2

    .line 191
    goto :goto_1

    .line 195
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_roaming"

    if-eqz p1, :cond_4

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public addRoamingTile()Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$1;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel$2;-><init>(Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    .line 116
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mPhoneCount:I

    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    return-object v0
.end method

.method public onRoamingVisibleChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 133
    const-string v0, "460"

    .line 134
    .local v0, CHINA_MCC:Ljava/lang/String;
    const-string v1, "455"

    .line 139
    .local v1, MACAO_MCC:Ljava/lang/String;
    iget v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mPhoneCount:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 140
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, numeric:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->isValidNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    :goto_1
    return-void

    .line 143
    .end local v3           #numeric:Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #numeric:Ljava/lang/String;
    goto :goto_0

    .line 151
    :cond_1
    const-string v4, "460"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "455"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    :cond_2
    const/4 v2, 0x0

    .line 157
    .local v2, isForeign:Z
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mIsForeignState:Z

    if-eq v2, v4, :cond_3

    .line 158
    if-eqz v2, :cond_5

    .line 159
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setVisibility(I)V

    .line 160
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->getDataRoaming(I)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 161
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingCallback:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;->refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V

    .line 166
    :cond_3
    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mIsForeignState:Z

    goto :goto_1

    .line 154
    .end local v2           #isForeign:Z
    :cond_4
    const/4 v2, 0x1

    .restart local v2       #isForeign:Z
    goto :goto_2

    .line 163
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->mRoamingTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setVisibility(I)V

    goto :goto_3
.end method
