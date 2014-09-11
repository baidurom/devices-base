.class public Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# static fields
.field static final ERROR_CAMERA_DEVICE:I = 0x1

.field static final ERROR_CAMERA_DISCONNECTED:I = 0x0

.field static final ERROR_CAMERA_SERVICE:I = 0x2


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDevice;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/impl/CameraDevice;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 481
    return-object p0
.end method

.method public onCameraError(I)V
    .locals 6
    .parameter "errorCode"

    .prologue
    .line 486
    const/4 v0, 0x0

    .line 487
    .local v0, r:Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #calls: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 490
    packed-switch p1, :pswitch_data_0

    .line 495
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown error from camera device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :pswitch_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;I)V

    .end local v0           #r:Ljava/lang/Runnable;
    .local v1, r:Ljava/lang/Runnable;
    move-object v0, v1

    .line 508
    .end local v1           #r:Ljava/lang/Runnable;
    .restart local v0       #r:Ljava/lang/Runnable;
    :goto_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$500(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 509
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 492
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCallOnDisconnected:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$300(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 493
    goto :goto_1

    .line 490
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCameraIdle()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #calls: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera now idle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 520
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$700(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 521
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mDeviceHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDevice;->access$500(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCallOnIdle:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$800(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 523
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    const/4 v2, 0x1

    #setter for: Landroid/hardware/camera2/impl/CameraDevice;->mIdle:Z
    invoke-static {v0, v2}, Landroid/hardware/camera2/impl/CameraDevice;->access$702(Landroid/hardware/camera2/impl/CameraDevice;Z)Z

    .line 524
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCaptureStarted(IJ)V
    .locals 4
    .parameter "requestId"
    .parameter "timestamp"

    .prologue
    .line 529
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture started for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 536
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    .line 537
    .local v0, holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    monitor-exit v2

    .line 539
    if-nez v0, :cond_2

    .line 557
    :cond_1
    :goto_0
    return-void

    .line 537
    .end local v0           #holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 543
    .restart local v0       #holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    :cond_2
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #calls: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 546
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$2;

    invoke-direct {v2, p0, v0, p2, p3}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onResultReceived(ILandroid/hardware/camera2/impl/CameraMetadataNative;)V
    .locals 6
    .parameter "requestId"
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->DEBUG:Z
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$600(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 563
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->TAG:Ljava/lang/String;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$400(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received result for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$200(Landroid/hardware/camera2/impl/CameraDevice;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 572
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;

    .line 579
    .local v0, holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->isRepeating()Z

    move-result v3

    if-nez v3, :cond_1

    .line 580
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #getter for: Landroid/hardware/camera2/impl/CameraDevice;->mCaptureListenerMap:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$900(Landroid/hardware/camera2/impl/CameraDevice;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 582
    :cond_1
    monitor-exit v4

    .line 585
    if-nez v0, :cond_3

    .line 606
    :cond_2
    :goto_0
    return-void

    .line 582
    .end local v0           #holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 589
    .restart local v0       #holder:Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;
    :cond_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDevice;

    #calls: Landroid/hardware/camera2/impl/CameraDevice;->isClosed()Z
    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraDevice;->access$000(Landroid/hardware/camera2/impl/CameraDevice;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 591
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 592
    .local v1, request:Landroid/hardware/camera2/CaptureRequest;
    new-instance v2, Landroid/hardware/camera2/CaptureResult;

    invoke-direct {v2, p2, v1, p1}, Landroid/hardware/camera2/CaptureResult;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;I)V

    .line 594
    .local v2, resultAsCapture:Landroid/hardware/camera2/CaptureResult;
    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$3;

    invoke-direct {v4, p0, v0, v1, v2}, Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDevice$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CameraDevice$CaptureListenerHolder;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
