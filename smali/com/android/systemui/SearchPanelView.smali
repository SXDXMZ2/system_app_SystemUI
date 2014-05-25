.class public Lcom/android/systemui/SearchPanelView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelView.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;
    }
.end annotation


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field final mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

.field private final mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mSearchTargetsContainer:Landroid/view/View;

.field private mShowing:Z

.field private mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 158
    new-instance v0, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    .line 213
    new-instance v0, Lcom/android/systemui/SearchPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$2;-><init>(Lcom/android/systemui/SearchPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 79
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mWm:Landroid/view/IWindowManager;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelView;)Lcom/android/systemui/statusbar/BaseStatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelView;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->startAssistActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    return-void
.end method

.method private createLayoutTransitioner()Landroid/animation/LayoutTransition;
    .locals 4

    .prologue
    .line 323
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 324
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 325
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 326
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 327
    return-object v0
.end method

.method private maybeSwapSearchIcon()V
    .locals 6

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 184
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 186
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const-string v3, "com.android.systemui.action_assist_icon"

    const v4, 0x1080297

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    .end local v0           #component:Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private pointInside(IILandroid/view/View;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    .line 195
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 196
    .local v1, l:I
    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v2

    .line 197
    .local v2, r:I
    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 198
    .local v3, t:I
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 199
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private startAssistActivity()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 84
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(I)V

    .line 88
    const/4 v2, 0x0

    .line 90
    .local v2, isKeyguardShowing:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 95
    :goto_1
    if-eqz v2, :cond_2

    .line 98
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mWm:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->showAssistant()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 102
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    iget-object v5, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v7, v6}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 107
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 110
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 116
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const v5, 0x7f050010

    const v6, 0x7f050011

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {v4, v5, v6, v7, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 119
    .local v3, opts:Landroid/app/ActivityOptions;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v4, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 122
    .end local v3           #opts:Landroid/app/ActivityOptions;
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchPanelView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->onAnimationStarted()V

    goto :goto_0

    .line 111
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v4

    goto :goto_3

    .line 99
    .end local v1           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v4

    goto :goto_2

    .line 91
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private vibrate()V
    .locals 7

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 223
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_enabled"

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    .local v1, res:Landroid/content/res/Resources;
    const-string v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 227
    .local v2, vibrator:Landroid/os/Vibrator;
    const v3, 0x7f0b0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 229
    .end local v1           #res:Landroid/content/res/Resources;
    .end local v2           #vibrator:Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 281
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 282
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 283
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 285
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isAssistantAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v2, "search"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const/4 v3, -0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isInContentArea(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 203
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/systemui/SearchPanelView;->pointInside(IILandroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    return v0
.end method

.method public onAnimationStarted()V
    .locals 3

    .prologue
    .line 162
    new-instance v0, Lcom/android/systemui/SearchPanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelView$1;-><init>(Lcom/android/systemui/SearchPanelView;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    .line 175
    const v0, 0x7f0700d6

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/StatusBarTouchProxy;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    .line 177
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadViewListener:Lcom/android/systemui/SearchPanelView$GlowPadTriggerListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 179
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 271
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 273
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 315
    const v0, 0x8cd2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 319
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/systemui/SearchPanelView;->mBar:Lcom/android/systemui/statusbar/BaseStatusBar;

    .line 298
    return-void
.end method

.method public setStatusBarView(Landroid/view/View;)V
    .locals 1
    .parameter "statusBarView"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/SearchPanelView;->mStatusBarTouchProxy:Lcom/android/systemui/recent/StatusBarTouchProxy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/StatusBarTouchProxy;->setStatusBar(Landroid/view/View;)V

    .line 309
    :cond_0
    return-void
.end method

.method public show(ZZ)V
    .locals 4
    .parameter "show"
    .parameter "animate"

    .prologue
    const/4 v3, 0x1

    .line 232
    if-nez p1, :cond_0

    .line 233
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->createLayoutTransitioner()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 234
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mSearchTargetsContainer:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 236
    .end local v0           #transitioner:Landroid/animation/LayoutTransition;
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelView;->mShowing:Z

    .line 237
    if-eqz p1, :cond_3

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->maybeSwapSearchIcon()V

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->suspendAnimations()V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/SearchPanelView;->mGlowPadView:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelView;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/SearchPanelView;->vibrate()V

    .line 248
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->setFocusable(Z)V

    .line 249
    invoke-virtual {p0, v3}, Lcom/android/systemui/SearchPanelView;->setFocusableInTouchMode(Z)V

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelView;->requestFocus()Z

    .line 254
    :goto_1
    return-void

    .line 233
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 252
    :cond_3
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    goto :goto_1
.end method
