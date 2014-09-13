.class public final Lcom/android/internal/app/ProcessStats$ServiceState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceState"
.end annotation


# static fields
.field public static final SERVICE_BOUND:I = 0x2

.field static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1


# instance fields
.field mBoundCount:I

.field mBoundStartTime:J

.field public mBoundState:I

.field mExecCount:I

.field mExecStartTime:J

.field public mExecState:I

.field mOwner:Ljava/lang/Object;

.field public final mPackage:Ljava/lang/String;

.field mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field public final mProcessName:Ljava/lang/String;

.field mRunCount:I

.field mRunStartTime:J

.field public mRunState:I

.field mStartedCount:I

.field mStartedStartTime:J

.field public mStartedState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 1
    .parameter "processStats"
    .parameter "pkg"
    .parameter "name"
    .parameter "processName"
    .parameter "proc"

    .prologue
    const/4 v0, -0x1

    .line 2880
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2863
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    .line 2867
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    .line 2871
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    .line 2875
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    .line 2881
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    .line 2882
    iput-object p4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    .line 2883
    iput-object p5, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2884
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 2849
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDuration(IIJIJ)J
    .locals 5
    .parameter "opType"
    .parameter "curState"
    .parameter "startTime"
    .parameter "memFactor"
    .parameter "now"

    .prologue
    .line 3095
    mul-int/lit8 v3, p5, 0x4

    add-int v0, p1, v3

    .line 3096
    .local v0, state:I
    invoke-virtual {p0, v0, p6, p7}, Lcom/android/internal/app/ProcessStats$DurationsTable;->getDuration(IJ)J

    move-result-wide v1

    .line 3097
    .local v1, time:J
    if-ne p2, p5, :cond_0

    .line 3098
    sub-long v3, p6, p3

    add-long/2addr v1, v3

    .line 3100
    :cond_0
    return-wide v1
.end method

