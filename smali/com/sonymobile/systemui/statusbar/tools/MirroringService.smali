.class public Lcom/sonymobile/systemui/statusbar/tools/MirroringService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "MirroringService.java"


# instance fields
.field private mIsRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->mIsRegistered:Z

    .line 57
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/MirroringService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.tvout.wifidisplay.intent.action.CONTROL_FROM_QUICK_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sonymobile.tvout.wifidisplay"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 92
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 93
    iput-boolean v4, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->mIsRegistered:Z

    .line 94
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->notifyStateChanged(I)V

    .line 98
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->mIsRegistered:Z

    .line 104
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    :cond_0
    return-void
.end method
