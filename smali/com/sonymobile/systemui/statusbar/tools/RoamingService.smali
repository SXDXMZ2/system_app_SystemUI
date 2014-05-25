.class public Lcom/sonymobile/systemui/statusbar/tools/RoamingService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "RoamingService.java"


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mCurrentState:I

    .line 27
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mContentObserver:Landroid/database/ContentObserver;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mCurrentState:I

    return p1
.end method

.method private getState()I
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 59
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.MobileNetworkSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->getState()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mCurrentState:I

    .line 47
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->notifyStateChanged(I)V

    .line 48
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 53
    return-void
.end method
