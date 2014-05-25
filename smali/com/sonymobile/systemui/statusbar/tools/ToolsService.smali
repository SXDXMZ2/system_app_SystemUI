.class public abstract Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.super Ljava/lang/Object;
.source "ToolsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mCurrentUserId:I

.field protected mToolsListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mCurrentUserId:I

    .line 22
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method protected final notifyStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mToolsListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;

    .line 65
    .local v0, listener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 67
    invoke-interface {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;->onStateChanged(I)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-interface {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;->onError()V

    goto :goto_0
.end method

.method protected final notifyStateChanging(I)V
    .locals 1
    .parameter "toState"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mToolsListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;

    .line 81
    .local v0, listener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;
    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;->onChangingTo(I)V

    .line 84
    :cond_0
    return-void
.end method

.method public setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mToolsListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;

    .line 56
    return-void
.end method

.method protected setUserId(I)V
    .locals 0
    .parameter "userId"

    .prologue
    .line 26
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mCurrentUserId:I

    .line 27
    return-void
.end method

.method abstract start()V
.end method

.method abstract stop()V
.end method
