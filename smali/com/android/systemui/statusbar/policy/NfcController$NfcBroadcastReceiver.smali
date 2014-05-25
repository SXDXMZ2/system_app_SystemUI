.class Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NfcBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NfcController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NfcController;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/NfcController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NfcController;Lcom/android/systemui/statusbar/policy/NfcController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/NfcController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x1

    .line 54
    .local v1, adapterState:I
    const/16 v3, 0x8

    .line 56
    .local v3, iconVisibility:I
    const-string v5, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const-string v5, "android.nfc.extra.ADAPTER_STATE"

    const/4 v6, 0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 60
    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    const/4 v3, 0x0

    .line 61
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;->this$0:Lcom/android/systemui/statusbar/policy/NfcController;

    #getter for: Lcom/android/systemui/statusbar/policy/NfcController;->mIconViews:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NfcController;->access$100(Lcom/android/systemui/statusbar/policy/NfcController;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 62
    .local v4, v:Landroid/widget/ImageView;
    const v5, 0x7f020166

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 60
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #v:Landroid/widget/ImageView;
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method
