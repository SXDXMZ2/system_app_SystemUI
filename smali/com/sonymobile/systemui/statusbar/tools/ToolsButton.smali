.class public abstract Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.super Landroid/widget/FrameLayout;
.source "ToolsButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;,
        Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccentColor:I

.field private mAnimationFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimationKiller:Ljava/lang/Runnable;

.field private final mAnimationRunner:Ljava/lang/Runnable;

.field private mAnimationView:Landroid/widget/ImageView;

.field private final mBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonClicked:Z

.field private mButtonType:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAnimationImage:I

.field private mHighlight:Landroid/widget/ImageView;

.field private mIcon:Landroid/widget/ImageView;

.field private mLabel:Landroid/widget/TextView;

.field private mLongClickIntentAction:Ljava/lang/String;

.field private mLongClickIntentClassName:Ljava/lang/String;

.field private mLongClickIntentFlags:I

.field private mLongClickIntentPackageName:Ljava/lang/String;

.field private mLongClickMenuItem:I

.field private mLongClickMenuRes:I

.field private mLongClickMenuTitle:Ljava/lang/String;

.field private mLongClickMenuTitleAppPackageName:Ljava/lang/String;

.field private mLongClickMenuTitleResName:Ljava/lang/String;

.field protected mState:I

.field private mStateContentDescription:Landroid/util/SparseIntArray;

.field private mStateIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mStopAnimation:Z

.field private mTextId:I

