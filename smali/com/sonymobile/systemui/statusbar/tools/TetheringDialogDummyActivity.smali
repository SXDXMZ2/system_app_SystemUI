.class public Lcom/sonymobile/systemui/statusbar/tools/TetheringDialogDummyActivity;
.super Landroid/app/Activity;
.source "TetheringDialogDummyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private isWifiEnabled(Landroid/net/wifi/WifiManager;)Z
    .locals 2
    .parameter "wifiManager"

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 110
    .local v0, wifiState:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 112
    :cond_0
    const/4 v1, 0x1

    .line 114
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 42
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    .line 43
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 44
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/TetheringDialogDummyActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 47
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/TetheringDialogDummyActivity;->isWifiEnabled(Landroid/net/wifi/WifiManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 49
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/TetheringDialogDummyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_saved_state"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 55
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 58
    .local v0, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v1, v0, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/TetheringDialogDummyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->launchTetherSettings(Landroid/content/Context;)V

    .line 63
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/TetheringDialogDummyActivity;->finish()V

    .line 66
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.intent.action.TETHER_CONFIRMATION_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/TetheringDialogDummyActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 38
    return-void
.end method
