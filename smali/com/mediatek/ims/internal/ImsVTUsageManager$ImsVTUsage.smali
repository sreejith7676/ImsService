.class public Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;
.super Ljava/lang/Object;
.source "ImsVTUsageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/ImsVTUsageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsVTUsage"
.end annotation


# static fields
.field public static final STATE_RX:I = 0x2

.field public static final STATE_TX:I = 0x1

.field public static final STATE_TXRX:I = 0x3


# instance fields
.field private mLteRxUsage:J

.field private mLteTxUsage:J

.field private mLteUsage:J

.field private mUsedForName:Ljava/lang/String;

.field private mWifiRxUsage:J

.field private mWifiTxUsage:J

.field private mWifiUsage:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mUsedForName:Ljava/lang/String;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 95
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 96
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 97
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 98
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 99
    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsVTUsage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJJJJ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "lteTx"    # J
    .param p4, "lteRx"    # J
    .param p6, "lteTxRx"    # J
    .param p8, "wifiTx"    # J
    .param p10, "wifiRx"    # J
    .param p12, "wifiTxRx"    # J

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mUsedForName:Ljava/lang/String;

    .line 109
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 110
    iput-wide p4, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 111
    iput-wide p6, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 113
    iput-wide p8, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 114
    iput-wide p10, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 115
    iput-wide p12, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsVTUsage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "usage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mUsedForName:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 124
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 125
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 127
    invoke-virtual {p2, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 128
    invoke-virtual {p2, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 129
    invoke-virtual {p2, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsVTUsage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method


# virtual methods
.method public getLteUsage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 135
    const-wide/16 v0, 0x0

    .line 137
    .local v0, "usage":J
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 138
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    goto :goto_0

    .line 140
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 141
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    goto :goto_0

    .line 143
    :cond_1
    const/4 v2, 0x3

    if-ne v2, p1, :cond_2

    .line 144
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 147
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public getWifiUsage(I)J
    .locals 3
    .param p1, "state"    # I

    .line 151
    const-wide/16 v0, 0x0

    .line 153
    .local v0, "usage":J
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 154
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    goto :goto_0

    .line 156
    :cond_0
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 157
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    goto :goto_0

    .line 159
    :cond_1
    const/4 v2, 0x3

    if-ne v2, p1, :cond_2

    .line 160
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 163
    :cond_2
    :goto_0
    return-wide v0
.end method

.method public setAllUsage(JJJJJJ)V
    .locals 2
    .param p1, "lteTx"    # J
    .param p3, "lteRx"    # J
    .param p5, "lteTxRx"    # J
    .param p7, "wifiTx"    # J
    .param p9, "wifiRx"    # J
    .param p11, "wifiTxRx"    # J

    .line 196
    iput-wide p1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 197
    iput-wide p3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 198
    iput-wide p5, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 200
    iput-wide p7, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 201
    iput-wide p9, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 202
    iput-wide p11, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setAllUsage]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public setLteUsage(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "usage"    # J

    .line 167
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 168
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    goto :goto_0

    .line 170
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 171
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 174
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 177
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setLTEUsage] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public setWifiUsage(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "usage"    # J

    .line 181
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 182
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    goto :goto_0

    .line 184
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 185
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    goto :goto_0

    .line 187
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    .line 188
    iput-wide p2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 191
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setWifiUsage] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public subtraction(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 7
    .param p1, "subUsage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 220
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v3

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 221
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v4

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 222
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v5

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 224
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    invoke-virtual {p1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v5

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 225
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    invoke-virtual {p1, v3}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 226
    iget-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    invoke-virtual {p1, v4}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[subtraction]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mUsedForName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] lteTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lteRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lteTxRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiTx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifiTxRx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFrom(Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;)V
    .locals 5
    .param p1, "usage"    # Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteTxUsage:J

    .line 209
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteRxUsage:J

    .line 210
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getLteUsage(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mLteUsage:J

    .line 212
    invoke-virtual {p1, v0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiTxUsage:J

    .line 213
    invoke-virtual {p1, v1}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiRxUsage:J

    .line 214
    invoke-virtual {p1, v2}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->getWifiUsage(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->mWifiUsage:J

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateFrom]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/ims/internal/ImsVTUsageManager$ImsVTUsage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsVT Usage"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method
