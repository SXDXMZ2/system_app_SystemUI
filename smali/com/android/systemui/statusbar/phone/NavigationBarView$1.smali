.class Lcom/android/systemui/statusbar/phone/NavigationBarView$1;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "ev"

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransparent:Z

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(ZZZZ)V

    .line 268
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return v3

    .line 269
    :catch_0
    move-exception v0

    goto :goto_0
.end method
