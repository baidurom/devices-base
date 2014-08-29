.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final IPO_SHUTDOWN_FLOW:I = 0x1

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_MEMORY_DUMP_TIME:I = 0xea60

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x20

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final MIN_SHUTDOWN_ANIMATION_PLAY_TIME:I = 0x1388

.field private static final NORMAL_SHUTDOWN_FLOW:I = 0x0

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field public static final SHUTDOWN_IPO_ENABLE:Ljava/lang/String; = "persist.sys.ipo_enabled"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static bConfirmForAnimation:Z

.field private static bPlayaudio:Z

.field private static beginAnimationTime:J

.field private static endAnimationTime:J

.field private static mDelayDim:Ljava/lang/Runnable;

.field private static mDialog:Landroid/app/AlertDialog;

.field private static mEnableAnimating:Z

.field private static final mEnableAnimatingSync:Ljava/lang/Object;

.field private static mHDMI:Lcom/mediatek/hdmi/HDMINative;

.field private static mReboot:Z

.field private static mRebootReason:Ljava/lang/String;

.field private static mShutdownFlow:I

.field private static mShutdownThreadSync:Ljava/lang/Object;

.field private static mTvOut:Lcom/mediatek/tvOut/TvOut;

.field private static pd:Landroid/app/ProgressDialog;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsIpoEnable:Z

.field private static sIsIpoEnableSync:Ljava/lang/Object;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;

.field private static screen_turn_off_time:I


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private stMgr:Lcom/android/internal/app/ShutdownManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 97
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 116
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    .line 125
    sput-object v3, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    .line 128
    sput-object v3, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    .line 135
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnable:Z

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    .line 149
    sput-wide v4, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    .line 150
    sput-wide v4, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    .line 151
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    .line 152
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    .line 155
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    .line 160
    const/16 v0, 0x1388

    sput v0, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    .line 162
    new-instance v0, Lcom/mediatek/tvOut/TvOut;

    invoke-direct {v0}, Lcom/mediatek/tvOut/TvOut;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    .line 163
    new-instance v0, Lcom/mediatek/hdmi/HDMINative;

    invoke-direct {v0}, Lcom/mediatek/hdmi/HDMINative;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    .line 340
    new-instance v0, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 130
    new-instance v0, Lcom/android/internal/app/ShutdownManager;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    .line 167
    return-void
.end method

