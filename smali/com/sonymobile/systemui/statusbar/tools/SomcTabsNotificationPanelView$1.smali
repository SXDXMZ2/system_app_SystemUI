.class Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$1;
.super Ljava/lang/Object;
.source "SomcTabsNotificationPanelView.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "tag"

    .prologue
    .line 110
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
