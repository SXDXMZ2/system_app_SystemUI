.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$20;
.super Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->createDummy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 940
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$20;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-direct {p0, p2, p3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method onAction()V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method onLongClickPopup()Z
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x0

    return v0
.end method
