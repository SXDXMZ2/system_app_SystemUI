.class Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$1;
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
    .line 62
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->access$000(Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.QUICK_CLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;Z)V

    .line 66
    return-void
.end method
