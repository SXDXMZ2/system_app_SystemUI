.class Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$2;
.super Ljava/lang/Object;
.source "SomcTabsNotificationPanelView.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


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
    .line 124
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabTag"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    #setter for: Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->access$002(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    const/4 v1, 0x1

    #calls: Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->updateTabBody(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->access$100(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;Z)V

    .line 131
    return-void
.end method
