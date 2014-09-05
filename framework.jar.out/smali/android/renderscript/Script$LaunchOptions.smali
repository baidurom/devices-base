.class public final Landroid/renderscript/Script$LaunchOptions;
.super Ljava/lang/Object;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Script;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaunchOptions"
.end annotation


# instance fields
.field private strategy:I

.field private xend:I

.field private xstart:I

.field private yend:I

.field private ystart:I

.field private zend:I

.field private zstart:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 393
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 394
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 395
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 396
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 397
    iput v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return-void
.end method

.method static synthetic access$000(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method static synthetic access$100(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method static synthetic access$200(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method static synthetic access$300(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method static synthetic access$400(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method static synthetic access$500(Landroid/renderscript/Script$LaunchOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 391
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method


# virtual methods
.method public getXEnd()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    return v0
.end method

.method public getXStart()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    return v0
.end method

.method public getYEnd()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    return v0
.end method

.method public getYStart()I
    .locals 1

    .prologue
    .line 477
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    return v0
.end method

.method public getZEnd()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    return v0
.end method

.method public getZStart()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    return v0
.end method

.method public setX(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .parameter "xstartArg"
    .parameter "xendArg"

    .prologue
    .line 410
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 411
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->xstart:I

    .line 414
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->xend:I

    .line 415
    return-object p0
.end method

.method public setY(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .parameter "ystartArg"
    .parameter "yendArg"

    .prologue
    .line 428
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 429
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->ystart:I

    .line 432
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->yend:I

    .line 433
    return-object p0
.end method

.method public setZ(II)Landroid/renderscript/Script$LaunchOptions;
    .locals 2
    .parameter "zstartArg"
    .parameter "zendArg"

    .prologue
    .line 446
    if-ltz p1, :cond_0

    if-gt p2, p1, :cond_1

    .line 447
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Invalid dimensions"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_1
    iput p1, p0, Landroid/renderscript/Script$LaunchOptions;->zstart:I

    .line 450
    iput p2, p0, Landroid/renderscript/Script$LaunchOptions;->zend:I

    .line 451
    return-object p0
.end method
