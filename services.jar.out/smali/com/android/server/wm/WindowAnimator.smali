.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final DEFAULT_DIM_DURATION:I = 0xc8

.field static final KEYGUARD_ANIMATING_IN:I = 0x1

.field static final KEYGUARD_ANIMATING_OUT:I = 0x3

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field mAboveUniverseLayer:I

.field mAdjResult:I

.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationRunnable:Ljava/lang/Runnable;

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentFocus:Lcom/android/server/wm/WindowState;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 69
    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    .line 70
    iput v1, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    .line 72
    iput v1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 78
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 85
    iput v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 98
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 99
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 100
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 102
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->animateLocked()V

    return-void
.end method

.method private animateLocked()V
    .locals 27

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 522
    const/16 v25, 0x8

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 523
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v22, v0

    .line 524
    .local v22, wasAnimating:Z
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 531
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 532
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 534
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked()V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v18

    .line 537
    .local v18, numDisplays:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 539
    .local v9, displayId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 541
    .local v7, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v20, v0

    .line 543
    .local v20, screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 544
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 545
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 555
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/wm/WindowAnimator;->performAnimationsLocked(I)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v24

    .line 558
    .local v24, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 559
    .local v3, N:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v3, :cond_6

    .line 560
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 559
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 547
    .end local v3           #N:I
    .end local v17           #j:I
    .end local v24           #windows:Lcom/android/server/wm/WindowList;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 548
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 549
    const/16 v25, 0x0

    move-object/from16 v0, v25

    iput-object v0, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 621
    .end local v7           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9           #displayId:I
    .end local v15           #i:I
    .end local v18           #numDisplays:I
    .end local v20           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v13

    .line 622
    .local v13, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v25, "WindowAnimator"

    const-string v26, "Unhandled exception in Window Manager"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 629
    .end local v13           #e:Ljava/lang/RuntimeException;
    :goto_4
    const/4 v14, 0x0

    .line 630
    .local v14, hasPendingLayoutChanges:Z
    new-instance v16, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 631
    .local v16, iterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;
    :cond_4
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_14

    .line 632
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;->next()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 633
    .local v8, displayContent:Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v19

    .line 634
    .local v19, pendingChanges:I
    and-int/lit8 v25, v19, 0x4

    if-eqz v25, :cond_5

    .line 635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x20

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 637
    :cond_5
    if-eqz v19, :cond_4

    .line 638
    const/4 v14, 0x1

    goto :goto_5

    .line 537
    .end local v8           #displayContent:Lcom/android/server/wm/DisplayContent;
    .end local v14           #hasPendingLayoutChanges:Z
    .end local v16           #iterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;
    .end local v19           #pendingChanges:I
    .restart local v3       #N:I
    .restart local v7       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v9       #displayId:I
    .restart local v15       #i:I
    .restart local v17       #j:I
    .restart local v18       #numDisplays:I
    .restart local v20       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v24       #windows:Lcom/android/server/wm/WindowList;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 564
    .end local v3           #N:I
    .end local v7           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9           #displayId:I
    .end local v17           #j:I
    .end local v20           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v24           #windows:Lcom/android/server/wm/WindowList;
    :cond_7
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked()V

    .line 566
    const/4 v15, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v15, v0, :cond_12

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 568
    .restart local v9       #displayId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 570
    .restart local v7       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v20, v0

    .line 572
    .restart local v20       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v20, :cond_8

    .line 573
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 576
    :cond_8
    iget-object v5, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    .line 577
    .local v5, dimAnimator:Lcom/android/server/wm/DimLayer;
    iget-object v0, v7, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    .line 580
    .local v23, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    if-nez v23, :cond_c

    .line 581
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v6

    .line 582
    .local v6, dimLayer:I
    const/4 v4, 0x0

    .line 587
    .local v4, dimAmount:F
    :goto_7
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v21

    .line 588
    .local v21, targetAlpha:F
    cmpl-float v25, v21, v4

    if-eqz v25, :cond_10

    .line 589
    if-nez v23, :cond_d

    .line 590
    const-wide/16 v25, 0xc8

    move-wide/from16 v0, v25

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 603
    :cond_9
    :goto_8
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v25

    if-eqz v25, :cond_a

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v25

    if-nez v25, :cond_11

    .line 606
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->show()V

    .line 613
    :cond_a
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    if-nez v9, :cond_b

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayMagnifier:Lcom/android/server/wm/DisplayMagnifier;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 566
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 584
    .end local v4           #dimAmount:F
    .end local v6           #dimLayer:I
    .end local v21           #targetAlpha:F
    :cond_c
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v25, v0

    add-int/lit8 v6, v25, -0x1

    .line 585
    .restart local v6       #dimLayer:I
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v4       #dimAmount:F
    goto :goto_7

    .line 592
    .restart local v21       #targetAlpha:F
    :cond_d
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v11

    .line 595
    .local v11, duration:J
    :goto_a
    cmpl-float v25, v21, v4

    if-lez v25, :cond_e

    .line 596
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/android/server/wm/WindowAnimator;->getDimBehindFadeDuration(J)J

    move-result-wide v11

    .line 598
    :cond_e
    invoke-virtual {v5, v6, v4, v11, v12}, Lcom/android/server/wm/DimLayer;->show(IFJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    .line 624
    .end local v4           #dimAmount:F
    .end local v5           #dimAnimator:Lcom/android/server/wm/DimLayer;
    .end local v6           #dimLayer:I
    .end local v7           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9           #displayId:I
    .end local v11           #duration:J
    .end local v15           #i:I
    .end local v18           #numDisplays:I
    .end local v20           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v21           #targetAlpha:F
    .end local v23           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :catchall_0
    move-exception v25

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v25

    .line 592
    .restart local v4       #dimAmount:F
    .restart local v5       #dimAnimator:Lcom/android/server/wm/DimLayer;
    .restart local v6       #dimLayer:I
    .restart local v7       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v9       #displayId:I
    .restart local v15       #i:I
    .restart local v18       #numDisplays:I
    .restart local v20       #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v21       #targetAlpha:F
    .restart local v23       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_f
    const-wide/16 v11, 0xc8

    goto :goto_a

    .line 600
    :cond_10
    :try_start_3
    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v25

    move/from16 v0, v25

    if-eq v0, v6, :cond_9

    .line 601
    invoke-virtual {v5, v6}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_8

    .line 608
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v25, v0

    invoke-virtual {v5}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v26

    or-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto/16 :goto_9

    .line 618
    .end local v4           #dimAmount:F
    .end local v5           #dimAnimator:Lcom/android/server/wm/DimLayer;
    .end local v6           #dimLayer:I
    .end local v7           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9           #displayId:I
    .end local v20           #screenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v21           #targetAlpha:F
    .end local v23           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 624
    :cond_13
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_4

    .line 642
    .end local v15           #i:I
    .end local v18           #numDisplays:I
    .restart local v14       #hasPendingLayoutChanges:Z
    .restart local v16       #iterator:Lcom/android/server/wm/WindowManagerService$DisplayContentsIterator;
    :cond_14
    const/4 v10, 0x0

    .line 643
    .local v10, doRequest:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v25, v0

    if-eqz v25, :cond_15

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v10

    .line 647
    :cond_15
    if-nez v14, :cond_16

    if-eqz v10, :cond_17

    .line 648
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 651
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto/16 :goto_0

    .line 653
    :cond_18
    if-eqz v22, :cond_0

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .parameter "bulkUpdateParams"

    .prologue
    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 686
    .local v0, builder:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 687
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 690
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 693
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 696
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 699
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    .line 90
    :pswitch_1
    const-string v0, "KEYGUARD_ANIMATING_IN"

    goto :goto_0

    .line 91
    :pswitch_2
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    .line 92
    :pswitch_3
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDimBehindFadeDuration(J)J
    .locals 4
    .parameter "duration"

    .prologue
    .line 504
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 505
    .local v0, tv:Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x112

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 507
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 508
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 512
    :cond_0
    :goto_0
    return-wide p1

    .line 509
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 510
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_0
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .parameter "displayId"

    .prologue
    .line 807
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 808
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 809
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;I)V

    .line 810
    .restart local v0       #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 812
    :cond_0
    return-object v0
