.class public Lcom/android/server/LenovoBatteryManagerService;
.super Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LenovoBatteryManagerService"

.field private static final package_action:Ljava/lang/String; = "action.boardcast.resume.activity.info"


# instance fields
.field private currentCABCStates:I

.field private currentDVFSStates:I

.field private currentPackageName:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

.field private patternValue:I

.field private power:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0}, Landroid/service/batterymanage/ILenovoBatteryManagerService$Stub;-><init>()V

    .line 75
    iput v1, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    .line 105
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/LenovoBatteryManagerService$1;-><init>(Lcom/android/server/LenovoBatteryManagerService;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    iput-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    .line 135
    iput v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    .line 161
    iput v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    .line 79
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;-><init>(Lcom/android/server/LenovoBatteryManagerService;Lcom/android/server/LenovoBatteryManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->mHandler:Lcom/android/server/LenovoBatteryManagerService$EneaWorkerHandler;

    .line 81
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/PowerManagerService;

    iput-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    .line 86
    const-string v0, "LenovoBatteryManagerService"

    const-string v1, "LenovoBatteryManagerService() init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->executePackageChange(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized executePackageChange(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/LenovoBatteryManagerService;->isPackageChange(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 122
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/LenovoBatteryManagerService;->setCABC(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isPackageChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v0, 0x1

    .line 127
    const-string v1, "LenovoBatteryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPackageChange, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    .line 131
    :cond_1
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setCABC(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 163
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCABC, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.mediatek.mtkvideoplayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.android.gallery3d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    :cond_0
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->setCABCOff()V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 175
    :cond_2
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    if-eq v0, v3, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->setCABCOn()V

    .line 177
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->currentCABCStates:I

    goto :goto_0
.end method

.method private setDVFS(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v3, 0x1

    .line 137
    const-string v0, "LenovoBatteryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDVFS, packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.sensky.reader.ReadingJoy_lenovo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.tencent.qq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.tencent.WBlog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentPackageName:Ljava/lang/String;

    const-string v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    :cond_0
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    if-eq v0, v3, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->setDVFSOn()V

    .line 147
    iput v3, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService;->power:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->setDVFSOff()V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LenovoBatteryManagerService;->currentDVFSStates:I

    goto :goto_0
.end method


# virtual methods
.method public getPatternValue()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    return v0
.end method

.method public initReceiver()V
    .locals 3

    .prologue
    .line 100
    const-string v1, "LenovoBatteryManagerService"

    const-string v2, "initReceiver() init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action.boardcast.resume.activity.info"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/LenovoBatteryManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LenovoBatteryManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method public setPatternValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 95
    iput p1, p0, Lcom/android/server/LenovoBatteryManagerService;->patternValue:I

    .line 96
    return-void
.end method
