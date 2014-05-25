.class public Lcom/android/systemui/statusbar/phone/IconPartitioner;
.super Landroid/view/ViewGroup;
.source "IconPartitioner.java"


# instance fields
.field private final mIconSize:I

.field private mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mIconSize:I

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IconPartitioner;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    return-object v0
.end method

.method private checkOverflow(I)I
    .locals 7
    .parameter "rightPartitionLeft"

    .prologue
    const/4 v6, 0x1

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, retVal:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v1

    .line 59
    .local v1, fullLengthWidth:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v3

    .line 61
    .local v3, truncatedWidth:I
    if-le v1, p1, :cond_3

    .line 63
    if-le v3, p1, :cond_2

    .line 69
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mIconSize:I

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 70
    .local v0, a:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getWidth()I

    move-result v4

    sub-int/2addr v4, p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mIconSize:I

    rem-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 73
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mIconSize:I

    mul-int v2, v0, v4

    .line 74
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->isTruncated()Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v3, :cond_1

    .line 75
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->postTruncate(Z)V

    .line 84
    .end local v0           #a:I
    :cond_1
    :goto_0
    return v2

    .line 77
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->isTruncated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->postTruncate(Z)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-virtual {v4}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->isTruncated()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->postTruncate(Z)V

    goto :goto_0
.end method

.method private postTruncate(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/phone/IconPartitioner$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/IconPartitioner$1;-><init>(Lcom/android/systemui/statusbar/phone/IconPartitioner;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->post(Ljava/lang/Runnable;)Z

    .line 94
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 116
    sub-int v7, p4, p2

    .line 117
    .local v7, width:I
    sub-int v0, p5, p3

    .line 119
    .local v0, height:I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, leftPartition:Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 122
    .local v4, rightPartition:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v5, v7, v8

    .line 123
    .local v5, rightPartitionLeft:I
    const/4 v2, 0x0

    .line 124
    .local v2, leftPartitionLeft:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 127
    .local v3, leftPartitionWidth:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    if-eqz v8, :cond_0

    .line 128
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    invoke-virtual {v8}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    const/4 v6, 0x1

    .line 130
    .local v6, visible:Z
    :goto_0
    if-eqz v6, :cond_0

    .line 131
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->checkOverflow(I)I

    move-result v8

    add-int/2addr v5, v8

    .line 135
    .end local v6           #visible:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 136
    sub-int v2, v7, v3

    .line 137
    move v3, v7

    .line 138
    sub-int/2addr v7, v5

    .line 139
    const/4 v5, 0x0

    .line 142
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v4, v5, v8, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 143
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 144
    return-void

    .line 128
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v5, 0x0

    .line 98
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 100
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, leftPartition:Landroid/view/View;
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 104
    .local v2, rightPartition:Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v2, v3, p2}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->measureChild(Landroid/view/View;II)V

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 110
    .local v1, newSize:I
    const/high16 v3, -0x8000

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 111
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->measureChild(Landroid/view/View;II)V

    .line 112
    return-void
.end method

.method protected setOperatorLabel(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    .line 47
    return-void
.end method
