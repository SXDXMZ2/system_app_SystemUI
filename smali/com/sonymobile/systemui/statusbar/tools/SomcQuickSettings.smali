.class public Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;
.super Ljava/lang/Object;
.source "SomcQuickSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mToolsMain:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 3
    .parameter "context"
    .parameter "container"

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;->mContext:Landroid/content/Context;

    .line 38
    const v1, 0x7f0700f9

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 39
    .local v0, toolsView:Landroid/widget/LinearLayout;
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;->mToolsMain:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    .line 40
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;->mToolsMain:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->start()V

    .line 41
    return-void
.end method


# virtual methods
.method public updateResources()V
    .locals 2

    .prologue
    .line 45
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 46
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;->mToolsMain:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 47
    return-void
.end method

.method public userSwitched(I)V
    .locals 1
    .parameter "newUserId"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcQuickSettings;->mToolsMain:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->userSwitched(I)V

    .line 52
    return-void
.end method
