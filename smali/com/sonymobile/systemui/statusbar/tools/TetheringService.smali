.class public Lcom/sonymobile/systemui/statusbar/tools/TetheringService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "TetheringService.java"


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/TetheringService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/TetheringService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static launchTetherSettings(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, roamingIntent:Landroid/content/Intent;
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0007

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 92
    if-nez v1, :cond_2

    .line 93
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->launchTetherSettings(Landroid/content/Context;)V

    goto :goto_0

    .line 95
    :cond_2
    if-ne p1, v4, :cond_3

    .line 98
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonymobile/systemui/statusbar/tools/TetheringDialogDummyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 105
    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 106
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 107
    const-string v1, "wifi_saved_state"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 60
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v0, wifiFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    iput-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mReceiverRegistered:Z

    .line 67
    .end local v0           #wifiFilter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 68
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->notifyStateChanged(I)V

    .line 72
    return-void

    .line 71
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mReceiverRegistered:Z

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 81
    return-void
.end method
