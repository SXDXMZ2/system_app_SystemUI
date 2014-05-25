.class Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$3;
.super Ljava/lang/Object;
.source "SomcTabsNotificationPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 134
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->access$200(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$3;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    .line 138
    return-void
.end method
