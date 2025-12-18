.class public Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;
.super Ljava/lang/Object;
.source "ImsLocationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wfo/impl/ImsLocationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationInfo"
.end annotation


# instance fields
.field mAccountId:I

.field mAccuracy:F

.field mAltitude:D

.field mBroadcastFlag:I

.field mCity:Ljava/lang/String;

.field mConfidence:I

.field mCountryCode:Ljava/lang/String;

.field mLatitude:D

.field mLongitude:D

.field mMajorAxisAccuracy:F

.field mMethod:Ljava/lang/String;

.field mMinorAxisAccuracy:F

.field mSimIdx:I

.field mState:Ljava/lang/String;

.field mTime:J

.field mVericalAxisAccuracy:F

.field mZip:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDF)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/ImsLocationHandler;
    .param p2, "simIdx"    # I
    .param p3, "accountId"    # I
    .param p4, "broadcastFlag"    # I
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "accuracy"    # F

    .line 348
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 341
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 342
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 343
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 349
    iput p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    .line 350
    iput p3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    .line 351
    iput p4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mConfidence:I

    .line 353
    iput-wide p5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 354
    iput-wide p7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 355
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 356
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 357
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 358
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 360
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    .line 361
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/wfo/impl/ImsLocationHandler;IIIDDFI)V
    .locals 2
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/ImsLocationHandler;
    .param p2, "simIdx"    # I
    .param p3, "accountId"    # I
    .param p4, "broadcastFlag"    # I
    .param p5, "latitude"    # D
    .param p7, "longitude"    # D
    .param p9, "accuracy"    # F
    .param p10, "confidence"    # I

    .line 364
    iput-object p1, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    .line 341
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    .line 342
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    .line 343
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    .line 344
    iput-object v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    .line 365
    iput p2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    .line 366
    iput p3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    .line 367
    iput p4, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    .line 368
    iput p10, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mConfidence:I

    .line 369
    iput-wide p5, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLatitude:D

    .line 370
    iput-wide p7, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mLongitude:D

    .line 371
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAltitude:D

    .line 372
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    .line 373
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMajorAxisAccuracy:F

    .line 374
    iput p9, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMinorAxisAccuracy:F

    .line 375
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    .line 376
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    .line 377
    return-void
.end method


# virtual methods
.method public getSimIdx()I
    .locals 1

    .line 402
    iget v0, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 382
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[LocationInfo objId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mSimIdx:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", transationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccountId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", accuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mAccuracy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", confidence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mConfidence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", vericalAxisAccuracy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mVericalAxisAccuracy:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", broadcastFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mBroadcastFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", city: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCity:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mState:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", zip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mZip:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->this$0:Lcom/mediatek/wfo/impl/ImsLocationHandler;

    iget-object v3, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mCountryCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mediatek/wfo/impl/ImsLocationHandler;->-$$Nest$mmaskString(Lcom/mediatek/wfo/impl/ImsLocationHandler;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/wfo/impl/ImsLocationHandler$LocationInfo;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