.end method

.method private performAnimationsLocked(I)V
    .locals 0
    .parameter "displayId"

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 500
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 501
    return-void
.end method

.method private testTokenMayBeDrawnLocked()V
    .locals 9

    .prologue
    .line 461
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 462
    .local v3, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 463
    .local v0, NT:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 464
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .line 465
    .local v5, wtoken:Lcom/android/server/wm/AppWindowToken;
    iget-object v2, v5, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 466
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v1, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 467
    .local v1, allDrawn:Z
    iget-boolean v6, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v1, v6, :cond_0

    .line 468
    iput-boolean v1, v2, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 469
    if-eqz v1, :cond_0

    .line 472
    iget-boolean v6, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v6, :cond_1

    .line 473
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 474
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 480
    const/4 v6, 0x4

    const-string v7, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 463
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 484
    :cond_1
    const/16 v6, 0x8

    const-string v7, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v2, v6, v7}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    .line 489
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 490
    iget-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v7

    or-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_1

    .line 496
    .end local v1           #allDrawn:Z
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :cond_2
    return-void
.end method

.method private updateAppWindowsLocked()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 178
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v6, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    .line 179
    .local v3, appTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 180
    .local v0, NAT:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 181
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 182
    .local v2, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_1

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_1

    move v5, v7

    .line 184
    .local v5, wasAnimating:Z
    :goto_1
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 185
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 180
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v5           #wasAnimating:Z
    :cond_1
    move v5, v8

    .line 182
    goto :goto_1

    .line 186
    .restart local v5       #wasAnimating:Z
    :cond_2
    if-eqz v5, :cond_0

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appToken "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " done"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v11, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_2

    .line 195
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #wasAnimating:Z
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 196
    .local v1, NEAT:I
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v1, :cond_7

    .line 197
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mExitingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v6, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 198
    .restart local v2       #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-eq v6, v9, :cond_5

    move v5, v7

    .line 200
    .restart local v5       #wasAnimating:Z
    :goto_4
    iget-wide v9, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(J)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 201
    iput-boolean v7, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 196
    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v5           #wasAnimating:Z
    :cond_5
    move v5, v8

    .line 198
    goto :goto_4

    .line 202
    .restart local v5       #wasAnimating:Z
    :cond_6
    if-eqz v5, :cond_4

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exiting appToken "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v9, v2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " done"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2, v11, v6}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V

    goto :goto_5

    .line 210
    .end local v2           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #wasAnimating:Z
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 19
    .parameter "displayId"

    .prologue
    .line 363
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v6

    .line 365
    .local v6, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v13

    .line 366
    .local v13, windows:Lcom/android/server/wm/WindowList;
    const/4 v11, 0x0

    .line 367
    .local v11, windowAnimationBackground:Lcom/android/server/wm/WindowStateAnimator;
    const/4 v12, 0x0

    .line 368
    .local v12, windowAnimationBackgroundColor:I
    const/4 v5, 0x0

    .line 370
    .local v5, detachedWallpaper:Lcom/android/server/wm/WindowState;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_8

    .line 371
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    .line 372
    .local v9, win:Lcom/android/server/wm/WindowState;
    iget-object v10, v9, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 373
    .local v10, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v14, :cond_1

    .line 370
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 377
    :cond_1
    iget v7, v10, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 382
    .local v7, flags:I
    iget-boolean v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v14, :cond_5

    .line 383
    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_4

    .line 384
    const/high16 v14, 0x10

    and-int/2addr v14, v7

    if-eqz v14, :cond_2

    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 386
    move-object v5, v9

    .line 388
    :cond_2
    iget-object v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v4

    .line 389
    .local v4, backgroundColor:I
    if-eqz v4, :cond_4

    .line 390
    if-eqz v11, :cond_3

    iget v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_4

    .line 392
    :cond_3
    move-object v11, v10

    .line 393
    move v12, v4

    .line 397
    .end local v4           #backgroundColor:I
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 403
    :cond_5
    iget-object v3, v10, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 404
    .local v3, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v3, :cond_0

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_0

    iget-boolean v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v14, :cond_0

    .line 406
    const/high16 v14, 0x10

    and-int/2addr v14, v7

    if-eqz v14, :cond_6

    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 408
    move-object v5, v9

    .line 411
    :cond_6
    iget-object v14, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v4

    .line 412
    .restart local v4       #backgroundColor:I
    if-eqz v4, :cond_0

    .line 413
    if-eqz v11, :cond_7

    iget v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_0

    .line 415
    :cond_7
    move-object v11, v10

    .line 416
    move v12, v4

    goto :goto_1

    .line 422
    .end local v3           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v4           #backgroundColor:I
    .end local v7           #flags:I
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    .end local v10           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v14, v5, :cond_9

    .line 426
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 427
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 430
    :cond_9
    if-eqz v12, :cond_d

    .line 434
    iget v2, v11, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 435
    .local v2, animLayer:I
    iget-object v9, v11, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 436
    .restart local v9       #win:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v14, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v14, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mUpperWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v14, v9, :cond_b

    .line 438
    :cond_a
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 439
    .local v1, N:I
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v1, :cond_b

    .line 440
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    iget-object v10, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 441
    .restart local v10       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v14, v10, Lcom/android/server/wm/WindowStateAnimator;->mIsWallpaper:Z

    if-eqz v14, :cond_c

    .line 442
    iget v2, v10, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 448
    .end local v1           #N:I
    .end local v10           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_b
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    add-int/lit8 v15, v2, -0x1

    shr-int/lit8 v16, v12, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x437f

    div-float v16, v16, v17

    const-wide/16 v17, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 454
    .end local v2           #animLayer:I
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    :goto_3
    return-void

    .line 439
    .restart local v1       #N:I
    .restart local v2       #animLayer:I
    .restart local v9       #win:Lcom/android/server/wm/WindowState;
    .restart local v10       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 452
    .end local v1           #N:I
    .end local v2           #animLayer:I
    .end local v9           #win:Lcom/android/server/wm/WindowState;
    .end local v10           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_d
    iget-object v14, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v14}, Lcom/android/server/wm/DimLayer;->hide()V

    goto :goto_3
