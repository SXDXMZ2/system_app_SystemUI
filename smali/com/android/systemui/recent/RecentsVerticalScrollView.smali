.class public Lcom/android/systemui/recent/RecentsVerticalScrollView;
.super Landroid/widget/ScrollView;
.source "RecentsVerticalScrollView.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$Callback;
.implements Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;


# instance fields
.field private mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mCallback:Lcom/android/systemui/recent/RecentsCallback;

.field protected mLastScrollPosition:I

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mNumItemsInOneScreenful:I

.field private mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

.field private mRecycledViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTaskIndex:I

.field private mSwipeHelper:Lcom/android/systemui/SwipeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 67
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 68
    .local v1, pagingTouchSlop:F
    new-instance v2, Lcom/android/systemui/SwipeHelper;

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/SwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    .line 70
    const/4 v2, 0x1

    invoke-static {p1, p2, p0, v2}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->create(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;Z)Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    .line 71
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Lcom/android/systemui/recent/RecentsCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsVerticalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsVerticalScrollView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->update()V

    return-void
.end method

.method private addToRecycledViews(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    return-void
.end method

.method private findIndexForView(Landroid/view/View;)I
    .locals 2
    .parameter "v"

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 287
    .end local v0           #i:I
    :goto_1
    return v0

    .line 281
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private scrollPositionOfMostRecent()I
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method private scrollToItem(I)V
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    .line 258
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 265
    .local v0, scrollMargin:I
    if-nez p1, :cond_2

    .line 267
    invoke-virtual {p0, v6, v6}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    if-ge v2, v3, :cond_4

    .line 273
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 274
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 276
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private setOverScrollEffectPadding(II)V
    .locals 0
    .parameter "leftPadding"
    .parameter "i"

    .prologue
    .line 434
    return-void
.end method

.method private switchSelected(II)V
    .locals 2
    .parameter "oldIndex"
    .parameter "newIndex"

    .prologue
    .line 242
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .local v0, v:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 247
    .end local v0           #v:Landroid/view/View;
    :cond_0
    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .restart local v0       #v:Landroid/view/View;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 251
    .end local v0           #v:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private update()V
    .locals 17

    .prologue
    .line 100
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v15

    if-ge v4, v15, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 102
    .local v13, v:Landroid/view/View;
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/View;->setSelected(Z)V

    .line 103
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v15, v13}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->recycleView(Landroid/view/View;)V

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    .end local v13           #v:Landroid/view/View;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v11

    .line 107
    .local v11, transitioner:Landroid/animation/LayoutTransition;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 110
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 114
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRecycledViews:Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 115
    .local v9, recycledViews:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/view/View;>;"
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v15}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v15

    if-ge v4, v15, :cond_4

    .line 116
    const/4 v8, 0x0

    .line 117
    .local v8, old:Landroid/view/View;
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 118
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #old:Landroid/view/View;
    check-cast v8, Landroid/view/View;

    .line 119
    .restart local v8       #old:Landroid/view/View;
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 120
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v15, v4, v8, v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    .line 124
    .local v14, view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v15, :cond_2

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v15, v14}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->addViewCallback(Landroid/view/View;)V

    .line 128
    :cond_2
    new-instance v7, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$1;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 135
    .local v7, noOpListener:Landroid/view/View$OnTouchListener;
    new-instance v15, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$2;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 143
    new-instance v5, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v14}, Lcom/android/systemui/recent/RecentsVerticalScrollView$3;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;)V

    .line 149
    .local v5, launchAppListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 150
    .local v3, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v10, v3, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    .line 151
    .local v10, thumbnailView:Landroid/view/View;
    new-instance v6, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v14, v10}, Lcom/android/systemui/recent/RecentsVerticalScrollView$4;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;Landroid/view/View;Landroid/view/View;)V

    .line 158
    .local v6, longClickListener:Landroid/view/View$OnLongClickListener;
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Landroid/view/View;->setClickable(Z)V

    .line 159
    invoke-virtual {v10, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    invoke-virtual {v10, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 165
    const v15, 0x7f070090

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, appTitle:Landroid/view/View;
    const-string v15, " "

    invoke-virtual {v1, v15}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    const v15, 0x7f070093

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 169
    .local v2, calloutLine:Landroid/view/View;
    if-eqz v2, :cond_3

    .line 170
    invoke-virtual {v2, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 175
    .end local v1           #appTitle:Landroid/view/View;
    .end local v2           #calloutLine:Landroid/view/View;
    .end local v3           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v5           #launchAppListener:Landroid/view/View$OnClickListener;
    .end local v6           #longClickListener:Landroid/view/View$OnLongClickListener;
    .end local v7           #noOpListener:Landroid/view/View$OnTouchListener;
    .end local v8           #old:Landroid/view/View;
    .end local v10           #thumbnailView:Landroid/view/View;
    .end local v14           #view:Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 178
    new-instance v12, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$5;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    .line 188
    .local v12, updateScroll:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 189
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public dismissChild(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 313
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "canvas"

    .prologue
    .line 362
    invoke-super/range {p0 .. p1}, Landroid/widget/ScrollView;->draw(Landroid/graphics/Canvas;)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_2

    .line 365
    iget v14, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPaddingLeft:I

    .line 366
    .local v14, paddingLeft:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isPaddingOffsetRequired()Z

    move-result v13

    .line 367
    .local v13, offsetRequired:Z
    if-eqz v13, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getLeftPaddingOffset()I

    move-result v0

    add-int/2addr v14, v0

    .line 371
    :cond_0
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollX:I

    add-int v2, v0, v14

    .line 372
    .local v2, left:I
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mRight:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPaddingRight:I

    sub-int/2addr v0, v1

    sub-int v3, v0, v14

    .line 373
    .local v3, right:I
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    invoke-virtual {p0, v13}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getFadeTop(Z)I

    move-result v1

    add-int v4, v0, v1

    .line 374
    .local v4, top:I
    invoke-virtual {p0, v13}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getFadeHeight(Z)I

    move-result v0

    add-int v5, v4, v0

    .line 376
    .local v5, bottom:I
    if-eqz v13, :cond_1

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getRightPaddingOffset()I

    move-result v0

    add-int/2addr v3, v0

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getBottomPaddingOffset()I

    move-result v0

    add-int/2addr v5, v0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollX:I

    iget v7, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mScrollY:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getTopFadingEdgeStrength()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getBottomFadingEdgeStrength()F

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPaddingTop:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->drawCallback(Landroid/graphics/Canvas;IIIIIIFFFFI)V

    .line 385
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    .end local v5           #bottom:I
    .end local v13           #offsetRequired:Z
    .end local v14           #paddingLeft:I
    :cond_2
    return-void
.end method

.method public findViewForTask(I)Landroid/view/View;
    .locals 4
    .parameter "persistentTaskId"

    .prologue
    .line 89
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 92
    .local v0, holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v3, v0, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget v3, v3, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    if-ne v3, p1, :cond_0

    .line 96
    .end local v0           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 89
    .restart local v0       #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0           #holder:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v2           #v:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6
    .parameter "ev"

    .prologue
    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    add-float v2, v4, v5

    .line 344
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    add-float v3, v4, v5

    .line 345
    .local v3, y:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 346
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 347
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    .line 353
    .end local v1           #item:Landroid/view/View;
    :goto_1
    return-object v1

    .line 345
    .restart local v1       #item:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    .end local v1           #item:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "v"

    .prologue
    .line 357
    const v0, 0x7f07008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getHorizontalFadingEdgeLengthCallback()I

    move-result v0

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public getVerticalFadingEdgeLength()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->getVerticalFadingEdgeLengthCallback()I

    move-result v0

    .line 392
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    goto :goto_0
.end method

.method public numItemsInOneScreenful()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mPerformanceHelper:Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recent/RecentsScrollViewPerformanceHelper;->onAttachedToWindowCallback(Lcom/android/systemui/recent/RecentsCallback;Landroid/widget/LinearLayout;Z)V

    .line 421
    :cond_0
    return-void
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 336
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    .line 337
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->findIndexForView(Landroid/view/View;)I

    move-result v1

    .line 317
    .local v1, viewIndex:I
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-gt v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 319
    :cond_1
    iget v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 321
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 322
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 323
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 324
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v2, p1}, Lcom/android/systemui/recent/RecentsCallback;->handleSwipe(Landroid/view/View;)V

    .line 325
    const/4 v2, -0x1

    iget v3, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->switchSelected(II)V

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 329
    .local v0, contentView:Landroid/view/View;
    const/high16 v2, 0x3f80

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 330
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 331
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 426
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 427
    .local v0, densityScale:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/SwipeHelper;->setDensityScale(F)V

    .line 428
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 429
    .local v1, pagingTouchSlop:F
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/SwipeHelper;->setPagingTouchSlop(F)V

    .line 430
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 340
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 407
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 408
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setScrollbarFadingEnabled(Z)V

    .line 409
    const v1, 0x7f07009b

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 410
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 412
    .local v0, leftPadding:I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setOverScrollEffectPadding(II)V

    .line 413
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x14

    const/16 v2, 0x13

    .line 193
    if-eq p1, v2, :cond_0

    if-ne p1, v3, :cond_8

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 195
    iget v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 196
    .local v0, oldIndex:I
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 197
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    .line 211
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->switchSelected(II)V

    .line 212
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-direct {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollToItem(I)V

    .line 213
    const/4 v1, 0x1

    .line 216
    .end local v0           #oldIndex:I
    :goto_1
    return v1

    .line 198
    .restart local v0       #oldIndex:I
    :cond_2
    if-ne p1, v2, :cond_5

    .line 199
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 200
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    .line 201
    :cond_4
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-lez v1, :cond_1

    .line 202
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    .line 204
    :cond_5
    if-ne p1, v3, :cond_1

    .line 205
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_7

    .line 206
    :cond_6
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    .line 207
    :cond_7
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 208
    iget v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    goto :goto_0

    .line 216
    .end local v0           #oldIndex:I
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x52

    const/16 v7, 0x42

    const/16 v6, 0x17

    const/4 v3, 0x1

    .line 220
    if-eq p1, v6, :cond_0

    if-eq p1, v7, :cond_0

    if-ne p1, v8, :cond_5

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v4

    if-nez v4, :cond_5

    .line 222
    iget v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 238
    :cond_1
    :goto_0
    return v3

    .line 225
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSelectedTaskIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 226
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 227
    if-eq p1, v6, :cond_3

    if-ne p1, v7, :cond_4

    .line 229
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v4, v2}, Lcom/android/systemui/recent/RecentsCallback;->handleOnClick(Landroid/view/View;)V

    goto :goto_0

    .line 230
    :cond_4
    if-ne p1, v8, :cond_1

    .line 231
    const v4, 0x7f070091

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 232
    .local v1, thumbnailView:Landroid/view/View;
    const v4, 0x7f070095

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, anchorView:Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    invoke-interface {v4, v2, v0, v1}, Lcom/android/systemui/recent/RecentsCallback;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 238
    .end local v0           #anchorView:Landroid/view/View;
    .end local v1           #thumbnailView:Landroid/view/View;
    .end local v2           #view:Landroid/view/View;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 438
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    .line 442
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 443
    .local v0, transition:Landroid/animation/LayoutTransition;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->scrollPositionOfMostRecent()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLastScrollPosition:I

    .line 451
    new-instance v1, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$6;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->dismissChild(Landroid/view/View;)V

    .line 293
    return-void
.end method

.method public setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V
    .locals 8
    .parameter "adapter"

    .prologue
    const/high16 v7, -0x8000

    .line 464
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 465
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    new-instance v6, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;

    invoke-direct {v6, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView$7;-><init>(Lcom/android/systemui/recent/RecentsVerticalScrollView;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 476
    .local v3, dm:Landroid/util/DisplayMetrics;
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 478
    .local v1, childWidthMeasureSpec:I
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 480
    .local v2, childheightMeasureSpec:I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 481
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 482
    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Landroid/util/FloatMath;->ceil(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    .line 484
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 486
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mNumItemsInOneScreenful:I

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_0

    .line 487
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->addToRecycledViews(Landroid/view/View;)V

    .line 486
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/RecentsCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mCallback:Lcom/android/systemui/recent/RecentsCallback;

    .line 503
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 499
    return-void
.end method

.method public setMinSwipeAlpha(F)V
    .locals 1
    .parameter "minAlpha"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsVerticalScrollView;->mSwipeHelper:Lcom/android/systemui/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/SwipeHelper;->setMinAlpha(F)V

    .line 76
    return-void
.end method
