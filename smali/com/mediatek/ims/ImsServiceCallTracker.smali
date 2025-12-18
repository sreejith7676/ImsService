.class public Lcom/mediatek/ims/ImsServiceCallTracker;
.super Ljava/lang/Object;
.source "ImsServiceCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;
    }
.end annotation


# static fields
.field private static final CALL_MSG_TYPE_ACTIVE:I = 0x84

.field private static final CALL_MSG_TYPE_ACTIVE_BY_REMOTE:I = 0x88

.field private static final CALL_MSG_TYPE_ALERT:I = 0x2

.field private static final CALL_MSG_TYPE_DISCONNECTED:I = 0x85

.field private static final CALL_MSG_TYPE_HELD:I = 0x83

.field private static final CALL_MSG_TYPE_HELD_BY_REMOTE:I = 0x87

.field private static final CALL_MSG_TYPE_ID_ASSIGN:I = 0x82

.field private static final CALL_MSG_TYPE_MT:I = 0x0

.field private static final IMS_VIDEO:I = 0x15

.field private static final IMS_VIDEO_CONF:I = 0x17

.field private static final IMS_VIDEO_CONF_PARTS:I = 0x19

.field private static final IMS_VOICE:I = 0x14

.field private static final IMS_VOICE_CONF:I = 0x16

.field private static final IMS_VOICE_CONF_PARTS:I = 0x18

.field private static final INVALID_CALL:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsServiceCT"

.field private static final PROP_FORCE_DEBUG_KEY:Ljava/lang/String; = "persist.vendor.log.tel_dbg"

.field private static final SENLOG:Z

.field private static final TELDBG:Z

.field public static final UID_VIDEO_RTP:I = -0xa

.field private static mImsServiceCTs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/mediatek/ims/ImsServiceCallTracker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INTENT_VTDATA_ALERT_REACHED:Ljava/lang/String;

.field private mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/ImsCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallDataUsageHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mEnableVolteForImsEcc:Z

.field private mEnableVowifiForImsEcc:Z

