.class public Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity;
.super Landroid/app/Activity;
.source "AutoSyncDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 28
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 29
    .local v0, config:Z
    if-eqz v1, :cond_0

    .line 30
    const-string v2, "enabling"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "AutoSyncDialogFragment"

    invoke-static {v2, v3, v0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity$AutoSyncDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/systemui/statusbar/tools/AutoSyncDialogActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 40
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v2, "AutoSyncDialogFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 42
    .local v0, firstfragment:Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 45
    :cond_0
    return-void
.end method