.field private mVerticalLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 96
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    .line 119
    iput v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    .line 121
    iput-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    .line 127
    new-instance v2, Landroid/util/SparseArray;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    .line 131
    const-string v2, "#2AABE4"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    iput-boolean v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonClicked:Z

    .line 135
    iput v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonType:I

    .line 166
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    .line 168
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    .line 169
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateContentDescription:Landroid/util/SparseIntArray;

    .line 171
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 174
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 175
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040023

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    .line 179
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    .line 182
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07008c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    .line 184
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07008e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    .line 186
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f07008d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    .line 188
    const v2, 0x7f0f0002

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuRes:I

    .line 190
    const v2, 0x7f0700f8

    iput v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuItem:I

    .line 192
    iput-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuTitleAppPackageName:Ljava/lang/String;

    .line 194
    iput-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuTitleResName:Ljava/lang/String;

    .line 196
    iput-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentPackageName:Ljava/lang/String;

    .line 198
    iput-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentClassName:Ljava/lang/String;

    .line 201
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addView(Landroid/view/View;)V

    .line 204
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    .line 205
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    const v3, 0x7f02020f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 206
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {p0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    invoke-virtual {p0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 212
    invoke-virtual {p0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 215
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setFocusable(Z)V

    .line 216
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 230
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$2;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    invoke-virtual {p0, v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 249
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    .line 250
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$3;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    .line 285
    new-instance v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$4;

    invoke-direct {v2, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$4;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)V

    iput-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    .line 292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "type"

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;-><init>(Landroid/content/Context;)V

    .line 161
    iput p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonType:I

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mHighlight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return v0
.end method

.method static synthetic access$202(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return p1
.end method

.method static synthetic access$208(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private colorize(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "imageView"

    .prologue
    .line 474
    const v1, -0x55555556

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 476
    .local v0, colorize:Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private colorize(Landroid/widget/TextView;)V
    .locals 3
    .parameter "textView"

    .prologue
    .line 489
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    if-eqz v1, :cond_0

    .line 502
    :goto_0
    return-void

    .line 492
    :cond_0
    const v1, -0x55555556

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 494
    .local v0, colorize:Ljava/lang/Boolean;
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 500
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "imageView"
    .parameter "bitmap"
    .parameter "colorize"

    .prologue
    .line 458
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 459
    const v0, -0x55555556

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 460
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 461
    return-void
.end method

.method private setLabelText(Landroid/widget/TextView;IZ)V
    .locals 2
    .parameter "textView"
    .parameter "textId"
    .parameter "colorize"

    .prologue
    .line 464
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 465
    const v0, -0x55555556

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/TextView;)V

    .line 467
    return-void
.end method

.method private updateContentDescription()V
    .locals 8

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 525
    .local v1, res:Landroid/content/res/Resources;
    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 526
    .local v3, tool:Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateContentDescription:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 527
    .local v2, stateId:I
    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, desc:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a002b

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v0, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 530
    return-void

    .line 527
    .end local v0           #desc:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private updateIcon()V
    .locals 6

    .prologue
    .line 335
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    .line 336
    .local v2, icon:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    if-eqz v2, :cond_1

    .line 337
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 339
    .local v0, bitmapIcon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 341
    :try_start_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->id:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 345
    :goto_0
    if-eqz v0, :cond_0

    .line 346
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    iget-boolean v4, v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    invoke-direct {p0, v3, v0, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 351
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    iget-boolean v5, v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setLabelText(Landroid/widget/TextView;IZ)V

    .line 353
    .end local v0           #bitmapIcon:Landroid/graphics/Bitmap;
    :cond_1
    return-void

    .line 342
    .restart local v0       #bitmapIcon:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 343
    .local v1, e:Ljava/lang/OutOfMemoryError;
    sget-object v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load resource : OutOfMemoryError"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected varargs addState(ILjava/lang/Integer;Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;)V
    .locals 2
    .parameter "stateId"
    .parameter "stringId"
    .parameter "stateIcon"
    .parameter "animationIcons"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStateContentDescription:Landroid/util/SparseIntArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    if-eqz p4, :cond_1

    .line 321
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    :cond_1
    return-void
.end method

.method public colorize(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 447
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAccentColor:I

    .line 450
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 451
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/TextView;)V

    .line 452
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->colorize(Landroid/widget/ImageView;)V

    .line 453
    return-void
.end method

.method protected getLongClickIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method protected getLongClickIntentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentClassName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLongClickIntentFlags()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentFlags:I

    return v0
.end method

.method protected getLongClickIntentPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLongClickMenuItem()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuItem:I

    return v0
.end method

.method protected getLongClickMenuRes()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuRes:I

    return v0
.end method

.method protected getLongClickMenuTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getLongClickMenuTitlePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuTitleAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getLongClickMenuTitleResName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuTitleResName:Ljava/lang/String;

    return-object v0
.end method

.method abstract onAction()V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onAction()V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonClicked:Z

    .line 426
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 432
    .local v0, clickHandled:Z
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->onLongClickPopup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 434
    const/4 v0, 0x1

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 437
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract onLongClickPopup()Z
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 448
    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonType:I

    if-ne v1, v0, :cond_0

    .line 454
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public refreshText()V
    .locals 2

    .prologue
    .line 509
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->updateContentDescription()V

    .line 513
    :cond_0
    return-void
.end method

.method public releaseResource()V
    .locals 2

    .prologue
    .line 516
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->stopAnimate(Z)V

    .line 517
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 517
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 521
    return-void
.end method

.method protected setLongClickIntentAction(Ljava/lang/String;)V
    .locals 0
    .parameter "mLongClickIntentAction"

    .prologue
    .line 569
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentAction:Ljava/lang/String;

    .line 570
    return-void
.end method

.method protected setLongClickIntentClassName(Ljava/lang/String;)V
    .locals 0
    .parameter "mLongClickIntentClassName"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentClassName:Ljava/lang/String;

    .line 594
    return-void
.end method

.method protected setLongClickIntentFlags(I)V
    .locals 0
    .parameter "mLongClickIntentFlags"

    .prologue
    .line 577
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentFlags:I

    .line 578
    return-void
.end method

.method protected setLongClickIntentPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "mLongClickIntentPackageName"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickIntentPackageName:Ljava/lang/String;

    .line 586
    return-void
.end method

.method protected setLongClickMenuTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "mLongClickMenuTitle"

    .prologue
    .line 545
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuTitle:Ljava/lang/String;

    .line 546
    return-void
.end method

.method protected setLongClickMenuTitlePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "mLongClickMenuTitleAppPackageName"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuTitleAppPackageName:Ljava/lang/String;

    .line 554
    return-void
.end method

.method protected setLongClickMenuTitleResName(Ljava/lang/String;)V
    .locals 0
    .parameter "mLongClickMenuTitleResName"

    .prologue
    .line 561
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mLongClickMenuTitleResName:Ljava/lang/String;

    .line 562
    return-void
.end method

.method protected setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 295
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    if-eq p1, v0, :cond_0

    .line 296
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mState:I

    .line 297
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->updateIcon()V

    .line 298
    invoke-direct {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->updateContentDescription()V

    .line 299
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonClicked:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 303
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mButtonClicked:Z

    .line 304
    return-void
.end method

.method protected setTextId(I)V
    .locals 0
    .parameter "textId"

    .prologue
    .line 331
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mTextId:I

    .line 332
    return-void
.end method

.method public startAnimate(I)V
    .locals 10
    .parameter "toState"

    .prologue
    const/4 v9, 0x0

    .line 381
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const/4 v0, 0x0

    .line 387
    .local v0, animationIcons:[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    if-eqz v6, :cond_2

    .line 388
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationIcons:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #animationIcons:[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    check-cast v0, [Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;

    .line 390
    .restart local v0       #animationIcons:[Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;
    :cond_2
    if-eqz v0, :cond_0

    .line 391
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 392
    .local v4, res:Landroid/content/res/Resources;
    new-instance v6, Ljava/util/ArrayList;

    array-length v7, v0

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    .line 393
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_4

    .line 394
    aget-object v6, v0, v3

    iget v5, v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->id:I

    .line 395
    .local v5, resId:I
    const/4 v1, 0x0

    .line 397
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 401
    :goto_2
    if-eqz v1, :cond_3

    .line 402
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    new-instance v7, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;

    aget-object v8, v0, v3

    iget-boolean v8, v8, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsIcon;->colorize:Z

    invoke-direct {v7, v1, v8}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;-><init>(Landroid/graphics/Bitmap;Z)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 398
    :catch_0
    move-exception v2

    .line 399
    .local v2, e:Ljava/lang/OutOfMemoryError;
    sget-object v6, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->TAG:Ljava/lang/String;

    const-string v7, "Failed to load anim resource : OutOfMemoryError"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 405
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .end local v5           #resId:I
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 406
    iput-boolean v9, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    .line 407
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 408
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    const/4 v6, -0x1

    iput v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mCurrentAnimationImage:I

    .line 410
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 414
    iget-object v6, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stopAnimate(Z)V
    .locals 5
    .parameter "kill"

    .prologue
    const/4 v4, 0x0

    .line 362
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    :goto_0
    return-void

    .line 365
    :cond_0
    if-eqz p1, :cond_2

    .line 366
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationKiller:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationRunner:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 368
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Z)V

    .line 369
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;

    .line 372
    .local v0, frame:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;
    iget-object v2, v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 374
    .end local v0           #frame:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mAnimationFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 376
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->mStopAnimation:Z

    goto :goto_0
.end method
