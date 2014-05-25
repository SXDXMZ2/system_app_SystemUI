.class final Lcom/android/systemui/statusbar/phone/Ticker$Segment;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Segment"
.end annotation


# instance fields
.field current:I

.field first:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field next:I

.field notification:Landroid/service/notification/StatusBarNotification;

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/Ticker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/Ticker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter
    .parameter "n"
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    .line 162
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    .line 163
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, index:I
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 167
    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->isBidiTextControl(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    .line 171
    iput v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 172
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    .line 173
    return-void
.end method

.method private final isBidiTextControl(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 112
    sparse-switch p1, :sswitch_data_0

    .line 122
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 120
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x200e -> :sswitch_0
        0x200f -> :sswitch_0
        0x202a -> :sswitch_0
        0x202b -> :sswitch_0
        0x202c -> :sswitch_0
        0x202d -> :sswitch_0
        0x202e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method advance()Ljava/lang/CharSequence;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 127
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    .line 128
    iget v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 129
    .local v2, index:I
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 131
    .local v4, len:I
    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->isBidiTextControl(C)Z

    move-result v10

    if-nez v10, :cond_0

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_0
    if-lt v2, v4, :cond_1

    move-object v6, v9

    .line 157
    :goto_1
    return-object v6

    .line 138
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v10, v2, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 139
    .local v8, substr:Ljava/lang/CharSequence;
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v3

    .line 140
    .local v3, l:Landroid/text/StaticLayout;
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 142
    .local v5, lineCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 143
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    .line 144
    .local v7, start:I
    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 145
    .local v0, end:I
    add-int/lit8 v10, v5, -0x1

    if-ne v1, v10, :cond_2

    .line 146
    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 150
    :goto_3
    invoke-virtual {p0, v8, v7, v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 151
    .local v6, result:Ljava/lang/CharSequence;
    if-eqz v6, :cond_3

    .line 152
    add-int v9, v2, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    goto :goto_1

    .line 148
    .end local v6           #result:Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v3, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v10

    add-int/2addr v10, v2

    iput v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    goto :goto_3

    .line 142
    .restart local v6       #result:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 156
    .end local v0           #end:I
    .end local v6           #result:Ljava/lang/CharSequence;
    .end local v7           #start:I
    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    move-object v6, v9

    .line 157
    goto :goto_1
.end method

.method getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 8
    .parameter "substr"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    #getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    #getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    #getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 78
    .local v3, w:I
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    #getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$100(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 93
    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 94
    const/4 v5, 0x0

    .line 103
    :goto_0
    return-object v5

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 97
    .local v4, substr:Ljava/lang/CharSequence;
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 98
    .local v1, l:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    .line 99
    .local v2, lineCount:I
    if-lez v2, :cond_1

    .line 100
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    .line 101
    .local v3, start:I
    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    .line 102
    .local v0, end:I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    .line 103
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    .line 105
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lineCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "substr"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 82
    :goto_0
    if-le p3, p2, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 85
    :cond_0
    if-le p3, p2, :cond_1

    .line 86
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 88
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
