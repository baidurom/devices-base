.class Lcom/android/server/pm/PackageManagerService$scanDirThread;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "scanDirThread"
.end annotation


# instance fields
.field private mCurrentTime:J

.field private mFileDir:Ljava/io/File;

.field private mFlags:I

.field private mScanMode:I

.field private mType:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJI)V
    .locals 0
    .parameter
    .parameter "dir"
    .parameter "flags"
    .parameter "scanMode"
    .parameter "currentTime"
    .parameter "type"

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1361
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1362
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mFileDir:Ljava/io/File;

    .line 1363
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mFlags:I

    .line 1364
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mScanMode:I

    .line 1365
    iput-wide p5, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mCurrentTime:J

    .line 1366
    iput p7, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mType:I

    .line 1367
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1371
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanDirThread  run.....mType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mFileDir:Ljava/io/File;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mFlags:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mScanMode:I

    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mCurrentTime:J

    #calls: Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)V

    .line 1373
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mType:I

    #calls: Lcom/android/server/pm/PackageManagerService;->setThreadReadyStatus(I)V
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;I)V

    .line 1374
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scanDirThread  end.....mType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$scanDirThread;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    return-void
.end method
