.class Lcom/android/systemui/statusbar/phone/QuickSettings$14;
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

.field final synthetic val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 9
    .parameter "unused"
    .parameter "state"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 502
    move-object v0, p2

    check-cast v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;

    .line 504
    .local v0, batteryState:Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mChargingBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$800(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    .line 508
    .local v1, d:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 509
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00d7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, t:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 519
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setText(Ljava/lang/CharSequence;)V

    .line 520
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->val$batteryTile:Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00bc

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v2, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 522
    return-void

    .line 504
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #t:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBatteryLevels:Landroid/graphics/drawable/LevelListDrawable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$900(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/graphics/drawable/LevelListDrawable;

    move-result-object v1

    goto :goto_0

    .line 511
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->pluggedIn:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a00d6

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #t:Ljava/lang/String;
    :goto_2
    goto :goto_1

    .end local v2           #t:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$14;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a004f

    new-array v5, v8, [Ljava/lang/Object;

    iget v6, v0, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$BatteryState;->batteryLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
