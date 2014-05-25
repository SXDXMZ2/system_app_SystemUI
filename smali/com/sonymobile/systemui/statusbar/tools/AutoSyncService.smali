.class public Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "AutoSyncService.java"


# instance fields
.field private mIsRegistered:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->mIsRegistered:Z

    .line 28
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 38
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 3
    .parameter

    .prologue
    .line 67
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v2, "enabling"

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 42
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 44
    iput-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->mIsRegistered:Z

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 46
    .local v0, autoSyncFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    .end local v0           #autoSyncFilter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->notifyStateChanged(I)V

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->notifyStateChanged(I)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->mIsRegistered:Z

    .line 63
    :cond_0
    return-void
.end method
