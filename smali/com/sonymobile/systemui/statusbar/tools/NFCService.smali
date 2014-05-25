.class public Lcom/sonymobile/systemui/statusbar/tools/NFCService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "NFCService.java"


# instance fields
.field private mCurrentState:I

.field private mIsRegistered:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    .line 29
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/NFCService;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/NFCService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/tools/NFCService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    return p1
.end method

.method private getNfcAdapter()Landroid/nfc/NfcAdapter;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    const-string v0, "nfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method private hasNfcAdapter()Z
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->hasNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    if-eq p1, v0, :cond_0

    .line 90
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 67
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 68
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, mIntentFilter:Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    .line 73
    .end local v3           #mIntentFilter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->hasNfcAdapter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    .line 76
    :cond_1
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->notifyStateChanged(I)V

    .line 77
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->mIsRegistered:Z

    .line 85
    :cond_0
    return-void
.end method
