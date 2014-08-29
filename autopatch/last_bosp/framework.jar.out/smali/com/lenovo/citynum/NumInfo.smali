.class public Lcom/lenovo/citynum/NumInfo;
.super Ljava/lang/Object;
.source "NumInfo.java"


# instance fields
.field private city_num:I

.field private num_max:I

.field private num_min:I

.field private sector_head:I

.field private start_pos:I

.field private valid_num:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/lenovo/citynum/NumInfo;->num_max:I

    .line 9
    iput v0, p0, Lcom/lenovo/citynum/NumInfo;->num_min:I

    return-void
.end method


# virtual methods
.method public CompareCode(I)Z
    .locals 1
    .parameter "num"

    .prologue
    .line 57
    iget v0, p0, Lcom/lenovo/citynum/NumInfo;->num_min:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/lenovo/citynum/NumInfo;->num_max:I

    if-gt p1, v0, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetCodePos(I)I
    .locals 3
    .parameter "num"

    .prologue
    .line 66
    iget v1, p0, Lcom/lenovo/citynum/NumInfo;->num_min:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/lenovo/citynum/NumInfo;->num_max:I

    if-gt p1, v1, :cond_0

    .line 68
    iget v1, p0, Lcom/lenovo/citynum/NumInfo;->num_min:I

    sub-int v0, p1, v1

    .line 73
    .local v0, pos:I
    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/lenovo/citynum/NumInfo;->start_pos:I

    add-int v0, v1, v2

    .line 75
    .end local v0           #pos:I
    :goto_0
    return v0

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetCityCodePos(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 50
    iput p1, p0, Lcom/lenovo/citynum/NumInfo;->start_pos:I

    .line 52
    iget v0, p0, Lcom/lenovo/citynum/NumInfo;->city_num:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    return v0
.end method

.method public SetCityNum()V
    .locals 4

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, cnt:I
    const/4 v1, 0x1

    .local v1, i:I
    const/4 v2, 0x1

    .line 32
    .local v2, tmp:I
    :goto_0
    if-lez v2, :cond_0

    .line 34
    iget v3, p0, Lcom/lenovo/citynum/NumInfo;->sector_head:I

    div-int v2, v3, v1

    .line 35
    mul-int/lit8 v1, v1, 0xa

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_0
    iget-short v3, p0, Lcom/lenovo/citynum/NumInfo;->valid_num:S

    sub-int/2addr v3, v0

    add-int/lit8 v0, v3, 0x1

    .line 41
    const/4 v2, 0x1

    .line 42
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 43
    mul-int/lit8 v2, v2, 0xa

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 45
    :cond_1
    iput v2, p0, Lcom/lenovo/citynum/NumInfo;->city_num:I

    .line 46
    return-void
.end method

.method public SetNum(ISS)V
    .locals 2
    .parameter "head"
    .parameter "longth"
    .parameter "valid"

    .prologue
    const v1, 0x186a0

    .line 13
    iput p1, p0, Lcom/lenovo/citynum/NumInfo;->sector_head:I

    .line 14
    iput-short p3, p0, Lcom/lenovo/citynum/NumInfo;->valid_num:S

    .line 16
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    .line 18
    add-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/citynum/NumInfo;->num_max:I

    .line 19
    mul-int v0, p1, v1

    iput v0, p0, Lcom/lenovo/citynum/NumInfo;->num_min:I

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 22
    add-int/lit8 v0, p1, 0x1

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/citynum/NumInfo;->num_max:I

    .line 23
    mul-int/lit16 v0, p1, 0x2710

    iput v0, p0, Lcom/lenovo/citynum/NumInfo;->num_min:I

    goto :goto_0
.end method
