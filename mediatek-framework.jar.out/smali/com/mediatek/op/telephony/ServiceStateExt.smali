.class public Lcom/mediatek/op/telephony/ServiceStateExt;
.super Ljava/lang/Object;
.source "ServiceStateExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IServiceStateExt;


# static fields
.field static final TAG:Ljava/lang/String; = "GSM"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public ignoreDomesticRoaming()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public isBroadcastEmmrrsPsResume(I)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isImeiLocked()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public isRegCodeRoaming(ZILjava/lang/String;)Z
    .locals 0
    .parameter "originalIsRoaming"
    .parameter "mccmnc"
    .parameter "numeric"

    .prologue
    .line 75
    return p1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 157
    const-string v0, "GSM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public mapGsmSignalDbm(II)I
    .locals 2
    .parameter "GsmRscpQdbm"
    .parameter "asu"

    .prologue
    .line 137
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v0, v1, -0x71

    .line 139
    .local v0, dBm:I
    return v0
.end method

.method public mapGsmSignalLevel(I)I
    .locals 2
    .parameter "asu"

    .prologue
    .line 126
    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    const/16 v1, 0x63

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 132
    .local v0, level:I
    :goto_0
    return v0

    .line 127
    .end local v0           #level:I
    :cond_1
    const/16 v1, 0xc

    if-lt p1, v1, :cond_2

    const/4 v0, 0x4

    .restart local v0       #level:I
    goto :goto_0

    .line 128
    .end local v0           #level:I
    :cond_2
    const/16 v1, 0x8

    if-lt p1, v1, :cond_3

    const/4 v0, 0x3

    .restart local v0       #level:I
    goto :goto_0

    .line 129
    .end local v0           #level:I
    :cond_3
    const/4 v1, 0x5

    if-lt p1, v1, :cond_4

    const/4 v0, 0x2

    .restart local v0       #level:I
    goto :goto_0

    .line 130
    .end local v0           #level:I
    :cond_4
    const/4 v0, 0x1

    .restart local v0       #level:I
    goto :goto_0
.end method

.method public needBrodcastACMT(II)Z
    .locals 1
    .parameter "error_type"
    .parameter "error_cause"

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public needEMMRRS()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public needIgnoredState(III)Z
    .locals 3
    .parameter "state"
    .parameter "new_state"
    .parameter "cause"

    .prologue
    const/4 v0, 0x1

    .line 99
    if-nez p1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 101
    const-string v1, "GSM"

    const-string v2, "set dontUpdateNetworkStateFlag for searching state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return v0

    .line 106
    :cond_0
    const/4 v1, -0x1

    if-eq p3, v1, :cond_1

    .line 107
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    .line 109
    const-string v1, "GSM"

    const-string v2, "set dontUpdateNetworkStateFlag for REG_DENIED with cause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_1
    const-string v0, "GSM"

    const-string v1, "clear dontUpdateNetworkStateFlag"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRejectCauseNotification(I)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onPollStateDone(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;II)V
    .locals 0
    .parameter "oldSS"
    .parameter "newSS"
    .parameter "oldGprsState"
    .parameter "newGprsState"

    .prologue
    .line 58
    return-void
.end method

.method public onUpdateSpnDisplay(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .parameter "plmn"
    .parameter "radioTechnology"

    .prologue
    .line 71
    return-object p1
.end method

.method public setEmergencyCallsOnly(II)I
    .locals 3
    .parameter "state"
    .parameter "cid"

    .prologue
    const/4 v0, -0x1

    .line 143
    if-eq p2, v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 145
    :cond_0
    const-string v1, "GSM"

    const-string v2, "No valid info to distinguish limited service and no service"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return v0

    .line 148
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    .line 149
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
