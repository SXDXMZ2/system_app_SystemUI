.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$9;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createSettingsShortcut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 528
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$9;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method onAction()V
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$9;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$800(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->showNextActivity(Landroid/content/Context;)V

    .line 533
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$9;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$800(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 535
    return-void
.end method

.method onLongClickPopup()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x1

    return v0
.end method