.end method

.method private updateWindowsLocked(I)V
    .locals 20
    .parameter "displayId"

    .prologue
    .line 213
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v16

    .line 216
    .local v16, windows:Lcom/android/server/wm/WindowList;
    const/4 v11, 0x0

    .line 217
    .local v11, unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/4 v12, 0x0

    .line 218
    .local v12, wallpaperInUnForceHiding:Z
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 220
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    .local v9, i:I
    :goto_0
    if-ltz v9, :cond_12

    .line 221
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/WindowState;

    .line 222
    .local v14, win:Lcom/android/server/wm/WindowState;
    iget-object v15, v14, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 223
    .local v15, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget v7, v15, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    .line 225
    .local v7, flags:I
    iget-object v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 226
    iget-boolean v13, v15, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 227
    .local v13, wasAnimating:Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v10

    .line 234
    .local v10, nowAnimating:Z
    if-eqz v13, :cond_0

    iget-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v0, v14, :cond_0

    .line 235
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 236
    const/16 v17, 0x0

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 2"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 244
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy;->doesForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 245
    if-nez v13, :cond_1

    if-eqz v10, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 250
    const/16 v17, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 258
    :cond_1
    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 259
    if-eqz v10, :cond_8

    .line 260
    iget-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 261
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 323
    .end local v10           #nowAnimating:Z
    .end local v13           #wasAnimating:Z
    :cond_2
    :goto_1
    iget-object v5, v14, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 324
    .local v5, atoken:Lcom/android/server/wm/AppWindowToken;
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 325
    if-eqz v5, :cond_3

    iget-boolean v0, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 326
    :cond_3
    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 327
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 336
    :cond_4
    iget-object v4, v15, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 337
    .local v4, appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v4, :cond_6

    iget-object v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 338
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 339
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 340
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 342
    :cond_5
    iget v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v17, v0

    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 343
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 220
    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_0

    .line 263
    .end local v4           #appAnimator:Lcom/android/server/wm/AppWindowAnimator;
    .end local v5           #atoken:Lcom/android/server/wm/AppWindowToken;
    .restart local v10       #nowAnimating:Z
    .restart local v13       #wasAnimating:Z
    :cond_7
    const/16 v17, 0x3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_1

    .line 266
    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_1

    .line 278
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v14, v1}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 279
    iget v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAttrFlags:I

    move/from16 v17, v0

    const/high16 v18, 0x8

    and-int v17, v17, v18

    if-nez v17, :cond_d

    const/4 v8, 0x1

    .line 282
    .local v8, hideWhenLocked:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    invoke-virtual {v15}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_b

    if-nez v8, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    if-eqz v8, :cond_e

    .line 285
    :cond_b
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v6

    .line 311
    .local v6, changed:Z
    :cond_c
    :goto_3
    if-eqz v6, :cond_2

    const/high16 v17, 0x10

    and-int v17, v17, v7

    if-eqz v17, :cond_2

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 313
    const/16 v17, 0x0

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const-string v18, "updateWindowsAndWallpaperLocked 4"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 279
    .end local v6           #changed:Z
    .end local v8           #hideWhenLocked:Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_2

    .line 289
    .restart local v8       #hideWhenLocked:Z
    :cond_e
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v6

    .line 292
    .restart local v6       #changed:Z
    if-eqz v6, :cond_c

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, 0x4

    if-eqz v17, :cond_10

    invoke-virtual {v14}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 295
    if-nez v11, :cond_f

    .line 296
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .restart local v11       #unForceHiding:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_f
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    const/high16 v17, 0x10

    and-int v17, v17, v7

    if-eqz v17, :cond_10

    .line 300
    const/4 v12, 0x1

    .line 303
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v17, v0

    iget v0, v14, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 307
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_3

    .line 350
    .end local v6           #changed:Z
    .end local v7           #flags:I
    .end local v8           #hideWhenLocked:Z
    .end local v10           #nowAnimating:Z
    .end local v13           #wasAnimating:Z
    .end local v14           #win:Lcom/android/server/wm/WindowState;
    .end local v15           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_12
    if-eqz v11, :cond_14

    .line 351
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    :goto_4
    if-ltz v9, :cond_14

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v3

    .line 353
    .local v3, a:Landroid/view/animation/Animation;
    if-eqz v3, :cond_13

    .line 354
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowStateAnimator;

    .line 355
    .restart local v15       #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {v15, v3}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 356
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v15, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 351
    .end local v15           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 360
    .end local v3           #a:Landroid/view/animation/Animation;
    :cond_14
    return-void
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .parameter "displayId"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 116
    if-nez p1, :cond_0

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 119
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .parameter "pw"
    .parameter "prefix"
    .parameter "dumpAll"

    .prologue
    .line 705
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, subPrefix:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 708
    .local v5, subSubPrefix:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_7

    .line 709
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 711
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 712
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 713
    .local v1, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 715
    .local v7, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 716
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 717
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 718
    .local v6, wanim:Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 719
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 716
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 721
    .end local v6           #wanim:Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v8, :cond_2

    .line 722
    if-nez p3, :cond_1

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 723
    :cond_1
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowAnimationBackgroundSurface:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 727
    :cond_2
    if-nez p3, :cond_3

    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 728
    :cond_3
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mDimAnimator:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 730
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mDimWinAnimator="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 731
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 733
    :cond_4
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_6

    .line 734
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 708
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 736
    :cond_6
    if-eqz p3, :cond_5

    .line 737
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 741
    .end local v0           #N:I
    .end local v1           #displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3           #j:I
    .end local v7           #windows:Lcom/android/server/wm/WindowList;
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 743
    if-eqz p3, :cond_8

    .line 744
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 746
    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 748
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 750
    :cond_8
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_9

    .line 751
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 752
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 753
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_a

    .line 756
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 759
    :cond_a
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v8, :cond_b

    .line 760
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mUniverseBackground="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mUniverseBackground:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 761
    const-string v8, " mAboveUniverseLayer="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAboveUniverseLayer:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 763
    :cond_b
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 1
    .parameter "displayId"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return v0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .parameter "displayId"

    .prologue
    .line 820
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    return-object v0
.end method

