.class public Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "BluetoothService.java"


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mIsRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mIsRegistered:Z

    .line 28
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/CurrentUserRouter;->setBluetoothState(Landroid/content/Context;I)V

    .line 89
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 56
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, bluetoothFilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mIsRegistered:Z

    .line 62
    .end local v0           #bluetoothFilter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_3

    .line 67
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanged(I)V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanged(I)V

    goto :goto_0

    .line 73
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->notifyStateChanged(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mIsRegistered:Z

    .line 83
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 84
    return-void
.end method
