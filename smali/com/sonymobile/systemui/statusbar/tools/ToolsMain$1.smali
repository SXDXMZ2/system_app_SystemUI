.class Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;
.super Landroid/database/ContentObserver;
.source "ToolsMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 109
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;

    .line 111
    .local v0, button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    invoke-virtual {v0}, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;->releaseResource()V

    goto :goto_0

    .line 113
    .end local v0           #button:Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
    :cond_0
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mButtons:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 115
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;

    .line 117
    .local v2, service:Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    invoke-virtual {v2}, Lcom/sonymobile/systemui/statusbar/tools/ToolsService;->stop()V

    goto :goto_1

    .line 119
    .end local v2           #service:Lcom/sonymobile/systemui/statusbar/tools/ToolsService;
    :cond_2
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mServices:Ljava/util/LinkedList;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$100(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 122
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->reCreateButtons()V
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$200(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V

    .line 123
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->refreshRowLayout()V
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$300(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V

    .line 124
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->startServices()V
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$400(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V

    .line 126
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #calls: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->colorize()V
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$1000(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)V

    .line 119
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCallback:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 127
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mCallback:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$500(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$ChangeObserverCallbackInterface;->doCallback()V

    .line 129
    :cond_4
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$600(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 132
    iget-object v3, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->mToolSettingsPopup:Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;
    invoke-static {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;->access$600(Lcom/sonymobile/systemui/statusbar/tools/ToolsMain;)Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/systemui/statusbar/tools/ToolsPopupMenu;->dismiss()V

    .line 134
    :cond_5
    return-void
.end method