.method getWallpaperAppAnimator()Lcom/android/server/wm/AppWindowAnimator;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    goto :goto_0
.end method

.method hideWallpapersLocked(Lcom/android/server/wm/WindowState;)V
    .locals 12
    .parameter "w"

    .prologue
    const/4 v11, 0x0

    .line 148
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 149
    .local v7, wallpaperTarget:Lcom/android/server/wm/WindowState;
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v10, Lcom/android/server/wm/WindowManagerService;->mLowerWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 150
    .local v2, lowerWallpaperTarget:Lcom/android/server/wm/WindowState;
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v10, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 152
    .local v8, wallpaperTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    if-ne v7, p1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v7, :cond_4

    .line 153
    :cond_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 154
    .local v3, numTokens:I
    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_4

    .line 155
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowToken;

    .line 156
    .local v5, token:Lcom/android/server/wm/WindowToken;
    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 157
    .local v4, numWindows:I
    add-int/lit8 v1, v4, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_3

    .line 158
    iget-object v10, v5, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 159
    .local v6, wallpaper:Lcom/android/server/wm/WindowState;
    iget-object v9, v6, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 160
    .local v9, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v10, v9, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v10, :cond_2

    .line 161
    invoke-virtual {v9}, Lcom/android/server/wm/WindowStateAnimator;->hide()V

    .line 162
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10, v6, v11}, Lcom/android/server/wm/WindowManagerService;->dispatchWallpaperVisibility(Lcom/android/server/wm/WindowState;Z)V

    .line 163
    const/4 v10, 0x4

    invoke-virtual {p0, v11, v10}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 157
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 171
    .end local v6           #wallpaper:Lcom/android/server/wm/WindowState;
    .end local v9           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #numTokens:I
    .end local v4           #numWindows:I
    .end local v5           #token:Lcom/android/server/wm/WindowToken;
    :cond_4
    return-void
