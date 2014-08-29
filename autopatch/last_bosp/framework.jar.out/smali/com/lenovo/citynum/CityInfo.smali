.class public Lcom/lenovo/citynum/CityInfo;
.super Ljava/lang/Object;
.source "CityInfo.java"


# instance fields
.field public city_cn:Ljava/lang/String;

.field private city_code:I

.field public city_en:Ljava/lang/String;

.field private start_pos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CompareCode(S)Z
    .locals 2
    .parameter "code"

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/citynum/CityInfo;->city_code:I

    if-eq p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0xa

    iget v1, p0, Lcom/lenovo/citynum/CityInfo;->city_code:I

    if-ne v0, v1, :cond_1

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 20
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetCityPos()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/lenovo/citynum/CityInfo;->start_pos:I

    return v0
.end method

.method public SetNum(SII)V
    .locals 0
    .parameter "code"
    .parameter "start_p"
    .parameter "stop_p"

    .prologue
    .line 11
    iput p1, p0, Lcom/lenovo/citynum/CityInfo;->city_code:I

    .line 12
    iput p2, p0, Lcom/lenovo/citynum/CityInfo;->start_pos:I

    .line 13
    return-void
.end method
