.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F = null

.field private static final SPLINE_TIME:[F = null

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mOver:I

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mVelocity:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 589
    const-wide v11, 0x3fe8f5c28f5c28f6L

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide v13, 0x3feccccccccccccdL

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    sput v11, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    .line 597
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    .line 598
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    .line 605
    const/4 v7, 0x0

    .line 606
    .local v7, x_min:F
    const/4 v10, 0x0

    .line 607
    .local v10, y_min:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 608
    int-to-float v11, v3

    const/high16 v12, 0x42c8

    div-float v0, v11, v12

    .line 610
    .local v0, alpha:F
    const/high16 v6, 0x3f80

    .line 613
    .local v6, x_max:F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 614
    .local v5, x:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 615
    .local v1, coef:F
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v5

    const v12, 0x3e333333

    mul-float/2addr v11, v12

    const v12, 0x3eb33334

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 616
    .local v4, tx:F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_0

    .line 620
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f00

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 622
    const/high16 v9, 0x3f80

    .line 625
    .local v9, y_max:F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 626
    .local v8, y:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 627
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f00

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 628
    .local v2, dy:F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 632
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    const v13, 0x3e333333

    mul-float/2addr v12, v13

    const v13, 0x3eb33334

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 607
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 617
    .end local v2           #dy:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 618
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 629
    .restart local v2       #dy:F
    .restart local v8       #y:F
    .restart local v9       #y_max:F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 630
    :cond_3
    move v10, v8

    goto :goto_2

    .line 634
    .end local v0           #alpha:F
    .end local v1           #coef:F
    .end local v2           #dy:F
    .end local v4           #tx:F
    .end local v5           #x:F
    .end local v6           #x_max:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_4
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f80

    aput v15, v13, v14

    aput v15, v11, v12

    .line 635
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 641
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 578
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 581
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 642
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 643
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 644
    .local v0, ppi:F
    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    .line 648
    return-void
.end method

.method static synthetic access$000(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic access$002(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 540
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static synthetic access$100(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 540
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/OverScroller$SplineOverScroller;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 540
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 540
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 540
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 540
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/OverScroller$SplineOverScroller;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 540
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/widget/OverScroller$SplineOverScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 540
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method private adjustDuration(III)V
    .locals 12
    .parameter "start"
    .parameter "oldFinal"
    .parameter "newFinal"

    .prologue
    const/high16 v11, 0x42c8

    .line 666
    sub-int v2, p2, p1

    .line 667
    .local v2, oldDistance:I
    sub-int v1, p3, p1

    .line 668
    .local v1, newDistance:I
    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 669
    .local v6, x:F
    mul-float v9, v11, v6

    float-to-int v0, v9

    .line 670
    .local v0, index:I
    const/16 v9, 0x64

    if-ge v0, v9, :cond_0

    .line 671
    int-to-float v9, v0

    div-float v7, v9, v11

    .line 672
    .local v7, x_inf:F
    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    .line 673
    .local v8, x_sup:F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    .line 674
    .local v3, t_inf:F
    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    .line 675
    .local v4, t_sup:F
    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    .line 676
    .local v5, timeCoef:F
    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 678
    .end local v3           #t_inf:F
    .end local v4           #t_sup:F
    .end local v5           #timeCoef:F
    .end local v7           #x_inf:F
    .end local v8           #x_sup:F
    :cond_0
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .locals 8
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 801
    neg-int v4, p3

    int-to-float v4, v4

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v4, v5

    .line 802
    .local v2, durationToApex:F
    mul-int v4, p3, p3

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float v0, v4, v5

    .line 803
    .local v0, distanceToApex:F
    sub-int v4, p2, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v1, v4

    .line 804
    .local v1, distanceToEdge:F
    const-wide/high16 v4, 0x4000

    add-float v6, v0, v1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    .line 806
    .local v3, totalDuration:F
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    const/high16 v6, 0x447a

    sub-float v7, v3, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 807
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 808
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 809
    return-void
.end method

.method private static getDeceleration(I)F
    .locals 1
    .parameter "velocity"

    .prologue
    .line 658
    if-lez p0, :cond_0

    const/high16 v0, -0x3b06

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x44fa

    goto :goto_0
.end method

.method private getSplineDeceleration(I)D
    .locals 3
    .parameter "velocity"

    .prologue
    .line 783
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .locals 8
    .parameter "velocity"

    .prologue
    .line 787
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 788
    .local v2, l:D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 789
    .local v0, decelMinusOne:D
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .locals 8
    .parameter "velocity"

    .prologue
    .line 794
    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    .line 795
    .local v2, l:D
    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 796
    .local v0, decelMinusOne:D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 853
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 854
    .local v0, distance:F
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 856
    .local v1, sign:F
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    .line 858
    neg-float v2, v1

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 859
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v2

    .line 862
    :cond_0
    float-to-int v2, v0

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 863
    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 864
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v3, :cond_1

    .end local v0           #distance:F
    :goto_0
    float-to-int v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 865
    const/high16 v2, 0x447a

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    neg-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 866
    return-void

    .line 864
    .restart local v0       #distance:F
    :cond_1
    neg-float v0, v0

    goto :goto_0
.end method

.method private startAfterEdge(IIII)V
    .locals 13
    .parameter "start"
    .parameter "min"
    .parameter "max"
    .parameter "velocity"

    .prologue
    .line 818
    if-le p1, p2, :cond_0

    move/from16 v0, p3

    if-ge p1, v0, :cond_0

    .line 819
    const-string v1, "OverScroller"

    const-string/jumbo v2, "startAfterEdge called from a valid position"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 838
    :goto_0
    return-void

    .line 823
    :cond_0
    move/from16 v0, p3

    if-le p1, v0, :cond_1

    const/4 v10, 0x1

    .line 824
    .local v10, positive:Z
    :goto_1
    if-eqz v10, :cond_2

    move/from16 v7, p3

    .line 825
    .local v7, edge:I
    :goto_2
    sub-int v9, p1, v7

    .line 826
    .local v9, overDistance:I
    mul-int v1, v9, p4

    if-ltz v1, :cond_3

    const/4 v8, 0x1

    .line 827
    .local v8, keepIncreasing:Z
    :goto_3
    if-eqz v8, :cond_4

    .line 829
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    goto :goto_0

    .line 823
    .end local v7           #edge:I
    .end local v8           #keepIncreasing:Z
    .end local v9           #overDistance:I
    .end local v10           #positive:Z
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .restart local v10       #positive:Z
    :cond_2
    move v7, p2

    .line 824
    goto :goto_2

    .line 826
    .restart local v7       #edge:I
    .restart local v9       #overDistance:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 831
    .restart local v8       #keepIncreasing:Z
    :cond_4
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v11

    .line 832
    .local v11, totalDistance:D
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-double v1, v1

    cmpl-double v1, v11, v1

    if-lez v1, :cond_7

    .line 833
    if-eqz v10, :cond_5

    move v4, p2

    :goto_4
    if-eqz v10, :cond_6

    move v5, p1

    :goto_5
    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v1, p0

    move v2, p1

    move/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_0

    :cond_5
    move v4, p1

    goto :goto_4

    :cond_6
    move/from16 v5, p3

    goto :goto_5

    .line 835
    :cond_7
    move/from16 v0, p4

    invoke-direct {p0, p1, v7, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0
.end method

.method private startBounceAfterEdge(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 812
    if-nez p3, :cond_0

    sub-int v0, p1, p2

    :goto_0
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 813
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    .line 814
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    .line 815
    return-void

    :cond_0
    move v0, p3

    .line 812
    goto :goto_0
.end method

.method private startSpringback(III)V
    .locals 7
    .parameter "start"
    .parameter "end"
    .parameter "velocity"

    .prologue
    .line 734
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 735
    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 736
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 737
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 738
    sub-int v0, p1, p2

    .line 739
    .local v0, delta:I
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 741
    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 742
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 743
    const-wide v1, 0x408f400000000000L

    const-wide/high16 v3, -0x4000

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 744
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 869
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 893
    :goto_0
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    .line 894
    const/4 v0, 0x1

    :cond_0
    :pswitch_0
    return v0

    .line 872
    :pswitch_1
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v1, v2, :cond_0

    .line 874
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 876
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 877
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 878
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 879
    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_0

    .line 886
    :pswitch_2
    iget-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 887
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v1, v2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    .line 869
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method extendDuration(I)V
    .locals 5
    .parameter "extend"

    .prologue
    .line 708
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 709
    .local v1, time:J
    iget-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v3, v1, v3

    long-to-int v0, v3

    .line 710
    .local v0, elapsedTime:I
    add-int v3, v0, p1

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 711
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 712
    return-void
.end method

.method finish()V
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 700
    return-void
.end method

.method fling(IIIII)V
    .locals 5
    .parameter "start"
    .parameter "velocity"
    .parameter "min"
    .parameter "max"
    .parameter "over"

    .prologue
    const/4 v4, 0x0

    .line 747
    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 748
    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 749
    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 750
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 751
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 752
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 754
    if-gt p1, p4, :cond_0

    if-ge p1, p3, :cond_2

    .line 755
    :cond_0
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 780
    :cond_1
    :goto_0
    return-void

    .line 759
    :cond_2
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    .line 760
    const-wide/16 v0, 0x0

    .line 762
    .local v0, totalDistance:D
    if-eqz p2, :cond_3

    .line 763
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 764
    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    .line 767
    :cond_3
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    .line 768
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 771
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_4

    .line 772
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 773
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 776
    :cond_4
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_1

    .line 777
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    .line 778
    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    goto :goto_0
.end method

.method notifyEdgeReached(III)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "over"

    .prologue
    .line 842
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_0

    .line 843
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    .line 844
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 847
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    .line 849
    :cond_0
    return-void
.end method

.method setFinalPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 703
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 705
    return-void
.end method

.method setFriction(F)V
    .locals 0
    .parameter "friction"

    .prologue
    .line 638
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    .line 639
    return-void
.end method

.method springback(III)Z
    .locals 4
    .parameter "start"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 715
    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 717
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 718
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 720
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 721
    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 723
    if-ge p1, p2, :cond_1

    .line 724
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    .line 729
    :cond_0
    :goto_0
    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    if-nez v2, :cond_2

    :goto_1
    return v0

    .line 725
    :cond_1
    if-le p1, p3, :cond_0

    .line 726
    invoke-direct {p0, p1, p3, v1}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 729
    goto :goto_1
.end method

.method startScroll(III)V
    .locals 3
    .parameter "start"
    .parameter "distance"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 681
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    .line 683
    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    .line 684
    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    .line 686
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    .line 687
    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    .line 690
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    .line 691
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    .line 692
    return-void
.end method

.method update()Z
    .locals 21

    .prologue
    .line 903
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    .line 904
    .local v15, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v18, v0

    sub-long v2, v15, v18

    .line 906
    .local v2, currentTime:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v2, v18

    if-lez v18, :cond_0

    .line 907
    const/16 v18, 0x0

    .line 950
    :goto_0
    return v18

    .line 910
    :cond_0
    const-wide/16 v6, 0x0

    .line 911
    .local v6, distance:D
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 948
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v18, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 950
    const/16 v18, 0x1

    goto :goto_0

    .line 913
    :pswitch_0
    long-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 914
    .local v11, t:F
    const/high16 v18, 0x42c8

    mul-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v9, v0

    .line 915
    .local v9, index:I
    const/high16 v8, 0x3f80

    .line 916
    .local v8, distanceCoef:F
    const/16 v17, 0x0

    .line 917
    .local v17, velocityCoef:F
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    .line 918
    int-to-float v0, v9

    move/from16 v18, v0

    const/high16 v19, 0x42c8

    div-float v13, v18, v19

    .line 919
    .local v13, t_inf:F
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x42c8

    div-float v14, v18, v19

    .line 920
    .local v14, t_sup:F
    sget-object v18, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v4, v18, v9

    .line 921
    .local v4, d_inf:F
    sget-object v18, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v19, v9, 0x1

    aget v5, v18, v19

    .line 922
    .local v5, d_sup:F
    sub-float v18, v5, v4

    sub-float v19, v14, v13

    div-float v17, v18, v19

    .line 923
    sub-float v18, v11, v13

    mul-float v18, v18, v17

    add-float v8, v4, v18

    .line 926
    .end local v4           #d_inf:F
    .end local v5           #d_sup:F
    .end local v13           #t_inf:F
    .end local v14           #t_sup:F
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v8

    move/from16 v0, v18

    float-to-double v6, v0

    .line 927
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x447a

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 932
    .end local v8           #distanceCoef:F
    .end local v9           #index:I
    .end local v11           #t:F
    .end local v17           #velocityCoef:F
    :pswitch_1
    long-to-float v0, v2

    move/from16 v18, v0

    const/high16 v19, 0x447a

    div-float v11, v18, v19

    .line 933
    .restart local v11       #t:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    .line 934
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v19, v0

    mul-float v19, v19, v11

    mul-float v19, v19, v11

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 935
    goto/16 :goto_1

    .line 939
    .end local v11           #t:F
    :pswitch_2
    long-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 940
    .restart local v11       #t:F
    mul-float v12, v11, v11

    .line 941
    .local v12, t2:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v10

    .line 942
    .local v10, sign:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x4040

    mul-float v19, v19, v12

    const/high16 v20, 0x4000

    mul-float v20, v20, v11

    mul-float v20, v20, v12

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v6, v0

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v10

    const/high16 v19, 0x40c0

    mul-float v18, v18, v19

    neg-float v0, v11

    move/from16 v19, v0

    add-float v19, v19, v12

    mul-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_1

    .line 911
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method updateScroll(F)V
    .locals 3
    .parameter "q"

    .prologue
    .line 651
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    .line 652
    return-void
.end method
