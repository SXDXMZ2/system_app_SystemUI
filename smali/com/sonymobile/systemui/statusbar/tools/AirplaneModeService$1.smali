.class Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->getState()I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)I

    move-result v0

    .line 35
    .local v0, newState:I
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->access$102(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;I)I

    .line 38
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->mCurrentState:I
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->notifyStateChanged(I)V

    .line 40
    :cond_0
    return-void
.end method
