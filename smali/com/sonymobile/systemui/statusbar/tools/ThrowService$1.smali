.class Lcom/sonymobile/systemui/statusbar/tools/ThrowService$1;
.super Landroid/content/BroadcastReceiver;
.source "ThrowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/ThrowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ThrowService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ThrowService;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ThrowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sonymobile.playanywhere.DEVICE_CONNECTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string v2, "KEY_DEVICE_LIST_CONNECTED_SINK_DEVICE_STATUS"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, status:I
    packed-switch v1, :pswitch_data_0

    .line 56
    .end local v1           #status:I
    :cond_0
    :goto_0
    return-void

    .line 46
    .restart local v1       #status:I
    :pswitch_0
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ThrowService;

    invoke-virtual {v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->notifyStateChanged(I)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ThrowService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ThrowService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->notifyStateChanged(I)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
