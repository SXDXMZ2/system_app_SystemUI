.class Lcom/android/systemui/statusbar/policy/BatteryController$4;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 5
    .parameter "newUserId"

    .prologue
    const/4 v4, 0x0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$800(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$700(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$700(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$800(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "somc.show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mPercentModeObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$700(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$800(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$900(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$900(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$800(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "excluded_system_bar_icons"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryController$4;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    #getter for: Lcom/android/systemui/statusbar/policy/BatteryController;->mExcludedIconsObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->access$900(Lcom/android/systemui/statusbar/policy/BatteryController;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 240
    return-void
.end method
