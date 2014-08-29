.class public Lcom/lenovo/citynum/OtherInfo;
.super Ljava/lang/Object;
.source "OtherInfo.java"


# instance fields
.field public other_num:[B

.field public start_pos:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetNum([BII)V
    .locals 3
    .parameter "num"
    .parameter "cnt"
    .parameter "start_p"

    .prologue
    .line 10
    new-array v1, p2, [B

    iput-object v1, p0, Lcom/lenovo/citynum/OtherInfo;->other_num:[B

    .line 11
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 12
    iget-object v1, p0, Lcom/lenovo/citynum/OtherInfo;->other_num:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_0
    iput p3, p0, Lcom/lenovo/citynum/OtherInfo;->start_pos:I

    .line 15
    return-void
.end method
