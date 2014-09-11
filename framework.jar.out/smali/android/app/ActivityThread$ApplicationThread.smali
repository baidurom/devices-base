.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x3

.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s"

.field private static final HEAP_FULL_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"


# instance fields
.field private mLastProcessState:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 1
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    .line 548
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZ)V
    .locals 60
    .parameter "pw"
    .parameter "memInfo"
    .parameter "checkin"
    .parameter "dumpFullInfo"
    .parameter "dumpDalvik"

    .prologue
    .line 911
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v34, v52, v54

    .line 912
    .local v34, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v30, v52, v54

    .line 913
    .local v30, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v32, v52, v54

    .line 915
    .local v32, nativeFree:J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v46

    .line 917
    .local v46, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v17, v52, v54

    .line 918
    .local v17, dalvikMax:J
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v52

    const-wide/16 v54, 0x400

    div-long v15, v52, v54

    .line 919
    .local v15, dalvikFree:J
    sub-long v13, v17, v15

    .line 920
    .local v13, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v48

    .line 921
    .local v48, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v50

    .line 922
    .local v50, viewRootInstanceCount:J
    const-class v52, Landroid/app/ContextImpl;

    invoke-static/range {v52 .. v52}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v7

    .line 923
    .local v7, appContextInstanceCount:J
    const-class v52, Landroid/app/Activity;

    invoke-static/range {v52 .. v52}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v5

    .line 924
    .local v5, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v20

    .line 925
    .local v20, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v21

    .line 926
    .local v21, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v11

    .line 927
    .local v11, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v12

    .line 928
    .local v12, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v10

    .line 929
    .local v10, binderDeathObjectCount:I
    const-class v52, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    invoke-static/range {v52 .. v52}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v36

    .line 930
    .local v36, openSslSocketCount:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v47

    .line 933
    .local v47, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    if-eqz p3, :cond_4

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v52, v0

    if-eqz v52, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 940
    .local v45, processName:Ljava/lang/String;
    :goto_0
    const/16 v52, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 941
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 942
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 945
    move-object/from16 v0, p1

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 946
    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 947
    const-string v52, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    add-long v52, v34, v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 951
    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 952
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 953
    const-string v52, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 954
    add-long v52, v30, v13

    move-object/from16 v0, p1

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 957
    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 958
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 959
    const-string v52, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 960
    add-long v52, v32, v15

    move-object/from16 v0, p1

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 963
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 964
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 965
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 966
    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 969
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 970
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 971
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 975
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 976
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 977
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 981
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 982
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 983
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 987
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 988
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 989
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 993
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 994
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 995
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 996
    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 999
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    const/16 v52, 0x10

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1

    .line 1000
    invoke-static/range {v22 .. v22}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1001
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1002
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1003
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1004
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1005
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1006
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v52

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 999
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 936
    .end local v22           #i:I
    .end local v45           #processName:Ljava/lang/String;
    :cond_0
    const-string/jumbo v45, "unknown"

    goto/16 :goto_0

    .line 1010
    .restart local v22       #i:I
    .restart local v45       #processName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1011
    move-object/from16 v0, p1

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1012
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1013
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1015
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1016
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1017
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1018
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1020
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1021
    move-object/from16 v0, p1

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1024
    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v52, v0

    move/from16 v0, v52

    div-int/lit16 v0, v0, 0x400

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1025
    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v52, v0

    move/from16 v0, v52

    div-int/lit16 v0, v0, 0x400

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1026
    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    move/from16 v52, v0

    move/from16 v0, v52

    div-int/lit16 v0, v0, 0x400

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1027
    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v52, v0

    move/from16 v0, v52

    div-int/lit16 v0, v0, 0x400

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1028
    const/16 v22, 0x0

    :goto_2
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v52

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_2

    .line 1029
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1030
    .local v19, dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1031
    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v52, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1032
    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v52, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v52

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1033
    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v52, v0

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1034
    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    const/16 v52, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 1037
    .end local v19           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1210
    .end local v45           #processName:Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 1043
    .end local v22           #i:I
    :cond_4
    if-eqz p4, :cond_7

    .line 1044
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "Pss"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Pss"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "Shared"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string v55, "Private"

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, "Shared"

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, "Private"

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, "Swapped"

    aput-object v55, v53, v54

    const/16 v54, 0x8

    const-string v55, "Heap"

    aput-object v55, v53, v54

    const/16 v54, 0x9

    const-string v55, "Heap"

    aput-object v55, v53, v54

    const/16 v54, 0xa

    const-string v55, "Heap"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1046
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "Total"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Clean"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "Dirty"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string v55, "Dirty"

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, "Clean"

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, "Clean"

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, "Dirty"

    aput-object v55, v53, v54

    const/16 v54, 0x8

    const-string v55, "Size"

    aput-object v55, v53, v54

    const/16 v54, 0x9

    const-string v55, "Alloc"

    aput-object v55, v53, v54

    const/16 v54, 0xa

    const-string v55, "Free"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x8

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x9

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0xa

    const-string v55, "------"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Native Heap"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappablePss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedClean:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x8

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x9

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0xa

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1055
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Dalvik Heap"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappablePss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedClean:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x8

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x9

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0xa

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1077
    :goto_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v40, v0

    .line 1078
    .local v40, otherPss:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappablePss:I

    move/from16 v43, v0

    .line 1079
    .local v43, otherSwappablePss:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v42, v0

    .line 1080
    .local v42, otherSharedDirty:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v39, v0

    .line 1081
    .local v39, otherPrivateDirty:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedClean:I

    move/from16 v41, v0

    .line 1082
    .local v41, otherSharedClean:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateClean:I

    move/from16 v38, v0

    .line 1083
    .local v38, otherPrivateClean:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSwappedOut:I

    move/from16 v44, v0

    .line 1085
    .local v44, otherSwappedOut:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_5
    const/16 v52, 0x10

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_9

    .line 1086
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v25

    .line 1087
    .local v25, myPss:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 1088
    .local v28, mySwappablePss:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v27

    .line 1089
    .local v27, mySharedDirty:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v24

    .line 1090
    .local v24, myPrivateDirty:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v26

    .line 1091
    .local v26, mySharedClean:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v23

    .line 1092
    .local v23, myPrivateClean:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v29

    .line 1093
    .local v29, mySwappedOut:I
    if-nez v25, :cond_5

    if-nez v27, :cond_5

    if-nez v24, :cond_5

    if-nez v26, :cond_5

    if-nez v23, :cond_5

    if-eqz v29, :cond_6

    .line 1095
    :cond_5
    if-eqz p4, :cond_8

    .line 1096
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v22 .. v22}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x8

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x9

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0xa

    const-string v55, ""

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1104
    :goto_6
    sub-int v40, v40, v25

    .line 1105
    sub-int v43, v43, v28

    .line 1106
    sub-int v42, v42, v27

    .line 1107
    sub-int v39, v39, v24

    .line 1108
    sub-int v41, v41, v26

    .line 1109
    sub-int v38, v38, v23

    .line 1110
    sub-int v44, v44, v29

    .line 1085
    :cond_6
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_5

    .line 1061
    .end local v22           #i:I
    .end local v23           #myPrivateClean:I
    .end local v24           #myPrivateDirty:I
    .end local v25           #myPss:I
    .end local v26           #mySharedClean:I
    .end local v27           #mySharedDirty:I
    .end local v28           #mySwappablePss:I
    .end local v29           #mySwappedOut:I
    .end local v38           #otherPrivateClean:I
    .end local v39           #otherPrivateDirty:I
    .end local v40           #otherPss:I
    .end local v41           #otherSharedClean:I
    .end local v42           #otherSharedDirty:I
    .end local v43           #otherSwappablePss:I
    .end local v44           #otherSwappedOut:I
    :cond_7
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x8

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "Pss"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Private"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "Private"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string v55, "Swapped"

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, "Heap"

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, "Heap"

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, "Heap"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1063
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x8

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "Total"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Dirty"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "Clean"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string v55, "Dirty"

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, "Size"

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, "Alloc"

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, "Free"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1065
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x9

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, "------"

    aput-object v55, v53, v54

    const/16 v54, 0x8

    const-string v55, "------"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x8

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Native Heap"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateClean:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSwappedOut:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1071
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x8

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Dalvik Heap"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateClean:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSwappedOut:I

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1100
    .restart local v22       #i:I
    .restart local v23       #myPrivateClean:I
    .restart local v24       #myPrivateDirty:I
    .restart local v25       #myPss:I
    .restart local v26       #mySharedClean:I
    .restart local v27       #mySharedDirty:I
    .restart local v28       #mySwappablePss:I
    .restart local v29       #mySwappedOut:I
    .restart local v38       #otherPrivateClean:I
    .restart local v39       #otherPrivateDirty:I
    .restart local v40       #otherPss:I
    .restart local v41       #otherSharedClean:I
    .restart local v42       #otherSharedDirty:I
    .restart local v43       #otherSwappablePss:I
    .restart local v44       #otherSwappedOut:I
    :cond_8
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x8

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v22 .. v22}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, ""

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1114
    .end local v23           #myPrivateClean:I
    .end local v24           #myPrivateDirty:I
    .end local v25           #myPss:I
    .end local v26           #mySharedClean:I
    .end local v27           #mySharedDirty:I
    .end local v28           #mySwappablePss:I
    .end local v29           #mySwappedOut:I
    :cond_9
    if-eqz p4, :cond_c

    .line 1115
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Unknown"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x8

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x9

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0xa

    const-string v55, ""

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "TOTAL"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalSharedClean()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x8

    add-long v55, v34, v17

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x9

    add-long v55, v30, v13

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0xa

    add-long v55, v32, v15

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    :goto_7
    if-eqz p5, :cond_e

    .line 1137
    const-string v52, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    const-string v52, " Dalvik Details"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1140
    const/16 v22, 0x10

    .line 1141
    :goto_8
    const/16 v52, 0x15

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_e

    .line 1142
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v25

    .line 1143
    .restart local v25       #myPss:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappablePss(I)I

    move-result v28

    .line 1144
    .restart local v28       #mySwappablePss:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v27

    .line 1145
    .restart local v27       #mySharedDirty:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v24

    .line 1146
    .restart local v24       #myPrivateDirty:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedClean(I)I

    move-result v26

    .line 1147
    .restart local v26       #mySharedClean:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateClean(I)I

    move-result v23

    .line 1148
    .restart local v23       #myPrivateClean:I
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSwappedOut(I)I

    move-result v29

    .line 1149
    .restart local v29       #mySwappedOut:I
    if-nez v25, :cond_a

    if-nez v27, :cond_a

    if-nez v24, :cond_a

    if-nez v26, :cond_a

    if-eqz v23, :cond_b

    .line 1151
    :cond_a
    if-eqz p4, :cond_d

    .line 1152
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0xb

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v22 .. v22}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x8

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x9

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0xa

    const-string v55, ""

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1141
    :cond_b
    :goto_9
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_8

    .line 1125
    .end local v23           #myPrivateClean:I
    .end local v24           #myPrivateDirty:I
    .end local v25           #myPss:I
    .end local v26           #mySharedClean:I
    .end local v27           #mySharedDirty:I
    .end local v28           #mySwappablePss:I
    .end local v29           #mySwappedOut:I
    :cond_c
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x8

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Unknown"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, ""

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1128
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x8

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "TOTAL"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateClean()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOut()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    add-long v55, v34, v17

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x6

    add-long v55, v30, v13

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x7

    add-long v55, v32, v15

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1156
    .restart local v23       #myPrivateClean:I
    .restart local v24       #myPrivateDirty:I
    .restart local v25       #myPss:I
    .restart local v26       #mySharedClean:I
    .restart local v27       #mySharedDirty:I
    .restart local v28       #mySwappablePss:I
    .restart local v29       #mySwappedOut:I
    :cond_d
    const-string v52, "%13s %8s %8s %8s %8s %8s %8s %8s"

    const/16 v53, 0x8

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v22 .. v22}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x4

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x5

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x6

    const-string v55, ""

    aput-object v55, v53, v54

    const/16 v54, 0x7

    const-string v55, ""

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 1164
    .end local v23           #myPrivateClean:I
    .end local v24           #myPrivateDirty:I
    .end local v25           #myPss:I
    .end local v26           #mySharedClean:I
    .end local v27           #mySharedDirty:I
    .end local v28           #mySwappablePss:I
    .end local v29           #mySwappedOut:I
    :cond_e
    const-string v52, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    const-string v52, " Objects"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    const-string v52, "%21s %8d %21s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Views:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "ViewRootImpl:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    const-string v52, "%21s %8d %21s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "AppContexts:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Activities:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1172
    const-string v52, "%21s %8d %21s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Assets:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "AssetManagers:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    const-string v52, "%21s %8d %21s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Local Binders:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Proxy Binders:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    const-string v52, "%21s %8d"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "Death Recipients:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    const-string v52, "%21s %8d"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "OpenSSL Sockets:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1182
    const-string v52, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    const-string v52, " SQL"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    const-string v52, "%21s %8d"

    const/16 v53, 0x2

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "MEMORY_USED:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v55, v0

    move/from16 v0, v55

    div-int/lit16 v0, v0, 0x400

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1185
    const-string v52, "%21s %8d %21s %8d"

    const/16 v53, 0x4

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string v55, "PAGECACHE_OVERFLOW:"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    move/from16 v55, v0

    move/from16 v0, v55

    div-int/lit16 v0, v0, 0x400

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "MALLOC_SIZE:"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    move-object/from16 v0, v47

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v55, v0

    move/from16 v0, v55

    div-int/lit16 v0, v0, 0x400

    move/from16 v55, v0

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v55

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    const-string v52, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1189
    .local v4, N:I
    if-lez v4, :cond_12

    .line 1190
    const-string v52, " DATABASES"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    const-string v52, "  %8s %8s %14s %14s  %s"

    const/16 v53, 0x5

    move/from16 v0, v53

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    const-string/jumbo v55, "pgsz"

    aput-object v55, v53, v54

    const/16 v54, 0x1

    const-string v55, "dbsz"

    aput-object v55, v53, v54

    const/16 v54, 0x2

    const-string v55, "Lookaside(b)"

    aput-object v55, v53, v54

    const/16 v54, 0x3

    const-string v55, "cache"

    aput-object v55, v53, v54

    const/16 v54, 0x4

    const-string v55, "Dbname"

    aput-object v55, v53, v54

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v52

    move-object/from16 v3, v53

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    if-ge v0, v4, :cond_12

    .line 1194
    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1195
    .restart local v19       #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v53, "  %8s %8s %14s %14s  %s"

    const/16 v52, 0x5

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v56, v0

    const-wide/16 v58, 0x0

    cmp-long v52, v56, v58

    if-lez v52, :cond_f

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v52

    :goto_b
    aput-object v52, v54, v55

    const/16 v55, 0x1

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v56, v0

    const-wide/16 v58, 0x0

    cmp-long v52, v56, v58

    if-lez v52, :cond_10

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v56, v0

    invoke-static/range {v56 .. v57}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v52

    :goto_c
    aput-object v52, v54, v55

    const/16 v55, 0x2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v52, v0

    if-lez v52, :cond_11

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v52, v0

    invoke-static/range {v52 .. v52}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v52

    :goto_d
    aput-object v52, v54, v55

    const/16 v52, 0x3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v54, v52

    const/16 v52, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v55, v0

    aput-object v55, v54, v52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_a

    .line 1195
    :cond_f
    const-string v52, " "

    goto :goto_b

    :cond_10
    const-string v52, " "

    goto :goto_c

    :cond_11
    const-string v52, " "

    goto :goto_d

    .line 1204
    .end local v19           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    :cond_12
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v9

    .line 1205
    .local v9, assetAlloc:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 1206
    const-string v52, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1207
    const-string v52, " Asset Allocations"

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "pw"
    .parameter "format"
    .parameter "objs"

    .prologue
    .line 1242
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1243
    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 551
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #getter for: Landroid/app/ActivityThread;->mResourcesManager:Landroid/app/ResourcesManager;
    invoke-static {v0}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v1

    monitor-enter v1

    .line 552
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 556
    :cond_1
    monitor-exit v1

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 4
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "instrumentationUiConnection"
    .parameter "debugMode"
    .parameter "enableOpenGlTrace"
    .parameter "isRestrictedBackupMode"
    .parameter "persistent"
    .parameter "config"
    .parameter "compatInfo"
    .parameter
    .parameter "coreSettings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 742
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p17, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p17, :cond_0

    .line 744
    invoke-static/range {p17 .. p17}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 747
    :cond_0
    move-object/from16 v0, p18

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 749
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 750
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 751
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 752
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 753
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 754
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 755
    iput-object p9, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 756
    iput-object p10, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 757
    iput p11, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 758
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    .line 759
    move/from16 v0, p13

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 760
    move/from16 v0, p14

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 761
    move-object/from16 v0, p15

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 762
    move-object/from16 v0, p16

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 763
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFile:Ljava/lang/String;

    .line 764
    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 765
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$AppBindData;->initAutoStopProfiler:Z

    .line 766
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x6e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 767
    return-void
