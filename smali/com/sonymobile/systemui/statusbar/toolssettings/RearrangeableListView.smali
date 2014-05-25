.class public Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;
.super Landroid/widget/ListView;
.source "RearrangeableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;
    }
.end annotation


# instance fields
.field protected mFlyView:Landroid/view/View;

.field private mFlyViewOrginalPos:I

.field final mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mGlobalOffsetY:I

.field private mInsertPos:I

.field private mItemHeight:I

.field private mItemLayoutHeight:I

.field private mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

.field protected mMovingItemEnabled:Z

.field mRearranging:Z

.field mScrolling:Z

.field private mTempRect:Landroid/graphics/Rect;

.field private mTimeRearrangingStopped:J

.field private mTouchOffsetY:I

.field private mTriggerViewId:I

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 68
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mMovingItemEnabled:Z

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 80
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    .line 82
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mRearranging:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTriggerViewId:I

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 135
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->init()V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mMovingItemEnabled:Z

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 80
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    .line 82
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mRearranging:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTriggerViewId:I

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 140
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->init()V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mMovingItemEnabled:Z

    .line 76
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 80
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    .line 82
    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mRearranging:Z

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTriggerViewId:I

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 145
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->init()V

    .line 146
    return-void
.end method

.method private canScrollDown()Z
    .locals 4

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 373
    .local v0, childEnd:I
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getListPaddingBottom()I

    move-result v3

    sub-int v1, v2, v3

    .line 374
    .local v1, end:I
    if-gt v0, v1, :cond_0

    .line 375
    const/4 v2, 0x0

    .line 378
    .end local v0           #childEnd:I
    .end local v1           #end:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private canScrollUp()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-ltz v1, :cond_0

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canStartMoving(III)Z
    .locals 6
    .parameter "pos"
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v3, 0x0

    .line 188
    iget-boolean v4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    if-eqz v4, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v3

    .line 191
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getHeaderViewsCount()I

    move-result v4

    if-lt p1, v4, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getFooterViewsCount()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    .line 195
    iget v4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTriggerViewId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 197
    .local v0, firstVisiblePos:I
    sub-int v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, item:Landroid/view/View;
    iget v4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTriggerViewId:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 199
    .local v2, touchArea:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 200
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 201
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    goto :goto_0

    .line 205
    .end local v0           #firstVisiblePos:I
    .end local v1           #item:Landroid/view/View;
    .end local v2           #touchArea:Landroid/view/View;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private correctPosition()V
    .locals 5

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 326
    .local v0, pos:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 327
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 328
    .local v2, yoff:I
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyViewOrginalPos:I

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mInsertPos:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyViewOrginalPos:I

    if-ge v3, v0, :cond_0

    .line 329
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setSelectionFromTop(II)V

    .line 331
    :cond_0
    return-void
.end method

.method private createFlyView(Landroid/graphics/Bitmap;)Landroid/view/View;
    .locals 3
    .parameter "screenshot"

    .prologue
    .line 238
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 239
    .local v0, view:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 241
    return-object v0
.end method

.method private expandView(Landroid/view/View;Z)V
    .locals 5
    .parameter "view"
    .parameter "top"

    .prologue
    .line 451
    if-eqz p2, :cond_1

    .line 452
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemHeight:I

    .line 453
    .local v2, topPadding:I
    const/4 v0, 0x0

    .line 458
    .local v0, bottomPadding:I
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 459
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v3, :cond_0

    .line 460
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemLayoutHeight:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 461
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1, v3, v2, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 464
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 465
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->notifyItemExpanded(Landroid/view/View;Z)V

    .line 466
    return-void

    .line 455
    .end local v0           #bottomPadding:I
    .end local v1           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v2           #topPadding:I
    :cond_1
    const/4 v2, 0x0

    .line 456
    .restart local v2       #topPadding:I
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemHeight:I

    .restart local v0       #bottomPadding:I
    goto :goto_0
.end method

