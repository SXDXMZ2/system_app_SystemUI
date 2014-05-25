.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageNotificationStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getMessageIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 588
    const v0, 0x10404aa

    return v0
.end method

.method getMessageIdOnChecking()I
    .locals 1

    .prologue
    .line 580
    const v0, 0x10404a4

    return v0
.end method

.method getMessageIdOnNoMedia()I
    .locals 1

    .prologue
    .line 628
    const v0, 0x10404ae

    return v0
.end method

.method getMessageIdOnNofs()I
    .locals 1

    .prologue
    .line 612
    const v0, 0x10404a6

    return v0
.end method

.method getMessageIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 604
    const v0, 0x10404ac

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    .prologue
    .line 596
    const v0, 0x10404a8

    return v0
.end method

.method getTitleIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 584
    const v0, 0x10404a9

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    .prologue
    .line 576
    const v0, 0x10404a3

    return v0
.end method

.method getTitleIdOnNoMedia()I
    .locals 1

    .prologue
    .line 624
    const v0, 0x10404ad

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    .prologue
    .line 608
    const v0, 0x10404a5

    return v0
.end method

.method getTitleIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 600
    const v0, 0x10404ab

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    .prologue
    .line 592
    const v0, 0x10404a7

    return v0
.end method
