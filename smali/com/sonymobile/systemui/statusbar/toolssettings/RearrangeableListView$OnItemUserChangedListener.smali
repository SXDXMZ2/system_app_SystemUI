.class public interface abstract Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView$OnItemUserChangedListener;
.super Ljava/lang/Object;
.source "RearrangeableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/toolssettings/RearrangeableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnItemUserChangedListener"
.end annotation


# virtual methods
.method public abstract onItemChanged(Lcom/sonymobile/systemui/statusbar/toolssettings/ToolItem;Z)V
.end method

.method public abstract onItemCollapsed(Landroid/view/View;)V
.end method

.method public abstract onItemExpanded(Landroid/view/View;Z)V
.end method

.method public abstract onItemMoved(II)V
.end method
