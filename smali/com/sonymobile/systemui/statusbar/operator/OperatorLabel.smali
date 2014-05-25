.class public Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
.super Landroid/widget/TextView;
.source "OperatorLabel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;
    }
.end annotation


# instance fields
.field private mAttached:Z

.field private mForceFullLengthOperatorName:Z

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

.field private mOperatorName:Ljava/lang/String;

.field private mOperatorNameMaxLength:I

.field private mShownOperatorNameInStatusBar:Z

.field private mTruncate:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 108
    new-instance v0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$1;-><init>(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    invoke-virtual {p0, v1, v2, v1, v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mForceFullLengthOperatorName:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    return-object v0
.end method


# virtual methods
.method public forceFullLengthOperatorName(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mForceFullLengthOperatorName:Z

    .line 200
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    .line 202
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setWidth(I)V

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    invoke-interface {v0, v3}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;->onLabelChanged(Z)V

    .line 211
    :cond_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setWidth(I)V

    goto :goto_0
.end method

.method public getLabelFullLengthWidth()I
    .locals 3

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 242
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 243
    .local v1, width:I
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v1, v2

    .line 245
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 246
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    .line 248
    :cond_0
    return v1
.end method

.method public getLabelTruncatedWidth()I
    .locals 6

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 257
    .local v0, paint:Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 258
    .local v2, width:I
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 259
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    .line 260
    .local v1, truncatedLabel:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    if-le v3, v4, :cond_0

    .line 261
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v2, v3

    .line 264
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    .line 265
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 267
    .end local v1           #truncatedLabel:Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 80
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 82
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mAttached:Z

    .line 84
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mShownOperatorNameInStatusBar:Z

    .line 87
    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mShownOperatorNameInStatusBar:Z

    if-eqz v1, :cond_0

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    .line 95
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 100
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mAttached:Z

    if-eqz v0, :cond_1

    .line 101
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mShownOperatorNameInStatusBar:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mAttached:Z

    .line 106
    :cond_1
    return-void
.end method

.method public setListener(Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    .line 276
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;->onLabelChanged(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public truncate(Z)V
    .locals 5
    .parameter "truncate"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 218
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z

    .line 219
    if-eqz p1, :cond_2

    .line 220
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setWidth(I)V

    .line 229
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelTruncatedWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 230
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mListener:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;

    invoke-interface {v0, v2}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel$OperatorLabelListener;->onLabelChanged(Z)V

    .line 234
    :cond_1
    return-void

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z

    .line 227
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getLabelFullLengthWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->setWidth(I)V

    goto :goto_0
.end method

.method updateOperatorName(ZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 9
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 143
    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mShownOperatorNameInStatusBar:Z

    if-nez v7, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v6

    .line 146
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    const-string v6, ""

    iput-object v6, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    move v6, v5

    .line 148
    goto :goto_0

    .line 152
    :cond_2
    if-eqz p3, :cond_7

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    move v2, v5

    .line 153
    .local v2, plmnValid:Z
    :goto_1
    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    move v3, v5

    .line 154
    .local v3, spnValid:Z
    :goto_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104033a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, emergencyCallsOnly:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040320

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, noNetworkService:Ljava/lang/String;
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 161
    :cond_3
    const-string p4, ""

    .line 164
    :cond_4
    if-eqz v2, :cond_9

    .line 165
    move-object v4, p4

    .line 173
    .local v4, str:Ljava/lang/String;
    :goto_3
    iput-object v4, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    .line 175
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 176
    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mTruncate:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mForceFullLengthOperatorName:Z

    if-nez v7, :cond_5

    .line 177
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    if-le v7, v8, :cond_5

    .line 178
    iget v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorNameMaxLength:I

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 182
    :cond_5
    iget-object v7, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :cond_6
    move v6, v5

    goto/16 :goto_0

    .end local v0           #emergencyCallsOnly:Ljava/lang/String;
    .end local v1           #noNetworkService:Ljava/lang/String;
    .end local v2           #plmnValid:Z
    .end local v3           #spnValid:Z
    .end local v4           #str:Ljava/lang/String;
    :cond_7
    move v2, v6

    .line 152
    goto :goto_1

    .restart local v2       #plmnValid:Z
    :cond_8
    move v3, v6

    .line 153
    goto :goto_2

    .line 166
    .restart local v0       #emergencyCallsOnly:Ljava/lang/String;
    .restart local v1       #noNetworkService:Ljava/lang/String;
    .restart local v3       #spnValid:Z
    :cond_9
    if-eqz v3, :cond_a

    .line 167
    move-object v4, p2

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_3

    .line 169
    .end local v4           #str:Ljava/lang/String;
    :cond_a
    const-string v4, ""

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_3
.end method
