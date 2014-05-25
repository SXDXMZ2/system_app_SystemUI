.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;
.super Ljava/lang/Object;
.source "ToolsPopupMenu.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;,
        Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnDismissListener;

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;

.field private mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "anchor"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 67
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 68
    iput-object p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mAnchor:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1, v1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 70
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 72
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 73
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 119
    return-void
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .parameter "menu"
    .parameter "allMenusAreClosing"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mDismissListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnDismissListener;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mDismissListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnDismissListener;

    invoke-interface {v0, p0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnDismissListener;->onDismiss(Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;)V

    .line 156
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "menu"
    .parameter "item"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mMenuItemClickListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mMenuItemClickListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;

    invoke-interface {v0, p2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 183
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .locals 4
    .parameter "subMenu"

    .prologue
    const/4 v0, 0x1

    .line 162
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    new-instance v1, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    goto :goto_0
.end method

.method public setOnMenuItemClickListener(Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mMenuItemClickListener:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu$OnMenuItemClickListener;

    .line 128
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    .line 111
    return-void
.end method
