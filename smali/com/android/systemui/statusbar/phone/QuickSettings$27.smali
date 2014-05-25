.class Lcom/android/systemui/statusbar/phone/QuickSettings$27;
.super Landroid/content/BroadcastReceiver;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 801
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 803
    const-string v4, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/WifiDisplayStatus;

    .line 805
    .local v2, status:Landroid/hardware/display/WifiDisplayStatus;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #setter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1302(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/hardware/display/WifiDisplayStatus;)Landroid/hardware/display/WifiDisplayStatus;

    .line 806
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyWifiDisplayStatus()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1400(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    .line 830
    .end local v2           #status:Landroid/hardware/display/WifiDisplayStatus;
    :cond_0
    :goto_0
    return-void

    .line 807
    :cond_1
    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 808
    const-string v6, "android.bluetooth.adapter.extra.STATE"

    const/high16 v7, -0x8000

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 810
    .local v1, state:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v6

    const/16 v7, 0xc

    if-ne v1, v7, :cond_2

    :goto_1
    iput-boolean v4, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->enabled:Z

    .line 811
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_0

    :cond_2
    move v4, v5

    .line 810
    goto :goto_1

    .line 812
    .end local v1           #state:I
    :cond_3
    const-string v6, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 813
    const-string v6, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 815
    .local v2, status:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBluetoothState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1500(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;

    move-result-object v6

    const/4 v7, 0x2

    if-ne v2, v7, :cond_4

    :goto_2
    iput-boolean v4, v6, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BluetoothState;->connected:Z

    .line 816
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->applyBluetoothStatus()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1600(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 815
    goto :goto_2

    .line 817
    .end local v2           #status:I
    :cond_5
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 818
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->reloadUserInfo()V

    goto :goto_0

    .line 819
    :cond_6
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 820
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    if-eqz v4, :cond_0

    .line 821
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$1700(Lcom/android/systemui/statusbar/phone/QuickSettings;)V

    goto :goto_0

    .line 823
    :cond_7
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 824
    const-string v4, "subscription"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 825
    .local v3, sub:I
    if-nez v3, :cond_0

    const-string v4, "persist.env.phone.global"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 827
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$27;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ExtQuickSettingsModel;->onRoamingVisibleChanged()V

    goto/16 :goto_0
.end method
