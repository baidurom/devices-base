.class public Lcom/lenovo/citynum/CountryInfo;
.super Ljava/lang/Object;
.source "CountryInfo.java"


# instance fields
.field private country_code:S

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
    .locals 1
    .parameter "code"

    .prologue
    .line 15
    iget-short v0, p0, Lcom/lenovo/citynum/CountryInfo;->country_code:S

    if-ne p1, v0, :cond_0

    .line 16
    const/4 v0, 0x1

    .line 18
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetCountryPos()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/lenovo/citynum/CountryInfo;->start_pos:I

    return v0
.end method

.method public SetNum(SI)V
    .locals 0
    .parameter "code"
    .parameter "start_p"

    .prologue
    .line 9
    iput-short p1, p0, Lcom/lenovo/citynum/CountryInfo;->country_code:S

    .line 10
    iput p2, p0, Lcom/lenovo/citynum/CountryInfo;->start_pos:I

    .line 11
    return-void
.end method
