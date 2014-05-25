.class Lcom/android/systemui/statusbar/phone/QuickSettings$9;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addSystemTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field final synthetic val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 7
    .parameter "unused"
    .parameter "state"

    .prologue
    .line 422
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;

    .line 423
    .local v0, wifiState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget v2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageResource(I)V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->val$wifiTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$9;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00ba

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->signalContentDescription:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v6, 0x1

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$WifiState;->connected:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    :goto_0
    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 429
    return-void

    .line 425
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
