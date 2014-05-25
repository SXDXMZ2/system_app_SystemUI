.class public Lcom/sonymobile/systemui/statusbar/tools/GpsService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "GpsService.java"


# instance fields
.field private mCurrentState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    .line 34
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/tools/GpsService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    return p1
.end method

.method private getState()I
    .locals 3

    .prologue
    .line 83
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, res:Landroid/content/ContentResolver;
    const-string v1, "gps"

    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 6
    .parameter "newState"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 70
    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    if-eq p1, v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 74
    .local v1, um:Landroid/os/UserManager;
    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mCurrentUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, restrictions:Landroid/os/Bundle;
    const-string v4, "no_share_location"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "gps"

    if-ne p1, v2, :cond_1

    :goto_0
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mCurrentUserId:I

    invoke-static {v4, v5, v2, v3}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V

    .line 80
    .end local v0           #restrictions:Landroid/os/Bundle;
    .end local v1           #um:Landroid/os/UserManager;
    :cond_0
    return-void

    .restart local v0       #restrictions:Landroid/os/Bundle;
    .restart local v1       #um:Landroid/os/UserManager;
    :cond_1
    move v2, v3

    .line 76
    goto :goto_0
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 49
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 51
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiverRegistered:Z

    .line 56
    .end local v3           #intentFilter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->getState()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    .line 57
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->notifyStateChanged(I)V

    .line 58
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mReceiverRegistered:Z

    .line 66
    :cond_0
    return-void
.end method
