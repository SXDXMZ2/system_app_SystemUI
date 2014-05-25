.class final Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ToolsbarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewHolder"
.end annotation


# instance fields
.field final checkBox:Landroid/widget/CheckBox;

.field final icon:Landroid/widget/ImageView;

.field final text:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter "ic"
    .parameter "te"
    .parameter "ch"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 40
    iput-object p2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 41
    iput-object p3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolsbarAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 42
    return-void
.end method
