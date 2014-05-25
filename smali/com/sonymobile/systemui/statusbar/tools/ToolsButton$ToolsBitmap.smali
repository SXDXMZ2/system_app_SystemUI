.class public Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;
.super Ljava/lang/Object;
.source "ToolsButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/systemui/statusbar/tools/ToolsButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolsBitmap"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final colorize:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "bitmap"
    .parameter "colorize"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 51
    iput-boolean p2, p0, Lcom/sonymobile/systemui/statusbar/tools/ToolsButton$ToolsBitmap;->colorize:Z

    .line 52
    return-void
.end method
