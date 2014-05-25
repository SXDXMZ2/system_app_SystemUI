.class public Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;
.super Lcom/android/systemui/statusbar/phone/SettingsPanelView;
.source "SomcSettingsPanelView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClockClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mEditQuickSettingsButton:Landroid/view/View;

.field private mEditQuickSettingsButtonListener:Landroid/view/View$OnClickListener;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 62
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mClockClickListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mEditQuickSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 38
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method private onOrientationChanged()V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 101
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 103
    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->requestLayout()V

    .line 105
    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    .prologue
    .line 83
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 85
    .local v2, newConfig:Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 87
    .local v0, diff:I
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->onOrientationChanged()V

    .line 90
    :cond_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    .line 91
    const v3, 0x7f0700fa

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 93
    .local v1, editQuickSettingsButton:Landroid/widget/TextView;
    const v3, 0x7f0a0100

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 95
    .end local v1           #editQuickSettingsButton:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SettingsPanelView;->onFinishInflate()V

    .line 46
    const/high16 v1, 0x9a

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->setSystemUiVisibility(I)V

    .line 52
    const v1, 0x7f0700fa

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mEditQuickSettingsButton:Landroid/view/View;

    .line 53
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mEditQuickSettingsButton:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mEditQuickSettingsButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mEditQuickSettingsButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 57
    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, dateTimeView:Landroid/view/View;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mClockClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 60
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/SomcSettingsPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 80
    return-void
.end method
