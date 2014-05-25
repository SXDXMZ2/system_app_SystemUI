.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;
.super Ljava/lang/Object;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;,
        Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAccentColorId:I

.field private final mButtons:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;

.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mIsLandscape:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mMaxItemsInARow:I

.field private mRes:Landroid/content/res/Resources;

.field private final mRowParent:Landroid/view/ViewGroup;

.field private final mServices:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsService;",
            ">;"
        }
    .end annotation
.end field

.field private mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 81
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCurrentUserId:I

    .line 96
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRowParent:Landroid/view/ViewGroup;

    .line 98
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRes:Landroid/content/res/Resources;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    .line 101
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    .line 102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    .line 104
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "somc_accent_color_neutral"

    const-string v2, "color"

    const-string v3, "com.sonyericsson.uxp"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mAccentColorId:I

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->setMaxItemsInARow()V

    .line 106
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContentObserver:Landroid/database/ContentObserver;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->reCreateButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->refreshRowLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->startServices()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCallback:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showAction(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/view/View;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createPopup(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private colorize()V
    .locals 4

    .prologue
    .line 749
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mAccentColorId:I

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 751
    .local v1, toolButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mAccentColorId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(I)V

    goto :goto_0

    .line 754
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #toolButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    :cond_0
    return-void
.end method

.method private create(Ljava/lang/String;)V
    .locals 1
    .parameter "serviceString"

    .prologue
    .line 220
    const-string v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createWifi()V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v0, "bluetooth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createBluetooth()V

    goto :goto_0

    .line 224
    :cond_2
    const-string v0, "datatraffic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createDataTraffic()V

    goto :goto_0

    .line 226
    :cond_3
    const-string v0, "brightness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createBrightness()V

    goto :goto_0

    .line 228
    :cond_4
    const-string v0, "sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 229
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSound()V

    goto :goto_0

    .line 230
    :cond_5
    const-string v0, "tethering"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createTethering()V

    goto :goto_0

    .line 232
    :cond_6
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createGps()V

    goto :goto_0

    .line 234
    :cond_7
    const-string v0, "airplanemode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 235
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createAirplaneMode()V

    goto :goto_0

    .line 236
    :cond_8
    const-string v0, "autorotate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 237
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createAutoRotate()V

    goto :goto_0

    .line 238
    :cond_9
    const-string v0, "settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSettingsShortcut()V

    goto :goto_0

    .line 240
    :cond_a
    const-string v0, "roaming"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 241
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createRoamingShortcut()V

    goto :goto_0

    .line 242
    :cond_b
    const-string v0, "autosync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 243
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createAutoSync()V

    goto/16 :goto_0

    .line 244
    :cond_c
    const-string v0, "nfc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 245
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createNFC()V

    goto/16 :goto_0

    .line 246
    :cond_d
    const-string v0, "throw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 247
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createThrow()V

    goto/16 :goto_0

    .line 248
    :cond_e
    const-string v0, "stamina"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createStamina()V

    goto/16 :goto_0

    .line 250
    :cond_f
    const-string v0, "mirroring"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 251
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createMirroring()V

    goto/16 :goto_0

    .line 252
    :cond_10
    const-string v0, "lte"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createLte()V

    goto/16 :goto_0
.end method

.method private createAirplaneMode()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 833
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;-><init>(Landroid/content/Context;)V

    .line 834
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$17;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$17;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;)V

    .line 853
    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 854
    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201a2

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 856
    const v2, 0x7f0a0099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201a3

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 858
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 861
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/AirplaneModeService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 816
    const-string v2, "airplane_mode"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 819
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 622
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 862
    return-void
.end method

.method private createAutoRotate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 865
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;-><init>(Landroid/content/Context;)V

    .line 866
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$18;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$18;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;)V

    .line 885
    const v2, 0x7f0a001d

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 886
    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201a6

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 888
    const v2, 0x7f0a0099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201a7

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 890
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 892
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 893
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/AutoRotateService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 816
    const-string v2, "accelerometer_title"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 819
    const-string v2, "android.settings.DISPLAY_SETTINGS"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 622
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 894
    return-void
.end method

