.class Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment$1;
.super Ljava/lang/Object;
.source "AutoSyncDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment$1;->this$0:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;

    #getter for: Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z
    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->access$000(Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;)Z

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 95
    return-void
.end method
