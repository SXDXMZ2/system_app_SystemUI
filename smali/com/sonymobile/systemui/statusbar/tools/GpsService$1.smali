.class Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;
.super Landroid/content/BroadcastReceiver;
.source "GpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/GpsService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/GpsService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/GpsService;->getState()I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)I

    move-result v0

    .line 38
    .local v0, newState:I
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->access$102(Lcom/sonymobile/systemui/statusbar/tools/GpsService;I)I

    .line 41
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/GpsService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/GpsService;->mCurrentState:I
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/GpsService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->notifyStateChanged(I)V

    .line 43
    :cond_0
    return-void
.end method
