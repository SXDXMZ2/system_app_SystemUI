.class Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;
.super Landroid/content/BroadcastReceiver;
.source "NFCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/NFCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/NFCService;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I
    invoke-static {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->access$002(Lcom/sonymobile/systemui/statusbar/tools/NFCService;I)I

    .line 37
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/NFCService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->notifyStateChanged(I)V

    .line 40
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I
    invoke-static {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->access$002(Lcom/sonymobile/systemui/statusbar/tools/NFCService;I)I

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->notifyStateChanged(I)V

    .line 44
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I
    invoke-static {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->access$002(Lcom/sonymobile/systemui/statusbar/tools/NFCService;I)I

    goto :goto_0

    .line 47
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->notifyStateChanging(I)V

    .line 48
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I
    invoke-static {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->access$002(Lcom/sonymobile/systemui/statusbar/tools/NFCService;I)I

    goto :goto_0

    .line 51
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->notifyStateChanging(I)V

    .line 52
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I
    invoke-static {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->access$002(Lcom/sonymobile/systemui/statusbar/tools/NFCService;I)I

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
