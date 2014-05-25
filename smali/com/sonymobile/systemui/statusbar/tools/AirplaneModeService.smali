.class public Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "AirplaneModeService.java"


# instance fields
.field private mCurrentState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I

    .line 31
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I

    return p1
.end method

.method private getState()I
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 4
    .parameter "newState"

    .prologue
    const/4 v1, 0x1

    .line 67
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I

    if-eq p1, v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v2, "state"

    if-ne p1, v1, :cond_1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    .end local v0           #sendIntent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 73
    .restart local v0       #sendIntent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 46
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mReceiverRegistered:Z

    if-nez v1, :cond_0

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 48
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mReceiverRegistered:Z

    .line 53
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->getState()I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I

    .line 54
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->notifyStateChanged(I)V

    .line 55
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mReceiverRegistered:Z

    .line 63
    :cond_0
    return-void
.end method