.method public static EnableAnimating(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 174
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    .line 176
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnable:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    return p0
.end method

.method static synthetic access$400()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600()Lcom/android/internal/app/ShutdownThread;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/app/ShutdownThread;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/app/ShutdownThread;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 366
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v8

    .line 367
    :try_start_0
    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v7, :cond_0

    .line 368
    const-string v7, "ShutdownThread"

    const-string v9, "ShutdownThread is already running, returning."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    monitor-exit v8

    .line 508
    :goto_0
    return-void

    .line 371
    :cond_0
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 372
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 375
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object p0, v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 376
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v7, "power"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    iput-object v7, v8, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 377
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v8, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$5;-><init>()V

    iput-object v8, v7, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 380
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 381
    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    if-nez v7, :cond_1

    .line 382
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-nez v7, :cond_1

    .line 383
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    .line 389
    :cond_1
    const-wide/16 v7, 0x0

    sput-wide v7, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    .line 392
    const/4 v5, 0x1

    .line 393
    .local v5, mShutOffAnimation:Z
    const/4 v0, 0x0

    .line 395
    .local v0, bIsOperator:Z
    const-string/jumbo v7, "ro.operator.optr"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, cust:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 398
    const-string v7, "OP01"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 399
    const/4 v5, 0x1

    .line 400
    sget v7, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    add-int/lit16 v7, v7, 0x7d0

    sput v7, Lcom/android/internal/app/ShutdownThread;->screen_turn_off_time:I

    .line 402
    const/4 v0, 0x1

    .line 407
    :cond_2
    const-string v7, "OP02"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 408
    const/4 v5, 0x1

    .line 410
    const/4 v0, 0x1

    .line 414
    :cond_3
    const-string v7, "CUST"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 415
    const/4 v5, 0x1

    .line 417
    const/4 v0, 0x0

    .line 421
    :cond_4
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mEnableAnimatingSync:Ljava/lang/Object;

    monitor-enter v8

    .line 423
    :try_start_1
    sget-boolean v7, Lcom/android/internal/app/ShutdownThread;->mEnableAnimating:Z

    if-nez v7, :cond_7

    .line 424
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v9, 0x14

    invoke-virtual {v7, v9}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    .line 475
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 477
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 478
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 480
    :try_start_2
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v8, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v8, v8, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v9, 0x1a

    const-string v10, "ShutdownThread-screen"

    invoke-virtual {v8, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, v7, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 482
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 483
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 491
    :cond_5
    :goto_2
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v7}, Lcom/android/internal/app/ShutdownThread;->getState()Ljava/lang/Thread$State;

    move-result-object v7

    sget-object v8, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v7, v8, :cond_6

    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v7}, Lcom/android/internal/app/ShutdownThread;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 492
    :cond_6
    sget v7, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    .line 493
    const-string v7, "ShutdownThread"

    const-string v8, "ShutdownThread exists already"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->checkShutdownFlow()V

    .line 495
    sget-object v8, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v8

    .line 496
    :try_start_3
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 497
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 372
    .end local v0           #bIsOperator:Z
    .end local v1           #cust:Ljava/lang/String;
    .end local v5           #mShutOffAnimation:Z
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 426
    .restart local v0       #bIsOperator:Z
    .restart local v1       #cust:Ljava/lang/String;
    .restart local v5       #mShutOffAnimation:Z
    :cond_7
    if-eqz v5, :cond_b

    .line 427
    const/4 v4, 0x0

    .line 429
    .local v4, isRotaionEnabled:Z
    :try_start_5
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "accelerometer_rotation"

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    const/4 v4, 0x1

    .line 431
    :goto_3
    if-eqz v4, :cond_8

    .line 432
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "accelerometer_rotation"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v7, v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "accelerometer_rotation_restore"

    const/4 v10, 0x1

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0

    .line 443
    :cond_8
    :goto_4
    if-eqz v0, :cond_a

    .line 444
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x1388

    add-long/2addr v9, v11

    sput-wide v9, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 451
    :goto_5
    :try_start_7
    const-string/jumbo v7, "window"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v6

    .line 453
    .local v6, wm:Landroid/view/IWindowManager;
    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->setEventDispatching(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 456
    .end local v6           #wm:Landroid/view/IWindowManager;
    :goto_6
    :try_start_8
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->startBootAnimation()V

    goto/16 :goto_1

    .line 475
    .end local v4           #isRotaionEnabled:Z
    :catchall_2
    move-exception v7

    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v7

    .line 429
    .restart local v4       #isRotaionEnabled:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 437
    :catch_0
    move-exception v3

    .line 438
    .local v3, ex:Ljava/lang/NullPointerException;
    :try_start_9
    const-string v7, "ShutdownThread"

    const-string v9, "check Rotation: sInstance.mContext object is null when get Rotation"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 446
    .end local v3           #ex:Ljava/lang/NullPointerException;
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x1388

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    sub-long/2addr v9, v11

    sput-wide v9, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    goto :goto_5

    .line 458
    .end local v4           #isRotaionEnabled:Z
    :cond_b
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 459
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v9, 0x1040124

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 460
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const v9, 0x1040128

    invoke-virtual {p0, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 461
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 462
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 463
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v9, 0x7d9

    invoke-virtual {v7, v9}, Landroid/view/Window;->setType(I)V

    .line 466
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/view/Window;->addFlags(I)V

    .line 468
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_1

    .line 484
    :catch_1
    move-exception v2

    .line 485
    .local v2, e:Ljava/lang/SecurityException;
    const-string v7, "ShutdownThread"

    const-string v8, "No permission to acquire wake lock"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 499
    .end local v2           #e:Ljava/lang/SecurityException;
    :cond_c
    const-string v7, "ShutdownThread"

    const-string v8, "Thread state is not normal! froce to shutdown!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 503
    const-string v7, "ctl.start"

    const-string/jumbo v8, "shutdown"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    :cond_d
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v7}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 454
    .restart local v4       #isRotaionEnabled:Z
    :catch_2
    move-exception v7

    goto/16 :goto_6
.end method

.method private static checkShutdownFlow()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 555
    const-string v3, "ShutdownThread"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkShutdownFlow: IPO_Support=true mReboot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-ne v3, v2, :cond_0

    .line 557
    sput v1, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 598
    :goto_0
    return-void

    .line 563
    :cond_0
    :try_start_0
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ipo_setting"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 575
    .local v1, isIPOEnabled:Z
    :cond_1
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    monitor-enter v3

    .line 576
    if-nez v1, :cond_3

    :try_start_1
    sget-boolean v4, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnable:Z

    if-ne v4, v2, :cond_3

    .line 581
    const-string v2, "1"

    const-string/jumbo v4, "sys.ipo.battlow"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 582
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 592
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkShutdownFlow: isIPOEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mShutdownFlow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 565
    .end local v1           #isIPOEnabled:Z
    :catch_0
    move-exception v0

    .line 566
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "ShutdownThread"

    const-string v3, "checkShutdownFlow: sInstance.mContext object is null when get IPO enable/disable Option"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    sput v1, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    goto :goto_0

    .line 584
    .end local v0           #ex:Ljava/lang/NullPointerException;
    .restart local v1       #isIPOEnabled:Z
    :cond_2
    const/4 v2, 0x1

    :try_start_2
    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    goto :goto_1

    .line 592
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 586
    :cond_3
    const/4 v2, 0x0

    :try_start_3
    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static delayForPlayAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 537
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_1

    .line 548
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 540
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    .line 541
    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_0

    .line 543
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    sget-wide v1, Lcom/android/internal/app/ShutdownThread;->endAnimationTime:J

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    const-string v2, "Shutdown stop bootanimation Thread.currentThread().sleep exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dismissDialog()V
    .locals 3

    .prologue
    .line 529
    const-string v0, "ShutdownThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissDialog(): pd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 531
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 532
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 534
    :cond_0
    return-void
.end method

.method public static isPowerOffDialogShowing()Z
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 360
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 361
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 362
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    .line 363
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 6
    .parameter "reboot"
    .parameter "reason"

    .prologue
    const/4 v5, 0x0

    .line 932
    if-eqz p0, :cond_4

    .line 933
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    if-eqz p1, :cond_0

    const-string/jumbo v2, "recovery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 935
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 938
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 958
    :goto_0
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 961
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 962
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 963
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 965
    :cond_1
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_2

    .line 966
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown, close lcd light1..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 970
    :cond_2
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 976
    :goto_1
    const-string v2, "ShutdownThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mTvOut:Lcom/mediatek/tvOut/TvOut;

    invoke-virtual {v2, v5}, Lcom/mediatek/tvOut/TvOut;->tvoutPowerEnable(Z)Z

    .line 980
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mHDMI:Lcom/mediatek/hdmi/HDMINative;

    invoke-virtual {v2, v5}, Lcom/mediatek/hdmi/HDMINative;->hdmiPowerEnable(Z)Z

    .line 983
    const-string v2, "ctl.start"

    const-string/jumbo v3, "shutdown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v2, :cond_3

    .line 987
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 993
    :cond_3
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 997
    :goto_2
    return-void

    .line 939
    :catch_0
    move-exception v0

    .line 940
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 944
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    new-instance v1, Landroid/os/Vibrator;

    invoke-direct {v1}, Landroid/os/Vibrator;-><init>()V

    .line 946
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 954
    :goto_3
    const-wide/16 v2, 0x1f4

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 955
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 947
    :catch_2
    move-exception v0

    .line 949
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 994
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :catch_3
    move-exception v0

    .line 995
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutdown rebootOrShutdown Thread.currentThread().sleep exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 971
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 11
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 194
    const/4 v2, 0x0

    .line 196
    .local v2, ipoCheckView:Landroid/view/View;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x303

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 197
    if-eqz v2, :cond_0

    .line 198
    const v6, 0x3060001

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 199
    .local v1, ipoCheck:Landroid/widget/CheckBox;
    const-string/jumbo v6, "persist.sys.ipo_enabled"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 200
    .local v3, isIpoEnable:Z
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    monitor-enter v7

    .line 201
    :try_start_0
    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnable:Z

    .line 202
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    if-eqz v1, :cond_0

    .line 204
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 205
    new-instance v6, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v6}, Lcom/android/internal/app/ShutdownThread$1;-><init>()V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    .end local v1           #ipoCheck:Landroid/widget/CheckBox;
    .end local v3           #isIpoEnable:Z
    :cond_0
    const-string v6, "ShutdownThread"

    const-string v7, "!!! Request to shutdown !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string/jumbo v6, "ro.monkey"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 224
    const-string v6, "ShutdownThread"

    const-string v7, "Cannot request to shutdown when Monkey is running, returning."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 202
    .restart local v1       #ipoCheck:Landroid/widget/CheckBox;
    .restart local v3       #isIpoEnable:Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 228
    .end local v1           #ipoCheck:Landroid/widget/CheckBox;
    .end local v3           #isIpoEnable:Z
    :cond_2
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 229
    :try_start_2
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_3

    .line 230
    const-string v6, "ShutdownThread"

    const-string v8, "Request to shutdown already running, returning."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    monitor-exit v7

    goto :goto_0

    .line 233
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    const-string v6, "ShutdownThread"

    const-string v7, "Notifying thread to start radio shutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sput-boolean p1, Lcom/android/internal/app/ShutdownThread;->bConfirmForAnimation:Z

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 239
    .local v4, longPressBehavior:I
    if-ne v4, v10, :cond_6

    const v5, 0x104012a

    .line 243
    .local v5, resourceId:I
    :goto_1
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    if-eqz p1, :cond_7

    .line 246
    new-instance v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 247
    .local v0, closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_5

    .line 248
    const-string v6, "ShutdownThread"

    const-string v7, "PowerOff dialog doesn\'t exist. Create it first"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1040124

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v8, p0}, Lcom/android/internal/app/ShutdownThread$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$2;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    sput-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    .line 288
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shutdown: sIsIpoEnable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-eqz v2, :cond_4

    .line 290
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 297
    :cond_4
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 298
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 304
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/Window;->addFlags(I)V

    .line 307
    :cond_5
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    iput-object v6, v0, Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 308
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 310
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 311
    sget-object v6, Lcom/android/internal/app/ShutdownThread;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 239
    .end local v0           #closer:Lcom/android/internal/app/ShutdownThread$CloseDialogReceiver;
    .end local v5           #resourceId:I
    :cond_6
    const v5, 0x1040129

    goto/16 :goto_1

    .line 314
    .restart local v5       #resourceId:I
    :cond_7
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private static startBootAnimation()V
    .locals 2

    .prologue
    .line 511
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->bPlayaudio:Z

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "ShutdownThread"

    const-string v1, "bootanim:shut mp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    return-void

    .line 515
    :cond_0
    const-string v0, "ctl.start"

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string v0, "ShutdownThread"

    const-string v1, "bootanim:shut nomp3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 524
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 525
    monitor-exit v1

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 606
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->checkShutdownFlow()V

    .line 607
    :goto_0
    sget v0, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    if-ne v0, v2, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->saveStates(Landroid/content/Context;)V

    .line 609
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownThread;->running()V

    goto :goto_0

    .line 612
    :cond_0
    sget v0, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    if-eq v0, v2, :cond_1

    .line 613
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ShutdownManager;->enterShutdown(Landroid/content/Context;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/app/ShutdownThread;->running()V

    .line 616
    :cond_1
    return-void
.end method

.method public running()V
    .locals 32

    .prologue
    .line 623
    const-string/jumbo v2, "sys.ipo.pwrdncap"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 625
    .local v14, command:Ljava/lang/String;
    new-instance v5, Lcom/android/internal/app/ShutdownThread$6;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$6;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 638
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v2, :cond_d

    const-string v2, "1"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 639
    .local v30, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v30

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 647
    :try_start_0
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v4, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 649
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 650
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_2
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "shutdown acquire partial WakeLock: cpu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_PRE_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "_mode"

    sget v6, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v20, v2, v6

    .line 667
    .local v20, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 668
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_0

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v20, v6

    .line 670
    .local v15, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_f

    .line 671
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 673
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 683
    .end local v15           #delay:J
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 687
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v22, v2, v6

    .line 691
    .local v22, endTimeIPO:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 692
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1

    .line 693
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v22, v6

    .line 694
    .restart local v15       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_10

    .line 695
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast ACTION_SHUTDOWN_IPO timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 697
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: ACTION_SHUTDOWN_IPO timeout"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 707
    .end local v15           #delay:J
    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 710
    .end local v22           #endTimeIPO:J
    :cond_2
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 711
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 715
    .local v10, am:Landroid/app/IActivityManager;
    if-eqz v10, :cond_3

    .line 717
    const/16 v2, 0x2710

    :try_start_3
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_a

    .line 723
    .end local v10           #am:Landroid/app/IActivityManager;
    :cond_3
    :goto_5
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v28

    .line 725
    .local v28, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 729
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v26

    .line 734
    .local v26, mount:Landroid/os/storage/IMountService;
    if-eqz v11, :cond_4

    :try_start_4
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    :cond_4
    const/4 v12, 0x1

    .line 736
    .local v12, bluetoothOff:Z
    :goto_6
    if-nez v12, :cond_5

    .line 737
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 746
    :cond_5
    :goto_7
    if-eqz v28, :cond_6

    :try_start_5
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v2

    if-nez v2, :cond_12

    :cond_6
    const/16 v29, 0x1

    .line 747
    .local v29, radioOff:Z
    :goto_8
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_7

    .line 754
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-eqz v28, :cond_7

    .line 759
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->setRadioOff()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 767
    :cond_7
    :goto_9
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 769
    .local v13, cm:Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const-string v2, "2"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "3"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 770
    :cond_8
    const-string v2, "ShutdownThread"

    const-string v3, "bypass RadioOff!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_9
    :goto_a
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    const-string v2, "1"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "3"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 813
    :cond_a
    const-string v2, "ShutdownThread"

    const-string v3, "bypass MountService!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :goto_b
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_21

    .line 858
    new-instance v31, Landroid/os/Vibrator;

    invoke-direct/range {v31 .. v31}, Landroid/os/Vibrator;-><init>()V

    .line 860
    .local v31, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_6
    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 868
    :goto_c
    const-wide/16 v2, 0x1f4

    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_b

    .line 874
    :goto_d
    const-string v2, "ShutdownThread"

    const-string v3, "Performing ipo low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->delayForPlayAnimation()V

    .line 878
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 879
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 880
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 883
    :cond_b
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mDelayDim:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->shutdown(Landroid/content/Context;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 890
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnableSync:Ljava/lang/Object;

    monitor-enter v3

    .line 891
    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsIpoEnable:Z

    .line 892
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 898
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_20

    .line 899
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 900
    const/4 v2, 0x0

    sput-object v2, Lcom/android/internal/app/ShutdownThread;->pd:Landroid/app/ProgressDialog;

    .line 905
    :cond_c
    :goto_e
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 906
    const/4 v2, 0x0

    :try_start_9
    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 907
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 909
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->setBacklightBrightnessOff(Z)V

    .line 910
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v2, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 912
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    monitor-enter v3

    .line 914
    :try_start_a
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mShutdownThreadSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_c

    .line 917
    :goto_f
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 922
    .end local v31           #vibrator:Landroid/os/Vibrator;
    :goto_10
    return-void

    .line 638
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v20           #endTime:J
    .end local v26           #mount:Landroid/os/storage/IMountService;
    .end local v28           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v29           #radioOff:Z
    .end local v30           #reason:Ljava/lang/String;
    :cond_d
    const-string v2, "0"

    goto/16 :goto_0

    :cond_e
    const-string v2, ""

    goto/16 :goto_1

    .line 651
    .restart local v30       #reason:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 652
    .local v17, e:Ljava/lang/SecurityException;
    const-string v2, "ShutdownThread"

    const-string v3, "No permission to acquire wake lock"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_2

    .line 679
    .end local v17           #e:Ljava/lang/SecurityException;
    .restart local v15       #delay:J
    .restart local v20       #endTime:J
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_3

    .line 680
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 683
    .end local v15           #delay:J
    :catchall_0
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v2

    .line 703
    .restart local v15       #delay:J
    .restart local v22       #endTimeIPO:J
    :cond_10
    :try_start_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_4

    .line 704
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 707
    .end local v15           #delay:J
    :catchall_1
    move-exception v2

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v2

    .line 734
    .end local v22           #endTimeIPO:J
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v26       #mount:Landroid/os/storage/IMountService;
    .restart local v28       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 740
    :catch_3
    move-exception v24

    .line 741
    .local v24, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_7

    .line 746
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_12
    const/16 v29, 0x0

    goto/16 :goto_8

    .line 762
    :catch_4
    move-exception v24

    .line 763
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    const/16 v29, 0x1

    .restart local v29       #radioOff:Z
    goto/16 :goto_9

    .line 773
    .end local v24           #ex:Landroid/os/RemoteException;
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    :cond_13
    const/16 v25, 0x0

    .local v25, i:I
    :goto_11
    const/16 v2, 0x20

    move/from16 v0, v25

    if-ge v0, v2, :cond_16

    .line 774
    if-nez v12, :cond_14

    .line 776
    :try_start_10
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_5

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_19

    const/4 v12, 0x1

    .line 783
    :cond_14
    :goto_12
    if-nez v29, :cond_15

    .line 785
    :try_start_11
    invoke-interface/range {v28 .. v28}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_6

    move-result v2

    if-nez v2, :cond_1a

    const/16 v29, 0x1

    .line 791
    :cond_15
    :goto_13
    if-eqz v29, :cond_1b

    if-eqz v12, :cond_1b

    .line 792
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_16
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_18

    if-eqz v29, :cond_17

    if-nez v12, :cond_18

    .line 799
    :cond_17
    const-string v2, "ShutdownThread"

    const-string v3, "change shutdown flow from ipo to normal: BT/MD"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 805
    :cond_18
    if-nez v29, :cond_9

    const-string v2, "com.mediatek.mdlogger.Running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 806
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "radioOff = false and mdlogger is running now, so wait for memory dump"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-wide/32 v2, 0xea60

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_a

    .line 776
    :cond_19
    const/4 v12, 0x0

    goto :goto_12

    .line 778
    :catch_5
    move-exception v24

    .line 779
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    const/4 v12, 0x1

    goto :goto_12

    .line 785
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_1a
    const/16 v29, 0x0

    goto :goto_13

    .line 786
    :catch_6
    move-exception v24

    .line 787
    .restart local v24       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v24

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    const/16 v29, 0x1

    goto :goto_13

    .line 795
    .end local v24           #ex:Landroid/os/RemoteException;
    :cond_1b
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 773
    add-int/lit8 v25, v25, 0x1

    goto :goto_11

    .line 816
    .end local v25           #i:I
    :cond_1c
    new-instance v27, Lcom/android/internal/app/ShutdownThread$7;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$7;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 823
    .local v27, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 826
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v18, v2, v6

    .line 827
    .local v18, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 829
    if-eqz v26, :cond_1e

    .line 830
    :try_start_12
    invoke-interface/range {v26 .. v27}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 837
    :goto_14
    :try_start_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_1d

    .line 838
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v15, v18, v6

    .line 839
    .restart local v15       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v15, v6

    if-gtz v2, :cond_1f

    .line 840
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    sget v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    .line 842
    const-string v2, "ShutdownThread"

    const-string v4, "change shutdown flow from ipo to normal: MountService"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/4 v2, 0x0

    sput v2, Lcom/android/internal/app/ShutdownThread;->mShutdownFlow:I

    .line 852
    .end local v15           #delay:J
    :cond_1d
    monitor-exit v3

    goto/16 :goto_b

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    throw v2

    .line 832
    :cond_1e
    :try_start_14
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_14

    .line 834
    :catch_7
    move-exception v17

    .line 835
    .local v17, e:Ljava/lang/Exception;
    :try_start_15
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_14

    .line 848
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #delay:J
    :cond_1f
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    move-wide v0, v15

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_14

    .line 849
    :catch_8
    move-exception v2

    goto :goto_14

    .line 861
    .end local v15           #delay:J
    .end local v18           #endShutTime:J
    .end local v27           #observer:Landroid/os/storage/IMountShutdownObserver;
    .restart local v31       #vibrator:Landroid/os/Vibrator;
    :catch_9
    move-exception v17

    .line 863
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v2, "ShutdownThread"

    const-string v3, "Failed to vibrate during shutdown."

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 892
    .end local v17           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v2

    :try_start_17
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    throw v2

    .line 901
    :cond_20
    sget-wide v2, Lcom/android/internal/app/ShutdownThread;->beginAnimationTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_c

    .line 902
    const-string v2, "ctl.stop"

    const-string v3, "bootanim"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 907
    :catchall_4
    move-exception v2

    :try_start_18
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    throw v2

    .line 917
    :catchall_5
    move-exception v2

    :try_start_19
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    throw v2

    .line 919
    .end local v31           #vibrator:Landroid/os/Vibrator;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->stMgr:Lcom/android/internal/app/ShutdownManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ShutdownManager;->finishShutdown(Landroid/content/Context;)V

    .line 920
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    goto/16 :goto_10

    .line 718
    .end local v11           #bluetooth:Landroid/bluetooth/IBluetooth;
    .end local v12           #bluetoothOff:Z
    .end local v13           #cm:Landroid/net/ConnectivityManager;
    .end local v26           #mount:Landroid/os/storage/IMountService;
    .end local v28           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v29           #radioOff:Z
    .restart local v10       #am:Landroid/app/IActivityManager;
    :catch_a
    move-exception v2

    goto/16 :goto_5

    .line 869
    .end local v10           #am:Landroid/app/IActivityManager;
    .restart local v11       #bluetooth:Landroid/bluetooth/IBluetooth;
    .restart local v12       #bluetoothOff:Z
    .restart local v13       #cm:Landroid/net/ConnectivityManager;
    .restart local v26       #mount:Landroid/os/storage/IMountService;
    .restart local v28       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v29       #radioOff:Z
    .restart local v31       #vibrator:Landroid/os/Vibrator;
    :catch_b
    move-exception v2

    goto/16 :goto_d

    .line 915
    :catch_c
    move-exception v2

    goto/16 :goto_f
.end method
