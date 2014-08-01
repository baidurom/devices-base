.class public Lcom/mediatek/op/telephony/PhoneNumberExt;
.super Ljava/lang/Object;
.source "PhoneNumberExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/IPhoneNumberExt;


# static fields
.field static final TAG:Ljava/lang/String; = "PhoneNumberExt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public isCustomizedEmergencyNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "number"
    .parameter "plusNumber"
    .parameter "numberPlus"

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 51
    const/16 v0, 0xa

    .line 52
    .local v0, eccNo:I
    new-array v1, v7, [Ljava/lang/String;

    const-string v5, "112"

    aput-object v5, v1, v4

    const-string v5, "911"

    aput-object v5, v1, v3

    const/4 v5, 0x2

    const-string v6, "000"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "08"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "110"

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "118"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "119"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "999"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "120"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "122"

    aput-object v6, v1, v5

    .line 54
    .local v1, emergencyNumList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_2

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 56
    aget-object v5, v1, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    :cond_0
    :goto_1
    return v3

    .line 54
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 62
    goto :goto_1
.end method

.method public isCustomizedEmergencyNumberExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number"
    .parameter "plusNumber"
    .parameter "numberPlus"

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialEmergencyNumber(Ljava/lang/String;)Z
    .locals 8
    .parameter "dialString"

    .prologue
    const/16 v7, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 67
    const/16 v0, 0xa

    .line 68
    .local v0, eccNo:I
    new-array v1, v7, [Ljava/lang/String;

    const-string v5, "112"

    aput-object v5, v1, v4

    const-string v5, "911"

    aput-object v5, v1, v3

    const/4 v5, 0x2

    const-string v6, "000"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "08"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "110"

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "118"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "119"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "999"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "120"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "122"

    aput-object v6, v1, v5

    .line 70
    .local v1, emergencyNumList:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 71
    aget-object v5, v1, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    :goto_1
    return v3

    .line 70
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    .line 77
    goto :goto_1
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 85
    const-string v0, "PhoneNumberExt"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method