.method private updateRunning(IJ)V
    .locals 4
    .parameter "memFactor"
    .parameter "now"

    .prologue
    const/4 v1, -0x1

    .line 3017
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v1, :cond_3

    :cond_0
    move v0, p1

    .line 3019
    .local v0, state:I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v2, v0, :cond_2

    .line 3020
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v2, v1, :cond_4

    .line 3021
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    sub-long v2, p2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 3026
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    .line 3027
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3029
    :cond_2
    return-void

    .end local v0           #state:I
    :cond_3
    move v0, v1

    .line 3017
    goto :goto_0

    .line 3023
    .restart local v0       #state:I
    :cond_4
    if-eq v0, v1, :cond_1

    .line 3024
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    goto :goto_1
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 2961
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 2962
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 2963
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 2964
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 2965
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 2966
    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .locals 5
    .parameter "newOwner"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2887
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    .line 2888
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 2889
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 2890
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 2919
    :cond_0
    :goto_0
    return-void

    .line 2894
    :cond_1
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 2895
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v3, :cond_0

    .line 2897
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2898
    .local v0, now:J
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v2, v3, :cond_3

    .line 2902
    invoke-virtual {p0, v4, v4, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 2904
    :cond_3
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v3, :cond_4

    .line 2908
    invoke-virtual {p0, v4, v4, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 2910
    :cond_4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v3, :cond_0

    .line 2914
    invoke-virtual {p0, v4, v4, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    goto :goto_0
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 7
    .parameter "owner"
    .parameter "silently"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2922
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-ne v2, p1, :cond_7

    .line 2923
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 2924
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-ne v2, v5, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v5, :cond_6

    .line 2926
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2927
    .local v0, now:J
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v2, v5, :cond_2

    .line 2928
    if-nez p2, :cond_1

    .line 2929
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while started: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_1
    invoke-virtual {p0, v6, v6, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 2935
    :cond_2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v5, :cond_4

    .line 2936
    if-nez p2, :cond_3

    .line 2937
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while bound: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    :cond_3
    invoke-virtual {p0, v6, v6, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 2943
    :cond_4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v5, :cond_6

    .line 2944
    if-nez p2, :cond_5

    .line 2945
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cleared while exec: pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_5
    invoke-virtual {p0, v6, v6, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 2952
    .end local v0           #now:J
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 2954
    :cond_7
    return-void
.end method

.method commitStateTime(J)V
    .locals 4
    .parameter "now"

    .prologue
    const/4 v3, -0x1

    .line 2997
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v0, v3, :cond_0

    .line 2998
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x0

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    sub-long v1, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 2999
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3001
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_1

    .line 3002
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    sub-long v1, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 3004
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 3006
    :cond_1
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2

    .line 3007
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    sub-long v1, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 3008
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 3010
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v0, v3, :cond_3

    .line 3011
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    sub-long v1, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 3012
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 3014
    :cond_3
    return-void
.end method

.method public isInUse()Z
    .locals 1

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readFromParcel(Landroid/os/Parcel;)Z
    .locals 1
    .parameter "in"

    .prologue
    .line 2986
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$DurationsTable;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2987
    const/4 v0, 0x0

    .line 2993
    :goto_0
    return v0

    .line 2989
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 2990
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 2991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 2992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 2993
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resetSafely(J)V
    .locals 4
    .parameter "now"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2969
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$DurationsTable;->resetDurationsSafely()V

    .line 2970
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 2971
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 2972
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 2973
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v0, v3, :cond_3

    :goto_3
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 2974
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 2975
    return-void

    :cond_0
    move v0, v2

    .line 2970
    goto :goto_0

    :cond_1
    move v0, v2

    .line 2971
    goto :goto_1

    :cond_2
    move v0, v2

    .line 2972
    goto :goto_2

    :cond_3
    move v1, v2

    .line 2973
    goto :goto_3
.end method

.method public setBound(ZIJ)V
    .locals 5
    .parameter "bound"
    .parameter "memFactor"
    .parameter "now"

    .prologue
    const/4 v1, -0x1

    .line 3059
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 3060
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binding service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    :cond_0
    if-eqz p1, :cond_3

    move v0, p2

    .line 3063
    .local v0, state:I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v0, :cond_2

    .line 3064
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v1, :cond_4

    .line 3065
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 3070
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    .line 3071
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 3072
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3074
    :cond_2
    return-void

    .end local v0           #state:I
    :cond_3
    move v0, v1

    .line 3062
    goto :goto_0

    .line 3067
    .restart local v0       #state:I
    :cond_4
    if-eqz p1, :cond_1

    .line 3068
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    goto :goto_1
.end method

.method public setExecuting(ZIJ)V
    .locals 5
    .parameter "executing"
    .parameter "memFactor"
    .parameter "now"

    .prologue
    const/4 v1, -0x1

    .line 3077
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 3078
    const-string v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Executing service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :cond_0
    if-eqz p1, :cond_3

    move v0, p2

    .line 3081
    .local v0, state:I
    :goto_0
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v0, :cond_2

    .line 3082
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v1, :cond_4

    .line 3083
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 3087
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    .line 3088
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 3089
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3091
    :cond_2
    return-void

    .end local v0           #state:I
    :cond_3
    move v0, v1

    .line 3080
    goto :goto_0

    .line 3084
    .restart local v0       #state:I
    :cond_4
    if-eqz p1, :cond_1

    .line 3085
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    goto :goto_1
.end method

.method public setStarted(ZIJ)V
    .locals 6
    .parameter "started"
    .parameter "memFactor"
    .parameter "now"

    .prologue
    const/4 v2, -0x1

    .line 3032
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 3033
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " without owner"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    :cond_0
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v2, :cond_4

    const/4 v1, 0x1

    .line 3036
    .local v1, wasStarted:Z
    :goto_0
    if-eqz p1, :cond_5

    move v0, p2

    .line 3037
    .local v0, state:I
    :goto_1
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v0, :cond_3

    .line 3038
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v2, :cond_6

    .line 3039
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x1

    iget-wide v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    sub-long v3, p3, v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$DurationsTable;->addDuration(IJ)V

    .line 3044
    :cond_1
    :goto_2
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    .line 3045
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 3046
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3047
    if-eq v1, p1, :cond_2

    .line 3048
    if-eqz p1, :cond_7

    .line 3049
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJ)V

    .line 3054
    :cond_2
    :goto_3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3056
    :cond_3
    return-void

    .line 3035
    .end local v0           #state:I
    .end local v1           #wasStarted:Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #wasStarted:Z
    :cond_5
    move v0, v2

    .line 3036
    goto :goto_1

    .line 3041
    .restart local v0       #state:I
    :cond_6
    if-eqz p1, :cond_1

    .line 3042
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    goto :goto_2

    .line 3051
    :cond_7
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v2, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJ)V

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " proc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 1
    .parameter "out"
    .parameter "now"

    .prologue
    .line 2978
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$DurationsTable;->writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 2979
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2980
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2981
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2982
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2983
    return-void
.end method
