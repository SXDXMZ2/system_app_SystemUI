.class public Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;
.super Landroid/app/DialogFragment;
.source "AutoSyncDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoSyncDialogFragment"
.end annotation


# instance fields
.field private mEnabling:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Z)V
    .locals 3
    .parameter "fm"
    .parameter "tag"
    .parameter "enabling"

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 61
    new-instance v1, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;

    invoke-direct {v1}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;-><init>()V

    .line 62
    .local v1, dialog:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "enabling"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    invoke-virtual {v1, v0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {v1, p0, p1}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 67
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dialog:Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 73
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "enabling"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    .line 75
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 78
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-boolean v2, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    if-eqz v2, :cond_0

    .line 80
    const v2, 0x7f0a002f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 82
    const v2, 0x7f0a0030

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 89
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment$1;-><init>(Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 85
    :cond_0
    const v2, 0x7f0a0032

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 86
    const v2, 0x7f0a0033

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 111
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 114
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "enabling"

    iget-boolean v1, p0, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->mEnabling:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method