.field private mOngoingMergeCallIds:[Ljava/lang/String;

.field private mPhoneId:I

.field private mRemainingAlertQuota:J

.field private final mVtDataUsageProvider:Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

.field private volatile mVtDataUsageSnapshot:Landroid/net/NetworkStats;

.field private volatile mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->SENLOG:Z

    .line 76
    const-string v0, "persist.vendor.log.tel_dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    .line 102
    iput-boolean v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVowifiForImsEcc:Z

    .line 103
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mOngoingMergeCallIds:[Ljava/lang/String;

    .line 108
    const-string v0, "com.motorola.internal.intent.action.VTDATA_ALERT_REACHED"

    iput-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->INTENT_VTDATA_ALERT_REACHED:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    .line 707
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 708
    iput-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 710
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mRemainingAlertQuota:J

    .line 711
    new-instance v0, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

    invoke-direct {v0, p0}, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;-><init>(Lcom/mediatek/ims/ImsServiceCallTracker;)V

    iput-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageProvider:Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

    .line 123
    iput p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/ims/ImsServiceCallTracker;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/ims/ImsServiceCallTracker;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/ims/ImsServiceCallTracker;)Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageProvider:Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ims/ImsServiceCallTracker;Landroid/net/NetworkStats;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/ims/ImsServiceCallTracker;
    .param p1, "x1"    # Landroid/net/NetworkStats;

    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getTotalBytesInNetworkStats(Landroid/net/NetworkStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mediatek/ims/ImsServiceCallTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsServiceCallTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/ims/ImsServiceCallTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 70
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallDataUsageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/ims/ImsServiceCallTracker;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/ims/ImsServiceCallTracker;
    .param p1, "x1"    # J

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->updateAlertQuota(J)V

    return-void
.end method

.method public static getInstance(I)Lcom/mediatek/ims/ImsServiceCallTracker;
    .locals 2
    .param p0, "phoneId"    # I

    .line 115
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    new-instance v1, Lcom/mediatek/ims/ImsServiceCallTracker;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/ImsServiceCallTracker;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    :cond_0
    sget-object v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsServiceCallTracker;

    return-object v0
.end method

.method private getTotalBytesInNetworkStats(Landroid/net/NetworkStats;)J
    .locals 8
    .param p1, "ns"    # Landroid/net/NetworkStats;

    .line 825
    invoke-virtual {p1}, Landroid/net/NetworkStats;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 826
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/NetworkStats$Entry;>;"
    const-wide/16 v1, 0x0

    .line 827
    .local v1, "total":J
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 828
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStats$Entry;

    .line 829
    .local v3, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getRxBytes()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/net/NetworkStats$Entry;->getTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    add-long/2addr v1, v4

    .line 830
    .end local v3    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_0

    .line 831
    :cond_0
    return-wide v1
.end method

.method private getVtInterface(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vt_data0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isEccExistOnAnySlot()Z
    .locals 4

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 365
    sget-object v1, Lcom/mediatek/ims/ImsServiceCallTracker;->mImsServiceCTs:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsServiceCallTracker;

    .line 366
    .local v1, "imsServiceCT":Lcom/mediatek/ims/ImsServiceCallTracker;
    const/4 v2, 0x0

    .line 368
    .local v2, "isEccExist":Z
    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->isEccExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 370
    const/4 v3, 0x1

    return v3

    .line 364
    .end local v1    # "imsServiceCT":Lcom/mediatek/ims/ImsServiceCallTracker;
    .end local v2    # "isEccExist":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private logWithPhoneId(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 694
    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    if-nez v0, :cond_0

    return-void

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PhoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceCT"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-void
.end method

.method public static sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 699
    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->SENLOG:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/mediatek/ims/ImsServiceCallTracker;->TELDBG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 702
    :cond_0
    const-string v0, "[hidden]"

    return-object v0

    .line 700
    :cond_1
    :goto_0
    const-string v0, "ImsServiceCT"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateAlertQuota(J)V
    .locals 3
    .param p1, "newQuota"    # J

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAlertQuota:newQuota="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mRemainingAlertQuota:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 753
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 756
    iget-wide v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mRemainingAlertQuota:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 757
    :cond_0
    iput-wide p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mRemainingAlertQuota:J

    .line 758
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 759
    const-string v0, "onAlertReached"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageProvider:Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

    invoke-virtual {v0}, Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;->notifyAlertReached()V

    .line 764
    :cond_1
    return-void

    .line 754
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quota value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public InitVTDataUsage(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    iput-object p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 130
    .local v0, "currentTime":J
    new-instance v2, Landroid/net/NetworkStats;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 131
    new-instance v2, Landroid/net/NetworkStats;

    invoke-direct {v2, v0, v1, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 132
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    .line 133
    const-string v3, "netstats"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/NetworkStatsManager;

    .line 135
    .local v2, "statsManager":Landroid/app/usage/NetworkStatsManager;
    const-string v3, "ImsServiceClassTracker"

    iget-object v4, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageProvider:Lcom/mediatek/ims/ImsServiceCallTracker$VtDataUsageProvider;

    invoke-virtual {v2, v3, v4}, Landroid/app/usage/NetworkStatsManager;->registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/NetworkStatsProvider;)V

    .line 136
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallDataUsageHandler:Landroid/os/Handler;

    .line 138
    return-void
.end method

.method public getAllCallInfos()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/mediatek/ims/ImsCallInfo;",
            ">;"
        }
    .end annotation

    .line 842
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getCallInfo(Lcom/mediatek/ims/ImsCallInfo$State;)Lcom/mediatek/ims/ImsCallInfo;
    .locals 5
    .param p1, "state"    # Lcom/mediatek/ims/ImsCallInfo$State;

    .line 236
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 239
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallInfo(state) : callID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " call num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 240
    invoke-static {v4}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " call State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 242
    iget-object v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, p1, :cond_0

    .line 243
    return-object v2

    .line 245
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    :cond_0
    goto :goto_0

    .line 246
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallInfo(Ljava/lang/String;)Lcom/mediatek/ims/ImsCallInfo;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 217
    if-nez p1, :cond_0

    .line 218
    const-string v0, "getCallInfo(callId) : callID is null"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 224
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    const-string v1, "getCallInfo(callId) : callID: "

    if-eqz v0, :cond_1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    .line 226
    invoke-static {v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " call State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    goto :goto_0

    .line 228
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 231
    :goto_0
    return-object v0
.end method

.method public getConferenceHostCall()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 283
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 284
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 285
    iget-object v0, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0

    .line 287
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentCallCount()I
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 293
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getDialdingCall()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 5

    .line 262
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 263
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 264
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, v4, :cond_0

    .line 265
    iget-object v0, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0

    .line 267
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableVolteForImsEcc()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    return v0
.end method

.method public getEnableVowifiForImsEcc()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVowifiForImsEcc:Z

    return v0
.end method

.method public getFgCall()Lcom/mediatek/ims/ImsCallSessionProxy;
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 273
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 274
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, v4, :cond_0

    .line 275
    iget-object v0, v2, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    return-object v0

    .line 277
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 278
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParticipantCallId(Ljava/lang/String;)I
    .locals 5
    .param p1, "callNumber"    # Ljava/lang/String;

    .line 297
    const/4 v0, -0x1

    .line 299
    .local v0, "participantCallId":I
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 300
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/ims/ImsCallInfo;

    .line 301
    .local v3, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-object v4, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallNum:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 302
    iget-object v1, v3, Lcom/mediatek/ims/ImsCallInfo;->mCallId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 303
    goto :goto_1

    .line 305
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v3    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 307
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getParticipantCallId() : participantCallId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 309
    return v0
.end method

.method public getSelfAddressList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 440
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 441
    .local v0, "selfUri":[Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 442
    const/4 v1, 0x0

    return-object v1

    .line 444
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "selfAddressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 446
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "address":Ljava/lang/String;
    const-string v4, "[@;:]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 448
    .local v4, "numberParts":[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 449
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSelfAddress() selfId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v7, v4, v6

    invoke-static {v7}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 450
    aget-object v5, v4, v6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "numberParts":[Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 452
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public handleCallDataUsageChanged(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 80
    .param p1, "subId"    # I
    .param p2, "deltaUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 770
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 771
    .local v2, "currentTime":J
    const/16 v76, 0x0

    .local v76, "isRoaming":I
    move/from16 v64, v76

    move/from16 v46, v76

    move/from16 v28, v76

    move/from16 v10, v76

    .line 772
    new-instance v4, Landroid/net/NetworkStats;

    const/4 v14, 0x1

    invoke-direct {v4, v2, v3, v14}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 773
    .local v4, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    iget-object v5, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v4, v5}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v15

    .line 775
    .end local v4    # "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    .local v15, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    new-instance v22, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, v22

    .line 776
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getVtInterface(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x1

    .line 779
    const/4 v12, 0x2

    invoke-virtual {v1, v12}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v16

    move-wide/from16 v12, v16

    const-wide/16 v16, 0x0

    move v6, v14

    move-object/from16 v77, v15

    .end local v15    # "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    .local v77, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    move-wide/from16 v14, v16

    .line 780
    invoke-virtual {v1, v6}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-wide/from16 v78, v2

    move v2, v6

    const/4 v6, -0x1

    .end local v2    # "currentTime":J
    .local v78, "currentTime":J
    invoke-direct/range {v4 .. v21}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object/from16 v3, v22

    .line 781
    .local v3, "mobileEntry":Landroid/net/NetworkStats$Entry;
    new-instance v4, Landroid/net/NetworkStats$Entry;

    move-object/from16 v22, v4

    const-string v23, "wlan0"

    const/16 v24, -0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x1

    .line 785
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v30

    const-wide/16 v32, 0x0

    .line 786
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x0

    invoke-direct/range {v22 .. v39}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 788
    .local v4, "wifiEntry":Landroid/net/NetworkStats$Entry;
    move-object/from16 v6, v77

    .end local v77    # "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    .local v6, "vtDataUsageSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v6, v3}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 789
    invoke-virtual {v6, v4}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v6

    .line 791
    iput-object v6, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageSnapshot:Landroid/net/NetworkStats;

    .line 794
    new-instance v7, Landroid/net/NetworkStats;

    move-wide/from16 v8, v78

    .end local v78    # "currentTime":J
    .local v8, "currentTime":J
    invoke-direct {v7, v8, v9, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 796
    .local v7, "vtDataUsageUidSnapshot":Landroid/net/NetworkStats;
    iget-object v10, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v7, v10}, Landroid/net/NetworkStats;->add(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v7

    .line 797
    new-instance v10, Landroid/net/NetworkStats$Entry;

    move-object/from16 v40, v10

    .line 798
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->getVtInterface(I)Ljava/lang/String;

    move-result-object v41

    const/16 v42, -0xa

    const/16 v43, 0x1

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v47, 0x1

    .line 801
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v48

    const-wide/16 v50, 0x0

    .line 802
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v52

    const-wide/16 v54, 0x0

    const-wide/16 v56, 0x0

    invoke-direct/range {v40 .. v57}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    .line 803
    .local v10, "mobileUidEntry":Landroid/net/NetworkStats$Entry;
    new-instance v11, Landroid/net/NetworkStats$Entry;

    move-object/from16 v58, v11

    const-string v59, "wlan0"

    const/16 v60, -0xa

    const/16 v61, 0x1

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v65, 0x1

    .line 807
    invoke-virtual {v1, v5}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v66

    const-wide/16 v68, 0x0

    .line 808
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v70

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    invoke-direct/range {v58 .. v75}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    move-object v2, v11

    .line 810
    .local v2, "wifiUidEntry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v7, v10}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 811
    .end local v7    # "vtDataUsageUidSnapshot":Landroid/net/NetworkStats;
    .local v5, "vtDataUsageUidSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v5, v2}, Landroid/net/NetworkStats;->addEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v5

    .line 813
    iput-object v5, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mVtDataUsageUidSnapshot:Landroid/net/NetworkStats;

    .line 814
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v11

    invoke-virtual {v1, v7}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 816
    .local v11, "usedAlertQuota":J
    iget-wide v13, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mRemainingAlertQuota:J

    move-object v7, v2

    .end local v2    # "wifiUidEntry":Landroid/net/NetworkStats$Entry;
    .local v7, "wifiUidEntry":Landroid/net/NetworkStats$Entry;
    const-wide/16 v1, 0x0

    cmp-long v15, v13, v1

    if-lez v15, :cond_0

    cmp-long v15, v11, v1

    if-lez v15, :cond_0

    .line 818
    sub-long/2addr v13, v11

    invoke-static {v13, v14, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 819
    .local v1, "newQuota":J
    invoke-direct {v0, v1, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->updateAlertQuota(J)V

    .line 821
    .end local v1    # "newQuota":J
    :cond_0
    return-void
.end method

.method public isConferenceCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 330
    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x18

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-eq v0, p1, :cond_1

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 331
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConferenceCallExist()Z
    .locals 4

    .line 401
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 402
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 403
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 404
    const/4 v0, 0x1

    return v0

    .line 406
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    goto :goto_0

    .line 407
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isConferenceCallHost(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 338
    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 341
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 339
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConferenceHostCallExist()Z
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 413
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 414
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    const/4 v0, 0x1

    return v0

    .line 417
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 418
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isEccExist()Z
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 380
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 381
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsEcc:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    const/4 v0, 0x1

    return v0

    .line 384
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 385
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isIgnoreUpdateStatus(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 194
    const-string v1, "isIgnoreUpdateStatus(callId) : callId is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 195
    return v0

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 198
    .local v1, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-eqz v1, :cond_1

    .line 199
    iget-boolean v0, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    return v0

    .line 201
    :cond_1
    return v0
.end method

.method public isInCall()Z
    .locals 5

    .line 346
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 347
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 348
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v4, v2, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 351
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 349
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .restart local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 352
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z
    .locals 2
    .param p1, "callInfo"    # Lcom/mediatek/ims/ImsCallInfo;

    .line 357
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v1, p1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iget-object v1, p1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 358
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isInMergeProgress(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mOngoingMergeCallIds:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mOngoingMergeCallIds:[Ljava/lang/String;

    array-length v3, v2

    const-string v4, "isInMergeProgress : Id :"

    if-ge v1, v3, :cond_2

    .line 162
    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " yes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 168
    return v0

    .line 158
    :cond_3
    :goto_1
    const-string v1, "isInMergeProgress : no merge call"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 159
    return v0
.end method

.method public isSelfAddress(Ljava/lang/String;)Z
    .locals 7
    .param p1, "addr"    # Ljava/lang/String;

    .line 422
    invoke-static {}, Lcom/mediatek/ims/internal/ImsXuiManager;->getInstance()Lcom/mediatek/ims/internal/ImsXuiManager;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/ims/internal/ImsXuiManager;->getSelfIdentifyUri(I)[Landroid/net/Uri;

    move-result-object v0

    .line 423
    .local v0, "selfUri":[Landroid/net/Uri;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 424
    return v1

    .line 426
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 427
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "address":Ljava/lang/String;
    const-string v4, "[@;:]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, "numberParts":[Ljava/lang/String;
    array-length v5, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 430
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSelfAddress() selfId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-static {v6}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " addr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 431
    invoke-static {p1}, Lcom/mediatek/ims/ImsServiceCallTracker;->sensitiveEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 430
    invoke-direct {p0, v5}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 432
    aget-object v5, v4, v1

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 433
    const/4 v1, 0x1

    return v1

    .line 426
    .end local v3    # "address":Ljava/lang/String;
    .end local v4    # "numberParts":[Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public isStkCall(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 181
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 182
    const-string v1, "isStkCall(callId) : callID is null"

    invoke-direct {p0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 183
    return v0

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 186
    .local v1, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-eqz v1, :cond_1

    .line 187
    iget-boolean v0, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsStkCall:Z

    return v0

    .line 189
    :cond_1
    return v0
.end method

.method public isVideoCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 322
    const/16 v0, 0x15

    if-eq v0, p1, :cond_1

    const/16 v0, 0x17

    if-eq v0, p1, :cond_1

    const/16 v0, 0x19

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 323
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoCallExist()Z
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 391
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 392
    .local v2, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    iget-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->isInCall(Lcom/mediatek/ims/ImsCallInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    const/4 v0, 0x1

    return v0

    .line 395
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mediatek/ims/ImsCallInfo;>;"
    .end local v2    # "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_0
    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCall(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 314
    const/16 v0, 0x14

    if-eq v0, p1, :cond_1

    const/16 v0, 0x16

    if-eq v0, p1, :cond_1

    const/16 v0, 0x18

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 315
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$onCallDataUsageChanged$0$com-mediatek-ims-ImsServiceCallTracker(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "deltaUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 766
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/ims/ImsServiceCallTracker;->handleCallDataUsageChanged(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    return-void
.end method

.method public onCallDataUsageChanged(ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "deltaUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 766
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallDataUsageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/ims/ImsServiceCallTracker$$ExternalSyntheticLambda0;-><init>(Lcom/mediatek/ims/ImsServiceCallTracker;ILcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 767
    return-void
.end method

.method public processCallInfoIndication([Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 25
    .param p1, "callInfo"    # [Ljava/lang/String;
    .param p2, "callSession"    # Lcom/mediatek/ims/ImsCallSessionProxy;
    .param p3, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 464
    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget-object v13, p1, v1

    .line 465
    .local v13, "callId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 466
    .local v14, "msgType":I
    const/4 v3, 0x5

    aget-object v4, p1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_0
    move v15, v3

    .line 467
    .local v15, "callMode":I
    const/4 v3, 0x6

    aget-object v16, p1, v3

    .line 469
    .local v16, "callNum":Ljava/lang/String;
    const/4 v3, 0x0

    .line 470
    .local v3, "isConference":Z
    invoke-virtual {v0, v15}, Lcom/mediatek/ims/ImsServiceCallTracker;->isConferenceCall(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 471
    const/4 v3, 0x1

    move v12, v3

    goto :goto_1

    .line 470
    :cond_1
    move v12, v3

    .line 474
    .end local v3    # "isConference":Z
    .local v12, "isConference":Z
    :goto_1
    const/4 v3, 0x0

    .line 475
    .local v3, "isConferenceHost":Z
    invoke-virtual {v0, v15}, Lcom/mediatek/ims/ImsServiceCallTracker;->isConferenceCallHost(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 476
    const/4 v3, 0x1

    move v11, v3

    goto :goto_2

    .line 475
    :cond_2
    move v11, v3

    .line 479
    .end local v3    # "isConferenceHost":Z
    .local v11, "isConferenceHost":Z
    :goto_2
    const/4 v3, 0x0

    .line 480
    .local v3, "isVideo":Z
    invoke-virtual {v0, v15}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 481
    const/4 v3, 0x1

    move v10, v3

    goto :goto_3

    .line 480
    :cond_3
    move v10, v3

    .line 484
    .end local v3    # "isVideo":Z
    .local v10, "isVideo":Z
    :goto_3
    const/4 v3, 0x0

    .line 485
    .local v3, "isEcc":Z
    invoke-virtual/range {p3 .. p3}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 486
    const/4 v3, 0x1

    move v9, v3

    goto :goto_4

    .line 485
    :cond_4
    move v9, v3

    .line 489
    .end local v3    # "isEcc":Z
    .local v9, "isEcc":Z
    :goto_4
    const/16 v17, 0x0

    .line 491
    .local v17, "isRemoteHold":Z
    const/16 v18, 0x0

    .line 492
    .local v18, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    const-string v3, ", isEcc = "

    const-string v4, ", isVideo = "

    const-string v5, ", isConferenceHost = "

    const-string v6, ", isConference = "

    const-string v7, ", callMode = "

    sparse-switch v14, :sswitch_data_0

    move/from16 v19, v9

    move/from16 v22, v10

    move/from16 v24, v11

    move/from16 v21, v12

    move/from16 v20, v14

    .end local v9    # "isEcc":Z
    .end local v10    # "isVideo":Z
    .end local v11    # "isConferenceHost":Z
    .end local v12    # "isConference":Z
    .end local v14    # "msgType":I
    .local v19, "isEcc":Z
    .local v20, "msgType":I
    .local v21, "isConference":Z
    .local v22, "isVideo":Z
    .local v24, "isConferenceHost":Z
    goto/16 :goto_6

    .line 642
    .end local v19    # "isEcc":Z
    .end local v20    # "msgType":I
    .end local v21    # "isConference":Z
    .end local v22    # "isVideo":Z
    .end local v24    # "isConferenceHost":Z
    .restart local v9    # "isEcc":Z
    .restart local v10    # "isVideo":Z
    .restart local v11    # "isConferenceHost":Z
    .restart local v12    # "isConference":Z
    .restart local v14    # "msgType":I
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCallInfoIndication() : CALL_MSG_TYPE_ACTIVE_BY_REMOTE => callId = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 650
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 651
    .end local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .local v2, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_5

    return-void

    .line 652
    :cond_5
    iput-boolean v1, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsRemoteHold:Z

    .line 653
    iget-object v1, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v13, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    move-object/from16 v18, v2

    move/from16 v19, v9

    move/from16 v22, v10

    move/from16 v24, v11

    move/from16 v21, v12

    move/from16 v20, v14

    goto/16 :goto_6

    .line 626
    .end local v2    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processCallInfoIndication() : CALL_MSG_TYPE_HELD_BY_REMOTE => callId = "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 634
    iget-object v1, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 635
    .end local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .local v1, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v1, :cond_6

    return-void

    .line 636
    :cond_6
    iput-boolean v2, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsRemoteHold:Z

    .line 637
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    move-object/from16 v18, v1

    move/from16 v19, v9

    move/from16 v22, v10

    move/from16 v24, v11

    move/from16 v21, v12

    move/from16 v20, v14

    goto/16 :goto_6

    .line 605
    .end local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCallInfoIndication() : CALL_MSG_TYPE_DISCONNECTED => callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 613
    iget-object v1, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 614
    .end local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v1, :cond_7

    return-void

    .line 615
    :cond_7
    sget-object v2, Lcom/mediatek/ims/ImsCallInfo$State;->DISCONNECTED:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 616
    iput-boolean v12, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 617
    iput-boolean v11, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 618
    iput-boolean v10, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 619
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    move-object/from16 v18, v1

    move/from16 v19, v9

    move/from16 v22, v10

    move/from16 v24, v11

    move/from16 v21, v12

    move/from16 v20, v14

    goto/16 :goto_6

    .line 586
    .end local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCallInfoIndication() : CALL_MSG_TYPE_ACTIVE => callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 594
    iget-object v1, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 595
    .end local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v1, :cond_8

    return-void

    .line 596
    :cond_8
    sget-object v2, Lcom/mediatek/ims/ImsCallInfo$State;->ACTIVE:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 597
    iput-boolean v12, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 598
    iput-boolean v11, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 599
    iput-boolean v10, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 600
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    move-object/from16 v18, v1

    move/from16 v19, v9

    move/from16 v22, v10

    move/from16 v24, v11

    move/from16 v21, v12

    move/from16 v20, v14

    goto/16 :goto_6

    .line 568
    .end local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCallInfoIndication() : CALL_MSG_TYPE_HELD => callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 576
    iget-object v1, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ims/ImsCallInfo;

    .line 577
    .end local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v1, :cond_9

    return-void

    .line 578
    :cond_9
    sget-object v2, Lcom/mediatek/ims/ImsCallInfo$State;->HOLDING:Lcom/mediatek/ims/ImsCallInfo$State;

    iput-object v2, v1, Lcom/mediatek/ims/ImsCallInfo;->mState:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 579
    iput-boolean v12, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 580
    iput-boolean v11, v1, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 581
    iget-object v2, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    move-object/from16 v18, v1

    move/from16 v19, v9

    move/from16 v22, v10

    move/from16 v24, v11

    move/from16 v21, v12

    move/from16 v20, v14

    goto/16 :goto_6

    .line 520
    .end local v1    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .restart local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCallInfoIndication() : CALL_MSG_TYPE_ID_ASSIGN => callId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 528
    sget-object v1, Lcom/mediatek/ims/ImsCallInfo$State;->ALERTING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 529
    .local v1, "state":Lcom/mediatek/ims/ImsCallInfo$State;
    const/4 v2, 0x0

    .line 530
    .local v2, "isStkCall":Z
    const/16 v3, 0x14

    if-ne v15, v3, :cond_a

    .line 531
    const/4 v2, 0x1

    move/from16 v19, v2

    goto :goto_5

    .line 530
    :cond_a
    move/from16 v19, v2

    .line 534
    .end local v2    # "isStkCall":Z
    .local v19, "isStkCall":Z
    :goto_5
    iget-object v8, v0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v7, Lcom/mediatek/ims/ImsCallInfo;

    move-object v2, v7

    move-object v3, v13

    move-object/from16 v4, v16

    move v5, v12

    move v6, v11

    move/from16 v20, v14

    move-object v14, v7

    .end local v14    # "msgType":I
    .restart local v20    # "msgType":I
    move v7, v10

    move-object v0, v8

    move v8, v9

    move/from16 v21, v9

    .end local v9    # "isEcc":Z
    .local v21, "isEcc":Z
    move/from16 v9, v19

    move/from16 v22, v10

    .end local v10    # "isVideo":Z
    .restart local v22    # "isVideo":Z
    move-object v10, v1

    move-object/from16 v23, v1

    move v1, v11

    .end local v11    # "isConferenceHost":Z
    .local v1, "isConferenceHost":Z
    .local v23, "state":Lcom/mediatek/ims/ImsCallInfo$State;
    move/from16 v11, v17

    move/from16 v24, v1

    move v1, v12

    .end local v12    # "isConference":Z
    .local v1, "isConference":Z
    .restart local v24    # "isConferenceHost":Z
    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v12}, Lcom/mediatek/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/mediatek/ims/ImsCallInfo$State;ZLcom/mediatek/ims/ImsCallSessionProxy;)V

    invoke-virtual {v0, v13, v14}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    move/from16 v19, v21

    move/from16 v21, v1

    goto/16 :goto_6

    .line 550
    .end local v1    # "isConference":Z
    .end local v19    # "isStkCall":Z
    .end local v20    # "msgType":I
    .end local v21    # "isEcc":Z
    .end local v22    # "isVideo":Z
    .end local v23    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    .end local v24    # "isConferenceHost":Z
    .restart local v9    # "isEcc":Z
    .restart local v10    # "isVideo":Z
    .restart local v11    # "isConferenceHost":Z
    .restart local v12    # "isConference":Z
    .restart local v14    # "msgType":I
    :sswitch_6
    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v24, v11

    move v1, v12

    move/from16 v20, v14

    .end local v9    # "isEcc":Z
    .end local v10    # "isVideo":Z
    .end local v11    # "isConferenceHost":Z
    .end local v12    # "isConference":Z
    .end local v14    # "msgType":I
    .restart local v1    # "isConference":Z
    .restart local v20    # "msgType":I
    .restart local v21    # "isEcc":Z
    .restart local v22    # "isVideo":Z
    .restart local v24    # "isConferenceHost":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCallInfoIndication() : CALL_MSG_TYPE_ALERT => callId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, v24

    .end local v24    # "isConferenceHost":Z
    .local v14, "isConferenceHost":Z
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, v22

    .end local v22    # "isVideo":Z
    .local v12, "isVideo":Z
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, v21

    .end local v21    # "isEcc":Z
    .local v11, "isEcc":Z
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v10, p0

    invoke-direct {v10, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 558
    iget-object v0, v10, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 559
    .end local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .local v0, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v0, :cond_b

    return-void

    .line 560
    :cond_b
    iput-boolean v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConference:Z

    .line 561
    iput-boolean v14, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsConferenceHost:Z

    .line 562
    iput-boolean v12, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 563
    iget-object v2, v10, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    move-object/from16 v18, v0

    move/from16 v21, v1

    move/from16 v19, v11

    move/from16 v22, v12

    move/from16 v24, v14

    goto/16 :goto_6

    .line 495
    .end local v0    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    .end local v1    # "isConference":Z
    .end local v20    # "msgType":I
    .restart local v9    # "isEcc":Z
    .restart local v10    # "isVideo":Z
    .local v11, "isConferenceHost":Z
    .local v12, "isConference":Z
    .local v14, "msgType":I
    .restart local v18    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :sswitch_7
    move v1, v12

    move/from16 v20, v14

    move v12, v10

    move v14, v11

    move-object v10, v0

    move v11, v9

    .end local v9    # "isEcc":Z
    .end local v10    # "isVideo":Z
    .restart local v1    # "isConference":Z
    .local v11, "isEcc":Z
    .local v12, "isVideo":Z
    .local v14, "isConferenceHost":Z
    .restart local v20    # "msgType":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processCallInfoIndication() : CALL_MSG_TYPE_MT => callId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 503
    sget-object v0, Lcom/mediatek/ims/ImsCallInfo$State;->INCOMING:Lcom/mediatek/ims/ImsCallInfo$State;

    .line 504
    .local v0, "state":Lcom/mediatek/ims/ImsCallInfo$State;
    iget-object v9, v10, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v8, Lcom/mediatek/ims/ImsCallInfo;

    const/16 v19, 0x0

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, v16

    move v5, v1

    move v6, v14

    move v7, v12

    move/from16 v21, v1

    move-object v1, v8

    .end local v1    # "isConference":Z
    .local v21, "isConference":Z
    move v8, v11

    move/from16 v24, v14

    move-object v14, v9

    .end local v14    # "isConferenceHost":Z
    .restart local v24    # "isConferenceHost":Z
    move/from16 v9, v19

    move-object v10, v0

    move/from16 v19, v11

    .end local v11    # "isEcc":Z
    .local v19, "isEcc":Z
    move/from16 v11, v17

    move/from16 v22, v12

    .end local v12    # "isVideo":Z
    .restart local v22    # "isVideo":Z
    move-object/from16 v12, p2

    invoke-direct/range {v2 .. v12}, Lcom/mediatek/ims/ImsCallInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/mediatek/ims/ImsCallInfo$State;ZLcom/mediatek/ims/ImsCallSessionProxy;)V

    invoke-virtual {v14, v13, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    nop

    .line 660
    .end local v0    # "state":Lcom/mediatek/ims/ImsCallInfo$State;
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x2 -> :sswitch_6
        0x82 -> :sswitch_5
        0x83 -> :sswitch_4
        0x84 -> :sswitch_3
        0x85 -> :sswitch_2
        0x87 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public processCallModeChangeIndication([Ljava/lang/String;)V
    .locals 5
    .param p1, "callModeInfo"    # [Ljava/lang/String;

    .line 668
    const/4 v0, -0x1

    .line 669
    .local v0, "callMode":I
    if-nez p1, :cond_0

    .line 670
    return-void

    .line 673
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 674
    .local v1, "callId":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 676
    :try_start_0
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 680
    goto :goto_0

    .line 677
    :catch_0
    move-exception v2

    .line 678
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "processCallModeChangeIndication() : callMode is not integer"

    invoke-direct {p0, v3}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 679
    return-void

    .line 682
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCallModeChangeIndication() :callId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 686
    iget-object v2, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/ims/ImsCallInfo;

    .line 687
    .local v2, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v2, :cond_2

    return-void

    .line 689
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->isVideoCall(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/mediatek/ims/ImsCallInfo;->mIsVideo:Z

    .line 690
    iget-object v3, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    return-void
.end method

.method public removeCallConnection(Ljava/lang/String;Lcom/mediatek/ims/ImsCallSessionProxy;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callSession"    # Lcom/mediatek/ims/ImsCallSessionProxy;

    .line 250
    if-eqz p1, :cond_1

    .line 251
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 252
    .local v0, "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    iget-object v1, v0, Lcom/mediatek/ims/ImsCallInfo;->mCallSession:Lcom/mediatek/ims/ImsCallSessionProxy;

    if-ne v1, p2, :cond_1

    .line 256
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v0    # "imsCallInfo":Lcom/mediatek/ims/ImsCallInfo;
    :cond_1
    return-void
.end method

.method public setEnableVolteForImsEcc(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 145
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVolteForImsEcc:Z

    .line 146
    return-void
.end method

.method public setEnableVowifiForImsEcc(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 153
    iput-boolean p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mEnableVowifiForImsEcc:Z

    .line 154
    return-void
.end method

.method public setIgnoreUpdateStatus(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ignore"    # Z

    .line 205
    if-nez p1, :cond_0

    .line 206
    const-string v0, "setIgnoreUpdateStatus(callId) : callId is null"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 207
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ims/ImsCallInfo;

    .line 210
    .local v0, "callInfo":Lcom/mediatek/ims/ImsCallInfo;
    if-eqz v0, :cond_1

    .line 211
    iput-boolean p2, v0, Lcom/mediatek/ims/ImsCallInfo;->mIsIgnoreUpdateStatus:Z

    .line 212
    iget-object v1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mCallConnections:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_1
    return-void
.end method

.method public setOngoingMergeCallIds([Ljava/lang/String;)V
    .locals 2
    .param p1, "callIds"    # [Ljava/lang/String;

    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string v0, "reset OngoingMergeCallIds"

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOngoingMergeCallIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/ims/ImsServiceCallTracker;->logWithPhoneId(Ljava/lang/String;)V

    .line 177
    :goto_0
    iput-object p1, p0, Lcom/mediatek/ims/ImsServiceCallTracker;->mOngoingMergeCallIds:[Ljava/lang/String;

    .line 178
    return-void
.end method
