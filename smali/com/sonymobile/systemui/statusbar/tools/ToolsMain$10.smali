.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

.field final synthetic val$service:Lcom/sonymobile/systemui/statusbar/tools/SoundService;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;Lcom/sonymobile/systemui/statusbar/tools/SoundService;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iput-object p3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;->val$service:Lcom/sonymobile/systemui/statusbar/tools/SoundService;

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method onAction()V
    .locals 3

    .prologue
    .line 560
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 561
    const/4 v0, 0x2

    .line 567
    .local v0, nextState:I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;->val$service:Lcom/sonymobile/systemui/statusbar/tools/SoundService;

    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/SoundService;->changeTo(I)V

    .line 568
    return-void

    .line 562
    .end local v0           #nextState:I
    :cond_0
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 563
    const/4 v0, 0x3

    .restart local v0       #nextState:I
    goto :goto_0

    .line 565
    .end local v0           #nextState:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #nextState:I
    goto :goto_0
.end method

.method onLongClickPopup()Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$10;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createPopup(Landroid/view/View;)Z
    invoke-static {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$900(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/view/View;)Z

    move-result v0

    return v0
.end method
