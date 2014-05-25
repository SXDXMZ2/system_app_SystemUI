.class Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;
.source "QuickSettingsBasicTile.java"


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, -0x1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    const v0, 0x7f02010e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->setBackgroundResource(I)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mTextView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mImageView:Landroid/widget/ImageView;

    .line 52
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method setContent(ILandroid/view/LayoutInflater;)V
    .locals 2
    .parameter "layoutId"
    .parameter "inflater"

    .prologue
    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "why?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public setTextResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsBasicTile;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    return-void
.end method
