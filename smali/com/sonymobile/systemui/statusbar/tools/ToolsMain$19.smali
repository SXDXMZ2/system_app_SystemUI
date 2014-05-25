.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$19;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createMirroring()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

.field final synthetic val$service:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;ILcom/sonymobile/systemui/statusbar/tools/MirroringService;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 899
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$19;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iput-object p4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$19;->val$service:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;

    invoke-direct {p0, p2, p3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method onAction()V
    .locals 3

    .prologue
    .line 904
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 905
    const/4 v0, 0x2

    .line 909
    .local v0, nextState:I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$19;->val$service:Lcom/sonymobile/systemui/statusbar/tools/MirroringService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/MirroringService;->changeTo(I)V

    .line 911
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$19;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$800(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showNextActivity(Landroid/content/Context;)V

    .line 912
    return-void

    .line 907
    .end local v0           #nextState:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #nextState:I
    goto :goto_0
.end method

.method onLongClickPopup()Z
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$19;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createPopup(Landroid/view/View;)Z
    invoke-static {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$900(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
