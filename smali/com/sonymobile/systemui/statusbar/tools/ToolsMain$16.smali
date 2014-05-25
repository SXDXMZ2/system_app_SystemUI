.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createGps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

.field final synthetic val$service:Lcom/sonymobile/systemui/statusbar/tools/GpsService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/GpsService;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iput-object p3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;->val$service:Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method onAction()V
    .locals 2

    .prologue
    .line 800
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    if-nez v1, :cond_0

    .line 801
    const/4 v0, 0x1

    .line 803
    .local v0, nextState:I
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$800(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showNextActivity(Landroid/content/Context;)V

    .line 807
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;->val$service:Lcom/sonymobile/systemui/statusbar/tools/GpsService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/GpsService;->changeTo(I)V

    .line 808
    return-void

    .line 805
    .end local v0           #nextState:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #nextState:I
    goto :goto_0
.end method

.method onLongClickPopup()Z
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$16;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createPopup(Landroid/view/View;)Z
    invoke-static {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$900(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