.method private getChildIndexForInsertPosition(I)I
    .locals 3
    .parameter "pos"

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 428
    .local v0, firstVisiblePos:I
    sub-int v1, p1, v0

    .line 429
    .local v1, idx:I
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyViewOrginalPos:I

    if-le p1, v2, :cond_0

    .line 430
    add-int/lit8 v1, v1, 0x1

    .line 432
    :cond_0
    return v1
.end method

.method private getItemForPosition(I)I
    .locals 5
    .parameter "y"

    .prologue
    .line 491
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTouchOffsetY:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 492
    .local v0, adjustedy:I
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getPaddingLeft()I

    move-result v2

    .line 493
    .local v2, x:I
    invoke-direct {p0, v2, v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->myPointToPosition(II)I

    move-result v1

    .line 494
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 495
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyViewOrginalPos:I

    if-gt v1, v3, :cond_0

    .line 496
    add-int/lit8 v1, v1, 0x1

    .line 503
    :cond_0
    :goto_0
    return v1

    .line 498
    :cond_1
    if-gez v0, :cond_0

    .line 501
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleScroll(I)V
    .locals 4
    .parameter "y"

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getHeight()I

    move-result v1

    .line 352
    .local v1, height:I
    div-int/lit8 v2, v1, 0x5

    .line 353
    .local v2, topLine:I
    mul-int/lit8 v3, v1, 0x4

    div-int/lit8 v0, v3, 0x5

    .line 354
    .local v0, bottomLine:I
    if-lt p1, v0, :cond_1

    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->canScrollDown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->startScrolling(I)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    if-gt p1, v2, :cond_2

    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->canScrollUp()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 357
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->startScrolling(I)V

    goto :goto_0

    .line 358
    :cond_2
    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    if-eqz v3, :cond_0

    if-ge p1, v0, :cond_0

    if-le p1, v2, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->stopScrolling()V

    goto :goto_0
.end method

.method private hideFlyViewItemInList(Landroid/view/View;Z)V
    .locals 5
    .parameter "view"
    .parameter "hovering"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 470
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-eqz p2, :cond_0

    .line 471
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemLayoutHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 472
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 473
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 474
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 481
    :goto_0
    return-void

    .line 476
    :cond_0
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 477
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 479
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 149
    invoke-virtual {p0, p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 150
    return-void
.end method

.method private move(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 334
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->moveFlyView(II)V

    .line 336
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getItemForPosition(I)I

    move-result v3

    .line 337
    .local v3, pos:I
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getCount()I

    move-result v0

    .line 338
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getHeaderViewsCount()I

    move-result v2

    .line 339
    .local v2, headersCount:I
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getFooterViewsCount()I

    move-result v1

    .line 341
    .local v1, footersCount:I
    if-lt v3, v2, :cond_1

    sub-int v4, v0, v1

    if-gt v3, v4, :cond_1

    .line 342
    iget v4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mInsertPos:I

    if-eq v3, v4, :cond_0

    .line 343
    iput v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mInsertPos:I

    .line 344
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->resizeListItems()V

    .line 346
    :cond_0
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->handleScroll(I)V

    .line 348
    :cond_1
    return-void
.end method

.method private moveFlyView(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTouchOffsetY:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mGlobalOffsetY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 394
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    return-void
.end method

.method private myPointToPosition(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 507
    if-gez p2, :cond_0

    .line 510
    iget v5, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemHeight:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->myPointToPosition(II)I

    move-result v4

    .line 511
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 512
    add-int/lit8 v5, v4, -0x1

    .line 525
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTempRect:Landroid/graphics/Rect;

    .line 517
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildCount()I

    move-result v1

    .line 518
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 519
    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 520
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 521
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 522
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 518
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 525
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private notifyItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V
    .locals 1
    .parameter "tool"
    .parameter "select"

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;->onItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V

    .line 552
    :cond_0
    return-void
.end method

.method private notifyItemCollapsed(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    invoke-interface {v0, p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;->onItemCollapsed(Landroid/view/View;)V

    .line 546
    :cond_0
    return-void
.end method

.method private notifyItemExpanded(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "top"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;->onItemExpanded(Landroid/view/View;Z)V

    .line 540
    :cond_0
    return-void
.end method

.method private notifyItemMoved(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    if-eqz v0, :cond_0

    if-eq p1, p2, :cond_0

    .line 530
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;->onItemMoved(II)V

    .line 532
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mRearranging:Z

    .line 533
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 534
    return-void
.end method

.method private removeFlyView()V
    .locals 3

    .prologue
    .line 271
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 273
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    .line 276
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private resetListItems()V
    .locals 3

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildCount()I

    move-result v0

    .line 420
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 421
    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 422
    .local v2, view:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->resetView(Landroid/view/View;)V

    .line 420
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v2           #view:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private resetView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 436
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 437
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 438
    .local v0, expanded:Z
    :goto_0
    iget v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemLayoutHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 439
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1, v3, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 441
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 443
    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->notifyItemCollapsed(Landroid/view/View;)V

    .line 446
    :cond_1
    return-void

    .end local v0           #expanded:Z
    :cond_2
    move v0, v2

    .line 437
    goto :goto_0
.end method

.method private resizeListItems()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 398
    iget v9, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyViewOrginalPos:I

    invoke-direct {p0, v9}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildIndexForInsertPosition(I)I

    move-result v1

    .line 399
    .local v1, flyIdx:I
    iget v9, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mInsertPos:I

    invoke-direct {p0, v9}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildIndexForInsertPosition(I)I

    move-result v5

    .line 400
    .local v5, insertIdx:I
    iget v9, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mInsertPos:I

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_0

    move v4, v7

    .line 402
    .local v4, insertAsLast:Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildCount()I

    move-result v0

    .line 403
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 404
    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 405
    .local v6, v:Landroid/view/View;
    if-ne v3, v1, :cond_2

    .line 406
    iget v9, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mInsertPos:I

    iget v10, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyViewOrginalPos:I

    if-ne v9, v10, :cond_1

    move v2, v7

    .line 407
    .local v2, hovering:Z
    :goto_2
    invoke-direct {p0, v6, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->hideFlyViewItemInList(Landroid/view/View;Z)V

    .line 403
    .end local v2           #hovering:Z
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0           #count:I
    .end local v3           #i:I
    .end local v4           #insertAsLast:Z
    .end local v6           #v:Landroid/view/View;
    :cond_0
    move v4, v8

    .line 400
    goto :goto_0

    .restart local v0       #count:I
    .restart local v3       #i:I
    .restart local v4       #insertAsLast:Z
    .restart local v6       #v:Landroid/view/View;
    :cond_1
    move v2, v8

    .line 406
    goto :goto_2

    .line 408
    :cond_2
    if-ne v3, v5, :cond_3

    .line 409
    invoke-direct {p0, v6, v7}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->expandView(Landroid/view/View;Z)V

    goto :goto_3

    .line 410
    :cond_3
    if-eqz v4, :cond_4

    add-int/lit8 v9, v0, -0x1

    if-ne v3, v9, :cond_4

    .line 411
    invoke-direct {p0, v6, v8}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->expandView(Landroid/view/View;Z)V

    goto :goto_3

    .line 413
    :cond_4
    invoke-direct {p0, v6}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->resetView(Landroid/view/View;)V

    goto :goto_3

    .line 416
    .end local v6           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method private setupFlyView(Landroid/view/View;I)V
    .locals 2
    .parameter "baseView"
    .parameter "y"

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->removeFlyView()V

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 231
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 232
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, screenshot:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->createFlyView(Landroid/graphics/Bitmap;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    .line 234
    invoke-direct {p0, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->showFlyView(I)V

    .line 235
    return-void
.end method

.method private showFlyView(I)V
    .locals 6
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 246
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 251
    .local v0, location:[I
    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getLocationInWindow([I)V

    .line 252
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 253
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    aget v2, v0, v5

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 254
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTouchOffsetY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mGlobalOffsetY:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 256
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 257
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 258
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x398

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 263
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 264
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 266
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mWindowManager:Landroid/view/WindowManager;

    .line 267
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private startMovingItem(III)V
    .locals 5
    .parameter "pos"
    .parameter "y"
    .parameter "globalY"

    .prologue
    const/4 v4, 0x1

    .line 209
    iput-boolean v4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mRearranging:Z

    .line 210
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTimeRearrangingStopped:J

    .line 211
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getFirstVisiblePosition()I

    move-result v0

    .line 212
    .local v0, firstVisiblePos:I
    sub-int v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, item:Landroid/view/View;
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyViewOrginalPos:I

    .line 215
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mInsertPos:I

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTouchOffsetY:I

    .line 217
    sub-int v2, p3, p2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mGlobalOffsetY:I

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemHeight:I

    .line 219
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemLayoutHeight:I

    .line 220
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemLayoutHeight:I

    if-nez v2, :cond_0

    .line 221
    iget v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemHeight:I

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mItemLayoutHeight:I

    .line 224
    :cond_0
    invoke-direct {p0, v1, p2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->setupFlyView(Landroid/view/View;I)V

    .line 225
    invoke-direct {p0, v1, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->hideFlyViewItemInList(Landroid/view/View;Z)V

    .line 226
    return-void
.end method

.method private startScrolling(I)V
    .locals 2
    .parameter "direction"

    .prologue
    const/16 v1, 0x7fff

    .line 382
    if-nez p1, :cond_0

    const/16 v0, -0x8000

    .line 383
    .local v0, distance:I
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->smoothScrollBy(II)V

    .line 384
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    .line 385
    return-void

    .end local v0           #distance:I
    :cond_0
    move v0, v1

    .line 382
    goto :goto_0
.end method

.method private stopMovingItem(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->stopScrolling()V

    .line 318
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->resetListItems()V

    .line 319
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->removeFlyView()V

    .line 320
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyViewOrginalPos:I

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mInsertPos:I

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->notifyItemMoved(II)V

    .line 321
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->correctPosition()V

    .line 322
    return-void
.end method

.method private stopScrolling()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0, v0, v0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->smoothScrollBy(II)V

    .line 389
    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mScrolling:Z

    .line 390
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 170
    iget-boolean v5, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mMovingItemEnabled:Z

    if-eqz v5, :cond_0

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 173
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 174
    .local v4, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    .line 175
    .local v1, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    .line 176
    .local v2, rawY:I
    invoke-virtual {p0, v3, v4}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->pointToPosition(II)I

    move-result v0

    .line 177
    .local v0, pos:I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    invoke-direct {p0, v0, v1, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->canStartMoving(III)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    invoke-direct {p0, v0, v4, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->startMovingItem(III)V

    .line 179
    const/4 v5, 0x1

    .line 184
    .end local v0           #pos:I
    .end local v1           #rawX:I
    .end local v2           #rawY:I
    .end local v3           #x:I
    .end local v4           #y:I
    :goto_0
    return v5

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 298
    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mRearranging:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mRearranging:Z

    if-nez v3, :cond_1

    iget-wide v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTimeRearrangingStopped:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-wide v3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTimeRearrangingStopped:J

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v2

    .line 304
    :cond_1
    const/16 v3, 0x42

    if-eq p1, v3, :cond_2

    const/16 v3, 0x6d

    if-ne p1, v3, :cond_3

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 306
    .local v0, pos:I
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 307
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 308
    .local v1, tool:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->notifyItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V

    .line 309
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->invalidateViews()V

    .line 313
    .end local v0           #pos:I
    .end local v1           #tool:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 308
    .restart local v0       #pos:I
    .restart local v1       #tool:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mMovingItemEnabled:Z

    if-nez v0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->resetView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mMovingItemEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mFlyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    const/4 v0, 0x1

    .line 293
    :goto_1
    return v0

    .line 284
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->stopMovingItem(II)V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->move(II)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 281
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setItemMovedListener(Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mListener:Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;

    .line 162
    return-void
.end method

.method public setMovingHandleViewId(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 165
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mTriggerViewId:I

    .line 166
    return-void
.end method

.method public setMovingItemEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;->mMovingItemEnabled:Z

    .line 154
    return-void
.end method
