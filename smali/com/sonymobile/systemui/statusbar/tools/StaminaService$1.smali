.class Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;
.super Landroid/database/ContentObserver;
.source "StaminaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/StaminaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/StaminaService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/StaminaService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/StaminaService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/StaminaService;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->getState()I

    move-result v0

    .line 38
    .local v0, newState:I
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/StaminaService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/StaminaService;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/StaminaService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->access$002(Lcom/sonymobile/systemui/statusbar/tools/StaminaService;I)I

    .line 40
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/StaminaService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/StaminaService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/StaminaService;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->notifyStateChanged(I)V

    .line 42
    :cond_0
    return-void
.end method
