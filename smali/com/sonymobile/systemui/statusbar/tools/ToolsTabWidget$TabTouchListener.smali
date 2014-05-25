.class Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;
.super Ljava/lang/Object;
.source "ToolsTabWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabTouchListener"
.end annotation


# instance fields
.field private final mTabIndex:I

.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;


# direct methods
.method private constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;I)V
    .locals 0
    .parameter
    .parameter "tabIndex"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;->mTabIndex:I

    .line 114
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;ILcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;I)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    .line 119
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;

    invoke-virtual {v4, p1, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->onFocusChange(Landroid/view/View;Z)V

    .line 153
    :cond_0
    :goto_0
    return v6

    .line 120
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 122
    .local v2, tabHeight:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 124
    .local v1, eventY:F
    cmpg-float v4, v1, v8

    if-ltz v4, :cond_0

    int-to-float v4, v2

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 132
    .local v3, tabWidth:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 134
    .local v0, eventX:F
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->getLayoutDirection()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 135
    int-to-float v4, v3

    sub-float v0, v4, v0

    .line 139
    :cond_2
    int-to-float v4, v3

    cmpl-float v4, v0, v4

    if-lez v4, :cond_3

    .line 141
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->updateTabIfNecessary(I)V
    invoke-static {v4, v7}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;I)V

    goto :goto_0

    .line 142
    :cond_3
    cmpg-float v4, v0, v8

    if-gez v4, :cond_4

    .line 144
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->updateTabIfNecessary(I)V
    invoke-static {v4, v6}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;I)V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;

    iget v5, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;->mTabIndex:I

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->updateTabIfNecessary(I)V
    invoke-static {v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;I)V

    goto :goto_0
.end method
