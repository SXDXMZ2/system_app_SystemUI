.class Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FirstFrameAnimatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/FirstFrameAnimatorHelper;-><init>(Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/FirstFrameAnimatorHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/FirstFrameAnimatorHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;->this$0:Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 55
    move-object v0, p1

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 56
    .local v0, va:Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;->this$0:Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 57
    iget-object v1, p0, Lcom/android/systemui/recent/FirstFrameAnimatorHelper$1;->this$0:Lcom/android/systemui/recent/FirstFrameAnimatorHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recent/FirstFrameAnimatorHelper;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 58
    return-void
.end method
