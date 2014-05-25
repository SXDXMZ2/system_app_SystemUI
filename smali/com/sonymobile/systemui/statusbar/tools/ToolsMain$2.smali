.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;
.super Ljava/lang/Object;
.source "ToolsMain.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createPopup(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iput-object p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;->val$view:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 275
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;->val$view:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getLongClickMenuItem()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$2;->val$view:Landroid/view/View;

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showAction(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    invoke-static {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$700(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    .line 277
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
