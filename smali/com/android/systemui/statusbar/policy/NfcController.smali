.class public Lcom/android/systemui/statusbar/policy/NfcController;
.super Ljava/lang/Object;
.source "NfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NfcController$1;,
        Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NfcController;->mIconViews:Ljava/util/ArrayList;

    .line 34
    const-string v0, "ro.nfc.icon.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;-><init>(Lcom/android/systemui/statusbar/policy/NfcController;Lcom/android/systemui/statusbar/policy/NfcController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NfcController;->mReceiver:Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;

    .line 36
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 38
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NfcController;->mReceiver:Lcom/android/systemui/statusbar/policy/NfcController$NfcBroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 41
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NfcController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NfcController;->mIconViews:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NfcController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method
