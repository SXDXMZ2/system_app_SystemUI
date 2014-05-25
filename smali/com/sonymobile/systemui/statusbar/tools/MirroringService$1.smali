.class Lcom/sonymobile/systemui/statusbar/tools/MirroringService$1;
.super Landroid/content/BroadcastReceiver;
.source "MirroringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/MirroringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/MirroringService;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;

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

    .line 61
    const-string v1, "com.sonymobile.tvout.wifidisplay.intent.action.WIFI_DISPLAY_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v1, "com.sonymobile.tvout.wifidisplay.intent.extra.WIFI_DISPLAY_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 83
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0       #state:I
    :pswitch_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->notifyStateChanged(I)V

    goto :goto_0

    .line 71
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->notifyStateChanging(I)V

    goto :goto_0

    .line 74
    :pswitch_2
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;

    invoke-virtual {v1, v4}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->notifyStateChanged(I)V

    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;

    invoke-virtual {v1, v3}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->notifyStateChanging(I)V

    goto :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
