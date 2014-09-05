.class Landroid/media/AudioService$RemoteControlStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteControlStackEntry"
.end annotation


# instance fields
.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingUid:I

.field public final mMediaIntent:Landroid/app/PendingIntent;

.field public mPlaybackState:Landroid/media/AudioService$RccPlaybackState;

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPlaybackVolume:I

.field public mPlaybackVolumeHandling:I

.field public mPlaybackVolumeMax:I

.field public mRcClient:Landroid/media/IRemoteControlClient;

.field public mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

.field public mRccId:I

.field public final mReceiverComponent:Landroid/content/ComponentName;

.field public mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

.field public final mService:Landroid/media/AudioService;

.field public mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .parameter "service"
    .parameter "mediaIntent"
    .parameter "eventReceiver"
    .parameter "token"

    .prologue
    const/4 v1, -0x1

    .line 4961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4917
    iput v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    .line 4962
    iput-object p1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mService:Landroid/media/AudioService;

    .line 4963
    iput-object p2, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    .line 4964
    iput-object p3, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    .line 4965
    iput-object p4, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    .line 4966
    iput v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 4967
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 4968
    invoke-static {}, Landroid/media/AudioService;->access$9904()I

    move-result v1

    iput v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    .line 4969
    new-instance v1, Landroid/media/AudioService$RccPlaybackState;

    const/4 v2, 0x1

    const-wide/16 v3, -0x1

    const/high16 v5, 0x3f80

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/media/AudioService$RccPlaybackState;-><init>(IJF)V

    iput-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:Landroid/media/AudioService$RccPlaybackState;

    .line 4974
    invoke-virtual {p0}, Landroid/media/AudioService$RemoteControlStackEntry;->resetPlaybackInfo()V

    .line 4975
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 4977
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4986
    :cond_0
    :goto_0
    return-void

    .line 4978
    :catch_0
    move-exception v0

    .line 4979
    .local v0, e:Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mService:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    invoke-static {v1}, Landroid/media/AudioService;->access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;

    move-result-object v1

    new-instance v2, Landroid/media/AudioService$RemoteControlStackEntry$1;

    invoke-direct {v2, p0}, Landroid/media/AudioService$RemoteControlStackEntry$1;-><init>(Landroid/media/AudioService$RemoteControlStackEntry;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 5011
    iget-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mService:Landroid/media/AudioService;

    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 5012
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 5002
    invoke-virtual {p0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5003
    iget-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 5004
    iget-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5005
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mToken:Landroid/os/IBinder;

    .line 5007
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 5016
    invoke-virtual {p0}, Landroid/media/AudioService$RemoteControlStackEntry;->destroy()V

    .line 5017
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5018
    return-void
.end method

.method public resetPlaybackInfo()V
    .locals 2

    .prologue
    const/16 v1, 0xf

    .line 4950
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    .line 4951
    iput v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 4952
    iput v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 4953
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 4954
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    .line 4955
    iget-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:Landroid/media/AudioService$RccPlaybackState;

    invoke-virtual {v0}, Landroid/media/AudioService$RccPlaybackState;->reset()V

    .line 4956
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 4957
    return-void
.end method

.method public unlinkToRcClientDeath()V
    .locals 4

    .prologue
    .line 4989
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    #getter for: Landroid/media/AudioService$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/AudioService$RcClientDeathHandler;->access$10000(Landroid/media/AudioService$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4991
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    #getter for: Landroid/media/AudioService$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/AudioService$RcClientDeathHandler;->access$10000(Landroid/media/AudioService$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4992
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4999
    :cond_0
    :goto_0
    return-void

    .line 4993
    :catch_0
    move-exception v0

    .line 4995
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unlinkToRcClientDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
