.class public Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "AutoRotateService.java"


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mCurrentState:I

    .line 25
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mContentObserver:Landroid/database/ContentObserver;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mCurrentState:I

    return p1
.end method

.method private getState()I
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mCurrentUserId:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 3
    .parameter "newState"

    .prologue
    .line 54
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mCurrentState:I

    if-eq p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 60
    :cond_0
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 43
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->getState()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mCurrentState:I

    .line 44
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->notifyStateChanged(I)V

    .line 45
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 50
    return-void
.end method
