.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$OnSomcTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SomcNotificationViewStateTracker"
.end annotation


# instance fields
.field private mIsNotificationsTabOpen:Z

.field private mIsPanelFullyOpen:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 1
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->mIsPanelFullyOpen:Z

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->mIsNotificationsTabOpen:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    return-void
.end method

.method private autoHide()V
    .locals 5

    .prologue
    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clear_viewed_notifications"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 324
    .local v0, autoClearEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 325
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setClearIconTimestamp(J)V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 328
    :cond_0
    return-void

    .line 319
    .end local v0           #autoClearEnabled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v1

    .line 322
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v0, 0x0

    .restart local v0       #autoClearEnabled:Z
    goto :goto_0
.end method

.method private setNotificationsTabOpen(Z)V
    .locals 1
    .parameter "isNotificationsTabOpen"

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->mIsNotificationsTabOpen:Z

    if-ne v0, p1, :cond_0

    .line 308
    :goto_0
    return-void

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->mIsPanelFullyOpen:Z

    if-eqz v0, :cond_1

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->autoHide()V

    .line 307
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->mIsNotificationsTabOpen:Z

    goto :goto_0
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "tabTag"

    .prologue
    .line 312
    const-string v0, "tab_notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->setNotificationsTabOpen(Z)V

    .line 314
    return-void
.end method

.method public setPanelFullyOpen(ZLcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 1
    .parameter "isPanelFullyOpen"
    .parameter "panel"

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->mIsPanelFullyOpen:Z

    if-ne v0, p1, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    instance-of v0, p2, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;

    if-nez v0, :cond_0

    .line 294
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->mIsNotificationsTabOpen:Z

    if-eqz v0, :cond_2

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->autoHide()V

    .line 298
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$SomcNotificationViewStateTracker;->mIsPanelFullyOpen:Z

    goto :goto_0
.end method
