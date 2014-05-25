.class public Lcom/sonymobile/systemui/statusbar/tools/StaminaService;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
.source "StaminaService.java"


# static fields
.field private static final CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

.field private static final CONTENT_URI_XSSM_TOGGLE:Landroid/net/Uri;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    .line 24
    const-string v0, "content://com.sonymobile.superstamina.xperiapowerservice.provider/xssm/toggle_enabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->CONTENT_URI_XSSM_TOGGLE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I

    .line 33
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/StaminaService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mContentObserver:Landroid/database/ContentObserver;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/StaminaService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I

    return v0
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/tools/StaminaService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I

    return p1
.end method


# virtual methods
.method public changeTo(I)V
    .locals 5
    .parameter "newState"

    .prologue
    const/4 v4, 0x0

    .line 69
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I

    if-eq p1, v0, :cond_0

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->CONTENT_URI_XSSM_TOGGLE:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getState()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, result:Z
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 86
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 88
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 89
    const-string v0, "enabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_0
    if-eqz v7, :cond_1

    const/4 v0, 0x2

    :goto_0
    return v0

    .line 91
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 94
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->CONTENT_URI_XSSM_ENABLED:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    const-string v0, "xperia_power_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->getState()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I

    .line 59
    :goto_0
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->notifyStateChanged(I)V

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mCurrentState:I

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/StaminaService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    return-void
.end method
