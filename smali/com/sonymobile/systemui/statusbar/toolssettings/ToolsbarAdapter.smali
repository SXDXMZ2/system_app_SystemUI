.class Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ToolsbarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;",
            ">;",
            "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    iput-object p4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 49
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;

    .line 55
    .local v2, item:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, context:Landroid/content/Context;
    if-nez p2, :cond_0

    move-object v3, v0

    .line 59
    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040006

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 62
    new-instance v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;

    const v3, 0x7f070018

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f070019

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f07001a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-direct {v1, v3, v4, v5}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    .line 65
    .local v1, holder:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;
    iget-object v3, v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;->mListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    iget-object v3, v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v3, v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->getIconNameId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v3, v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->getTextNameId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v3, v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->isSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 82
    return-object p2

    .line 70
    .end local v1           #holder:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;

    .line 71
    .restart local v1       #holder:Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;
    iget-object v3, v1, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
