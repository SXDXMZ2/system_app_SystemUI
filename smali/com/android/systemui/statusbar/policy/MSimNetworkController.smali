.class public Lcom/android/systemui/statusbar/policy/MSimNetworkController;
.super Lcom/android/systemui/statusbar/policy/NetworkController;
.source "MSimNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;,
        Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;
    }
.end annotation


# instance fields
.field private mCarrierTextSub:[Ljava/lang/CharSequence;

.field private mDefaultSubscription:I

.field mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

.field mMSimContentDescriptionDataType:[Ljava/lang/String;

.field mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

.field mMSimDataActivity:[I

.field mMSimDataConnected:[Z

.field mMSimDataDirectionIconId:[I

.field mMSimDataServiceState:[I

.field mMSimDataSignalIconId:[I

.field mMSimDataTypeIconId:[I

.field private mMSimIconId:[I

.field mMSimLastCombinedSignalIconId:[I

.field mMSimLastDataDirectionIconId:[I

.field mMSimLastDataTypeIconId:[I

.field mMSimLastPhoneSignalIconId:[I

.field mMSimLastSimIconId:[I

.field mMSimMobileActivityIconId:[I

.field mMSimNetworkName:[Ljava/lang/String;

.field mMSimPhoneSignalIconId:[I

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field mMSimServiceState:[Landroid/telephony/ServiceState;

.field mMSimSignalStrength:[Landroid/telephony/SignalStrength;

.field mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field mMSimcombinedActivityIconId:[I

.field mMSimcombinedSignalIconId:[I

.field mNoMSimIconId:[I

.field private mPhone:Landroid/telephony/MSimTelephonyManager;

.field mPlmn:[Ljava/lang/String;

.field mShowPlmn:[Z

.field mShowSpn:[Z

.field mSimSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSpn:[Ljava/lang/String;

.field mSubsLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSubsLabelViews:Ljava/util/ArrayList;

    .line 121
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 122
    .local v1, numPhones:I
    new-array v2, v1, [Landroid/telephony/SignalStrength;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    .line 123
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    .line 124
    new-array v2, v1, [Landroid/telephony/ServiceState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    .line 125
    new-array v2, v1, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 126
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimIconId:[I

    .line 127
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    .line 128
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    .line 129
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    .line 130
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    .line 131
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    .line 132
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    .line 133
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    .line 134
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    .line 135
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    .line 136
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    .line 137
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    .line 138
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    .line 139
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    .line 140
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    .line 141
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    .line 142
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    .line 143
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    .line 144
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    .line 145
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    .line 146
    new-array v2, v1, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    .line 147
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    .line 148
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    .line 149
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    .line 150
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v3, v2, v0

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    new-instance v3, Landroid/telephony/ServiceState;

    invoke-direct {v3}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v3, v2, v0

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v3, v2, v0

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    const v3, 0x7f02017c

    aput v3, v2, v0

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aput v5, v2, v0

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aput v5, v2, v0

    .line 160
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aput-boolean v4, v2, v0

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aput v5, v2, v0

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aput v5, v2, v0

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aput v4, v2, v0

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aput v4, v2, v0

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aput v4, v2, v0

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aput v4, v2, v0

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    .line 172
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-boolean v2, v2, v3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataServiceState:I

    .line 176
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 178
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 180
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 184
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 185
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 187
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNoSimIconId:I

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 194
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 197
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 198
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 199
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    aget v2, v2, v3

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSimIconId:I

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v0

    return v0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 384
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;I)V

    .line 469
    .local v0, mMSimPhoneStateListener:Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private hasService(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    const/4 v1, 0x0

    .line 536
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v2, p1

    .line 537
    .local v0, ss:Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 543
    :pswitch_0
    const/4 v1, 0x1

    .line 546
    :cond_0
    :pswitch_1
    return v1

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCdma(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCarrierText()V
    .locals 6

    .prologue
    .line 372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, carrierName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 375
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 376
    .local v2, v:Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 378
    .end local v2           #v:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateCarrierText(I)V
    .locals 4
    .parameter "sub"

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, textResId:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 331
    const v0, 0x1040343

    .line 366
    :goto_0
    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 369
    :cond_0
    return-void

    .line 334
    :cond_1
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCarrierText for sub:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-object v1, Lcom/android/systemui/statusbar/policy/MSimNetworkController$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 361
    const v0, 0x104032f

    goto :goto_0

    .line 341
    :pswitch_0
    const v0, 0x104032f

    .line 342
    goto :goto_0

    .line 344
    :pswitch_1
    const v0, 0x1040341

    .line 345
    goto :goto_0

    .line 347
    :pswitch_2
    const v0, 0x104033f

    .line 348
    goto :goto_0

    .line 351
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mCarrierTextSub:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    goto :goto_0

    .line 354
    :pswitch_4
    const v0, 0x1040333

    .line 356
    goto :goto_0

    .line 358
    :pswitch_5
    const v0, 0x104033b

    .line 359
    goto :goto_0

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataIcon(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 756
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v2

    .line 761
    const-string v3, "StatusBar.MSimNetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDataIcon dataSub ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eq p1, v2, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aput-boolean v0, v1, p1

    .line 765
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataIconi: SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not DDS.  Clear the mMSimDataConnected Flag and return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :goto_0
    return-void

    .line 770
    :cond_0
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon  when SimState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v2, :cond_1

    move v1, v0

    .line 829
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 831
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v5, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v5

    invoke-interface {v4, v5, v0}, Lcom/android/internal/app/IBatteryStats;->notePhoneDataConnectionState(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aput v1, v2, p1

    .line 839
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aput-boolean v0, v1, p1

    .line 840
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataIcon when mMSimDataConnected ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 775
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDataIcon  when gsm mMSimState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_4

    .line 779
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v2, v6, :cond_3

    .line 780
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_0

    .line 791
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v0

    .line 794
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aput v0, v2, p1

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_1

    .line 782
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    goto :goto_3

    .line 785
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v6

    goto :goto_3

    .line 788
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v7

    goto :goto_3

    :cond_3
    move v1, v0

    .line 797
    goto/16 :goto_1

    .line 800
    :cond_4
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "updateDataIcon when no sim"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    const v1, 0x7f020167

    .line 802
    goto/16 :goto_1

    .line 806
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v2, v6, :cond_6

    .line 807
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v2, v2, p1

    packed-switch v2, :pswitch_data_1

    .line 819
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v0

    move v8, v1

    move v1, v0

    move v0, v8

    .line 820
    goto/16 :goto_1

    .line 809
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v1

    move v8, v1

    move v1, v0

    move v0, v8

    .line 810
    goto/16 :goto_1

    .line 812
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v6

    move v8, v1

    move v1, v0

    move v0, v8

    .line 813
    goto/16 :goto_1

    .line 815
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v0, v7

    move v8, v1

    move v1, v0

    move v0, v8

    .line 816
    goto/16 :goto_1

    :cond_6
    move v1, v0

    .line 824
    goto/16 :goto_1

    .line 833
    :catch_0
    move-exception v4

    .line 835
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 780
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 807
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType(I)V
    .locals 9
    .parameter "subscription"

    .prologue
    const v8, 0x7f02013f

    const v7, 0x7f02013b

    const v6, 0x7f0a009f

    const v5, 0x7f02013d

    const/4 v4, 0x0

    .line 603
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPreferredDataSubscription()I

    move-result v0

    .line 604
    .local v0, dataSub:I
    if-eq p1, v0, :cond_1

    .line 605
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataNetType: SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not DDS(=SUB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v1, p1

    .line 720
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 721
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v2, 0x7f02014d

    aput v2, v1, p1

    .line 727
    :cond_0
    :goto_1
    return-void

    .line 609
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v1, :cond_2

    .line 611
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 612
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v8, v1, p1

    .line 613
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto :goto_0

    .line 616
    :cond_2
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataNetType sub = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mDataNetType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 711
    :pswitch_0
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDataNetType unknown radio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 714
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v1, p1

    goto :goto_0

    .line 621
    :pswitch_1
    const-string v1, "StatusBar.MSimNetworkController"

    const-string v2, "updateDataNetType NETWORK_TYPE_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_3

    .line 624
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 625
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v1, p1

    .line 626
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 633
    :cond_3
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_4

    .line 634
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 635
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v2, 0x7f020143

    aput v2, v1, p1

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00a6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 644
    :cond_4
    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 645
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v5, v1, p1

    .line 646
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 653
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_5

    .line 654
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 655
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v2, 0x7f020147

    aput v2, v1, p1

    .line 657
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 660
    :cond_5
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 661
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v5, v1, p1

    .line 663
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 669
    :pswitch_5
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 670
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v7, v1, p1

    .line 671
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 675
    :pswitch_6
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 676
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v7, v1, p1

    .line 677
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 684
    :pswitch_7
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 685
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v5, v1, p1

    .line 686
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 690
    :pswitch_8
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 691
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v8, v1, p1

    .line 692
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00a1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 696
    :pswitch_9
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_6

    .line 697
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 698
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v2, 0x7f020145

    aput v2, v1, p1

    .line 699
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 702
    :cond_6
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 703
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v5, v1, p1

    .line 705
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto/16 :goto_0

    .line 724
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    const v2, 0x7f02014d

    aput v2, v1, p1

    goto/16 :goto_1

    .line 618
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateSimIcon(I)V
    .locals 3
    .parameter "cardIndex"

    .prologue
    .line 746
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In updateSimIcon card ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    const v1, 0x7f020167

    aput v1, v0, p1

    .line 752
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 753
    return-void

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    const v5, 0x7f02017c

    .line 551
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: subscription ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    aget v2, v2, p1

    if-eqz v2, :cond_0

    .line 554
    const-string v2, "StatusBar.MSimNetworkController"

    const-string v3, " No service"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aput v5, v2, p1

    .line 556
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aput v5, v2, p1

    .line 599
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    if-nez v2, :cond_2

    .line 560
    :cond_1
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Null object, mMSimSignalStrength= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mMSimServiceState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aput v5, v2, p1

    .line 565
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aput v5, v2, p1

    .line 566
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    goto :goto_0

    .line 571
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_5

    .line 572
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 573
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAlwaysShowCdmaRssi= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set to cdmaLevel= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instead of level= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 584
    :cond_4
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v2, v3

    .line 589
    .local v1, iconList:[I
    :goto_2
    const-string v2, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength iconList = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "iconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mInetCondition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v3, v1, v0

    aput v3, v2, p1

    .line 592
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 595
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    aput v3, v2, p1

    goto/16 :goto_0

    .line 578
    .end local v0           #iconLevel:I
    .end local v1           #iconList:[I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0       #iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_1

    .line 586
    :cond_6
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v2, v3

    .restart local v1       #iconList:[I
    goto :goto_2
.end method


# virtual methods
.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V
    .locals 1
    .parameter "cluster"
    .parameter "subscription"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    .line 234
    return-void
.end method

.method public addSubsLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSubsLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 205
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimWifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/MSimNetworkController;)V

    .line 207
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 208
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 209
    .local v1, wifiMessenger:Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 210
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 212
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkController for SUB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1292
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1293
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1294
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1295
    const-string v0, "  mMSimDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1297
    const-string v0, "  mMSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1299
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1301
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1302
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1303
    const-string v0, "  mMSimDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1305
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1306
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1307
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1308
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1309
    const-string v0, "  mMSimServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1310
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1311
    const-string v0, "  mMSimSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1313
    const-string v0, "  mLastSignalLevel"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1314
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1315
    const-string v0, "  mMSimNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1316
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1317
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1319
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    const-string v0, "  mMSimPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    const-string v0, "  mMSimDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1326
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    const-string v0, "  mMSimDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1331
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1333
    const-string v0, "  mMSimDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1336
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1338
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1339
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1341
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1343
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1345
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1346
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1347
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1352
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 1355
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1357
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1358
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1359
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1368
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1370
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1372
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1374
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    const-string v0, "  mMSimLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1377
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    const-string v0, "  mMSimLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1381
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1384
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1385
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1386
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1389
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1390
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    const-string v0, "  mMSimLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    const-string v0, "  mMSimLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p4

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    const-string v0, "  mMSimLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    return-void

    .line 1287
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method isCdmaEri(I)Z
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    .line 730
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataServiceState:[I

    aget v3, v3, p1

    if-nez v3, :cond_2

    .line 733
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 734
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_2

    .line 735
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 736
    .local v1, iconMode:I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 742
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 283
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 284
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 286
    const/4 v8, 0x0

    .local v8, sub:I
    :goto_1
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 287
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 288
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    .line 286
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 290
    .end local v8           #sub:I
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    const-string v0, "subscription"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 292
    .local v5, subscription:I
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SPN update on sub :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v5

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    const-string v1, "showPlmn"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v5

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    const-string v1, "plmn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 299
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowSpn:[Z

    aget-boolean v1, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSpn:[Ljava/lang/String;

    aget-object v2, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mShowPlmn:[Z

    aget-boolean v3, v0, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPlmn:[Ljava/lang/String;

    aget-object v4, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V

    .line 301
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    .line 302
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 303
    .end local v5           #subscription:I
    :cond_4
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 305
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 306
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 307
    :cond_6
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 308
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 309
    :cond_7
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateAirplaneMode()V

    .line 311
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge v7, v0, :cond_8

    .line 312
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimIcon(I)V

    .line 313
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    .line 311
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 315
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0

    .line 316
    .end local v7           #i:I
    :cond_9
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 320
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mDefaultSubscription:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshViews(I)V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V
    .locals 10
    .parameter "cluster"
    .parameter "subscription"

    .prologue
    const/4 v9, 0x1

    .line 237
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAppopsStrictEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 243
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v2, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    move-object v0, p1

    move v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;II)V

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_3

    .line 253
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    move-object v0, p1

    move v1, v9

    move v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;II)V

    .line 273
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setIsAirplaneMode(ZI)V

    .line 274
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_1

    .line 263
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v2, v0, p2

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v3, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v4, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    aget-object v5, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v6, v0, p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v7, v0, p2

    move-object v0, p1

    move v8, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v0, p2

    goto :goto_3
.end method

.method protected refreshViews(I)V
    .locals 12
    .parameter

    .prologue
    const v10, 0x7f02014d

    const v9, 0x7f0a00c6

    const/16 v8, 0x8

    const/4 v4, 0x0

    .line 919
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 921
    const-string v1, ""

    .line 922
    const-string v0, ""

    .line 923
    const-string v0, ""

    .line 925
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshViews subscription ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mMSimDataConnected ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshViews mMSimDataActivity ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v0, :cond_4

    .line 929
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aput v4, v2, p1

    aput v4, v0, p1

    .line 930
    const-string v0, ""

    .line 982
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_a

    .line 983
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 984
    const v1, 0x7f0a00c7

    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 986
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 1008
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    aput v3, v2, p1

    .line 1010
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    aput v3, v2, p1

    .line 1011
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    aput-object v3, v2, p1

    move-object v2, v1

    .line 1021
    :goto_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v3, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1023
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    aput v6, v3, p1

    .line 1024
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00a9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, p1

    .line 1028
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    const/16 v6, 0x9

    if-ne v3, v6, :cond_c

    const/4 v3, 0x1

    .line 1030
    :goto_3
    if-eqz v3, :cond_1

    .line 1032
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1035
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p1

    if-eqz v6, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v6

    if-nez v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimServiceState:[Landroid/telephony/ServiceState;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    if-nez v6, :cond_f

    .line 1041
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionPhoneSignal:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v7, 0x7f0a00aa

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, p1

    .line 1043
    const v3, 0x7f020179

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 1044
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v7, p1

    aput v4, v6, p1

    aput v4, v3, p1

    .line 1046
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aput v4, v3, p1

    .line 1049
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v3, :cond_d

    .line 1051
    const-string v0, ""

    .line 1065
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v3, p1

    .line 1066
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aput v4, v3, p1

    .line 1068
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v5, v5, p1

    aput v5, v3, p1

    move-object v3, v2

    move-object v2, v0

    .line 1092
    :goto_5
    const-string v5, "StatusBar.MSimNetworkController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshViews connected={"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_14

    const-string v0, " wifi"

    :goto_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_15

    const-string v0, " data"

    :goto_7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " } level="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    if-nez v0, :cond_16

    const-string v0, "??"

    :goto_8
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimcombinedSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v6, v6, p1

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimcombinedActivityIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mAirplaneMode="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataActivity="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v6, v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimPhoneSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataDirectionIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataSignalIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mMSimDataTypeIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mNoMSimIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v6, v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mWifiIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " mBluetoothTetherIconId=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v5, v5, p1

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v5, v5, p1

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-ne v0, v5, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v5, v5, p1

    if-ne v0, v5, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_18

    .line 1127
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mSimSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;

    .line 1128
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/MSimNetworkController$MSimSignalCluster;I)V

    goto :goto_9

    .line 940
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_5

    .line 941
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 954
    :goto_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_8

    .line 955
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 956
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataActivity:[I

    aget v1, v1, p1

    packed-switch v1, :pswitch_data_0

    .line 967
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aput v4, v1, p1

    .line 972
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 974
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p1

    aput v2, v1, p1

    .line 975
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v2, v2, p1

    aput-object v2, v1, p1

    move-object v1, v0

    goto/16 :goto_0

    .line 942
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_7

    .line 943
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->hasService(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 944
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_a

    .line 946
    :cond_6
    const-string v0, ""

    goto :goto_a

    .line 949
    :cond_7
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 958
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    const v2, 0x7f02017a

    aput v2, v1, p1

    goto :goto_b

    .line 961
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    const v2, 0x7f02017d

    aput v2, v1, p1

    goto :goto_b

    .line 964
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    const v2, 0x7f02017b

    aput v2, v1, p1

    goto :goto_b

    .line 978
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimMobileActivityIconId:[I

    aput v4, v2, p1

    goto/16 :goto_0

    .line 988
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "xxxxXXXXxxxxXXXX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 992
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_1

    .line 1003
    :pswitch_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 994
    :pswitch_4
    const v2, 0x7f020182

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 997
    :pswitch_5
    const v2, 0x7f020189

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1000
    :pswitch_6
    const v2, 0x7f020183

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1013
    :cond_a
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_b

    .line 1014
    const-string v2, ""

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_2

    .line 1016
    :cond_b
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_2

    :cond_c
    move v3, v4

    .line 1028
    goto/16 :goto_3

    .line 1053
    :cond_d
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_e

    .line 1055
    const-string v1, ""

    .line 1061
    :goto_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    aput-object v5, v3, p1

    .line 1063
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v5, v5, p1

    aput v5, v3, p1

    goto/16 :goto_4

    .line 1057
    :cond_e
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1059
    goto :goto_c

    .line 1070
    :cond_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataConnected:[Z

    aget-boolean v6, v6, p1

    if-nez v6, :cond_2c

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v6, :cond_2c

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v6, :cond_2c

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v6, :cond_2c

    if-nez v3, :cond_2c

    .line 1074
    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1077
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataSignalIconId:[I

    aget v2, v2, p1

    :goto_d
    aput v2, v5, p1

    .line 1079
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v2, v2, p1

    :goto_e
    aput-object v2, v5, p1

    .line 1082
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v4, v2, p1

    .line 1083
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1084
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->isCdmaEri(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1085
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v10, v2, p1

    move-object v2, v0

    goto/16 :goto_5

    .line 1077
    :cond_10
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_d

    .line 1079
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_e

    .line 1087
    :cond_12
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1088
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aput v10, v2, p1

    :cond_13
    move-object v2, v0

    goto/16 :goto_5

    .line 1092
    :cond_14
    const-string v0, ""

    goto/16 :goto_6

    :cond_15
    const-string v0, ""

    goto/16 :goto_7

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 1130
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .line 1131
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->notifySignalsChangedCallbacks(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_f

    .line 1135
    :cond_18
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eq v0, v5, :cond_19

    .line 1136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 1140
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_1b

    .line 1141
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastPhoneSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneSignalIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1143
    :goto_10
    if-ge v5, v6, :cond_1b

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1145
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    if-nez v7, :cond_1a

    .line 1146
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1143
    :goto_11
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_10

    .line 1148
    :cond_1a
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1149
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1150
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 1156
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_1c

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataDirectionIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1159
    :goto_12
    if-ge v5, v6, :cond_1c

    .line 1160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1161
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataDirectionIconId:[I

    aget v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1162
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1159
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_12

    .line 1166
    :cond_1c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_1d

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastSimIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mNoMSimIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1171
    :cond_1d
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-eq v0, v5, :cond_1f

    .line 1172
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 1173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1174
    :goto_13
    if-ge v5, v6, :cond_1f

    .line 1175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1176
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    if-nez v7, :cond_1e

    .line 1177
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1174
    :goto_14
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_13

    .line 1179
    :cond_1e
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1180
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1181
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_14

    .line 1187
    :cond_1f
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-eq v0, v5, :cond_21

    .line 1188
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 1189
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1190
    :goto_15
    if-ge v5, v6, :cond_21

    .line 1191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1192
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    if-nez v7, :cond_20

    .line 1193
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1190
    :goto_16
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_15

    .line 1195
    :cond_20
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1197
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 1202
    :cond_21
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_22

    .line 1204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastCombinedSignalIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1206
    :goto_17
    if-ge v5, v6, :cond_22

    .line 1207
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1208
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedSignalIconId:[I

    aget v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1209
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionCombinedSignal:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1206
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_17

    .line 1214
    :cond_22
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    aget v0, v0, p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_24

    .line 1215
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimLastDataTypeIconId:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v5, v5, p1

    aput v5, v0, p1

    .line 1216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1217
    :goto_18
    if-ge v5, v6, :cond_24

    .line 1218
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1219
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v7, v7, p1

    if-nez v7, :cond_23

    .line 1220
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1217
    :goto_19
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_18

    .line 1222
    :cond_23
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1223
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimDataTypeIconId:[I

    aget v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1224
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_19

    .line 1230
    :cond_24
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v5, v5, p1

    if-eq v0, v5, :cond_26

    .line 1232
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changing data overlay icon id to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 1236
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1237
    :goto_1a
    if-ge v5, v6, :cond_26

    .line 1238
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1239
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v7, v7, p1

    if-nez v7, :cond_25

    .line 1240
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1237
    :goto_1b
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1a

    .line 1242
    :cond_25
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1243
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimcombinedActivityIconId:[I

    aget v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1244
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimContentDescriptionDataType:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1b

    .line 1250
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1251
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 1253
    :goto_1c
    if-ge v5, v6, :cond_27

    .line 1254
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1255
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1c

    .line 1260
    :cond_27
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v4

    .line 1261
    :goto_1d
    if-ge v3, v5, :cond_29

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1263
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1264
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 1265
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1261
    :goto_1e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    .line 1267
    :cond_28
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1e

    .line 1272
    :cond_29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->setCarrierText()V

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v4

    .line 1274
    :goto_1f
    if-ge v1, v3, :cond_2b

    .line 1275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1276
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1277
    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1278
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1274
    :goto_20
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 1280
    :cond_2a
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_20

    .line 1283
    :cond_2b
    return-void

    :cond_2c
    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_5

    .line 956
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 992
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 217
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v1

    .line 218
    .local v1, numPhones:I
    const-string v2, "phone_msim"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/MSimTelephonyManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    .line 219
    new-array v2, v1, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 220
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v3

    aput-object v3, v2, v0

    .line 222
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mPhone:Landroid/telephony/MSimTelephonyManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v3, v3, v0

    const/16 v4, 0x1e1

    invoke-virtual {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 875
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateConnectivity: intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 880
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 883
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 884
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    .line 885
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 886
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 892
    :goto_1
    const-string v0, "inetCondition"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 895
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: networkInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateConnectivity: connectionStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const/16 v4, 0x32

    if-le v0, v4, :cond_2

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    .line 900
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 901
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 907
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateWimaxIcons()V

    .line 908
    :goto_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 909
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataNetType(I)V

    .line 910
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 911
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateTelephonySignalStrength(I)V

    .line 908
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move v0, v2

    .line 883
    goto :goto_0

    .line 888
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v2

    .line 899
    goto :goto_2

    .line 903
    :cond_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto :goto_3

    .line 913
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateWifiIcons()V

    .line 914
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 846
    const-string v1, "StatusBar.MSimNetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkName showSpn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showPlmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    const/4 v1, 0x0

    .line 851
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 852
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    .line 855
    :cond_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 856
    if-eqz v1, :cond_1

    .line 857
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    :cond_1
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    :goto_0
    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p5

    .line 867
    :goto_1
    const-string v0, "StatusBar.MSimNetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMSimNetworkName[subscription] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    aget-object v2, v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subscription "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-void

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimNetworkName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v1, v0, p5

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 495
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, stateExtra:Ljava/lang/String;
    const-string v4, "subscription"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 498
    .local v3, sub:I
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState for subscription :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const-string v4, "ABSENT"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 500
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 521
    .local v1, simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :goto_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v4, v4, v3

    if-eq v1, v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aput-object v1, v4, v3

    .line 523
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateCarrierText(I)V

    .line 524
    const-string v4, "StatusBar.MSimNetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimState simState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->mMSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateSimIcon(I)V

    .line 527
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/MSimNetworkController;->updateDataIcon(I)V

    .line 528
    return-void

    .line 502
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 503
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 505
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_2
    const-string v4, "LOCKED"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 506
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, lockedReason:Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 509
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 511
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 512
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 515
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0

    .line 518
    .end local v0           #lockedReason:Ljava/lang/String;
    .end local v1           #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .restart local v1       #simState:Lcom/android/internal/telephony/IccCardConstants$State;
    goto :goto_0
.end method