.method private createAutoSync()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 423
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;-><init>(Landroid/content/Context;)V

    .line 424
    .local v3, service:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$6;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$6;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;)V

    .line 445
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201a4

    invoke-direct {v1, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 446
    .local v1, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201a5

    invoke-direct {v2, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 447
    .local v2, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0028

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 448
    const v4, 0x7f0a009a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 449
    const/4 v4, 0x2

    const v5, 0x7f0a0099

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 450
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 452
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 816
    const-string v2, "header_add_an_account"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 819
    const-string v2, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 622
    const/high16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 453
    return-void
.end method

.method private createBluetooth()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 635
    new-instance v5, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;

    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;-><init>(Landroid/content/Context;)V

    .line 636
    .local v5, service:Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$12;

    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v6, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$12;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;)V

    .line 654
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const-string v6, "com.android.settings"

    invoke-virtual {v0, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 655
    const-string v6, "bluetooth_settings_title"

    invoke-virtual {v0, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 656
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 658
    const-string v6, "android.settings.BLUETOOTH_SETTINGS"

    invoke-virtual {v0, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 659
    const/high16 v6, 0x80

    invoke-virtual {v0, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 660
    const v6, 0x7f0a0021

    invoke-virtual {v0, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 661
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201aa

    invoke-direct {v3, v6, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 662
    .local v3, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201a8

    invoke-direct {v1, v6, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 663
    .local v1, iconAnim1:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201a9

    invoke-direct {v2, v6, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 664
    .local v2, iconAnim2:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201ab

    invoke-direct {v4, v6, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 665
    .local v4, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v6, 0x7f0a009a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v2, v7, v10

    aput-object v1, v7, v9

    aput-object v4, v7, v11

    aput-object v3, v7, v12

    invoke-virtual {v0, v9, v6, v3, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 667
    const v6, 0x7f0a0099

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v13, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v3, v7, v10

    aput-object v4, v7, v9

    aput-object v1, v7, v11

    aput-object v2, v7, v12

    invoke-virtual {v0, v11, v6, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 669
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 671
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 672
    new-instance v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v6, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/BluetoothService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 673
    return-void
.end method

.method private createBrightness()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 719
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$14;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$14;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;)V

    .line 734
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 735
    const-string v1, "display_settings"

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 738
    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 739
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 740
    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 741
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v3, 0x7f0201ac

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v3, v4, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 743
    invoke-virtual {v0, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 744
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 745
    return-void
.end method

.method private createDataTraffic()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 596
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;-><init>(Landroid/content/Context;)V

    .line 597
    .local v1, service:Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$11;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$11;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;)V

    .line 617
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 618
    const-string v2, "mobile_networks"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 619
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 621
    const-string v2, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 622
    const/high16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 623
    const v2, 0x7f0a0022

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 624
    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201ae

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 626
    const/4 v2, 0x2

    const v3, 0x7f0a0099

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f0201af

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 629
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 630
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/DataTrafficService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 631
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 632
    return-void
.end method

.method private createDummy()V
    .locals 3

    .prologue
    .line 940
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$20;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$20;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;I)V

    .line 954
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setFocusable(Z)V

    .line 956
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 957
    return-void
.end method

.method private createGps()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 794
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;-><init>(Landroid/content/Context;)V

    .line 795
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/GpsService;)V

    .line 815
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 816
    const-string v2, "location_settings_title"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 819
    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 820
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 821
    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 822
    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201b2

    invoke-direct {v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 824
    const v2, 0x7f0a0099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201b3

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v5, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v1, v6, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 826
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 828
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 829
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 830
    return-void
.end method

.method private createLte()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 382
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/LteService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/LteService;-><init>(Landroid/content/Context;)V

    .line 384
    .local v3, service:Lcom/sonymobile/systemui/statusbar/tools/LteService;
    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->isLteNetworkAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 420
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$5;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$5;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/LteService;)V

    .line 406
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const-string v4, "com.android.phone"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 407
    const-string v4, "mobile_networks"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 408
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 410
    const-string v4, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 411
    const/high16 v4, 0x80

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 412
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201b4

    invoke-direct {v1, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 413
    .local v1, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201b5

    invoke-direct {v2, v4, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 414
    .local v2, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0035

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 415
    const v4, 0x7f0a009a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 416
    const v4, 0x7f0a0099

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v8, v4, v2, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 417
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 419
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private createMirroring()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 897
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;-><init>(Landroid/content/Context;)V

    .line 898
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$19;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v8, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$19;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;ILcom/sonymobile/systemui/statusbar/tools/MirroringService;)V

    .line 921
    const v2, 0x7f0a00fa

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 922
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v3, 0x7f0201ef

    invoke-direct {v2, v3, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 923
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f02020d

    invoke-direct {v3, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 925
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f02020e

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 926
    const v5, 0x7f0a009a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v8, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v3, v6, v9

    aput-object v2, v6, v7

    invoke-virtual {v1, v7, v5, v2, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 928
    const v2, 0x7f0a0099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v5, v8, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v3, v5, v9

    aput-object v4, v5, v7

    invoke-virtual {v1, v8, v2, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 930
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 932
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    const-string v2, "com.sonymobile.mirrorlink.manualswitch"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 816
    const-string v2, "mil_strings_app_name_mirrorlink_settings_txt"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 819
    const-string v2, "com.sonyericsson.intent.action.GET_PREFERENCE"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 622
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 933
    return-void
.end method

.method private createNFC()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 494
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/NFCService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;-><init>(Landroid/content/Context;)V

    .line 496
    .local v3, service:Lcom/sonymobile/systemui/statusbar/tools/NFCService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$8;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$8;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/NFCService;)V

    .line 516
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201b6

    invoke-direct {v1, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 517
    .local v1, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201b7

    invoke-direct {v2, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 518
    .local v2, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0026

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 519
    const v4, 0x7f0a009a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 520
    const/4 v4, 0x3

    const v5, 0x7f0a0099

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v4, v5, v2, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 521
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 522
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/NFCService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 523
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 816
    const-string v2, "nfc_quick_toggle_title"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 817
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 819
    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 622
    const/high16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 524
    return-void
.end method

.method private createPopup(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    .line 266
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    .line 267
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 268
    .local v0, menu:Landroid/view/Menu;
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuRes()I

    move-result v2

    invoke-virtual {v3, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 270
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .local v1, menuItem:Landroid/view/MenuItem;
    move-object v2, p1

    .line 271
    check-cast v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 272
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;

    invoke-direct {v3, p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->setOnMenuItemClickListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;)V

    .line 283
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->show()V

    .line 285
    const/4 v2, 0x1

    return v2
.end method

.method private createRoamingShortcut()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 456
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;-><init>(Landroid/content/Context;)V

    .line 457
    .local v3, service:Lcom/sonymobile/systemui/statusbar/tools/RoamingService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$7;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$7;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/RoamingService;)V

    .line 477
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const-string v4, "com.android.phone"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 478
    const-string v4, "mobile_networks"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 479
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 481
    const-string v4, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 482
    const/high16 v4, 0x80

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 483
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201b0

    invoke-direct {v1, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 484
    .local v1, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201b1

    invoke-direct {v2, v4, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 485
    .local v2, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0027

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 486
    const v4, 0x7f0a009a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 487
    const v4, 0x7f0a0099

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v8, v4, v2, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 488
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/RoamingService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 490
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 491
    return-void
.end method

.method private createSettingsShortcut()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 528
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$9;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$9;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;)V

    .line 544
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 545
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v3, 0x7f0201b9

    invoke-direct {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v3, v4, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 547
    invoke-virtual {v0, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 548
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 549
    return-void
.end method

.method private createSound()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 553
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/SoundService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;-><init>(Landroid/content/Context;)V

    .line 555
    .local v1, service:Lcom/sonymobile/systemui/statusbar/tools/SoundService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/SoundService;)V

    .line 575
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 576
    const-string v2, "sound_settings"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 579
    const-string v2, "com.android.settings.SOUND_SETTINGS"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 580
    const/high16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 581
    const v2, 0x7f0a0024

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 582
    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201ba

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 584
    const/4 v2, 0x2

    const v3, 0x7f0a0099

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f0201bb

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 586
    const/4 v2, 0x3

    const v3, 0x7f0a00fa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f0201c9

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 589
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 591
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 592
    return-void
.end method

.method private createStamina()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 302
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;-><init>(Landroid/content/Context;)V

    .line 303
    .local v1, service:Lcom/sonymobile/systemui/statusbar/tools/StaminaService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/StaminaService;)V

    .line 323
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 324
    const-string v2, "power_settings_title"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 327
    const-string v2, "com.sonymobile.intent.action.POWER_SETTINGS"

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 328
    const/high16 v2, 0x80

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 329
    const v2, 0x7f0a009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201bc

    invoke-direct {v3, v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v4, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 331
    const/4 v2, 0x2

    const v3, 0x7f0a0099

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f0201bd

    invoke-direct {v4, v5, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    new-array v5, v6, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 333
    const v2, 0x7f0a002a

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 334
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 336
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method private createTethering()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 748
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;-><init>(Landroid/content/Context;)V

    .line 749
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$15;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$15;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/TetheringService;)V

    .line 769
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 770
    const-string v2, "tether_settings_title_all"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 771
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 773
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentPackage(Ljava/lang/String;)V

    .line 774
    const-string v2, "com.android.settings.Settings$TetherSettingsActivity"

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentClassName(Ljava/lang/String;)V

    .line 775
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 776
    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 777
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v3, 0x7f0201c2

    invoke-direct {v2, v3, v11}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 778
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201be

    invoke-direct {v3, v4, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 779
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v5, 0x7f0201bf

    invoke-direct {v4, v5, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 780
    new-instance v5, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v6, 0x7f0201c0

    invoke-direct {v5, v6, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 781
    new-instance v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0201c1

    invoke-direct {v6, v7, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 782
    new-instance v7, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v8, 0x7f0201c3

    invoke-direct {v7, v8, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 783
    const v8, 0x7f0a009a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v14, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v6, v9, v11

    aput-object v5, v9, v10

    aput-object v4, v9, v12

    aput-object v3, v9, v13

    invoke-virtual {v1, v11, v8, v2, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 785
    const v2, 0x7f0a0099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v8, v14, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v3, v8, v11

    aput-object v4, v8, v10

    aput-object v5, v8, v12

    aput-object v6, v8, v13

    invoke-virtual {v1, v10, v2, v7, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 787
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 789
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 790
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/TetheringService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 791
    return-void
.end method

.method private createThrow()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 340
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;-><init>(Landroid/content/Context;)V

    .line 341
    .local v3, service:Lcom/sonymobile/systemui/statusbar/tools/ThrowService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$4;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/ThrowService;)V

    .line 360
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const-string v4, "com.sonymobile.playanywhere"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 361
    const-string v4, "playanywhere_strings_throw_settings_title_txt"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 364
    const-string v4, "com.sonyericsson.intent.action.GET_PREFERENCE"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 365
    const/high16 v4, 0x80

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 368
    const-string v4, "com.sonymobile.playanywhere"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentPackage(Ljava/lang/String;)V

    .line 369
    const-string v4, "com.sonymobile.playanywhere.settings.ThrowSettingActivity"

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentClassName(Ljava/lang/String;)V

    .line 371
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201c5

    invoke-direct {v1, v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 372
    .local v1, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v4, 0x7f0201c6

    invoke-direct {v2, v4, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 373
    .local v2, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v4, 0x7f0a0029

    invoke-virtual {v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 374
    const v4, 0x7f0a009a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v7, v4, v1, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 375
    const v4, 0x7f0a0099

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v5, v7, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    invoke-virtual {v0, v8, v4, v2, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 376
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v4, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ThrowService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 378
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method private createWifi()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 676
    new-instance v6, Lcom/sonymobile/systemui/statusbar/tools/WifiService;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;-><init>(Landroid/content/Context;)V

    .line 677
    .local v6, service:Lcom/sonymobile/systemui/statusbar/tools/WifiService;
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$13;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v7, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$13;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/WifiService;)V

    .line 695
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    const-string v7, "com.android.settings"

    invoke-virtual {v0, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitlePackage(Ljava/lang/String;)V

    .line 696
    const-string v7, "wifi_settings"

    invoke-virtual {v0, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitleResName(Ljava/lang/String;)V

    .line 697
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    .line 699
    const-string v7, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v0, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentAction(Ljava/lang/String;)V

    .line 700
    const/high16 v7, 0x80

    invoke-virtual {v0, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickIntentFlags(I)V

    .line 701
    const v7, 0x7f0a0020

    invoke-virtual {v0, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setTextId(I)V

    .line 702
    new-instance v4, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0201cd

    invoke-direct {v4, v7, v11}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 703
    .local v4, iconOff:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0201ca

    invoke-direct {v1, v7, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 704
    .local v1, iconAnim1:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0201cb

    invoke-direct {v2, v7, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 705
    .local v2, iconAnim2:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0201cc

    invoke-direct {v3, v7, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 706
    .local v3, iconAnim3:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    new-instance v5, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    const v7, 0x7f0201ce

    invoke-direct {v5, v7, v10}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;-><init>(IZ)V

    .line 707
    .local v5, iconOn:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    const v7, 0x7f0a009a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x5

    new-array v8, v8, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v5, v8, v11

    aput-object v3, v8, v10

    aput-object v2, v8, v12

    aput-object v1, v8, v13

    aput-object v4, v8, v14

    invoke-virtual {v0, v10, v7, v4, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 709
    const v7, 0x7f0a0099

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v14, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    aput-object v1, v8, v11

    aput-object v2, v8, v10

    aput-object v3, v8, v12

    aput-object v5, v8, v13

    invoke-virtual {v0, v12, v7, v5, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V

    .line 711
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 713
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v7, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;

    invoke-direct {v7, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {v6, v7}, Lcom/sonymobile/systemui/statusbar/tools/WifiService;->setListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;)V

    .line 715
    return-void
.end method

.method private getAvailableToolsFromResources(I)Ljava/util/List;
    .locals 9
    .parameter "stringArrayResId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v6, tools:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCurrentUserId:I

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    .line 209
    .local v2, isRestricted:Z
    :goto_0
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 211
    .local v4, restrictedToolsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v5, v0, v1

    .line 212
    .local v5, s:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 213
    :cond_0
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #isRestricted:Z
    .end local v3           #len$:I
    .end local v4           #restrictedToolsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #s:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 216
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #isRestricted:Z
    .restart local v3       #len$:I
    .restart local v4       #restrictedToolsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-object v6
.end method

.method private reCreateButtons()V
    .locals 17

    .prologue
    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v3, configToolButtons:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "toolsbar_settings"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCurrentUserId:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, settingsFromDB:Ljava/lang/String;
    if-eqz v12, :cond_1

    .line 172
    const-string v4, ";"

    .line 173
    .local v4, divider1:Ljava/lang/String;
    const-string v5, ","

    .line 174
    .local v5, divider2:Ljava/lang/String;
    invoke-virtual {v12, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 176
    .local v11, settings:[Ljava/lang/String;
    move-object v1, v11

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v10, v1, v8

    .line 177
    .local v10, setting:Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 178
    .local v13, settingsItem:[Ljava/lang/String;
    array-length v14, v13

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 179
    const/4 v14, 0x1

    aget-object v14, v13, v14

    const-string v15, "true"

    invoke-virtual {v14, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 180
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-interface {v3, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 187
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #divider1:Ljava/lang/String;
    .end local v5           #divider2:Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #setting:Ljava/lang/String;
    .end local v11           #settings:[Ljava/lang/String;
    .end local v13           #settingsItem:[Ljava/lang/String;
    :cond_1
    const v14, 0x7f060003

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->getAvailableToolsFromResources(I)Ljava/util/List;

    move-result-object v3

    .line 190
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 191
    .local v2, button:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->create(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    .end local v2           #button:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mMaxItemsInARow:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mMaxItemsInARow:I

    move/from16 v16, v0

    rem-int v15, v15, v16

    sub-int v6, v14, v15

    .line 195
    .local v6, emptySpace:I
    if-lez v6, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mMaxItemsInARow:I

    if-ge v6, v14, :cond_4

    .line 196
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createDummy()V

    .line 196
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 200
    .end local v7           #i:I
    :cond_4
    return-void
.end method

.method private static readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1078
    const-string v0, "Title not read"

    .line 1080
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1081
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1083
    const-string v2, "string"

    invoke-virtual {v1, p2, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1084
    if-eqz v2, :cond_0

    .line 1085
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1092
    :cond_0
    :goto_0
    return-object v0

    .line 1088
    :catch_0
    move-exception v0

    .line 1090
    const-string v0, "No title found"

    goto :goto_0
.end method

.method private refreshLabels()V
    .locals 5

    .prologue
    .line 1067
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 1068
    .local v1, toolButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->refreshText()V

    .line 1070
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitlePackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuTitleResName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->readLongClickMenuTitle(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLongClickMenuTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 1074
    .end local v1           #toolButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    :cond_0
    return-void
.end method

.method private refreshRowLayout()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 1042
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRowParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1043
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x3f80

    invoke-direct {v6, v3, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1046
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->getNumberOfRows()I

    move-result v7

    move v5, v3

    move v0, v3

    .line 1048
    :goto_0
    if-ge v5, v7, :cond_2

    .line 1049
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move v2, v3

    move v4, v0

    .line 1051
    :goto_1
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mMaxItemsInARow:I

    if-ge v2, v0, :cond_1

    .line 1052
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1053
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1055
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1056
    :cond_0
    invoke-virtual {v8, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v4, 0x1

    move v2, v0

    move v4, v1

    goto :goto_1

    .line 1059
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f0c0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1062
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRowParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1048
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v4

    goto :goto_0

    .line 1064
    :cond_2
    return-void
.end method

.method private resetContentObserver()V
    .locals 5

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 141
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 143
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toolsbar_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 146
    return-void
.end method

.method private setMaxItemsInARow()V
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mMaxItemsInARow:I

    .line 1027
    return-void
.end method

.method private showAction(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 289
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showNextActivity(Landroid/content/Context;)V

    .line 290
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickIntentAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickIntentFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 292
    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickIntentPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickIntentClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 294
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickIntentPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickIntentClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    return-void
.end method

.method public static final showNextActivity(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 989
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    .line 990
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    :goto_0
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 997
    if-eqz v0, :cond_0

    .line 998
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1000
    :cond_0
    return-void

    .line 991
    :catch_0
    move-exception v0

    .line 992
    sget-object v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->TAG:Ljava/lang/String;

    const-string v1, "Calling ActivityManagerNative failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startServices()V
    .locals 3

    .prologue
    .line 259
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;

    .line 260
    .local v1, service:Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->setUserId(I)V

    .line 261
    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->start()V

    goto :goto_0

    .line 263
    .end local v1           #service:Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    :cond_0
    return-void
.end method


# virtual methods
.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 1006
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 761
    const/high16 v1, -0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize()V

    .line 765
    .line 1008
    .local v0, configChanges:I
    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    .line 1009
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->refreshLabels()V

    .line 1012
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    const/4 v1, 0x1

    .line 1013
    .local v1, isLandscape:Z
    :goto_0
    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mIsLandscape:Z

    if-eq v1, v3, :cond_2

    .line 1014
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mIsLandscape:Z

    .line 1015
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->setMaxItemsInARow()V

    .line 1018
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1020
    :cond_2
    return-void

    .end local v1           #isLandscape:Z
    :cond_3
    move v1, v2

    .line 1012
    goto :goto_0
.end method

.method public getNumberOfRows()I
    .locals 3

    .prologue
    .line 1030
    const/4 v1, 0x0

    .line 1031
    .local v1, numberOfRows:I
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 1032
    .local v0, numberOfItems:I
    if-lez v0, :cond_0

    .line 1033
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mMaxItemsInARow:I

    div-int v1, v0, v2

    .line 1034
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mMaxItemsInARow:I

    rem-int v2, v0, v2

    if-lez v2, :cond_0

    .line 1035
    add-int/lit8 v1, v1, 0x1

    .line 1038
    :cond_0
    return v1
.end method

.method public start()V
    .locals 5

    .prologue
    .line 155
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "toolsbar_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 159
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->reCreateButtons()V

    .line 160
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->refreshRowLayout()V

    .line 161
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->startServices()V

    .line 162
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize()V

    return-void
.end method

.method public userSwitched(I)V
    .locals 1
    .parameter "newUserId"

    .prologue
    .line 149
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCurrentUserId:I

    .line 151
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->resetContentObserver()V

    goto :goto_0
.end method
