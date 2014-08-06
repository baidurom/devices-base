.class public Lcom/mediatek/voicecommand/app/VoiceCommandManager;
.super Ljava/lang/Object;
.source "VoiceCommandManager.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceCommandManager"


# instance fields
.field isRegistered:Z

.field isServiceConnecting:Z

.field private mAppContext:Landroid/content/Context;

.field private mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mCommandCaches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLock:[B

.field private mRegisterListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/voicecommand/VoiceCommandListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVoiceServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mLock:[B

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCommandCaches:Ljava/util/ArrayList;

    .line 74
    iput-boolean v1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isRegistered:Z

    .line 76
    iput-boolean v1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    .line 83
    new-instance v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$1;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/app/VoiceCommandManager$1;-><init>(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 95
    new-instance v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/app/VoiceCommandManager$2;-><init>(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 153
    new-instance v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$3;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/app/VoiceCommandManager$3;-><init>(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_3

    .line 180
    iput-object p1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    .line 187
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 188
    const-string v0, "VoiceCommandManager"

    const-string v1, "sContext is null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVoiceServiceIntent:Landroid/content/Intent;

    .line 192
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVoiceServiceIntent:Landroid/content/Intent;

    const-string v1, "android.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVoiceServiceIntent:Landroid/content/Intent;

    const-string v1, "android.mediatek.NativeService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-direct {p0}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->bindVoiceService()V

    .line 195
    return-void

    .line 181
    :cond_3
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    if-eq v0, p1, :cond_1

    .line 182
    const-string v0, "VoiceCommandManager"

    const-string v1, "Constructor called more than once in the process"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v0, "VoiceCommandManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Original: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mLock:[B

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/voicecommand/app/VoiceCommandManager;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/voicecommand/app/VoiceCommandManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleServiceDisconnected(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCommandCaches:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/voicecommand/app/VoiceCommandManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private addListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_0
    return-void
.end method

.method private bindVoiceService()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 201
    iput-boolean v1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    .line 203
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVoiceServiceIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVoiceServiceIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    iput-boolean v6, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    goto :goto_0
.end method

.method private deleteListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 380
    return-void
.end method

.method private handleCommonError(I)V
    .locals 2
    .parameter "errorid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    packed-switch p1, :pswitch_data_0

    .line 406
    return-void

    .line 395
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Duplicate Registration!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Register the process first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :pswitch_2
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Can\'t find the service!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Process has no permission to access!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleServiceDisconnected(Z)V
    .locals 8
    .parameter "isReconnect"

    .prologue
    const/4 v7, 0x0

    .line 415
    const-string v2, "VoiceCommandManager"

    const-string v3, "Service Disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 417
    iput-boolean v7, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isRegistered:Z

    .line 418
    iput-boolean v7, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    .line 420
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_2

    .line 423
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVoiceServiceIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    if-nez v2, :cond_0

    .line 435
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCommandCaches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCommandCaches:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;

    .line 437
    .local v0, command:Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
    iget-object v2, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 438
    iget-object v2, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mExtraData:Landroid/os/Bundle;

    const-string v3, "Result"

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    iget-object v2, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mExtraData:Landroid/os/Bundle;

    const-string v3, "Result_Info"

    const/16 v4, 0x3ee

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 444
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    iget v3, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mMainAction:I

    iget v4, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mSubAction:I

    iget-object v5, v0, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;->mExtraData:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->onVoiceCommandNotified(IILandroid/os/Bundle;)V

    .line 452
    .end local v0           #command:Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    if-nez v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCommandCaches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 454
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 456
    :cond_1
    return-void

    .line 427
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVoiceServiceIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v1

    .line 431
    .local v1, e:Landroid/os/RemoteException;
    iput-boolean v7, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    goto :goto_0
.end method


# virtual methods
.method public registerListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    .locals 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 234
    const-string v3, "VoiceCommandManager"

    const-string v4, "registerListener start!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez p1, :cond_0

    .line 236
    const-string v3, "VoiceCommandManager"

    const-string v4, "RegisterListener contains the illeagal listener"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v3, Ljava/lang/IllegalAccessException;

    const-string v4, "Illeagal listener"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 239
    :cond_0
    iget-object v4, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mLock:[B

    monitor-enter v4

    .line 240
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    if-nez v3, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->bindVoiceService()V

    .line 244
    :cond_1
    const/4 v1, 0x0

    .line 246
    .local v1, errorid:I
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    .line 249
    :try_start_1
    invoke-virtual {p1}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, pkgName:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 251
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 254
    :cond_2
    const-string v3, "VoiceCommandManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RegisterListener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v5, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v3, v2, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 257
    if-nez v1, :cond_3

    .line 258
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isRegistered:Z

    .line 259
    const-string v3, "VoiceCommandManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RegisterListener Success "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_3
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->addListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    .end local v2           #pkgName:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_4

    .line 274
    :try_start_2
    invoke-direct {p0, v1}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleCommonError(I)V

    .line 276
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    const-string v3, "VoiceCommandManager"

    const-string v4, "registerListener end!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x1

    :try_start_3
    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 264
    const/16 v1, 0x3ee

    .line 265
    goto :goto_0

    .line 266
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    iget-boolean v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isRegistered:Z

    if-eqz v3, :cond_7

    .line 268
    :cond_6
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->addListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V

    goto :goto_0

    .line 276
    .end local v1           #errorid:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 270
    .restart local v1       #errorid:I
    :cond_7
    const/16 v1, 0x3ee

    goto :goto_0
.end method

.method public sendCommand(Landroid/content/Context;IILandroid/os/Bundle;)V
    .locals 6
    .parameter "context"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 341
    const-string v2, "VoiceCommandManager"

    const-string v3, "sendCommand start!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mLock:[B

    monitor-enter v3

    .line 343
    :try_start_0
    const-string v2, "VoiceCommandManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send Command mainAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extraData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    new-instance v2, Ljava/lang/IllegalAccessException;

    const-string v4, "Register listener first!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 347
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->isServiceConnecting:Z

    if-eqz v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCommandCaches:Ljava/util/ArrayList;

    new-instance v4, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;

    invoke-direct {v4, p0, p2, p3, p4}, Lcom/mediatek/voicecommand/app/VoiceCommandManager$CacheCommand;-><init>(Lcom/mediatek/voicecommand/app/VoiceCommandManager;IILandroid/os/Bundle;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    const-string v2, "VoiceCommandManager"

    const-string v3, "sendCommand end!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    return-void

    .line 352
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/voicecommand/VoiceCommandListener;

    invoke-virtual {v2}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->getPkgName()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 355
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 357
    :cond_3
    iget-object v2, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, v1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v0

    .line 359
    .local v0, errorid:I
    const-string v2, "VoiceCommandManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent Command mainAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extraData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    if-eqz v0, :cond_1

    .line 365
    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleCommonError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public unRegisterListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V
    .locals 7
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    const-string v3, "VoiceCommandManager"

    const-string v4, "unRegisterListener start!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    :cond_0
    const-string v3, "VoiceCommandManager"

    const-string v4, "unRegisterListener contains the illeagal listener"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v3, Ljava/lang/IllegalAccessException;

    const-string v4, "Illeagal listener"

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    :cond_1
    iget-object v4, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mLock:[B

    monitor-enter v4

    .line 294
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->deleteListener(Lcom/mediatek/common/voicecommand/VoiceCommandListener;)V

    .line 295
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mRegisterListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v3, :cond_3

    .line 298
    invoke-virtual {p1}, Lcom/mediatek/common/voicecommand/VoiceCommandListener;->getPkgName()Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, pkgName:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 300
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 302
    :cond_2
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v5, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v3, v2, v5}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 304
    .local v1, errorid:I
    iget-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mAppContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 305
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 306
    if-eqz v1, :cond_3

    .line 307
    invoke-direct {p0, v1}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleCommonError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 316
    .end local v1           #errorid:I
    .end local v2           #pkgName:Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->handleServiceDisconnected(Z)V

    .line 318
    :cond_4
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    const-string v3, "VoiceCommandManager"

    const-string v4, "unRegisterListener end!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/mediatek/voicecommand/app/VoiceCommandManager;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 313
    const-string v3, "VoiceCommandManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregister error in handler RemoteException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method
