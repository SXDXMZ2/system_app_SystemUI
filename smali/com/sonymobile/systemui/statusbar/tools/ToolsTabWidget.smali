.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;
.super Landroid/widget/TabWidget;
.source "ToolsTabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$1;,
        Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentTab:I

.field private mTabTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v3, -0x1

    iput v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->mCurrentTab:I

    .line 51
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 54
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    if-nez v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->mTabTextColor:Landroid/content/res/ColorStateList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, ioe:Ljava/io/IOException;
    sget-object v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->TAG:Ljava/lang/String;

    const-string v4, "Unable to read theme color file for tab text"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .end local v0           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 60
    .local v2, xppe:Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v3, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->TAG:Ljava/lang/String;

    const-string v4, "Unable to parse theme color xml for tab text"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->updateTabIfNecessary(I)V

    return-void
.end method

.method private setBackgroundResource(Landroid/view/View;I)V
    .locals 4
    .parameter "view"
    .parameter "res"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 92
    .local v1, left:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 93
    .local v3, top:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    .line 94
    .local v2, right:I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    .line 95
    .local v0, bottom:I
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 96
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    return-void
.end method

.method private updateTabIfNecessary(I)V
    .locals 2
    .parameter "tabIndex"

    .prologue
    .line 158
    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->mCurrentTab:I

    if-eq v0, p1, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->onFocusChange(Landroid/view/View;Z)V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    .line 71
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->getTabCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$TabTouchListener;-><init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;ILcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    const v1, 0x7f020210

    invoke-direct {p0, p1, v1}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->setBackgroundResource(Landroid/view/View;I)V

    .line 77
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->mTabTextColor:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    .line 79
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, textView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->mTabTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 83
    .end local v0           #textView:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    .line 102
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->mCurrentTab:I

    if-ne p1, v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iput p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsTabWidget;->mCurrentTab:I

    goto :goto_0
.end method
