.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.super Landroid/print/IPrintDocumentAdapter$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrintDocumentAdapterDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;,
        Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    }
.end annotation


# instance fields
.field private mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

.field private mFinishRequested:Z

.field private mFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

.field private mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

.field private mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

.field private final mLock:Ljava/lang/Object;

.field private mStartReqeusted:Z

.field private mStarted:Z


# direct methods
.method public constructor <init>(Landroid/print/PrintDocumentAdapter;Landroid/os/Looper;)V
    .locals 1
    .parameter "documentAdapter"
    .parameter "looper"

    .prologue
    .line 393
    invoke-direct {p0}, Landroid/print/IPrintDocumentAdapter$Stub;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    .line 394
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 395
    new-instance v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;

    invoke-direct {v0, p0, p2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 396
    return-void
.end method

.method static synthetic access$200(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->isFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintDocumentAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    return-object v0
.end method

.method static synthetic access$400(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    return-object v0
.end method

.method static synthetic access$502(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    return-object p1
.end method

.method static synthetic access$602(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$700(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    .locals 1
    .parameter "x0"

    .prologue
    .line 372
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    return-object v0
.end method

.method static synthetic access$702(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    return-object p1
.end method

.method static synthetic access$800(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doFinish()V

    return-void
.end method

.method static synthetic access$900(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    return-void
.end method

.method private cancelPreviousCancellableOperationLocked()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 516
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doFinish()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 503
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    .line 504
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    .line 505
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLayoutOrWriteCancellation:Landroid/os/CancellationSignal;

    .line 507
    monitor-exit v1

    .line 508
    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private doPendingWorkLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 522
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStarted:Z

    if-nez v0, :cond_1

    .line 523
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStarted:Z

    .line 524
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v0, :cond_3

    .line 528
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 529
    :cond_3
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinished:Z

    if-nez v0, :cond_0

    .line 530
    iput-boolean v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinished:Z

    .line 531
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private isFinished()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mDocumentAdapter:Landroid/print/PrintDocumentAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 477
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 479
    :try_start_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-eqz v0, :cond_1

    .line 480
    :cond_0
    monitor-exit v1

    .line 496
    :goto_0
    return-void

    .line 483
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    .line 487
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v0, :cond_3

    .line 491
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 494
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 495
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public layout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/ILayoutResultCallback;Landroid/os/Bundle;I)V
    .locals 3
    .parameter "oldAttributes"
    .parameter "newAttributes"
    .parameter "callback"
    .parameter "metadata"
    .parameter "sequence"

    .prologue
    .line 415
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    :try_start_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-eqz v0, :cond_1

    .line 418
    :cond_0
    monitor-exit v1

    .line 442
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iget-object v0, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 427
    :cond_2
    new-instance v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    .line 428
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput-object p3, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->callback:Landroid/print/ILayoutResultCallback;

    .line 429
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput-object p1, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->oldAttributes:Landroid/print/PrintAttributes;

    .line 430
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput-object p2, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->newAttributes:Landroid/print/PrintAttributes;

    .line 431
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput-object p4, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->metadata:Landroid/os/Bundle;

    .line 432
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastLayoutSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;

    iput p5, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$LayoutSpec;->sequence:I

    .line 436
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->cancelPreviousCancellableOperationLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 437
    monitor-exit v1

    goto :goto_0

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 440
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 441
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 400
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    monitor-exit v1

    .line 410
    :goto_0
    return-void

    .line 406
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    .line 408
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 409
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/print/IWriteResultCallback;I)V
    .locals 3
    .parameter "pages"
    .parameter "fd"
    .parameter "callback"
    .parameter "sequence"

    .prologue
    .line 447
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mStartReqeusted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mFinishRequested:Z

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    monitor-exit v1

    .line 473
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iget-object v0, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 459
    :cond_2
    new-instance v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;-><init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$1;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    .line 460
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iput-object p3, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->callback:Landroid/print/IWriteResultCallback;

    .line 461
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iput-object p1, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->pages:[Landroid/print/PageRange;

    .line 462
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iput-object p2, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->fd:Landroid/os/ParcelFileDescriptor;

    .line 463
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->mLastWriteSpec:Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;

    iput p4, v0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$WriteSpec;->sequence:I

    .line 467
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->cancelPreviousCancellableOperationLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    monitor-exit v1

    goto :goto_0

    .line 472
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 471
    :cond_3
    :try_start_1
    invoke-direct {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->doPendingWorkLocked()V

    .line 472
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
