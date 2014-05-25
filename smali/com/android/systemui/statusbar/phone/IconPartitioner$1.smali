.class Lcom/android/systemui/statusbar/phone/IconPartitioner$1;
.super Ljava/lang/Object;
.source "IconPartitioner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/IconPartitioner;->postTruncate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/IconPartitioner;

.field final synthetic val$value:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/IconPartitioner;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner$1;->this$0:Lcom/android/systemui/statusbar/phone/IconPartitioner;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner$1;->val$value:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner$1;->this$0:Lcom/android/systemui/statusbar/phone/IconPartitioner;

    #getter for: Lcom/android/systemui/statusbar/phone/IconPartitioner;->mOperatorLabel:Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/IconPartitioner;->access$000(Lcom/android/systemui/statusbar/phone/IconPartitioner;)Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IconPartitioner$1;->val$value:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/systemui/statusbar/operator/OperatorLabel;->truncate(Z)V

    .line 92
    return-void
.end method
