.class Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "OperatorLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    #setter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z
    invoke-static {v2, v1}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$002(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z

    .line 114
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    #setter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mForceFullLengthOperatorName:Z
    invoke-static {v2, v1}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$102(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z

    .line 115
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    const-string v3, "showSpn"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "spn"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "plmn"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    #getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$200(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    #getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$300(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    #getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;
    invoke-static {v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$300(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;->this$0:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    #getter for: Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->access$200(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v2, v1}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;->onLabelChanged(Z)V

    .line 126
    :cond_1
    return-void
.end method
