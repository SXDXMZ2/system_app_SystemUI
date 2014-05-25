.class public final Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;
.super Ljava/lang/Object;
.source "ToolItem.java"


# instance fields
.field private final mIconNameId:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private mSelected:Z

.field private final mTextNameId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "selected"
    .parameter "iconNameId"
    .parameter "textNameId"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mName:Ljava/lang/String;

    .line 20
    iput-boolean p2, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mSelected:Z

    .line 21
    iput-object p3, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mIconNameId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mTextNameId:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getIconNameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mIconNameId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTextNameId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mTextNameId:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mSelected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;->mSelected:Z

    .line 35
    return-void
.end method
