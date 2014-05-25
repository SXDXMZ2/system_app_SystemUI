.class public Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.super Landroid/widget/RelativeLayout;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;
    }
.end annotation


# static fields
.field static sAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field static sDecelerateInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

.field mClearButton:Landroid/view/View;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mContentArea:Landroid/graphics/Rect;

.field mContentFrame:Landroid/view/ViewGroup;

.field mContentFrameMissingTranslation:F

.field mContentParent:Landroid/view/ViewGroup;

.field private mExpandHelper:Lcom/android/systemui/ExpandHelper;

.field mHasClearableNotifications:Z

.field mNotificationButton:Landroid/widget/ImageView;

.field mNotificationCount:I

.field mNotificationScroller:Landroid/view/View;

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mSettingsButton:Landroid/widget/ImageView;

.field mSettingsView:Landroid/view/View;

.field mShowing:Z

.field mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 68
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    .line 56
    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 157
    new-instance v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 81
    return-void
.end method


# virtual methods
.method addSettingsView()V
    .locals 4

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 330
    .local v0, infl:Landroid/view/LayoutInflater;
    const v1, 0x7f040038

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 331
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 194
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 195
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 196
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 198
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 204
    .local v0, keyCode:I
    packed-switch v0, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_1
    :goto_1
    return v1

    .line 207
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapsePanels()V

    goto :goto_1

    .line 214
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getClearButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    return-object v0
.end method

.method public isInContentArea(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 115
    const v2, 0x7f070087

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 117
    .local v1, minHeight:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    .local v0, maxHeight:I
    new-instance v2, Lcom/android/systemui/ExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/systemui/ExpandHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p0}, Lcom/android/systemui/ExpandHelper;->setEventSource(Landroid/view/View;)V

    .line 120
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Lcom/android/systemui/ExpandHelper;->setGravity(I)V

    .line 121
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    if-ne p1, v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->swapPanels()V

    .line 245
    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 89
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setWillNotDraw(Z)V

    .line 93
    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->bringToFront()V

    .line 95
    const v0, 0x7f0700cd

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mTitleArea:Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanelTitle;->setPanel(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V

    .line 98
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    .line 99
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/widget/ImageView;

    .line 101
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 102
    const v0, 0x7f0700cb

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    .line 106
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 110
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 429
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 430
    .local v0, cancellation:Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 432
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 434
    .local v1, intercept:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 435
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->latestItems:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 437
    :cond_1
    return v1

    .line 432
    .end local v1           #intercept:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 444
    .local v0, handled:Z
    :goto_0
    return v0

    .line 442
    .end local v0           #handled:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "v"
    .parameter "vis"

    .prologue
    const/4 v2, 0x0

    .line 177
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 179
    if-eqz p2, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->removeSettingsView()V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 184
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updatePanelModeButtons()V

    .line 186
    :cond_1
    return-void
.end method

.method public refreshLayout(I)V
    .locals 3
    .parameter "layoutDirection"

    .prologue
    const/4 v2, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/widget/ImageView;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 462
    return-void
.end method

.method removeSettingsView()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrame:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 325
    :cond_0
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 85
    return-void
.end method

.method public setClearable(Z)V
    .locals 0
    .parameter "clearable"

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    .line 301
    return-void
.end method

.method public setNotificationCount(I)V
    .locals 0
    .parameter "n"

    .prologue
    .line 248
    iput p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    .line 249
    return-void
.end method

.method public setSettingsEnabled(Z)V
    .locals 2
    .parameter "settingsEnabled"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 450
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 452
    :cond_0
    return-void

    .line 450
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 3
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p2, :cond_2

    .line 135
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    if-eq v1, p1, :cond_0

    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 137
    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mChoreo:Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->startAnimation(Z)V

    goto :goto_0

    .line 148
    :cond_2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mShowing:Z

    .line 149
    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public swapPanels()V
    .locals 6

    .prologue
    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->addSettingsView()V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .line 259
    .local v2, toShow:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 264
    .local v1, toHide:Landroid/view/View;
    :goto_0
    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 266
    .local v0, a:Landroid/animation/Animator;
    new-instance v3, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$3;-><init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 287
    return-void

    .line 261
    .end local v0           #a:Landroid/animation/Animator;
    .end local v1           #toHide:Landroid/view/View;
    .end local v2           #toShow:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    .line 262
    .restart local v2       #toShow:Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    .restart local v1       #toHide:Landroid/view/View;
    goto :goto_0

    .line 264
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public updateClearButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mHasClearableNotifications:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationScroller:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 295
    .local v0, showX:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->getClearButton()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .end local v0           #showX:Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 291
    goto :goto_0

    .line 295
    .restart local v0       #showX:Z
    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public updatePanelModeButtons()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 304
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsView:Landroid/view/View;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 305
    .local v0, settingsVisible:Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    return-void

    .end local v0           #settingsVisible:Z
    :cond_0
    move v0, v1

    .line 304
    goto :goto_0

    .restart local v0       #settingsVisible:Z
    :cond_1
    move v2, v3

    .line 305
    goto :goto_1

    :cond_2
    move v1, v3

    .line 306
    goto :goto_2
.end method
