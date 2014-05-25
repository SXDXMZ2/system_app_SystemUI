.class Lcom/sonymobile/systemui/statusbar/tools/LteService$1;
.super Landroid/database/ContentObserver;
.source "LteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/LteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/LteService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v2, 0x7

    .line 47
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/LteService;->getPreferredNetworkMode()I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/LteService;)I

    move-result v0

    .line 48
    .local v0, newType:I
    if-le v0, v2, :cond_1

    .line 49
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/LteService;)I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/LteService;)I

    move-result v2

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/LteService;->mNonLte:I
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->access$202(Lcom/sonymobile/systemui/statusbar/tools/LteService;I)I

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->notifyStateChanged(I)V

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->access$102(Lcom/sonymobile/systemui/statusbar/tools/LteService;I)I

    .line 60
    return-void

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/LteService;)I

    move-result v1

    if-le v1, v2, :cond_2

    .line 55
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->access$100(Lcom/sonymobile/systemui/statusbar/tools/LteService;)I

    move-result v2

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/LteService;->mLte:I
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->access$302(Lcom/sonymobile/systemui/statusbar/tools/LteService;I)I

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/LteService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->notifyStateChanged(I)V

    goto :goto_0
.end method
