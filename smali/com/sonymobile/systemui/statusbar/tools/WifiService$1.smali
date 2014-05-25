.class Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 32
    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 49
    :goto_0
    return-void

    .line 35
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanged(I)V

    goto :goto_0

    .line 38
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanged(I)V

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanging(I)V

    goto :goto_0

    .line 44
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/WifiService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->notifyStateChanging(I)V

    goto :goto_0

    .line 33
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
