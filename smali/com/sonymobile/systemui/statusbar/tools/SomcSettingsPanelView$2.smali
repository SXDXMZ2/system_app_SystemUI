.class Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$2;
.super Ljava/lang/Object;
.source "SomcSettingsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$2;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    .line 75
    return-void
.end method
