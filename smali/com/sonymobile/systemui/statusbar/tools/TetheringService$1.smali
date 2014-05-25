.class Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;
.super Landroid/content/BroadcastReceiver;
.source "TetheringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/TetheringService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/TetheringService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/TetheringService;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/TetheringService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/TetheringService;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->access$000(Lcom/sonymobile/systemui/statusbar/tools/TetheringService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 38
    .local v0, wifiApState:I
    packed-switch v0, :pswitch_data_0

    .line 54
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/TetheringService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->notifyStateChanged(I)V

    goto :goto_0

    .line 43
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/TetheringService;

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->notifyStateChanged(I)V

    goto :goto_0

    .line 46
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/TetheringService;

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->notifyStateChanging(I)V

    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/TetheringService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->notifyStateChanging(I)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
