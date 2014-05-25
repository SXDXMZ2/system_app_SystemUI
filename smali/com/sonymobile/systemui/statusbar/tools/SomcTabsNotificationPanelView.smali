.class public Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.source "SomcTabsNotificationPanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$OnSomcTabChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClearButton:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentTabTag:Ljava/lang/String;

.field private mEditQuickSettingsButton:Landroid/view/View;

.field private mEditQuickSettingsButtonListener:Landroid/view/View$OnClickListener;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHasTouchedBelowPeekHeight:Z

.field private mIsTwoFingerSwipe:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mOnSomcTabChangedListener:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$OnSomcTabChangeListener;

.field private mPeekHeight:I

.field private mPeekIgnoreActionMove:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/ViewAnimator;

.field private mTabHost:Landroid/widget/TabHost;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 107
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 124
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 134
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEditQuickSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 56
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->updateTabBody(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method private buildTabSpec(Landroid/widget/TabHost;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "th"
    .parameter "tag"
    .parameter "titleRes"

    .prologue
    .line 118
    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 119
    .local v0, tabSpec:Landroid/widget/TabHost$TabSpec;
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 120
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 121
    return-object v0
.end method

.method private getTabId(Ljava/lang/String;)I
    .locals 1
    .parameter "tabTag"

    .prologue
    .line 212
    const-string v0, "tab_notifications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getTabTag(F)Ljava/lang/String;
    .locals 6
    .parameter "touchX"

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float p1, v2, p1

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v1, p1, v2

    .line 228
    .local v1, touchFraction:F
    float-to-double v2, v1

    const-wide v4, 0x3fe199999999999aL

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 229
    .local v0, currentTab:I
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getTabTag(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTabTag(I)Ljava/lang/String;
    .locals 1
    .parameter "tabId"

    .prologue
    .line 216
    if-nez p1, :cond_0

    const-string v0, "tab_notifications"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tab_quicksettings"

    goto :goto_0
.end method

.method private initTabs()V
    .locals 4

    .prologue
    .line 68
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "tab_notifications"

    const v3, 0x7f0a00ff

    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->buildTabSpec(Landroid/widget/TabHost;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 74
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "tab_quicksettings"

    const v3, 0x7f0a0101

    invoke-direct {p0, v1, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->buildTabSpec(Landroid/widget/TabHost;Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 77
    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabContent:Landroid/widget/ViewAnimator;

    .line 79
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mClearButton:Landroid/view/View;

    .line 80
    const v0, 0x7f0700fa

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEditQuickSettingsButton:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEditQuickSettingsButton:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 84
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEditQuickSettingsButton:Landroid/view/View;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEditQuickSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const-string v0, "tab_notifications"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->setCurrentTab(Ljava/lang/String;Z)V

    .line 88
    return-void
.end method

.method private setAnimation(Ljava/lang/String;Z)V
    .locals 3
    .parameter "newTabTag"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 260
    if-eqz p2, :cond_1

    .line 261
    const-string v0, "tab_quicksettings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabContent:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050018

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 264
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabContent:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050017

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 276
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabContent:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 269
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabContent:Landroid/widget/ViewAnimator;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabContent:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 274
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabContent:Landroid/widget/ViewAnimator;

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setCurrentTab(Ljava/lang/String;Z)V
    .locals 2
    .parameter "tabTag"
    .parameter "animate"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 244
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->updateTabBody(Z)V

    goto :goto_0
.end method

.method private updateTabBody(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->updateButtonArea()V

    .line 251
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->setAnimation(Ljava/lang/String;Z)V

    .line 253
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabContent:Landroid/widget/ViewAnimator;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getTabId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 254
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mOnSomcTabChangedListener:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$OnSomcTabChangeListener;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mOnSomcTabChangedListener:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$OnSomcTabChangeListener;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$OnSomcTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 3

    .prologue
    .line 91
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 93
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 95
    .local v0, diff:I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 98
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->initTabs()V

    .line 102
    :cond_0
    return-void
.end method

.method public onExpandedChanged(Z)V
    .locals 2
    .parameter "expanded"

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabChangedListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onFinishInflate()V

    .line 62
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekHeight:I

    .line 64
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->initTabs()V

    .line 65
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 151
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 153
    :pswitch_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 154
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 155
    iput-boolean v6, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mHasTouchedBelowPeekHeight:Z

    .line 156
    iput v6, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekIgnoreActionMove:I

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 163
    const-string v2, "tab_notifications"

    invoke-direct {p0, v2, v6}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->setCurrentTab(Ljava/lang/String;Z)V

    goto :goto_0

    .line 169
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 170
    iput-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mIsTwoFingerSwipe:Z

    .line 172
    const-string v2, "tab_quicksettings"

    invoke-direct {p0, v2, v6}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->setCurrentTab(Ljava/lang/String;Z)V

    goto :goto_0

    .line 176
    :pswitch_3
    iput-boolean v6, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mIsTwoFingerSwipe:Z

    goto :goto_0

    .line 179
    :pswitch_4
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 182
    iget-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mIsTwoFingerSwipe:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 183
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 184
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 185
    .local v0, x:F
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 186
    .local v1, y:F
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekIgnoreActionMove:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekIgnoreActionMove:I

    .line 190
    float-to-double v2, v0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    float-to-double v2, v1

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekIgnoreActionMove:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 192
    iget-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mHasTouchedBelowPeekHeight:Z

    if-nez v2, :cond_1

    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x403e

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 193
    :cond_1
    iput v6, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mPeekIgnoreActionMove:I

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->getTabTag(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v7}, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->setCurrentTab(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 199
    .end local v0           #x:F
    .end local v1           #y:F
    :cond_2
    iput-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mHasTouchedBelowPeekHeight:Z

    goto/16 :goto_0

    .line 204
    :pswitch_5
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 205
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSomcTabChangeListener(Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$OnSomcTabChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mOnSomcTabChangedListener:Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView$OnSomcTabChangeListener;

    .line 306
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 144
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 145
    return-void
.end method

.method public updateButtonArea()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 281
    const-string v0, "tab_quicksettings"

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mCurrentTabTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEditQuickSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcTabsNotificationPanelView;->mEditQuickSettingsButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
