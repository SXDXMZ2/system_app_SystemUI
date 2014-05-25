.class public Lcom/sonymobile/systemui/statusbar/tools/LteService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "LteService.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentState:I

.field private mLte:I

.field private mNonLte:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/LteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->TAG:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I

    .line 44
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/LteService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/LteService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mContentObserver:Landroid/database/ContentObserver;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/LteService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->getPreferredNetworkMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/LteService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/tools/LteService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I

    return p1
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/statusbar/tools/LteService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mNonLte:I

    return p1
.end method

.method static synthetic access$302(Lcom/sonymobile/systemui/statusbar/tools/LteService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mLte:I

    return p1
.end method

.method private getNetwork(Ljava/lang/String;Z)I
    .locals 5
    .parameter "availableNetworks"
    .parameter "firstLte"

    .prologue
    const/4 v4, 0x7

    .line 107
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v2, networks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 112
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    .local v1, network:I
    if-eqz p2, :cond_1

    if-le v1, v4, :cond_1

    .line 123
    .end local v1           #network:I
    :cond_0
    :goto_1
    return v1

    .line 116
    .restart local v1       #network:I
    :cond_1
    if-nez p2, :cond_2

    if-le v1, v4, :cond_0

    .line 110
    .end local v1           #network:I
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 123
    :cond_3
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I

    goto :goto_1

    .line 119
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private getPreferredNetworkMode()I
    .locals 4

    .prologue
    .line 166
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 168
    .local v0, returnValue:I
    sget-boolean v1, Lcom/sonymobile/systemui/statusbar/tools/LteService;->DBG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/tools/LteService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LTEService getState status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    return v0
.end method


# virtual methods
.method public changeTo(I)V
    .locals 5
    .parameter "newState"

    .prologue
    .line 155
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 156
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 157
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mLte:I

    .line 158
    .local v1, newType:I
    :goto_0
    invoke-interface {v2, v1}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(I)V

    .line 163
    .end local v1           #newType:I
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return-void

    .line 157
    .restart local v2       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mNonLte:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 161
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v3, Lcom/sonymobile/systemui/statusbar/tools/LteService;->DBG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/sonymobile/systemui/statusbar/tools/LteService;->TAG:Ljava/lang/String;

    const-string v4, "setPreferredNetworkType call failed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPreferredNetworks()Ljava/lang/String;
    .locals 9

    .prologue
    .line 83
    const-string v3, ""

    .line 85
    .local v3, preferredNetworks:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 86
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    const-string v6, "com.android.phone"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 89
    .local v4, res:Landroid/content/res/Resources;
    const-string v6, "preferred_network_mode_marshal"

    const-string v7, "string"

    const-string v8, "com.android.phone"

    invoke-virtual {v4, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 91
    .local v5, resourceId:I
    if-eqz v5, :cond_0

    .line 92
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    .end local v4           #res:Landroid/content/res/Resources;
    .end local v5           #resourceId:I
    :cond_0
    :goto_0
    return-object v3

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/sonymobile/systemui/statusbar/tools/LteService;->DBG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sonymobile/systemui/statusbar/tools/LteService;->TAG:Ljava/lang/String;

    const-string v7, "No preferred network found"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLteNetworkAvailable()Z
    .locals 5

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->getPreferredNetworks()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, preferredNetworks:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v2, networks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 136
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 137
    .local v1, network:I
    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    .line 138
    const/4 v4, 0x1

    .line 144
    .end local v1           #network:I
    :goto_1
    return v4

    .line 140
    :catch_0
    move-exception v4

    .line 134
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 144
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 73
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->getPreferredNetworks()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, networks:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->getNetwork(Ljava/lang/String;Z)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mLte:I

    .line 75
    invoke-direct {p0, v0, v2}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->getNetwork(Ljava/lang/String;Z)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mNonLte:I

    .line 77
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->getPreferredNetworkMode()I

    move-result v3

    iput v3, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I

    .line 79
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mCurrentState:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/LteService;->notifyStateChanged(I)V

    .line 80
    return-void

    :cond_0
    move v1, v2

    .line 79
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/LteService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 150
    return-void
.end method