.end method

.method public clearDnsCache()V
    .locals 0

    .prologue
    .line 792
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 793
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 863
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 864
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "activitytoken"
    .parameter "prefix"
    .parameter "args"

    .prologue
    .line 872
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 874
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 875
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 876
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 877
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 878
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x88

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v1

    .line 880
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1220
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1221
    .local v1, pw:Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1222
    .local v0, printer:Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1224
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1214
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1215
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;)V

    .line 1216
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "managed"
    .parameter "path"
    .parameter "fd"

    .prologue
    .line 844
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 845
    .local v0, dhd:Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 846
    iput-object p3, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 847
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x87

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v2, v3, v0, v1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 848
    return-void

    .line 847
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZ[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "mem"
    .parameter "checkin"
    .parameter "dumpFullInfo"
    .parameter "dumpDalvik"
    .parameter "args"

    .prologue
    .line 900
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 901
    .local v6, fout:Ljava/io/FileOutputStream;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v6}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .local v1, pw:Ljava/io/PrintWriter;
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 903
    :try_start_0
    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 907
    return-void

    .line 905
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v0
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "providertoken"
    .parameter "args"

    .prologue
    .line 886
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 888
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 889
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 890
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 891
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x8d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpProvider failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    .line 805
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 807
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 808
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 809
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 810
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    :goto_0
    return-void

    .line 811
    :catch_0
    move-exception v1

    .line 812
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 800
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 801
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 802
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .parameter "start"
    .parameter "path"
    .parameter "fd"
    .parameter "profileType"

    .prologue
    .line 837
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ProfilerControlData;-><init>()V

    .line 838
    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    .line 839
    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 840
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7f

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v3, v0, v1, p4}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 841
    return-void

    .line 840
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V
    .locals 3
    .parameter "activityToken"
    .parameter "requestToken"
    .parameter "requestType"

    .prologue
    .line 1234
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1235
    .local v0, cmd:Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1236
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1237
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1238
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1239
    return-void
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 778
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 779
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 832
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 833
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 3
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"
    .parameter "processState"

    .prologue
    .line 696
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 697
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 698
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 699
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 700
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 705
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 706
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 782
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 783
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 784
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 867
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 868
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"
    .parameter "backupMode"

    .prologue
    .line 666
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 667
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 668
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 669
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 671
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 672
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .parameter "token"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "processState"

    .prologue
    .line 685
    const/4 v1, 0x0

    invoke-virtual {p0, p4, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 686
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 687
    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 688
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 689
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 691
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 692
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    .line 649
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6d

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 651
    return-void

    .line 649
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"

    .prologue
    .line 676
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 677
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 678
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 680
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 681
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 770
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 771
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 1284
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1285
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .locals 4
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "curConfig"
    .parameter "compatInfo"
    .parameter "procState"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .parameter "profileName"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p9, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p10, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, p7, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 608
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 610
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 611
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 612
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 613
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 614
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 615
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 617
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 618
    iput-object p10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 620
    iput-boolean p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 621
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 623
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFile:Ljava/lang/String;

    .line 624
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 625
    move/from16 v0, p15

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->autoStopProfiler:Z

    .line 627
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 629
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 630
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 829
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 641
    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 642
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 644
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 645
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 561
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x66

    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v1, p1, v0, p4}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 566
    return-void

    .line 561
    :cond_0
    const/16 v0, 0x65

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 10
    .parameter "intent"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"
    .parameter "sendingUser"
    .parameter "processState"

    .prologue
    .line 656
    const/4 v2, 0x0

    move/from16 v0, p9

    invoke-virtual {p0, v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 657
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    move-object v2, p1

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    .line 659
    .local v1, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 660
    iput-object p3, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 661
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x71

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 662
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 1
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .parameter "sendingUser"
    .parameter "processState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 822
    const/4 v0, 0x0

    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 823
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 825
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 8
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 635
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 637
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;IZ)V
    .locals 3
    .parameter "token"
    .parameter "processState"
    .parameter "isForward"

    .prologue
    const/4 v0, 0x0

    .line 587
    invoke-virtual {p0, p2, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 588
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6b

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 589
    return-void
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 593
    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 594
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 595
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 596
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "taskRemoved"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"

    .prologue
    .line 718
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 719
    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 720
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 721
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 722
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 723
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 725
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 726
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "sleeping"

    .prologue
    .line 582
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x89

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 583
    return-void

    .line 582
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    .line 570
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x67

    :goto_0
    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 573
    return-void

    .line 570
    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 729
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 730
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 774
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 775
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "drawComplete"

    .prologue
    .line 1261
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x90

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1262
    return-void

    .line 1261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 1257
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1258
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "intent"

    .prologue
    .line 709
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 710
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 711
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 713
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 714
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "showWindow"

    .prologue
    .line 576
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x69

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 579
    return-void

    .line 576
    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .parameter "coreSettings"

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1247
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "exclList"
    .parameter "pacFileUrl"

    .prologue
    .line 796
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    return-void
.end method

.method public setProcessState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1265
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1266
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .parameter "group"

    .prologue
    .line 856
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 860
    :goto_0
    return-void

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 1228
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1229
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "pkg"
    .parameter "info"

    .prologue
    .line 1250
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1251
    .local v0, ucd:Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1252
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1253
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1254
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 1
    .parameter "processState"
    .parameter "fromIpc"

    .prologue
    .line 1269
    monitor-enter p0

    .line 1270
    :try_start_0
    iget v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    if-eq v0, p1, :cond_0

    .line 1271
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 1279
    :cond_0
    monitor-exit p0

    .line 1280
    return-void

    .line 1279
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    .line 787
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 788
    return-void
.end method
