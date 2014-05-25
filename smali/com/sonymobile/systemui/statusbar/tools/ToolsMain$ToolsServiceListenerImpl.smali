.class final Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;
.super Ljava/lang/Object;
.source "ToolsMain.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/tools/ToolsService$ToolsServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ToolsServiceListenerImpl"
.end annotation


# instance fields
.field final mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;


# direct methods
.method public constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 963
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 965
    return-void
.end method


# virtual methods
.method public onChangingTo(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->startAnimate(I)V

    .line 981
    return-void
.end method

.method public onError()V
    .locals 2

    .prologue
    .line 975
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 976
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 969
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 970
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ToolsServiceListenerImpl;->mButton:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setState(I)V

    .line 971
    return-void
.end method