.end method

.method isDimmingLocked(I)Z
    .locals 1
    .parameter "displayId"

    .prologue
    .line 670
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v0}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v0

    return v0
.end method

.method isDimmingLocked(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 4
    .parameter "winAnimator"

    .prologue
    const/4 v2, 0x0

    .line 674
    iget-object v3, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    .line 675
    .local v1, displayId:I
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    .line 677
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    .line 678
    iget-object v3, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 681
    :cond_0
    return v2
.end method

.method removeDisplayLocked(I)V
    .locals 3
    .parameter "displayId"

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 123
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_2

    .line 124
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 126
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mWindowAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    .line 128
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 130
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 132
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 134
    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimAnimator:Lcom/android/server/wm/DimLayer;

    .line 138
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 139
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;)V
    .locals 6
    .parameter "appAnimator"
    .parameter "changes"
    .parameter "s"

    .prologue
    .line 775
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 776
    .local v1, displays:Landroid/util/SparseIntArray;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v4, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 777
    .local v3, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 778
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 779
    .local v0, displayId:I
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 780
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 782
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v4, p3, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 785
    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 777
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 788
    .end local v0           #displayId:I
    :cond_1
    return-void
.end method

.method setCurrentFocus(Lcom/android/server/wm/WindowState;)V
    .locals 0
    .parameter "currentFocus"

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 667
    return-void
.end method

.method setDimWinAnimatorLocked(ILcom/android/server/wm/WindowStateAnimator;)V
    .locals 4
    .parameter "displayId"
    .parameter "newWinAnimator"

    .prologue
    .line 791
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 792
    .local v0, displayAnimator:Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez p2, :cond_1

    .line 793
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 798
    .local v1, existingDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v3, p2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v3, :cond_0

    .line 801
    :cond_2
    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    goto :goto_0
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .parameter "displayId"
    .parameter "changes"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 771
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .parameter "displayId"
    .parameter "animation"

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 817
    return-void
.end method
