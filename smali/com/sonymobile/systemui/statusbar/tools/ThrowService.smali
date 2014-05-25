.class public Lcom/sonymobile/systemui/statusbar/tools/ThrowService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "ThrowService.java"


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ThrowService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.playanywhere.DEVICE_SELECTOR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 88
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 65
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 66
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 67
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "com.sonymobile.playanywhere.DEVICE_CONNECTION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiverRegistered:Z

    .line 72
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->notifyStateChanged(I)V

    .line 73
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->mReceiverRegistered:Z

    .line 81
    :cond_0
    return-void
.end method
