.class Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;
.super Landroid/database/ContentObserver;
.source "RoamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/RoamingService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/RoamingService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/RoamingService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 30
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/RoamingService;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->getState()I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;)I

    move-result v0

    .line 32
    .local v0, newState:I
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/RoamingService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/RoamingService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mCurrentState:I
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->access$102(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;I)I

    .line 34
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/RoamingService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/RoamingService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/RoamingService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->mCurrentState:I
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/RoamingService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->notifyStateChanged(I)V

    .line 36
    :cond_0
    return-void
.end method
