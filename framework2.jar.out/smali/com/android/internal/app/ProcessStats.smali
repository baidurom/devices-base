.class public final Lcom/android/internal/app/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ProcessStats$ProcessDataCollection;,
        Lcom/android/internal/app/ProcessStats$PackageState;,
        Lcom/android/internal/app/ProcessStats$ServiceState;,
        Lcom/android/internal/app/ProcessStats$ProcessState;,
        Lcom/android/internal/app/ProcessStats$DurationsTable;
    }
.end annotation


# static fields
.field public static final ADJ_COUNT:I = 0x8

.field public static final ADJ_MEM_FACTOR_COUNT:I = 0x4

.field public static final ADJ_MEM_FACTOR_CRITICAL:I = 0x3

.field public static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field public static final ADJ_MEM_FACTOR_MODERATE:I = 0x1

.field public static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field public static final ADJ_MEM_NAMES_CSV:[Ljava/lang/String; = null

.field static final ADJ_MEM_TAGS:[Ljava/lang/String; = null

.field public static final ADJ_NOTHING:I = -0x1

.field public static final ADJ_SCREEN_MOD:I = 0x4

.field public static final ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String; = null

.field public static final ADJ_SCREEN_OFF:I = 0x0

.field public static final ADJ_SCREEN_ON:I = 0x4

.field static final ADJ_SCREEN_TAGS:[Ljava/lang/String; = null

.field public static final ALL_MEM_ADJ:[I = null

.field public static final ALL_PROC_STATES:[I = null

.field public static final ALL_SCREEN_ADJ:[I = null

.field public static final BACKGROUND_PROC_STATES:[I = null

.field static final BAD_TABLE:[I = null

.field public static COMMIT_PERIOD:J = 0x0L

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/ProcessStats;",
            ">;"
        }
    .end annotation
.end field

.field static final CSV_SEP:Ljava/lang/String; = "\t"

.field static final DEBUG:Z = false

.field static final DEBUG_PARCEL:Z = false

.field public static final FLAG_COMPLETE:I = 0x1

.field public static final FLAG_SHUTDOWN:I = 0x2

.field public static final FLAG_SYSPROPS:I = 0x4

.field static final LONGS_SIZE:I = 0x1000

.field private static final MAGIC:I = 0x50535453

.field public static final NON_CACHED_PROC_STATES:[I = null

.field static OFFSET_ARRAY_MASK:I = 0x0

.field static OFFSET_ARRAY_SHIFT:I = 0x0

.field static OFFSET_INDEX_MASK:I = 0x0

.field static OFFSET_INDEX_SHIFT:I = 0x0

.field static OFFSET_TYPE_MASK:I = 0x0

.field static OFFSET_TYPE_SHIFT:I = 0x0

.field private static final PARCEL_VERSION:I = 0xd

.field static final PROCESS_STATE_TO_STATE:[I = null

.field public static final PSS_AVERAGE:I = 0x2

.field public static final PSS_COUNT:I = 0x7

.field public static final PSS_MAXIMUM:I = 0x3

.field public static final PSS_MINIMUM:I = 0x1

.field public static final PSS_SAMPLE_COUNT:I = 0x0

.field public static final PSS_USS_AVERAGE:I = 0x5

.field public static final PSS_USS_MAXIMUM:I = 0x6

.field public static final PSS_USS_MINIMUM:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "procstats"

.field public static final STATE_BACKUP:I = 0x4

.field public static final STATE_CACHED_ACTIVITY:I = 0xb

.field public static final STATE_CACHED_ACTIVITY_CLIENT:I = 0xc

.field public static final STATE_CACHED_EMPTY:I = 0xd

.field public static final STATE_COUNT:I = 0xe

.field public static final STATE_HEAVY_WEIGHT:I = 0x5

.field public static final STATE_HOME:I = 0x9

.field public static final STATE_IMPORTANT_BACKGROUND:I = 0x3

.field public static final STATE_IMPORTANT_FOREGROUND:I = 0x2

.field public static final STATE_LAST_ACTIVITY:I = 0xa

.field static final STATE_NAMES:[Ljava/lang/String; = null

.field public static final STATE_NAMES_CSV:[Ljava/lang/String; = null

.field public static final STATE_NOTHING:I = -0x1

.field public static final STATE_PERSISTENT:I = 0x0

.field public static final STATE_RECEIVER:I = 0x8

.field public static final STATE_SERVICE:I = 0x6

.field public static final STATE_SERVICE_RESTARTING:I = 0x7

.field static final STATE_TAGS:[Ljava/lang/String; = null

.field public static final STATE_TOP:I = 0x1

.field static final TAG:Ljava/lang/String; = "ProcessStats"


# instance fields
.field mAddLongTable:[I

.field mAddLongTableSize:I

.field mCommonStringToIndex:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFlags:I

.field mIndexToCommonString:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mLongs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[J>;"
        }
    .end annotation
.end field

.field public mMemFactor:I

.field public final mMemFactorDurations:[J

.field mNextLong:I

.field public final mPackages:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$PackageState;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation
.end field

.field public mReadError:Ljava/lang/String;

.field mRunning:Z

.field mRuntime:Ljava/lang/String;

.field public mStartTime:J

.field public mTimePeriodEndRealtime:J

.field public mTimePeriodStartClock:J

.field public mTimePeriodStartClockStr:Ljava/lang/String;

.field public mTimePeriodStartRealtime:J

.field mWebView:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 53
    const-wide/32 v0, 0xa4cb80

    sput-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    .line 96
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    .line 99
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    .line 101
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    .line 107
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    .line 113
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    .line 130
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 137
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Persistent"

    aput-object v1, v0, v3

    const-string v1, "Top       "

    aput-object v1, v0, v5

    const-string v1, "Imp Fg    "

    aput-object v1, v0, v4

    const-string v1, "Imp Bg    "

    aput-object v1, v0, v7

    const-string v1, "Backup    "

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "Heavy Wght"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Service   "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Service Rs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Receiver  "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Home      "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Last Act  "

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Cch Act   "

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Cch CliAct"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Cch Empty "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    .line 144
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "off"

    aput-object v1, v0, v3

    const-string v1, "on"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    .line 148
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "norm"

    aput-object v1, v0, v3

    const-string v1, "mod"

    aput-object v1, v0, v5

    const-string v1, "low"

    aput-object v1, v0, v4

    const-string v1, "crit"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    .line 152
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pers"

    aput-object v1, v0, v3

    const-string v1, "top"

    aput-object v1, v0, v5

    const-string v1, "impfg"

    aput-object v1, v0, v4

    const-string v1, "impbg"

    aput-object v1, v0, v7

    const-string v1, "backup"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "heavy"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "service"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "service-rs"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "receiver"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "home"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lastact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "cch-activity"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cch-aclient"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "cch-empty"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    .line 158
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    .line 162
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "n"

    aput-object v1, v0, v3

    const-string v1, "m"

    aput-object v1, v0, v5

    const-string v1, "l"

    aput-object v1, v0, v4

    const-string v1, "c"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    .line 166
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "p"

    aput-object v1, v0, v3

    const-string v1, "t"

    aput-object v1, v0, v5

    const-string v1, "f"

    aput-object v1, v0, v4

    const-string v1, "b"

    aput-object v1, v0, v7

    const-string v1, "u"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "w"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "s"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "e"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    .line 179
    sput v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    .line 180
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    .line 182
    const/16 v0, 0x8

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    .line 183
    const/16 v0, 0xff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    .line 185
    const/16 v0, 0x10

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    .line 186
    const v0, 0xffff

    sput v0, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    .line 303
    new-instance v0, Lcom/android/internal/app/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1066
    new-array v0, v3, [I

    sput-object v0, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    return-void

    .line 96
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 99
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 107
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 113
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 130
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 193
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 195
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "running"

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 193
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    .line 195
    const/16 v0, 0x8

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    .line 220
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats;->reset()V

    .line 222
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static binarySearch([III)I
    .locals 6
    .parameter "array"
    .parameter "size"
    .parameter "value"

    .prologue
    .line 1606
    const/4 v1, 0x0

    .line 1607
    .local v1, lo:I
    add-int/lit8 v0, p1, -0x1

    .line 1609
    .local v0, hi:I
    :goto_0
    if-gt v1, v0, :cond_1

    .line 1610
    add-int v4, v1, v0

    ushr-int/lit8 v2, v4, 0x1

    .line 1611
    .local v2, mid:I
    aget v4, p0, v2

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int/2addr v4, v5

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v3, v4, v5

    .line 1613
    .local v3, midVal:I
    if-ge v3, p2, :cond_0

    .line 1614
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 1615
    :cond_0
    if-le v3, p2, :cond_2

    .line 1616
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    .line 1621
    .end local v2           #mid:I
    .end local v3           #midVal:I
    :cond_1
    xor-int/lit8 v2, v1, -0x1

    :cond_2
    return v2
.end method

.method private buildTimePeriodStartClockStr()V
    .locals 3

    .prologue
    .line 1062
    const-string v0, "yyyy-MM-dd-HH-mm-ss"

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 1064
    return-void
.end method

.method public static computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V
    .locals 27
    .parameter "proc"
    .parameter "data"
    .parameter "now"

    .prologue
    .line 474
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 475
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 477
    const/4 v10, 0x0

    .local v10, is:I
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_8

    .line 478
    const/4 v8, 0x0

    .local v8, im:I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v8, v0, :cond_7

    .line 479
    const/4 v9, 0x0

    .local v9, ip:I
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_6

    .line 480
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->screenStates:[I

    move-object/from16 v21, v0

    aget v21, v21, v10

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->memStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v8

    add-int v21, v21, v22

    mul-int/lit8 v21, v21, 0xe

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->procStates:[I

    move-object/from16 v22, v0

    aget v22, v22, v9

    add-int v7, v21, v22

    .line 482
    .local v7, bucket:I
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v23

    add-long v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    .line 483
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v19

    .line 484
    .local v19, samples:J
    const-wide/16 v21, 0x0

    cmp-long v21, v19, v21

    if-lez v21, :cond_1

    .line 485
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v15

    .line 486
    .local v15, minPss:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v3

    .line 487
    .local v3, avgPss:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v11

    .line 488
    .local v11, maxPss:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v17

    .line 489
    .local v17, minUss:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v5

    .line 490
    .local v5, avgUss:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v13

    .line 491
    .local v13, maxUss:J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_2

    .line 492
    move-object/from16 v0, p1

    iput-wide v15, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 493
    move-object/from16 v0, p1

    iput-wide v3, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 494
    move-object/from16 v0, p1

    iput-wide v11, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 495
    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 496
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 497
    move-object/from16 v0, p1

    iput-wide v13, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    .line 516
    :cond_0
    :goto_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v21, v0

    add-long v21, v21, v19

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    .line 479
    .end local v3           #avgPss:J
    .end local v5           #avgUss:J
    .end local v11           #maxPss:J
    .end local v13           #maxUss:J
    .end local v15           #minPss:J
    .end local v17           #minUss:J
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 499
    .restart local v3       #avgPss:J
    .restart local v5       #avgUss:J
    .restart local v11       #maxPss:J
    .restart local v13       #maxUss:J
    .restart local v15       #minPss:J
    .restart local v17       #minUss:J
    :cond_2
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    move-wide/from16 v21, v0

    cmp-long v21, v15, v21

    if-gez v21, :cond_3

    .line 500
    move-object/from16 v0, p1

    iput-wide v15, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minPss:J

    .line 502
    :cond_3
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    long-to-double v0, v3

    move-wide/from16 v23, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    add-long v23, v23, v19

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgPss:J

    .line 504
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    move-wide/from16 v21, v0

    cmp-long v21, v11, v21

    if-lez v21, :cond_4

    .line 505
    move-object/from16 v0, p1

    iput-wide v11, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxPss:J

    .line 507
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    move-wide/from16 v21, v0

    cmp-long v21, v17, v21

    if-gez v21, :cond_5

    .line 508
    move-wide/from16 v0, v17

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->minUss:J

    .line 510
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    mul-double v21, v21, v23

    long-to-double v0, v5

    move-wide/from16 v23, v0

    move-wide/from16 v0, v19

    long-to-double v0, v0

    move-wide/from16 v25, v0

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    move-wide/from16 v23, v0

    add-long v23, v23, v19

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    div-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-long v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->avgUss:J

    .line 512
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    move-wide/from16 v21, v0

    cmp-long v21, v13, v21

    if-lez v21, :cond_0

    .line 513
    move-object/from16 v0, p1

    iput-wide v13, v0, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->maxUss:J

    goto/16 :goto_3

    .line 478
    .end local v3           #avgPss:J
    .end local v5           #avgUss:J
    .end local v7           #bucket:I
    .end local v11           #maxPss:J
    .end local v13           #maxUss:J
    .end local v15           #minPss:J
    .end local v17           #minUss:J
    .end local v19           #samples:J
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 477
    .end local v9           #ip:I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 521
    .end local v8           #im:I
    :cond_8
    return-void
.end method

.method static computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J
    .locals 8
    .parameter "proc"
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"
    .parameter "now"

    .prologue
    .line 525
    const-wide/16 v4, 0x0

    .line 535
    .local v4, totalTime:J
    const/4 v3, 0x0

    .local v3, is:I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 536
    const/4 v1, 0x0

    .local v1, im:I
    :goto_1
    array-length v6, p2

    if-ge v1, v6, :cond_1

    .line 537
    const/4 v2, 0x0

    .local v2, ip:I
    :goto_2
    array-length v6, p3

    if-ge v2, v6, :cond_0

    .line 538
    aget v6, p1, v3

    aget v7, p2, v1

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0xe

    aget v7, p3, v2

    add-int v0, v6, v7

    .line 540
    .local v0, bucket:I
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 536
    .end local v0           #bucket:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 535
    .end local v2           #ip:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 544
    .end local v1           #im:I
    :cond_2
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    .line 545
    return-wide v4
.end method

.method static dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V
    .locals 7
    .parameter "pw"
    .parameter "sep"
    .parameter "durations"
    .parameter "curState"
    .parameter "curStartTime"
    .parameter "now"

    .prologue
    .line 422
    const/4 v1, 0x0

    .local v1, iscreen:I
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_3

    .line 423
    const/4 v0, 0x0

    .local v0, imem:I
    :goto_1
    const/4 v5, 0x4

    if-ge v0, v5, :cond_2

    .line 424
    add-int v2, v0, v1

    .line 425
    .local v2, state:I
    aget-wide v3, p2, v2

    .line 426
    .local v3, time:J
    if-ne p3, v2, :cond_0

    .line 427
    sub-long v5, p6, p4

    add-long/2addr v3, v5

    .line 429
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 430
    invoke-static {p0, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 422
    .end local v2           #state:I
    .end local v3           #time:J
    :cond_2
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 434
    .end local v0           #imem:I
    :cond_3
    return-void
.end method

.method static dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 22
    .parameter "pw"
    .parameter "proc"

    .prologue
    .line 934
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_0

    .line 935
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    move-object/from16 v20, v0

    aget v12, v20, v7

    .line 936
    .local v12, off:I
    sget v20, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v20, v12, v20

    sget v21, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v13, v20, v21

    .line 937
    .local v13, type:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v5

    .line 938
    .local v5, count:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    .line 939
    .local v10, min:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    .line 940
    .local v3, avg:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v8

    .line 941
    .local v8, max:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v18

    .line 942
    .local v18, umin:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v14

    .line 943
    .local v14, uavg:J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v16

    .line 944
    .local v16, umax:J
    const/16 v20, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 945
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 946
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 947
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 948
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 949
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 950
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 951
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 952
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 953
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 954
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 955
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 956
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 957
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 958
    const/16 v20, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 959
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 934
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 961
    .end local v3           #avg:J
    .end local v5           #count:J
    .end local v8           #max:J
    .end local v10           #min:J
    .end local v12           #off:I
    .end local v13           #type:I
    .end local v14           #uavg:J
    .end local v16           #umax:J
    .end local v18           #umin:J
    :cond_0
    return-void
.end method

.method static dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V
    .locals 9
    .parameter "pw"
    .parameter "proc"
    .parameter "now"

    .prologue
    .line 917
    const/4 v0, 0x0

    .line 918
    .local v0, didCurState:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v1, v6, :cond_1

    .line 919
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v2, v6, v1

    .line 920
    .local v2, off:I
    sget v6, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v6, v2, v6

    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v5, v6, v7

    .line 921
    .local v5, type:I
    iget-object v6, p1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v3

    .line 922
    .local v3, time:J
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v6, v5, :cond_0

    .line 923
    const/4 v0, 0x1

    .line 924
    iget-wide v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v6, p2, v6

    add-long/2addr v3, v6

    .line 926
    :cond_0
    invoke-static {p0, v5, v3, v4}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 918
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 928
    .end local v2           #off:I
    .end local v3           #time:J
    .end local v5           #type:I
    :cond_1
    if-nez v0, :cond_2

    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 929
    iget v6, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iget-wide v7, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v7, p2, v7

    invoke-static {p0, v6, v7, v8}, Lcom/android/internal/app/ProcessStats;->printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 931
    :cond_2
    return-void
.end method

.method private dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"
    .parameter "proc"
    .parameter "dumpAll"

    .prologue
    .line 1721
    if-eqz p4, :cond_1

    .line 1722
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "myID="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1723
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1724
    const-string v0, " mCommonProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1725
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    const-string v0, " mPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v0, :cond_0

    .line 1728
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMultiPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1730
    :cond_0
    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq p3, v0, :cond_1

    .line 1731
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Common Proc: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1733
    const-string v0, " pkg="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActive="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1737
    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v0, :cond_2

    .line 1738
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1740
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumActiveServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1741
    const-string v0, " mNumStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1742
    iget v0, p3, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1743
    return-void
.end method

.method static dumpProcessList(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJ)V
    .locals 9
    .parameter "pw"
    .parameter "prefix"
    .parameter
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJ)V"
        }
    .end annotation

    .prologue
    .line 732
    .local p2, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, innerPrefix:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, i:I
    :goto_0
    if-ltz v8, :cond_1

    .line 734
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 735
    .local v2, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    iget-object v0, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 737
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 739
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 740
    iget v0, v2, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 741
    const-string v0, " entries)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 742
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 743
    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 744
    iget v0, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v0, :cond_0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 745
    invoke-static/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 733
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 748
    .end local v2           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    return-void
.end method

.method public static dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V
    .locals 11
    .parameter "pw"
    .parameter
    .parameter "sepScreenStates"
    .parameter "screenStates"
    .parameter "sepMemStates"
    .parameter "memStates"
    .parameter "sepProcStates"
    .parameter "procStates"
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;Z[IZ[IZ[IJ)V"
        }
    .end annotation

    .prologue
    .line 863
    .local p1, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const-string v0, "process"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 864
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 865
    const-string v0, "uid"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 866
    const-string v4, "\t"

    if-eqz p2, :cond_0

    move-object v3, p3

    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v2, p5

    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    :goto_2
    invoke-static {p0, v4, v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V

    .line 869
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 870
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .local v10, i:I
    :goto_3
    if-ltz v10, :cond_3

    .line 871
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 872
    .local v1, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    const-string v0, "\t"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 874
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    .line 875
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V

    .line 877
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 870
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 866
    .end local v1           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v10           #i:I
    :cond_0
    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 879
    .restart local v10       #i:I
    :cond_3
    return-void
.end method

.method static dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V
    .locals 16
    .parameter "pw"
    .parameter "prefix"
    .parameter "proc"
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"

    .prologue
    .line 598
    const/4 v9, 0x0

    .line 599
    .local v9, printedHeader:Z
    const/4 v11, -0x1

    .line 600
    .local v11, printedScreen:I
    const/4 v7, 0x0

    .local v7, is:I
    :goto_0
    move-object/from16 v0, p3

    array-length v12, v0

    if-ge v7, v12, :cond_8

    .line 601
    const/4 v10, -0x1

    .line 602
    .local v10, printedMem:I
    const/4 v4, 0x0

    .local v4, im:I
    :goto_1
    move-object/from16 v0, p4

    array-length v12, v0

    if-ge v4, v12, :cond_7

    .line 603
    const/4 v6, 0x0

    .local v6, ip:I
    :goto_2
    move-object/from16 v0, p5

    array-length v12, v0

    if-ge v6, v12, :cond_6

    .line 604
    aget v8, p3, v7

    .line 605
    .local v8, iscreen:I
    aget v5, p4, v4

    .line 606
    .local v5, imem:I
    add-int v12, v8, v5

    mul-int/lit8 v12, v12, 0xe

    aget v13, p5, v6

    add-int v1, v12, v13

    .line 607
    .local v1, bucket:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssSampleCount(I)J

    move-result-wide v2

    .line 608
    .local v2, count:J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_3

    .line 609
    if-nez v9, :cond_0

    .line 610
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    const-string v12, "PSS/USS ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 613
    const-string v12, " entries):"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 614
    const/4 v9, 0x1

    .line 616
    :cond_0
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    const-string v12, "  "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    move-object/from16 v0, p3

    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_1

    .line 619
    if-eq v11, v8, :cond_4

    move v12, v8

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 621
    move v11, v8

    .line 623
    :cond_1
    move-object/from16 v0, p4

    array-length v12, v0

    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    .line 624
    if-eq v10, v5, :cond_5

    move v12, v5

    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;I)V

    .line 625
    move v10, v5

    .line 627
    :cond_2
    sget-object v12, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v13, p5, v6

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 628
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 629
    const-string v12, " samples "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMinimum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 631
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 632
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssAverage(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 633
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssMaximum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 635
    const-string v12, " / "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMinimum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 637
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssAverage(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 639
    const-string v12, " "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 640
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->getPssUssMaximum(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 603
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 619
    :cond_4
    const/4 v12, -0x1

    goto/16 :goto_3

    .line 624
    :cond_5
    const/4 v12, -0x1

    goto/16 :goto_4

    .line 602
    .end local v1           #bucket:I
    .end local v2           #count:J
    .end local v5           #imem:I
    .end local v8           #iscreen:I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 600
    .end local v6           #ip:I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 646
    .end local v4           #im:I
    .end local v10           #printedMem:I
    :cond_8
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-eqz v12, :cond_9

    .line 647
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed for excessive wake locks: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    :cond_9
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-eqz v12, :cond_a

    .line 651
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed for excessive CPU use: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 652
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    :cond_a
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-eqz v12, :cond_b

    .line 655
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "Killed from cached state: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 656
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v12, " times from pss "

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 657
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v12, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    const-string v12, "-"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/internal/app/ProcessStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 661
    :cond_b
    return-void
.end method

.method static dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V
    .locals 18
    .parameter "pw"
    .parameter "prefix"
    .parameter "proc"
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"
    .parameter "now"

    .prologue
    .line 550
    const-wide/16 v14, 0x0

    .line 551
    .local v14, totalTime:J
    const/4 v10, -0x1

    .line 552
    .local v10, printedScreen:I
    const/4 v7, 0x0

    .local v7, is:I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_8

    .line 553
    const/4 v9, -0x1

    .line 554
    .local v9, printedMem:I
    const/4 v4, 0x0

    .local v4, im:I
    :goto_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_7

    .line 555
    const/4 v6, 0x0

    .local v6, ip:I
    :goto_2
    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v6, v0, :cond_6

    .line 556
    aget v8, p3, v7

    .line 557
    .local v8, iscreen:I
    aget v5, p4, v4

    .line 558
    .local v5, imem:I
    add-int v16, v8, v5

    mul-int/lit8 v16, v16, 0xe

    aget v17, p5, v6

    add-int v3, v16, v17

    .line 559
    .local v3, bucket:I
    move-object/from16 v0, p2

    move-wide/from16 v1, p6

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v12

    .line 560
    .local v12, time:J
    const-string v11, ""

    .line 561
    .local v11, running:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v0, v3, :cond_0

    .line 562
    const-string v11, " (running)"

    .line 564
    :cond_0
    const-wide/16 v16, 0x0

    cmp-long v16, v12, v16

    if-eqz v16, :cond_3

    .line 565
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 566
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 567
    if-eq v10, v8, :cond_4

    move/from16 v16, v8

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 569
    move v10, v8

    .line 571
    :cond_1
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 572
    if-eq v9, v5, :cond_5

    move/from16 v16, v5

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;I)V

    .line 573
    move v9, v5

    .line 575
    :cond_2
    sget-object v16, Lcom/android/internal/app/ProcessStats;->STATE_NAMES:[Ljava/lang/String;

    aget v17, p5, v6

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v16, ": "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    move-object/from16 v0, p0

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    add-long/2addr v14, v12

    .line 555
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 567
    :cond_4
    const/16 v16, -0x1

    goto :goto_3

    .line 572
    :cond_5
    const/16 v16, -0x1

    goto :goto_4

    .line 554
    .end local v3           #bucket:I
    .end local v5           #imem:I
    .end local v8           #iscreen:I
    .end local v11           #running:Ljava/lang/String;
    .end local v12           #time:J
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 552
    .end local v6           #ip:I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 582
    .end local v4           #im:I
    .end local v9           #printedMem:I
    :cond_8
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-eqz v16, :cond_b

    .line 583
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 585
    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 587
    :cond_9
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_a

    .line 588
    const/16 v16, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;I)V

    .line 590
    :cond_a
    const-string v16, "TOTAL     : "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 594
    :cond_b
    return-void
.end method

.method static dumpProcessStateCsv(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Z[IZ[IZ[IJ)V
    .locals 26
    .parameter "pw"
    .parameter "proc"
    .parameter "sepScreenStates"
    .parameter "screenStates"
    .parameter "sepMemStates"
    .parameter "memStates"
    .parameter "sepProcStates"
    .parameter "procStates"
    .parameter "now"

    .prologue
    .line 698
    if-eqz p2, :cond_0

    move-object/from16 v0, p3

    array-length v8, v0

    .line 699
    .local v8, NSS:I
    :goto_0
    if-eqz p4, :cond_1

    move-object/from16 v0, p5

    array-length v4, v0

    .line 700
    .local v4, NMS:I
    :goto_1
    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    array-length v6, v0

    .line 701
    .local v6, NPS:I
    :goto_2
    const/4 v15, 0x0

    .local v15, iss:I
    :goto_3
    if-ge v15, v8, :cond_11

    .line 702
    const/4 v11, 0x0

    .local v11, ims:I
    :goto_4
    if-ge v11, v4, :cond_10

    .line 703
    const/4 v13, 0x0

    .local v13, ips:I
    :goto_5
    if-ge v13, v6, :cond_f

    .line 704
    if-eqz p2, :cond_3

    aget v23, p3, v15

    .line 705
    .local v23, vsscreen:I
    :goto_6
    if-eqz p4, :cond_4

    aget v21, p5, v11

    .line 706
    .local v21, vsmem:I
    :goto_7
    if-eqz p6, :cond_5

    aget v22, p7, v13

    .line 707
    .local v22, vsproc:I
    :goto_8
    if-eqz p2, :cond_6

    const/4 v7, 0x1

    .line 708
    .local v7, NSA:I
    :goto_9
    if-eqz p4, :cond_7

    const/4 v3, 0x1

    .line 709
    .local v3, NMA:I
    :goto_a
    if-eqz p6, :cond_8

    const/4 v5, 0x1

    .line 710
    .local v5, NPA:I
    :goto_b
    const-wide/16 v16, 0x0

    .line 711
    .local v16, totalTime:J
    const/4 v14, 0x0

    .local v14, isa:I
    :goto_c
    if-ge v14, v7, :cond_e

    .line 712
    const/4 v10, 0x0

    .local v10, ima:I
    :goto_d
    if-ge v10, v3, :cond_d

    .line 713
    const/4 v12, 0x0

    .local v12, ipa:I
    :goto_e
    if-ge v12, v5, :cond_c

    .line 714
    if-eqz p2, :cond_9

    const/16 v20, 0x0

    .line 715
    .local v20, vascreen:I
    :goto_f
    if-eqz p4, :cond_a

    const/16 v18, 0x0

    .line 716
    .local v18, vamem:I
    :goto_10
    if-eqz p6, :cond_b

    const/16 v19, 0x0

    .line 717
    .local v19, vaproc:I
    :goto_11
    add-int v24, v23, v20

    add-int v24, v24, v21

    add-int v24, v24, v18

    mul-int/lit8 v24, v24, 0xe

    add-int v24, v24, v22

    add-int v9, v24, v19

    .line 719
    .local v9, bucket:I
    move-object/from16 v0, p1

    move-wide/from16 v1, p8

    invoke-virtual {v0, v9, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->getDuration(IJ)J

    move-result-wide v24

    add-long v16, v16, v24

    .line 713
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 698
    .end local v3           #NMA:I
    .end local v4           #NMS:I
    .end local v5           #NPA:I
    .end local v6           #NPS:I
    .end local v7           #NSA:I
    .end local v8           #NSS:I
    .end local v9           #bucket:I
    .end local v10           #ima:I
    .end local v11           #ims:I
    .end local v12           #ipa:I
    .end local v13           #ips:I
    .end local v14           #isa:I
    .end local v15           #iss:I
    .end local v16           #totalTime:J
    .end local v18           #vamem:I
    .end local v19           #vaproc:I
    .end local v20           #vascreen:I
    .end local v21           #vsmem:I
    .end local v22           #vsproc:I
    .end local v23           #vsscreen:I
    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    .line 699
    .restart local v8       #NSS:I
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 700
    .restart local v4       #NMS:I
    :cond_2
    const/4 v6, 0x1

    goto :goto_2

    .line 704
    .restart local v6       #NPS:I
    .restart local v11       #ims:I
    .restart local v13       #ips:I
    .restart local v15       #iss:I
    :cond_3
    const/16 v23, 0x0

    goto :goto_6

    .line 705
    .restart local v23       #vsscreen:I
    :cond_4
    const/16 v21, 0x0

    goto :goto_7

    .line 706
    .restart local v21       #vsmem:I
    :cond_5
    const/16 v22, 0x0

    goto :goto_8

    .line 707
    .restart local v22       #vsproc:I
    :cond_6
    move-object/from16 v0, p3

    array-length v7, v0

    goto :goto_9

    .line 708
    .restart local v7       #NSA:I
    :cond_7
    move-object/from16 v0, p5

    array-length v3, v0

    goto :goto_a

    .line 709
    .restart local v3       #NMA:I
    :cond_8
    move-object/from16 v0, p7

    array-length v5, v0

    goto :goto_b

    .line 714
    .restart local v5       #NPA:I
    .restart local v10       #ima:I
    .restart local v12       #ipa:I
    .restart local v14       #isa:I
    .restart local v16       #totalTime:J
    :cond_9
    aget v20, p3, v14

    goto :goto_f

    .line 715
    .restart local v20       #vascreen:I
    :cond_a
    aget v18, p5, v10

    goto :goto_10

    .line 716
    .restart local v18       #vamem:I
    :cond_b
    aget v19, p7, v12

    goto :goto_11

    .line 712
    .end local v18           #vamem:I
    .end local v20           #vascreen:I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 711
    .end local v12           #ipa:I
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 723
    .end local v10           #ima:I
    :cond_e
    const-string v24, "\t"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 703
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5

    .line 702
    .end local v3           #NMA:I
    .end local v5           #NPA:I
    .end local v7           #NSA:I
    .end local v14           #isa:I
    .end local v16           #totalTime:J
    .end local v21           #vsmem:I
    .end local v22           #vsproc:I
    .end local v23           #vsscreen:I
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 701
    .end local v13           #ips:I
    :cond_10
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 728
    .end local v11           #ims:I
    :cond_11
    return-void
.end method

.method static dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V
    .locals 8
    .parameter "pw"
    .parameter "proc"
    .parameter "prefix"
    .parameter "label"
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"
    .parameter "now"
    .parameter "totalTime"
    .parameter "full"

    .prologue
    .line 753
    new-instance v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    invoke-direct {v3, p4, p5, p6}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 755
    .local v3, totals:Lcom/android/internal/app/ProcessStats$ProcessDataCollection;
    move-wide v0, p7

    invoke-static {p1, v3, v0, v1}, Lcom/android/internal/app/ProcessStats;->computeProcessData(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;J)V

    .line 756
    iget-wide v4, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->totalTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    iget-wide v4, v3, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->numPss:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 757
    :cond_0
    if-eqz p2, :cond_1

    .line 758
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    :cond_1
    if-eqz p3, :cond_2

    .line 761
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    :cond_2
    move-wide/from16 v0, p9

    move/from16 v2, p11

    invoke-virtual {v3, p0, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;->print(Ljava/io/PrintWriter;JZ)V

    .line 764
    if-eqz p2, :cond_3

    .line 765
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 768
    :cond_3
    return-void
.end method

.method static dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V
    .locals 13
    .parameter "pw"
    .parameter "prefix"
    .parameter
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"
    .parameter "now"
    .parameter "totalTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;[I[I[IJJ)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p2, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v12, v0, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_0

    .line 774
    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 775
    .local v1, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 776
    const-string v0, "* "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 777
    iget-object v0, v1, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    iget v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-static {p0, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 780
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    const-string v3, "         TOTAL: "

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 783
    const-string v3, "    Persistent: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 785
    const-string v3, "           Top: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 787
    const-string v3, "        Imp Fg: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x2

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 789
    const-string v3, "        Imp Bg: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x3

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 791
    const-string v3, "        Backup: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x4

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 793
    const-string v3, "     Heavy Wgt: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x5

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 795
    const-string v3, "       Service: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x6

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 797
    const-string v3, "    Service Rs: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/4 v2, 0x7

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 799
    const-string v3, "      Receiver: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x8

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 801
    const-string v3, "          Home: "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0x9

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 803
    const-string v3, "    (Last Act): "

    const/4 v0, 0x1

    new-array v6, v0, [I

    const/4 v0, 0x0

    const/16 v2, 0xa

    aput v2, v6, v0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 805
    const-string v3, "      (Cached): "

    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    const/4 v11, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryDetails(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Ljava/lang/String;[I[I[IJJZ)V

    .line 773
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    .line 809
    .end local v1           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    return-void

    .line 805
    nop

    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V
    .locals 10
    .parameter "pw"
    .parameter "label"
    .parameter "packageName"
    .parameter "uid"
    .parameter "serviceName"
    .parameter "svc"
    .parameter "serviceType"
    .parameter "opCount"
    .parameter "curState"
    .parameter "curStartTime"
    .parameter "now"

    .prologue
    .line 439
    if-gtz p7, :cond_0

    .line 471
    :goto_0
    return-void

    .line 442
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 445
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 447
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    move/from16 v0, p7

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 451
    const/4 v1, 0x0

    .line 452
    .local v1, didCurState:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-ge v2, v8, :cond_3

    .line 453
    iget-object v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTable:[I

    aget v4, v8, v2

    .line 454
    .local v4, off:I
    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v8, v4, v8

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v7, v8, v9

    .line 455
    .local v7, type:I
    div-int/lit8 v3, v7, 0x4

    .line 456
    .local v3, memFactor:I
    rem-int/lit8 v7, v7, 0x4

    .line 457
    move/from16 v0, p6

    if-eq v7, v0, :cond_1

    .line 452
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 460
    :cond_1
    iget-object v8, p5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v5

    .line 461
    .local v5, time:J
    move/from16 v0, p8

    if-ne v0, v3, :cond_2

    .line 462
    const/4 v1, 0x1

    .line 463
    sub-long v8, p11, p9

    add-long/2addr v5, v8

    .line 465
    :cond_2
    invoke-static {p0, v3, v5, v6}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    goto :goto_2

    .line 467
    .end local v3           #memFactor:I
    .end local v4           #off:I
    .end local v5           #time:J
    .end local v7           #type:I
    :cond_3
    if-nez v1, :cond_4

    const/4 v8, -0x1

    move/from16 v0, p8

    if-eq v0, v8, :cond_4

    .line 468
    sub-long v8, p11, p9

    move/from16 v0, p8

    invoke-static {p0, v0, v8, v9}, Lcom/android/internal/app/ProcessStats;->printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V

    .line 470
    :cond_4
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public static dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J
    .locals 18
    .parameter "pw"
    .parameter "prefix"
    .parameter "service"
    .parameter "serviceType"
    .parameter "curState"
    .parameter "curStartTime"
    .parameter "now"

    .prologue
    .line 1905
    const-wide/16 v16, 0x0

    .line 1906
    .local v16, totalTime:J
    const/4 v12, -0x1

    .line 1907
    .local v12, printedScreen:I
    const/4 v10, 0x0

    .local v10, iscreen:I
    :goto_0
    const/16 v1, 0x8

    if-ge v10, v1, :cond_6

    .line 1908
    const/4 v11, -0x1

    .line 1909
    .local v11, printedMem:I
    const/4 v9, 0x0

    .local v9, imem:I
    :goto_1
    const/4 v1, 0x4

    if-ge v9, v1, :cond_5

    .line 1910
    add-int v6, v9, v10

    .local v6, state:I
    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-wide/from16 v7, p7

    .line 1911
    #calls: Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J
    invoke-static/range {v1 .. v8}, Lcom/android/internal/app/ProcessStats$ServiceState;->access$000(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J

    move-result-wide v14

    .line 1913
    .local v14, time:J
    const-string v13, ""

    .line 1914
    .local v13, running:Ljava/lang/String;
    move/from16 v0, p4

    if-ne v0, v6, :cond_0

    if-eqz p0, :cond_0

    .line 1915
    const-string v13, " (running)"

    .line 1917
    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-eqz v1, :cond_2

    .line 1918
    if-eqz p0, :cond_1

    .line 1919
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1920
    if-eq v12, v10, :cond_3

    move v1, v10

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 1922
    move v12, v10

    .line 1923
    if-eq v11, v9, :cond_4

    move v1, v9

    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;I)V

    .line 1924
    move v11, v9

    .line 1925
    move-object/from16 v0, p0

    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    :cond_1
    add-long v16, v16, v14

    .line 1909
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1920
    :cond_3
    const/4 v1, -0x1

    goto :goto_2

    .line 1923
    :cond_4
    const/4 v1, -0x1

    goto :goto_3

    .line 1907
    .end local v6           #state:I
    .end local v13           #running:Ljava/lang/String;
    .end local v14           #time:J
    :cond_5
    add-int/lit8 v10, v10, 0x4

    goto :goto_0

    .line 1931
    .end local v9           #imem:I
    .end local v11           #printedMem:I
    :cond_6
    const-wide/16 v1, 0x0

    cmp-long v1, v16, v1

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    .line 1932
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1933
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 1934
    const-string v1, "TOTAL: "

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1935
    invoke-static/range {v16 .. v18}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1936
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 1938
    :cond_7
    return-wide v16
.end method

.method public static dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J
    .locals 12
    .parameter "pw"
    .parameter "prefix"
    .parameter "durations"
    .parameter "curState"
    .parameter "curStartTime"
    .parameter "now"

    .prologue
    .line 382
    const-wide/16 v8, 0x0

    .line 383
    .local v8, totalTime:J
    const/4 v3, -0x1

    .line 384
    .local v3, printedScreen:I
    const/4 v1, 0x0

    .local v1, iscreen:I
    :goto_0
    const/16 v10, 0x8

    if-ge v1, v10, :cond_6

    .line 385
    const/4 v2, -0x1

    .line 386
    .local v2, printedMem:I
    const/4 v0, 0x0

    .local v0, imem:I
    :goto_1
    const/4 v10, 0x4

    if-ge v0, v10, :cond_5

    .line 387
    add-int v5, v0, v1

    .line 388
    .local v5, state:I
    aget-wide v6, p2, v5

    .line 389
    .local v6, time:J
    const-string v4, ""

    .line 390
    .local v4, running:Ljava/lang/String;
    if-ne p3, v5, :cond_0

    .line 391
    sub-long v10, p6, p4

    add-long/2addr v6, v10

    .line 392
    if-eqz p0, :cond_0

    .line 393
    const-string v4, " (running)"

    .line 396
    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_2

    .line 397
    if-eqz p0, :cond_1

    .line 398
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    if-eq v3, v1, :cond_3

    move v10, v1

    :goto_2
    invoke-static {p0, v10}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 401
    move v3, v1

    .line 402
    if-eq v2, v0, :cond_4

    move v10, v0

    :goto_3
    invoke-static {p0, v10}, Lcom/android/internal/app/ProcessStats;->printMemLabel(Ljava/io/PrintWriter;I)V

    .line 403
    move v2, v0

    .line 404
    invoke-static {v6, v7, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    :cond_1
    add-long/2addr v8, v6

    .line 386
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 399
    :cond_3
    const/4 v10, -0x1

    goto :goto_2

    .line 402
    :cond_4
    const/4 v10, -0x1

    goto :goto_3

    .line 384
    .end local v4           #running:Ljava/lang/String;
    .end local v5           #state:I
    .end local v6           #time:J
    :cond_5
    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 410
    .end local v0           #imem:I
    .end local v2           #printedMem:I
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_7

    if-eqz p0, :cond_7

    .line 411
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    const/4 v10, -0x1

    invoke-static {p0, v10}, Lcom/android/internal/app/ProcessStats;->printScreenLabel(Ljava/io/PrintWriter;I)V

    .line 413
    const-string v10, "TOTAL: "

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    invoke-static {v8, v9, p0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 415
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 417
    :cond_7
    return-wide v8
.end method

.method static dumpStateHeadersCsv(Ljava/io/PrintWriter;Ljava/lang/String;[I[I[I)V
    .locals 10
    .parameter "pw"
    .parameter "sep"
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"

    .prologue
    const/4 v7, 0x1

    .line 665
    if-eqz p2, :cond_5

    array-length v2, p2

    .line 666
    .local v2, NS:I
    :goto_0
    if-eqz p3, :cond_6

    array-length v0, p3

    .line 667
    .local v0, NM:I
    :goto_1
    if-eqz p4, :cond_7

    array-length v1, p4

    .line 668
    .local v1, NP:I
    :goto_2
    const/4 v5, 0x0

    .local v5, is:I
    :goto_3
    if-ge v5, v2, :cond_a

    .line 669
    const/4 v3, 0x0

    .local v3, im:I
    :goto_4
    if-ge v3, v0, :cond_9

    .line 670
    const/4 v4, 0x0

    .local v4, ip:I
    :goto_5
    if-ge v4, v1, :cond_8

    .line 671
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    const/4 v6, 0x0

    .line 673
    .local v6, printed:Z
    if-eqz p2, :cond_0

    array-length v8, p2

    if-le v8, v7, :cond_0

    .line 674
    aget v8, p2, v5

    invoke-static {p0, v8}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 675
    const/4 v6, 0x1

    .line 677
    :cond_0
    if-eqz p3, :cond_2

    array-length v8, p3

    if-le v8, v7, :cond_2

    .line 678
    if-eqz v6, :cond_1

    .line 679
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    :cond_1
    aget v8, p3, v3

    invoke-static {p0, v8}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 682
    const/4 v6, 0x1

    .line 684
    :cond_2
    if-eqz p4, :cond_4

    array-length v8, p4

    if-le v8, v7, :cond_4

    .line 685
    if-eqz v6, :cond_3

    .line 686
    const-string v8, "-"

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 688
    :cond_3
    sget-object v8, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v9, p4, v4

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 670
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v0           #NM:I
    .end local v1           #NP:I
    .end local v2           #NS:I
    .end local v3           #im:I
    .end local v4           #ip:I
    .end local v5           #is:I
    .end local v6           #printed:Z
    :cond_5
    move v2, v7

    .line 665
    goto :goto_0

    .restart local v2       #NS:I
    :cond_6
    move v0, v7

    .line 666
    goto :goto_1

    .restart local v0       #NM:I
    :cond_7
    move v1, v7

    .line 667
    goto :goto_2

    .line 669
    .restart local v1       #NP:I
    .restart local v3       #im:I
    .restart local v4       #ip:I
    .restart local v5       #is:I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 668
    .end local v4           #ip:I
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 693
    .end local v3           #im:I
    :cond_a
    return-void
.end method

.method static printAdjTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .parameter "pw"
    .parameter "state"

    .prologue
    .line 898
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 899
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 900
    return-void
.end method

.method static printAdjTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1
    .parameter "pw"
    .parameter "state"
    .parameter "value"

    .prologue
    .line 910
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 911
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printAdjTag(Ljava/io/PrintWriter;I)V

    .line 912
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 913
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 914
    return-void
.end method

.method static printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .locals 2
    .parameter "pw"
    .parameter "array"
    .parameter "value"
    .parameter "mod"

    .prologue
    .line 882
    div-int v0, p2, p3

    .line 883
    .local v0, index:I
    if-ltz v0, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 884
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 888
    :goto_0
    mul-int v1, v0, p3

    sub-int v1, p2, v1

    return v1

    .line 886
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0
.end method

.method static printLongOffset(I)Ljava/lang/String;
    .locals 3
    .parameter "off"

    .prologue
    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1589
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1590
    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1591
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, p0, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1592
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static printMemLabel(Ljava/io/PrintWriter;I)V
    .locals 1
    .parameter "pw"
    .parameter "offset"

    .prologue
    .line 348
    packed-switch p1, :pswitch_data_0

    .line 365
    const-string v0, "???? / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    :goto_0
    return-void

    .line 350
    :pswitch_0
    const-string v0, "       "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :pswitch_1
    const-string v0, "Norm / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :pswitch_2
    const-string v0, "Mod  / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :pswitch_3
    const-string v0, "Low  / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 362
    :pswitch_4
    const-string v0, "Crit / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static printMemLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 1
    .parameter "pw"
    .parameter "offset"

    .prologue
    .line 371
    if-ltz p1, :cond_0

    .line 372
    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 373
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printPercent(Ljava/io/PrintWriter;D)V
    .locals 4
    .parameter "pw"
    .parameter "fraction"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 812
    const-wide/high16 v0, 0x4059

    mul-double/2addr p1, v0

    .line 813
    const-wide/high16 v0, 0x3ff0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 814
    const-string v0, "%.2f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 820
    :goto_0
    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 821
    return-void

    .line 815
    :cond_0
    const-wide/high16 v0, 0x4024

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    .line 816
    const-string v0, "%.1f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 818
    :cond_1
    const-string v0, "%.0f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static printProcStateTag(Ljava/io/PrintWriter;I)V
    .locals 2
    .parameter "pw"
    .parameter "state"

    .prologue
    .line 892
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_TAGS:[Ljava/lang/String;

    const/16 v1, 0x38

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 893
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_TAGS:[Ljava/lang/String;

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result p1

    .line 894
    sget-object v0, Lcom/android/internal/app/ProcessStats;->STATE_TAGS:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/internal/app/ProcessStats;->printArrayEntry(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    .line 895
    return-void
.end method

.method static printProcStateTagAndValue(Ljava/io/PrintWriter;IJ)V
    .locals 1
    .parameter "pw"
    .parameter "state"
    .parameter "value"

    .prologue
    .line 903
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 904
    invoke-static {p0, p1}, Lcom/android/internal/app/ProcessStats;->printProcStateTag(Ljava/io/PrintWriter;I)V

    .line 905
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 906
    invoke-virtual {p0, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 907
    return-void
.end method

.method private static printScreenLabel(Ljava/io/PrintWriter;I)V
    .locals 1
    .parameter "pw"
    .parameter "offset"

    .prologue
    .line 315
    packed-switch p1, :pswitch_data_0

    .line 326
    :pswitch_0
    const-string v0, "?????????? / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    :goto_0
    return-void

    .line 317
    :pswitch_1
    const-string v0, "             "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :pswitch_2
    const-string v0, "Screen Off / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_3
    const-string v0, "Screen On  / "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static printScreenLabelCsv(Ljava/io/PrintWriter;I)V
    .locals 2
    .parameter "pw"
    .parameter "offset"

    .prologue
    .line 332
    packed-switch p1, :pswitch_data_0

    .line 342
    :pswitch_0
    const-string v0, "???"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    :goto_0
    :pswitch_1
    return-void

    .line 336
    :pswitch_2
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :pswitch_3
    sget-object v0, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 8
    .parameter "pw"
    .parameter "number"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x4480

    const/high16 v4, 0x4461

    .line 824
    long-to-float v0, p1

    .line 825
    .local v0, result:F
    const-string v1, ""

    .line 826
    .local v1, suffix:Ljava/lang/String;
    cmpl-float v3, v0, v4

    if-lez v3, :cond_0

    .line 827
    const-string v1, "KB"

    .line 828
    div-float/2addr v0, v5

    .line 830
    :cond_0
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 831
    const-string v1, "MB"

    .line 832
    div-float/2addr v0, v5

    .line 834
    :cond_1
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    .line 835
    const-string v1, "GB"

    .line 836
    div-float/2addr v0, v5

    .line 838
    :cond_2
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    .line 839
    const-string v1, "TB"

    .line 840
    div-float/2addr v0, v5

    .line 842
    :cond_3
    cmpl-float v3, v0, v4

    if-lez v3, :cond_4

    .line 843
    const-string v1, "PB"

    .line 844
    div-float/2addr v0, v5

    .line 847
    :cond_4
    const/high16 v3, 0x3f80

    cmpg-float v3, v0, v3

    if-gez v3, :cond_5

    .line 848
    const-string v3, "%.2f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, value:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 858
    return-void

    .line 849
    .end local v2           #value:Ljava/lang/String;
    :cond_5
    const/high16 v3, 0x4120

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 850
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_0

    .line 851
    .end local v2           #value:Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x42c8

    cmpg-float v3, v0, v3

    if-gez v3, :cond_7

    .line 852
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_0

    .line 854
    .end local v2           #value:Ljava/lang/String;
    :cond_7
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_0
.end method

.method private readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z
    .locals 3
    .parameter "in"
    .parameter "val"
    .parameter "what"

    .prologue
    .line 1285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, got:I
    if-eq v0, p2, :cond_0

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1287
    const/4 v1, 0x0

    .line 1289
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;
    .locals 4
    .parameter "in"
    .parameter "version"

    .prologue
    .line 1147
    const/16 v2, 0x9

    if-gt p2, v2, :cond_0

    .line 1148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1160
    :goto_0
    return-object v2

    .line 1150
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1151
    .local v0, index:I
    if-ltz v0, :cond_1

    .line 1152
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 1154
    :cond_1
    xor-int/lit8 v0, v0, -0x1

    .line 1155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1156
    .local v1, name:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 1157
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1159
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 1160
    goto :goto_0
.end method

.method private readCompactedLongArray(Landroid/os/Parcel;I[JI)V
    .locals 8
    .parameter "in"
    .parameter "version"
    .parameter "array"
    .parameter "num"

    .prologue
    .line 1110
    const/16 v4, 0xa

    if-gt p2, v4, :cond_1

    .line 1111
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->readLongArray([J)V

    .line 1132
    :cond_0
    return-void

    .line 1114
    :cond_1
    array-length v0, p3

    .line 1115
    .local v0, alen:I
    if-le p4, v0, :cond_2

    .line 1116
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad array lengths: got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " array is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1119
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p4, :cond_4

    .line 1120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1121
    .local v3, val:I
    if-ltz v3, :cond_3

    .line 1122
    int-to-long v4, v3

    aput-wide v4, p3, v2

    .line 1119
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1124
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1125
    .local v1, bottom:I
    xor-int/lit8 v4, v3, -0x1

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v1

    or-long/2addr v4, v6

    aput-wide v4, p3, v2

    goto :goto_1

    .line 1128
    .end local v1           #bottom:I
    .end local v3           #val:I
    :cond_4
    :goto_2
    if-ge v2, v0, :cond_0

    .line 1129
    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    .line 1130
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method static readFully(Ljava/io/InputStream;[I)[B
    .locals 7
    .parameter "stream"
    .parameter "outLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1293
    const/4 v4, 0x0

    .line 1294
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 1295
    .local v2, initialAvail:I
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, 0x1

    :goto_0
    new-array v1, v5, [B

    .line 1297
    .local v1, data:[B
    :cond_0
    :goto_1
    array-length v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {p0, v1, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 1300
    .local v0, amt:I
    if-gez v0, :cond_2

    .line 1303
    aput v4, p1, v6

    .line 1304
    return-object v1

    .line 1295
    .end local v0           #amt:I
    .end local v1           #data:[B
    :cond_1
    const/16 v5, 0x4000

    goto :goto_0

    .line 1306
    .restart local v0       #amt:I
    .restart local v1       #data:[B
    :cond_2
    add-int/2addr v4, v0

    .line 1307
    array-length v5, v1

    if-lt v4, v5, :cond_0

    .line 1308
    add-int/lit16 v5, v4, 0x4000

    new-array v3, v5, [B

    .line 1311
    .local v3, newData:[B
    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1312
    move-object v1, v3

    goto :goto_1
.end method

.method private readTableFromParcel(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 7
    .parameter "in"
    .parameter "name"
    .parameter "what"

    .prologue
    const/4 v3, 0x0

    .line 1069
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1070
    .local v1, size:I
    if-gez v1, :cond_1

    .line 1071
    const-string v3, "ProcessStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    sget-object v2, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    .line 1088
    :cond_0
    :goto_0
    return-object v2

    .line 1074
    :cond_1
    if-nez v1, :cond_2

    move-object v2, v3

    .line 1075
    goto :goto_0

    .line 1077
    :cond_2
    new-array v2, v1, [I

    .line 1078
    .local v2, table:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v2, v0

    .line 1082
    aget v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/android/internal/app/ProcessStats;->validateLongOffset(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1083
    const-string v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring existing stats; bad "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " table entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v2, v0

    invoke-static {v6}, Lcom/android/internal/app/ProcessStats;->printLongOffset(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 1085
    goto :goto_0

    .line 1078
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private resetCommon()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1029
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1030
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1031
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v1, 0x1000

    new-array v1, v1, [J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1034
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 1035
    iput-wide v3, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 1037
    iput v2, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1038
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats;->evaluateSystemProperties(Z)Z

    .line 1039
    return-void
.end method

.method private writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "name"

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1136
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1144
    :goto_0
    return-void

    .line 1140
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1141
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeCompactedLongArray(Landroid/os/Parcel;[JI)V
    .locals 10
    .parameter "out"
    .parameter "array"
    .parameter "num"

    .prologue
    const-wide/32 v8, 0x7fffffff

    .line 1092
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 1093
    aget-wide v3, p2, v1

    .line 1094
    .local v3, val:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    .line 1095
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Time val negative: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-wide/16 v3, 0x0

    .line 1098
    :cond_0
    cmp-long v5, v3, v8

    if-gtz v5, :cond_1

    .line 1099
    long-to-int v5, v3

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1101
    :cond_1
    const/16 v5, 0x20

    shr-long v5, v3, v5

    and-long/2addr v5, v8

    long-to-int v5, v5

    xor-int/lit8 v2, v5, -0x1

    .line 1102
    .local v2, top:I
    const-wide/32 v5, 0xfffffff

    and-long/2addr v5, v3

    long-to-int v0, v5

    .line 1103
    .local v0, bottom:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1107
    .end local v0           #bottom:I
    .end local v2           #top:I
    .end local v3           #val:J
    :cond_2
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/app/ProcessStats;)V
    .locals 33
    .parameter "other"

    .prologue
    .line 230
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 231
    .local v17, pkgMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v8, 0x0

    .local v8, ip:I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_5

    .line 232
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 233
    .local v18, pkgName:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/util/SparseArray;

    .line 234
    .local v25, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/4 v11, 0x0

    .local v11, iu:I
    :goto_1
    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_4

    .line 235
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 236
    .local v24, uid:I
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 237
    .local v15, otherState:Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 238
    .local v5, NPROCS:I
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 239
    .local v6, NSRVS:I
    const/4 v9, 0x0

    .local v9, iproc:I
    :goto_2
    if-ge v9, v5, :cond_2

    .line 240
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 241
    .local v14, otherProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    if-eq v0, v14, :cond_1

    .line 244
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v21

    .line 246
    .local v21, thisProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 248
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 250
    .local v12, now:J
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v19

    .line 251
    .local v19, pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v21

    .line 252
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    .end local v12           #now:J
    .end local v19           #pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 239
    .end local v21           #thisProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 257
    .end local v14           #otherProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/4 v10, 0x0

    .local v10, isvc:I
    :goto_3
    if-ge v10, v6, :cond_3

    .line 258
    iget-object v0, v15, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 261
    .local v16, otherSvc:Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v24

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v23

    .line 263
    .local v23, thisSvc:Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->add(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 257
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 234
    .end local v16           #otherSvc:Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v23           #thisSvc:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 231
    .end local v5           #NPROCS:I
    .end local v6           #NSRVS:I
    .end local v9           #iproc:I
    .end local v10           #isvc:I
    .end local v15           #otherState:Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v24           #uid:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 268
    .end local v11           #iu:I
    .end local v18           #pkgName:Ljava/lang/String;
    .end local v25           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v20

    .line 269
    .local v20, procMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/4 v8, 0x0

    :goto_4
    invoke-virtual/range {v20 .. v20}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v8, v0, :cond_8

    .line 270
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/util/SparseArray;

    .line 271
    .local v26, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v11, 0x0

    .restart local v11       #iu:I
    :goto_5
    invoke-virtual/range {v26 .. v26}, Landroid/util/SparseArray;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v11, v0, :cond_7

    .line 272
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    .line 273
    .restart local v24       #uid:I
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 274
    .restart local v14       #otherProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 276
    .restart local v21       #thisProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v21, :cond_6

    .line 278
    new-instance v21, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v21           #thisProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move/from16 v3, v24

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    .restart local v21       #thisProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v24

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v22

    .line 281
    .local v22, thisState:Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    .line 282
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    iget-object v0, v14, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v22           #thisState:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/android/internal/app/ProcessStats$ProcessState;->add(Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 271
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 269
    .end local v14           #otherProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v21           #thisProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v24           #uid:I
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 289
    .end local v11           #iu:I
    .end local v26           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_8
    const/4 v7, 0x0

    .local v7, i:I
    :goto_6
    const/16 v27, 0x8

    move/from16 v0, v27

    if-ge v7, v0, :cond_9

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v27, v0

    aget-wide v28, v27, v7

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v30, v0

    aget-wide v30, v30, v7

    add-long v28, v28, v30

    aput-wide v28, v27, v7

    .line 289
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 296
    :cond_9
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v29, v0

    cmp-long v27, v27, v29

    if-gez v27, :cond_a

    .line 297
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 298
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    .line 300
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v27, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v29, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v31, v0

    sub-long v29, v29, v31

    add-long v27, v27, v29

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 301
    return-void
.end method

.method addLongData(III)I
    .locals 8
    .parameter "index"
    .parameter "type"
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    .line 1540
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    array-length v3, v5

    .line 1541
    .local v3, tableLen:I
    :goto_0
    iget v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    if-lt v5, v3, :cond_1

    .line 1542
    add-int/lit8 v5, v3, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 1543
    .local v0, newSize:I
    new-array v1, v0, [I

    .line 1544
    .local v1, newTable:[I
    if-lez v3, :cond_0

    .line 1545
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    invoke-static {v5, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1547
    :cond_0
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 1549
    .end local v0           #newSize:I
    .end local v1           #newTable:[I
    :cond_1
    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    sub-int/2addr v4, p1

    if-eqz v4, :cond_2

    .line 1550
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    add-int/lit8 v6, p1, 0x1

    iget v7, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, p1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1553
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/internal/app/ProcessStats;->allocLongData(I)I

    move-result v2

    .line 1554
    .local v2, off:I
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v5, p2, v2

    aput v5, v4, p1

    .line 1555
    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 1556
    return v2

    .end local v2           #off:I
    .end local v3           #tableLen:I
    :cond_3
    move v3, v4

    .line 1540
    goto :goto_0
.end method

.method allocLongData(I)I
    .locals 6
    .parameter "num"

    .prologue
    .line 1560
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1561
    .local v2, whichLongs:I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1562
    .local v0, longs:[J
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    array-length v4, v0

    if-le v3, v4, :cond_0

    .line 1563
    const/16 v3, 0x1000

    new-array v0, v3, [J

    .line 1564
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    add-int/lit8 v2, v2, 0x1

    .line 1566
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1568
    :cond_0
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shl-int v3, v2, v3

    iget v4, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shl-int/2addr v4, v5

    or-int v1, v3, v4

    .line 1569
    .local v1, off:I
    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1570
    return v1
.end method

.method collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pkgName"
    .parameter "itemName"

    .prologue
    .line 2067
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2068
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2069
    .local v0, ITEMLEN:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 2070
    .local v1, PKGLEN:I
    if-ne v0, v1, :cond_1

    .line 2071
    const-string p2, ""

    .line 2078
    .end local v0           #ITEMLEN:I
    .end local v1           #PKGLEN:I
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 2072
    .restart local v0       #ITEMLEN:I
    .restart local v1       #PKGLEN:I
    .restart local p2
    :cond_1
    if-lt v0, v1, :cond_0

    .line 2073
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    .line 2074
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
    .locals 17
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"
    .parameter "sortProcStates"
    .parameter "now"
    .parameter "reqPackage"
    .parameter "activeOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[I[IJ",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ProcessStats$ProcessState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2024
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 2025
    .local v8, foundProcs:Landroid/util/ArraySet;,"Landroid/util/ArraySet<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v14

    .line 2026
    .local v14, pkgMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v10, 0x0

    .local v10, ip:I
    :goto_0
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v10, v3, :cond_4

    .line 2027
    if-eqz p7, :cond_1

    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2026
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2030
    :cond_1
    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 2031
    .local v15, procs:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/4 v12, 0x0

    .local v12, iu:I
    :goto_1
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v12, v3, :cond_0

    .line 2032
    invoke-virtual {v15, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2033
    .local v16, state:Lcom/android/internal/app/ProcessStats$PackageState;
    const/4 v11, 0x0

    .local v11, iproc:I
    :goto_2
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v11, v3, :cond_3

    .line 2034
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2035
    .local v2, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz p8, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2033
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2038
    :cond_2
    iget-object v3, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2031
    .end local v2           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 2042
    .end local v11           #iproc:I
    .end local v12           #iu:I
    .end local v15           #procs:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    .end local v16           #state:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2043
    .local v13, outProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/4 v9, 0x0

    .local v9, i:I
    :goto_4
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v9, v3, :cond_6

    .line 2044
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .restart local v2       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p5

    .line 2045
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 2046
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2047
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    .line 2048
    invoke-static/range {v2 .. v7}, Lcom/android/internal/app/ProcessStats;->computeProcessTimeLocked(Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)J

    .line 2043
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 2052
    .end local v2           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_6
    new-instance v3, Lcom/android/internal/app/ProcessStats$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/app/ProcessStats$2;-><init>(Lcom/android/internal/app/ProcessStats;)V

    invoke-static {v13, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2063
    return-object v13
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1165
    const/4 v0, 0x0

    return v0
.end method

.method public dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 38
    .parameter "pw"
    .parameter "reqPackage"

    .prologue
    .line 2082
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2083
    .local v13, now:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v30

    .line 2084
    .local v30, pkgMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const-string v2, "vers,3"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2085
    const-string v2, "period,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2086
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2087
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2088
    const/16 v29, 0x1

    .line 2089
    .local v29, partial:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 2090
    const-string v2, ",shutdown"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2091
    const/16 v29, 0x0

    .line 2093
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 2094
    const-string v2, ",sysprops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2095
    const/16 v29, 0x0

    .line 2097
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 2098
    const-string v2, ",complete"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2099
    const/16 v29, 0x0

    .line 2101
    :cond_2
    if-eqz v29, :cond_3

    .line 2102
    const-string v2, ",partial"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2104
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2105
    const-string v2, "config,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2106
    const/16 v25, 0x0

    .local v25, ip:I
    :goto_1
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_c

    .line 2107
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2108
    .local v4, pkgName:Ljava/lang/String;
    if-eqz p2, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2106
    :cond_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 2087
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v25           #ip:I
    .end local v29           #partial:Z
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto/16 :goto_0

    .line 2111
    .restart local v4       #pkgName:Ljava/lang/String;
    .restart local v25       #ip:I
    .restart local v29       #partial:Z
    :cond_6
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/util/SparseArray;

    .line 2112
    .local v36, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v28, 0x0

    .local v28, iu:I
    :goto_2
    invoke-virtual/range {v36 .. v36}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_4

    .line 2113
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2114
    .local v5, uid:I
    move-object/from16 v0, v36

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 2115
    .local v31, pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v23

    .line 2116
    .local v23, NPROCS:I
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v24

    .line 2117
    .local v24, NSRVS:I
    const/16 v26, 0x0

    .local v26, iproc:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 2118
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2119
    .local v32, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    const-string v2, "pkgproc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2120
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2121
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2122
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2123
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2124
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2125
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2126
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2127
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v2, :cond_7

    .line 2128
    const-string v2, "pkgpss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2129
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2130
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2131
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2132
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2133
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2134
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2135
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2137
    :cond_7
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v2, :cond_8

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v2, :cond_8

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_9

    .line 2139
    :cond_8
    const-string v2, "pkgkills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2140
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2141
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2142
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2143
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2144
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2145
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2146
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2147
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2148
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2149
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2150
    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2151
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2152
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2153
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2154
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2155
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2156
    move-object/from16 v0, v32

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2157
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2117
    :cond_9
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 2160
    .end local v32           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_a
    const/16 v27, 0x0

    .local v27, isvc:I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 2161
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lcom/android/internal/app/ProcessStats;->collapseString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2163
    .local v6, serviceName:Ljava/lang/String;
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 2164
    .local v7, svc:Lcom/android/internal/app/ProcessStats$ServiceState;
    const-string v3, "pkgsvc-run"

    const/4 v8, 0x0

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2167
    const-string v3, "pkgsvc-start"

    const/4 v8, 0x1

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2170
    const-string v3, "pkgsvc-bound"

    const/4 v8, 0x2

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2173
    const-string v3, "pkgsvc-exec"

    const/4 v8, 0x3

    iget v9, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v10, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    iget-wide v11, v7, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Lcom/android/internal/app/ProcessStats;->dumpServiceTimeCheckin(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJ)V

    .line 2160
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 2112
    .end local v6           #serviceName:Ljava/lang/String;
    .end local v7           #svc:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_b
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_2

    .line 2180
    .end local v4           #pkgName:Ljava/lang/String;
    .end local v5           #uid:I
    .end local v23           #NPROCS:I
    .end local v24           #NSRVS:I
    .end local v26           #iproc:I
    .end local v27           #isvc:I
    .end local v28           #iu:I
    .end local v31           #pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v36           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v33

    .line 2181
    .local v33, procMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v25, 0x0

    :goto_5
    invoke-virtual/range {v33 .. v33}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_12

    .line 2182
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 2183
    .local v34, procName:Ljava/lang/String;
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/SparseArray;

    .line 2184
    .local v37, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v28, 0x0

    .restart local v28       #iu:I
    :goto_6
    invoke-virtual/range {v37 .. v37}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_11

    .line 2185
    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2186
    .restart local v5       #uid:I
    move-object/from16 v0, v37

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2187
    .local v35, procState:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-lez v2, :cond_d

    .line 2188
    const-string v2, "proc,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2190
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2191
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2192
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1, v13, v14}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessStateCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;J)V

    .line 2193
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2195
    :cond_d
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-lez v2, :cond_e

    .line 2196
    const-string v2, "pss,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2197
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2199
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2200
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/internal/app/ProcessStats;->dumpAllProcessPssCheckin(Ljava/io/PrintWriter;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 2201
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2203
    :cond_e
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    if-gtz v2, :cond_f

    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    if-gtz v2, :cond_f

    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v2, :cond_10

    .line 2205
    :cond_f
    const-string v2, "kills,"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2206
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2207
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2208
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 2209
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2210
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2211
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2212
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2213
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2214
    move-object/from16 v0, v35

    iget v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2215
    const-string v2, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2216
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2217
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2218
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2219
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2220
    move-object/from16 v0, v35

    iget-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2221
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2184
    :cond_10
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_6

    .line 2181
    .end local v5           #uid:I
    .end local v35           #procState:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_11
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_5

    .line 2225
    .end local v28           #iu:I
    .end local v34           #procName:Ljava/lang/String;
    .end local v37           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_12
    const-string v2, "total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2226
    const-string v16, ","

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v19, v0

    move-object/from16 v15, p1

    move-wide/from16 v21, v13

    invoke-static/range {v15 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpAdjTimesCheckin(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)V

    .line 2228
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2229
    return-void
.end method

.method dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V
    .locals 10
    .parameter "pw"
    .parameter "header"
    .parameter "prefix"
    .parameter "screenStates"
    .parameter "memStates"
    .parameter "procStates"
    .parameter "sortProcStates"
    .parameter "now"
    .parameter "totalTime"
    .parameter "reqPackage"
    .parameter "activeOnly"

    .prologue
    .line 2009
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-wide/from16 v5, p8

    move-object/from16 v7, p12

    move/from16 v8, p13

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 2011
    .local v2, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2012
    if-eqz p2, :cond_0

    .line 2013
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2014
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    move-object v1, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p7

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    .line 2016
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 2019
    :cond_1
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V
    .locals 51
    .parameter "pw"
    .parameter "reqPackage"
    .parameter "now"
    .parameter "dumpSummary"
    .parameter "dumpAll"
    .parameter "activeOnly"

    .prologue
    .line 1747
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v15

    .line 1749
    .local v15, totalTime:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v42

    .line 1750
    .local v42, pkgMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/16 v45, 0x0

    .line 1751
    .local v45, printedHeader:Z
    const/16 v36, 0x0

    .local v36, ip:I
    :goto_0
    invoke-virtual/range {v42 .. v42}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_17

    .line 1752
    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .line 1753
    .local v43, pkgName:Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1751
    :cond_0
    add-int/lit8 v36, v36, 0x1

    goto :goto_0

    .line 1756
    :cond_1
    move-object/from16 v0, v42

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/util/SparseArray;

    .line 1757
    .local v49, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/16 v39, 0x0

    .local v39, iu:I
    :goto_1
    invoke-virtual/range {v49 .. v49}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_0

    .line 1758
    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v48

    .line 1759
    .local v48, uid:I
    move-object/from16 v0, v49

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1760
    .local v44, pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v34

    .line 1761
    .local v34, NPROCS:I
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v35

    .line 1762
    .local v35, NSRVS:I
    if-gtz v34, :cond_2

    if-lez v35, :cond_4

    .line 1763
    :cond_2
    if-nez v45, :cond_3

    .line 1764
    const-string v4, "Per-Package Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    const/16 v45, 0x1

    .line 1767
    :cond_3
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1768
    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    :cond_4
    if-eqz p5, :cond_5

    if-eqz p6, :cond_7

    .line 1771
    :cond_5
    const/16 v37, 0x0

    .local v37, iproc:I
    :goto_2
    move/from16 v0, v37

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    .line 1772
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1773
    .local v6, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz p7, :cond_6

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1774
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1775
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    :goto_3
    add-int/lit8 v37, v37, 0x1

    goto :goto_2

    .line 1778
    :cond_6
    const-string v4, "      Process "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1780
    const-string v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1782
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1783
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    const-string v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1786
    const-string v5, "        "

    sget-object v7, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1788
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto :goto_3

    .line 1791
    .end local v6           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v37           #iproc:I
    :cond_7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1792
    .local v9, procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v37, 0x0

    .restart local v37       #iproc:I
    :goto_4
    move/from16 v0, v37

    move/from16 v1, v34

    if-ge v0, v1, :cond_9

    .line 1793
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v37

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1794
    .restart local v6       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz p7, :cond_8

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1792
    :goto_5
    add-int/lit8 v37, v37, 0x1

    goto :goto_4

    .line 1797
    :cond_8
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1799
    .end local v6           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_9
    const-string v8, "      "

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v12, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v7, p1

    move-wide/from16 v13, p3

    invoke-static/range {v7 .. v16}, Lcom/android/internal/app/ProcessStats;->dumpProcessSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;[I[I[IJJ)V

    .line 1802
    .end local v9           #procs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_a
    const/16 v38, 0x0

    .local v38, isvc:I
    :goto_6
    move/from16 v0, v38

    move/from16 v1, v35

    if-ge v0, v1, :cond_16

    .line 1803
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1804
    .local v23, svc:Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz p7, :cond_c

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_c

    .line 1805
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1806
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1802
    :cond_b
    :goto_7
    add-int/lit8 v38, v38, 0x1

    goto :goto_6

    .line 1809
    :cond_c
    if-eqz p6, :cond_11

    .line 1810
    const-string v4, "      Service "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1814
    :goto_8
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1815
    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1816
    const-string v4, "        Process: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1817
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "    "

    const-string v22, "Running"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_d

    if-eqz p6, :cond_12

    :cond_d
    const/16 v33, 0x1

    :goto_9
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1820
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "    "

    const-string v22, "Started"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_e

    if-eqz p6, :cond_13

    :cond_e
    const/16 v33, 0x1

    :goto_a
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1823
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "      "

    const-string v22, "Bound"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_f

    if-eqz p6, :cond_14

    :cond_f
    const/16 v33, 0x1

    :goto_b
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1826
    const-string v19, "        "

    const-string v20, "          "

    const-string v21, "  "

    const-string v22, "Executing"

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    move-wide/from16 v27, v0

    if-eqz p5, :cond_10

    if-eqz p6, :cond_15

    :cond_10
    const/16 v33, 0x1

    :goto_c
    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v29, p3

    move-wide/from16 v31, v15

    invoke-virtual/range {v17 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V

    .line 1829
    if-eqz p6, :cond_b

    .line 1830
    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eqz v4, :cond_b

    .line 1831
    const-string v4, "        mOwner="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 1812
    :cond_11
    const-string v4, "      * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1817
    :cond_12
    const/16 v33, 0x0

    goto/16 :goto_9

    .line 1820
    :cond_13
    const/16 v33, 0x0

    goto/16 :goto_a

    .line 1823
    :cond_14
    const/16 v33, 0x0

    goto :goto_b

    .line 1826
    :cond_15
    const/16 v33, 0x0

    goto :goto_c

    .line 1757
    .end local v23           #svc:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_16
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_1

    .line 1838
    .end local v34           #NPROCS:I
    .end local v35           #NSRVS:I
    .end local v37           #iproc:I
    .end local v38           #isvc:I
    .end local v39           #iu:I
    .end local v43           #pkgName:Ljava/lang/String;
    .end local v44           #pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v48           #uid:I
    .end local v49           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_17
    if-nez p2, :cond_21

    .line 1839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v46

    .line 1840
    .local v46, procMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    const/16 v45, 0x0

    .line 1841
    const/16 v40, 0x0

    .local v40, numShownProcs:I
    const/16 v41, 0x0

    .line 1842
    .local v41, numTotalProcs:I
    const/16 v36, 0x0

    :goto_d
    invoke-virtual/range {v46 .. v46}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v36

    if-ge v0, v4, :cond_1d

    .line 1843
    move-object/from16 v0, v46

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 1844
    .local v47, procName:Ljava/lang/String;
    move-object/from16 v0, v46

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/util/SparseArray;

    .line 1845
    .local v50, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    const/16 v39, 0x0

    .restart local v39       #iu:I
    :goto_e
    invoke-virtual/range {v50 .. v50}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v39

    if-ge v0, v4, :cond_1c

    .line 1846
    move-object/from16 v0, v50

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v48

    .line 1847
    .restart local v48       #uid:I
    add-int/lit8 v41, v41, 0x1

    .line 1848
    move-object/from16 v0, v50

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1849
    .restart local v6       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    if-nez v4, :cond_19

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_19

    iget v4, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-nez v4, :cond_19

    .line 1845
    :cond_18
    :goto_f
    add-int/lit8 v39, v39, 0x1

    goto :goto_e

    .line 1853
    :cond_19
    add-int/lit8 v40, v40, 0x1

    .line 1854
    if-nez v45, :cond_1a

    .line 1855
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1856
    const-string v4, "Per-Process Stats:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    const/16 v45, 0x1

    .line 1859
    :cond_1a
    if-eqz p7, :cond_1b

    invoke-virtual {v6}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1860
    const-string v4, "      (Not active: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ")"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 1863
    :cond_1b
    const-string v4, "  * "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, " / "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1864
    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1865
    const-string v4, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v6, Lcom/android/internal/app/ProcessStats$DurationsTable;->mDurationsTableSize:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 1866
    const-string v4, " entries)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1867
    const-string v25, "        "

    sget-object v27, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v28, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v29, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v24, p1

    move-object/from16 v26, v6

    move-wide/from16 v30, p3

    invoke-static/range {v24 .. v31}, Lcom/android/internal/app/ProcessStats;->dumpProcessState(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[IJ)V

    .line 1869
    const-string v18, "        "

    sget-object v20, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v21, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v22, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    move-object/from16 v17, p1

    move-object/from16 v19, v6

    invoke-static/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpProcessPss(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;[I[I[I)V

    .line 1871
    if-eqz p6, :cond_18

    .line 1872
    const-string v4, "        "

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/android/internal/app/ProcessStats;->dumpProcessInternalLocked(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;Z)V

    goto/16 :goto_f

    .line 1842
    .end local v6           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v48           #uid:I
    :cond_1c
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_d

    .line 1876
    .end local v39           #iu:I
    .end local v47           #procName:Ljava/lang/String;
    .end local v50           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1d
    if-eqz p6, :cond_1e

    .line 1877
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1878
    const-string v4, "  Total procs: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1879
    const-string v4, " shown of "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, " total"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1882
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1883
    if-eqz p5, :cond_20

    .line 1884
    const-string v4, "Summary:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-wide/from16 v20, p3

    move/from16 v22, p7

    .line 1885
    invoke-virtual/range {v17 .. v22}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    .line 1894
    .end local v40           #numShownProcs:I
    .end local v41           #numTotalProcs:I
    .end local v46           #procMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    :goto_10
    if-eqz p6, :cond_1f

    .line 1895
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1896
    const-string v4, "Internal state:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    const-string v4, "  Num long arrays: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1898
    const-string v4, "  Next long entry: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 1899
    const-string v4, "  mRunning="

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 1901
    :cond_1f
    return-void

    .line 1887
    .restart local v40       #numShownProcs:I
    .restart local v41       #numTotalProcs:I
    .restart local v46       #procMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_10

    .line 1890
    .end local v40           #numShownProcs:I
    .end local v41           #numTotalProcs:I
    .end local v46           #procMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    :cond_21
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1891
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    goto :goto_10
.end method

.method dumpServiceStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIIJJJZ)V
    .locals 13
    .parameter "pw"
    .parameter "prefix"
    .parameter "prefixInner"
    .parameter "headerPrefix"
    .parameter "header"
    .parameter "service"
    .parameter "count"
    .parameter "serviceType"
    .parameter "state"
    .parameter "startTime"
    .parameter "now"
    .parameter "totalTime"
    .parameter "dumpAll"

    .prologue
    .line 1945
    if-eqz p7, :cond_0

    .line 1946
    if-eqz p16, :cond_1

    .line 1947
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1948
    const-string v2, " op count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-wide/from16 v7, p10

    move-wide/from16 v9, p12

    .line 1949
    invoke-static/range {v2 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    .line 1961
    :cond_0
    :goto_0
    return-void

    .line 1952
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    move-wide/from16 v7, p10

    move-wide/from16 v9, p12

    invoke-static/range {v2 .. v10}, Lcom/android/internal/app/ProcessStats;->dumpSingleServiceTime(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;IIJJ)J

    move-result-wide v11

    .line 1954
    .local v11, myTime:J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1955
    const-string v2, " count "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1956
    const-string v2, " / time "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1957
    long-to-double v2, v11

    move-wide/from16 v0, p14

    long-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {p1, v2, v3}, Lcom/android/internal/app/ProcessStats;->printPercent(Ljava/io/PrintWriter;D)V

    .line 1958
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_0
.end method

.method public dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    .locals 18
    .parameter "pw"
    .parameter "reqPackage"
    .parameter "now"
    .parameter "activeOnly"

    .prologue
    .line 1964
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v10, p3

    invoke-static/range {v4 .. v11}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v14

    .line 1966
    .local v14, totalTime:J
    const/4 v6, 0x0

    const-string v7, "  "

    sget-object v8, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    sget-object v9, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    sget-object v11, Lcom/android/internal/app/ProcessStats;->NON_CACHED_PROC_STATES:[I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v12, p3

    move-object/from16 v16, p2

    move/from16 v17, p5

    invoke-virtual/range {v4 .. v17}, Lcom/android/internal/app/ProcessStats;->dumpFilteredSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;[I[I[I[IJJLjava/lang/String;Z)V

    .line 1968
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1969
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->dumpTotalsLocked(Ljava/io/PrintWriter;J)V

    .line 1970
    return-void
.end method

.method dumpTotalsLocked(Ljava/io/PrintWriter;J)V
    .locals 10
    .parameter "pw"
    .parameter "now"

    .prologue
    const/16 v9, 0x20

    .line 1973
    const-string v0, "Run time Stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1974
    const-string v1, "  "

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    iget v3, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    iget-wide v4, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-object v0, p1

    move-wide v6, p2

    invoke-static/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    .line 1975
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1976
    const-string v0, "          Start time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1977
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    iget-wide v1, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1978
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1979
    const-string v0, "  Total elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1980
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats;->mRunning:Z

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_0
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1983
    const/4 v8, 0x1

    .line 1984
    .local v8, partial:Z
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1985
    const-string v0, " (shutdown)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1986
    const/4 v8, 0x0

    .line 1988
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 1989
    const-string v0, " (sysprops)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1990
    const/4 v8, 0x0

    .line 1992
    :cond_1
    iget v0, p0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1993
    const-string v0, " (complete)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1994
    const/4 v8, 0x0

    .line 1996
    :cond_2
    if-eqz v8, :cond_3

    .line 1997
    const-string v0, " (partial)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1999
    :cond_3
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2000
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2001
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 2002
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2004
    return-void

    .line 1980
    .end local v8           #partial:Z
    :cond_4
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    goto :goto_0
.end method

.method public evaluateSystemProperties(Z)Z
    .locals 5
    .parameter "update"

    .prologue
    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, changed:Z
    const-string v3, "persist.sys.dalvik.vm.lib"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1045
    .local v1, runtime:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1046
    const/4 v0, 0x1

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    iput-object v1, p0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1051
    :cond_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->useExperimentalWebView()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "chromeview"

    .line 1052
    .local v2, webview:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1053
    const/4 v0, 0x1

    .line 1054
    if-eqz p1, :cond_1

    .line 1055
    iput-object v2, p0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    .line 1058
    :cond_1
    return v0

    .line 1051
    .end local v2           #webview:Ljava/lang/String;
    :cond_2
    const-string v2, "webview"

    goto :goto_0
.end method

.method getLong(II)J
    .locals 4
    .parameter "off"
    .parameter "index"

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1602
    .local v0, longs:[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;
    .locals 3
    .parameter "packageName"
    .parameter "uid"

    .prologue
    .line 1625
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1626
    .local v0, as:Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 1631
    .end local v0           #as:Lcom/android/internal/app/ProcessStats$PackageState;
    .local v1, as:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1629
    .end local v1           #as:Ljava/lang/Object;
    .restart local v0       #as:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_0
    new-instance v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .end local v0           #as:Lcom/android/internal/app/ProcessStats$PackageState;
    invoke-direct {v0, p1, p2}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1630
    .restart local v0       #as:Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1631
    .restart local v1       #as:Ljava/lang/Object;
    goto :goto_0
.end method

.method public getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 24
    .parameter "packageName"
    .parameter "uid"
    .parameter "processName"

    .prologue
    .line 1635
    invoke-virtual/range {p0 .. p2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v21

    .line 1636
    .local v21, pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1637
    .local v4, ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-eqz v4, :cond_0

    move-object/from16 v22, v4

    .line 1700
    .end local v4           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v22, ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_0
    return-object v22

    .line 1640
    .end local v22           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v4       #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1641
    .local v5, commonProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v5, :cond_1

    .line 1642
    new-instance v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v5           #commonProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 1643
    .restart local v5       #commonProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {v6, v0, v1, v5}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1646
    :cond_1
    iget-boolean v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v6, :cond_6

    .line 1647
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1650
    move-object v4, v5

    .line 1698
    :goto_1
    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v4

    .line 1700
    .end local v4           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v22       #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    goto :goto_0

    .line 1657
    .end local v22           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v4       #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 1662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1665
    .local v9, now:J
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v19

    .line 1666
    .local v19, commonPkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    if-eqz v19, :cond_4

    .line 1667
    iget-object v6, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v18

    .line 1670
    .local v18, cloned:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v20, v6, -0x1

    .local v20, i:I
    :goto_2
    if-ltz v20, :cond_5

    .line 1674
    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1675
    .local v23, ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-ne v6, v5, :cond_3

    .line 1678
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1673
    :cond_3
    add-int/lit8 v20, v20, -0x1

    goto :goto_2

    .line 1684
    .end local v18           #cloned:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v20           #i:I
    .end local v23           #ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_4
    const-string v6, "ProcessStats"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cloning proc state: no package state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for proc "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/internal/app/ProcessStats$DurationsTable;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    :cond_5
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .line 1690
    .restart local v4       #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_1

    .line 1694
    .end local v9           #now:J
    .end local v19           #commonPkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_6
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object v11, v4

    move-object v12, v5

    move-object/from16 v13, p1

    move/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .restart local v4       #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    goto/16 :goto_1
.end method

.method public getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 8
    .parameter "packageName"
    .parameter "uid"
    .parameter "processName"
    .parameter "className"

    .prologue
    .line 1705
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessStats;->getPackageStateLocked(Ljava/lang/String;I)Lcom/android/internal/app/ProcessStats$PackageState;

    move-result-object v6

    .line 1706
    .local v6, as:Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1707
    .local v0, ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    if-eqz v0, :cond_0

    move-object v7, v0

    .line 1716
    .end local v0           #ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v7, ss:Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 1711
    .end local v7           #ss:Ljava/lang/Object;
    .restart local v0       #ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v5

    .line 1713
    .local v5, ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_1
    new-instance v0, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v0           #ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1714
    .restart local v0       #ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    iget-object v1, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 1716
    .restart local v7       #ss:Ljava/lang/Object;
    goto :goto_0

    .line 1711
    .end local v5           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v7           #ss:Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 6
    .parameter "stream"

    .prologue
    .line 1319
    const/4 v4, 0x1

    :try_start_0
    new-array v2, v4, [I

    .line 1320
    .local v2, len:[I
    invoke-static {p1, v2}, Lcom/android/internal/app/ProcessStats;->readFully(Ljava/io/InputStream;[I)[B

    move-result-object v3

    .line 1321
    .local v3, raw:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1322
    .local v1, in:Landroid/os/Parcel;
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1323
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1324
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1326
    invoke-virtual {p0, v1}, Lcom/android/internal/app/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    .end local v1           #in:Landroid/os/Parcel;
    .end local v2           #len:[I
    .end local v3           #raw:[B
    :goto_0
    return-void

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caught exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 28
    .parameter "in"

    .prologue
    .line 1333
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-gtz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-lez v10, :cond_3

    :cond_0
    const/16 v22, 0x1

    .line 1335
    .local v22, hadData:Z
    :goto_0
    if-eqz v22, :cond_1

    .line 1336
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 1339
    :cond_1
    const v10, 0x50535453

    const-string v11, "magic number"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1537
    :cond_2
    :goto_1
    return-void

    .line 1333
    .end local v22           #hadData:Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_0

    .line 1342
    .restart local v22       #hadData:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1343
    .local v27, version:I
    const/16 v10, 0xd

    move/from16 v0, v27

    if-eq v0, v10, :cond_5

    .line 1344
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto :goto_1

    .line 1347
    :cond_5
    const/16 v10, 0xe

    const-string v11, "state count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1350
    const/16 v10, 0x8

    const-string v11, "adj count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1353
    const/4 v10, 0x7

    const-string v11, "pss count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1356
    const/16 v10, 0x1000

    const-string v11, "longs size"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCheckedInt(Landroid/os/Parcel;ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1360
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    .line 1362
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    .line 1363
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats;->buildTimePeriodStartClockStr()V

    .line 1364
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    .line 1365
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 1366
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    .line 1367
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    .line 1368
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 1370
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1371
    .local v16, NLONGS:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1372
    .local v15, NEXTLONG:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1373
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2
    add-int/lit8 v10, v16, -0x1

    move/from16 v0, v24

    if-ge v0, v10, :cond_7

    .line 1374
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    move/from16 v0, v24

    if-lt v0, v10, :cond_6

    .line 1375
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    const/16 v11, 0x1000

    new-array v11, v11, [J

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1377
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [J

    const/16 v11, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1373
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 1379
    :cond_7
    const/16 v10, 0x1000

    new-array v0, v10, [J

    move-object/from16 v25, v0

    .line 1380
    .local v25, longs:[J
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    .line 1381
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1384
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    array-length v11, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/internal/app/ProcessStats;->readCompactedLongArray(Landroid/os/Parcel;I[JI)V

    .line 1386
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1387
    .local v18, NPROC:I
    if-gez v18, :cond_8

    .line 1388
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad process count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1391
    :cond_8
    if-lez v18, :cond_10

    .line 1392
    add-int/lit8 v18, v18, -0x1

    .line 1393
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1394
    .local v8, procName:Ljava/lang/String;
    if-nez v8, :cond_9

    .line 1395
    const-string v10, "bad process name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1398
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1399
    .local v21, NUID:I
    if-gez v21, :cond_b

    .line 1400
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1428
    .local v4, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v6, pkgName:Ljava/lang/String;
    .local v7, uid:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1403
    .end local v4           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v7           #uid:I
    :cond_b
    if-lez v21, :cond_8

    .line 1404
    add-int/lit8 v21, v21, -0x1

    .line 1405
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1406
    .restart local v7       #uid:I
    if-gez v7, :cond_c

    .line 1407
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1410
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 1411
    .restart local v6       #pkgName:Ljava/lang/String;
    if-nez v6, :cond_d

    .line 1412
    const-string v10, "bad process package name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1415
    :cond_d
    if-eqz v22, :cond_e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v4, v10

    .line 1416
    .restart local v4       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_4
    if-eqz v4, :cond_f

    .line 1417
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_1

    .line 1415
    .end local v4           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_e
    const/4 v4, 0x0

    goto :goto_4

    .line 1421
    .restart local v4       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_f
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6, v7, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;ILjava/lang/String;)V

    .line 1422
    .restart local v4       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_a

    goto/16 :goto_1

    .line 1434
    .end local v4           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v7           #uid:I
    .end local v8           #procName:Ljava/lang/String;
    .end local v21           #NUID:I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1435
    .local v17, NPKG:I
    if-gez v17, :cond_11

    .line 1436
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1439
    :cond_11
    if-lez v17, :cond_23

    .line 1440
    add-int/lit8 v17, v17, -0x1

    .line 1441
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v6

    .line 1442
    .restart local v6       #pkgName:Ljava/lang/String;
    if-nez v6, :cond_12

    .line 1443
    const-string v10, "bad package name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1446
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1447
    .restart local v21       #NUID:I
    if-gez v21, :cond_13

    .line 1448
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1451
    :cond_13
    if-lez v21, :cond_11

    .line 1452
    add-int/lit8 v21, v21, -0x1

    .line 1453
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1454
    .restart local v7       #uid:I
    if-gez v7, :cond_14

    .line 1455
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1458
    :cond_14
    new-instance v26, Lcom/android/internal/app/ProcessStats$PackageState;

    move-object/from16 v0, v26

    invoke-direct {v0, v6, v7}, Lcom/android/internal/app/ProcessStats$PackageState;-><init>(Ljava/lang/String;I)V

    .line 1459
    .local v26, pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v0, v26

    invoke-virtual {v10, v6, v7, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1460
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1461
    .local v19, NPROCS:I
    if-gez v19, :cond_16

    .line 1462
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package process count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1500
    .restart local v4       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .local v5, commonProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .restart local v8       #procName:Ljava/lang/String;
    .local v23, hasProc:I
    :cond_15
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    .end local v4           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v5           #commonProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8           #procName:Ljava/lang/String;
    .end local v23           #hasProc:I
    :cond_16
    :goto_5
    if-lez v19, :cond_1c

    .line 1466
    add-int/lit8 v19, v19, -0x1

    .line 1467
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v8

    .line 1468
    .restart local v8       #procName:Ljava/lang/String;
    if-nez v8, :cond_17

    .line 1469
    const-string v10, "bad package process name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1472
    :cond_17
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1475
    .restart local v23       #hasProc:I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1478
    .restart local v5       #commonProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v5, :cond_18

    .line 1479
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no common proc: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1482
    :cond_18
    if-eqz v23, :cond_1b

    .line 1487
    if-eqz v22, :cond_19

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object v4, v10

    .line 1488
    .restart local v4       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :goto_6
    if-eqz v4, :cond_1a

    .line 1489
    const/4 v10, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_1

    .line 1487
    .end local v4           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_19
    const/4 v4, 0x0

    goto :goto_6

    .line 1493
    .restart local v4       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1a
    new-instance v4, Lcom/android/internal/app/ProcessStats$ProcessState;

    .end local v4           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    const-wide/16 v9, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;ILjava/lang/String;J)V

    .line 1494
    .restart local v4       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    const/4 v10, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Lcom/android/internal/app/ProcessStats$ProcessState;->readFromParcel(Landroid/os/Parcel;Z)Z

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_1

    .line 1504
    .end local v4           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1b
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1507
    .end local v5           #commonProc:Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v8           #procName:Ljava/lang/String;
    .end local v23           #hasProc:I
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1508
    .local v20, NSRVS:I
    if-gez v20, :cond_1e

    .line 1509
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad package service count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1529
    .local v9, serv:Lcom/android/internal/app/ProcessStats$ServiceState;
    .local v12, serviceName:Ljava/lang/String;
    .local v13, processName:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    .end local v9           #serv:Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v12           #serviceName:Ljava/lang/String;
    .end local v13           #processName:Ljava/lang/String;
    :cond_1e
    if-lez v20, :cond_13

    .line 1513
    add-int/lit8 v20, v20, -0x1

    .line 1514
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1515
    .restart local v12       #serviceName:Ljava/lang/String;
    if-nez v12, :cond_1f

    .line 1516
    const-string v10, "bad package service name"

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    goto/16 :goto_1

    .line 1519
    :cond_1f
    const/16 v10, 0x9

    move/from16 v0, v27

    if-le v0, v10, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->readCommonString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v13

    .line 1520
    .restart local v13       #processName:Ljava/lang/String;
    :goto_7
    if-eqz v22, :cond_22

    move-object/from16 v0, v26

    iget-object v10, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v10, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object v9, v10

    .line 1521
    .restart local v9       #serv:Lcom/android/internal/app/ProcessStats$ServiceState;
    :goto_8
    if-nez v9, :cond_20

    .line 1522
    new-instance v9, Lcom/android/internal/app/ProcessStats$ServiceState;

    .end local v9           #serv:Lcom/android/internal/app/ProcessStats$ServiceState;
    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object v11, v6

    invoke-direct/range {v9 .. v14}, Lcom/android/internal/app/ProcessStats$ServiceState;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V

    .line 1524
    .restart local v9       #serv:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_20
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/internal/app/ProcessStats$ServiceState;->readFromParcel(Landroid/os/Parcel;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto/16 :goto_1

    .line 1519
    .end local v9           #serv:Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v13           #processName:Ljava/lang/String;
    :cond_21
    const/4 v13, 0x0

    goto :goto_7

    .line 1520
    .restart local v13       #processName:Ljava/lang/String;
    :cond_22
    const/4 v9, 0x0

    goto :goto_8

    .line 1534
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v7           #uid:I
    .end local v12           #serviceName:Ljava/lang/String;
    .end local v13           #processName:Ljava/lang/String;
    .end local v19           #NPROCS:I
    .end local v20           #NSRVS:I
    .end local v21           #NUID:I
    .end local v26           #pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_23
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/internal/app/ProcessStats;->mIndexToCommonString:Ljava/util/ArrayList;

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 965
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 966
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 967
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 968
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 969
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 971
    return-void
.end method

.method public resetSafely()V
    .locals 14

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats;->resetCommon()V

    .line 976
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 977
    .local v4, now:J
    iget-object v13, p0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v8

    .line 978
    .local v8, procMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v0, v13, -0x1

    .local v0, ip:I
    :goto_0
    if-ltz v0, :cond_3

    .line 979
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    .line 980
    .local v12, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .local v3, iu:I
    :goto_1
    if-ltz v3, :cond_1

    .line 981
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 982
    .local v9, ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 983
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13, v4, v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 980
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 985
    :cond_0
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 986
    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_2

    .line 989
    .end local v9           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_1
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-gtz v13, :cond_2

    .line 990
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 978
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 993
    .end local v3           #iu:I
    .end local v12           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_3
    iget-object v13, p0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v6

    .line 994
    .local v6, pkgMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v0, v13, -0x1

    :goto_3
    if-ltz v0, :cond_c

    .line 995
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 996
    .local v11, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    add-int/lit8 v3, v13, -0x1

    .restart local v3       #iu:I
    :goto_4
    if-ltz v3, :cond_a

    .line 997
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 998
    .local v7, pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v1, v13, -0x1

    .local v1, iproc:I
    :goto_5
    if-ltz v1, :cond_6

    .line 999
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1000
    .restart local v9       #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v9, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1001
    :cond_4
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13, v4, v5}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetSafely(J)V

    .line 998
    :goto_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 1003
    :cond_5
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->makeDead()V

    .line 1004
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_6

    .line 1007
    .end local v9           #ps:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_6
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    add-int/lit8 v2, v13, -0x1

    .local v2, isvc:I
    :goto_7
    if-ltz v2, :cond_8

    .line 1008
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1009
    .local v10, ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v10}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1010
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/ProcessStats$ServiceState;

    invoke-virtual {v13, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetSafely(J)V

    .line 1007
    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 1012
    :cond_7
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_8

    .line 1015
    .end local v10           #ss:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_8
    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-gtz v13, :cond_9

    iget-object v13, v7, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-gtz v13, :cond_9

    .line 1016
    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 996
    :cond_9
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_4

    .line 1019
    .end local v1           #iproc:I
    .end local v2           #isvc:I
    .end local v7           #pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_a
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-gtz v13, :cond_b

    .line 1020
    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 994
    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_3

    .line 1023
    .end local v3           #iu:I
    .end local v11           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_c
    iput-wide v4, p0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1025
    return-void
.end method

.method setLong(IIJ)V
    .locals 4
    .parameter "off"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1596
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v2, p1, v2

    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 1597
    .local v0, longs:[J
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v1, p1, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int/2addr v1, v2

    add-int/2addr v1, p2

    aput-wide p3, v0, v1

    .line 1598
    return-void
.end method

.method validateLongOffset(I)Z
    .locals 5
    .parameter "off"

    .prologue
    const/4 v2, 0x0

    .line 1574
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v3, p1, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int v0, v3, v4

    .line 1575
    .local v0, arr:I
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 1584
    :cond_0
    :goto_0
    return v2

    .line 1578
    :cond_1
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v3, p1, v3

    sget v4, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v1, v3, v4

    .line 1579
    .local v1, idx:I
    const/16 v3, 0x1000

    if-ge v1, v3, :cond_0

    .line 1584
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 31
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1171
    .local v16, now:J
    const v25, 0x50535453

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    const/16 v25, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1173
    const/16 v25, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1174
    const/16 v25, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/16 v25, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1176
    const/16 v25, 0x1000

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    new-instance v25, Landroid/util/ArrayMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/app/ProcessMap;->mMap:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v26

    invoke-direct/range {v25 .. v26}, Landroid/util/ArrayMap;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1182
    .local v21, procMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 1183
    .local v5, NPROC:I
    const/4 v11, 0x0

    .local v11, ip:I
    :goto_0
    if-ge v11, v5, :cond_1

    .line 1184
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1185
    .local v24, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1186
    .local v8, NUID:I
    const/4 v14, 0x0

    .local v14, iu:I
    :goto_1
    if-ge v14, v8, :cond_0

    .line 1187
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1186
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1183
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1190
    .end local v8           #NUID:I
    .end local v14           #iu:I
    .end local v24           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v18

    .line 1191
    .local v18, pkgMap:Landroid/util/ArrayMap;,"Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1192
    .local v4, NPKG:I
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v4, :cond_6

    .line 1193
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1194
    .local v23, uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1195
    .restart local v8       #NUID:I
    const/4 v14, 0x0

    .restart local v14       #iu:I
    :goto_3
    if-ge v14, v8, :cond_5

    .line 1196
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1197
    .local v19, pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1198
    .local v6, NPROCS:I
    const/4 v12, 0x0

    .local v12, iproc:I
    :goto_4
    if-ge v12, v6, :cond_3

    .line 1199
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1200
    .local v20, proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 1201
    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 1198
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1204
    .end local v20           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1205
    .local v7, NSRVS:I
    const/4 v13, 0x0

    .local v13, isvc:I
    :goto_5
    if-ge v13, v7, :cond_4

    .line 1206
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/app/ProcessStats$ServiceState;

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->commitStateTime(J)V

    .line 1205
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1195
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1192
    .end local v6           #NPROCS:I
    .end local v7           #NSRVS:I
    .end local v12           #iproc:I
    .end local v13           #isvc:I
    .end local v19           #pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1211
    .end local v8           #NUID:I
    .end local v14           #iu:I
    .end local v23           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClock:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1212
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1213
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mRuntime:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mWebView:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [J

    .line 1222
    .local v9, array:[J
    array-length v0, v9

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v9, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1220
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 1224
    .end local v9           #array:[J
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [J

    .line 1225
    .local v15, lastLongs:[J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mNextLong:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v15, v2}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1227
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v26, v0

    aget-wide v27, v25, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    move-wide/from16 v29, v0

    sub-long v29, v16, v29

    add-long v27, v27, v29

    aput-wide v27, v25, v26

    .line 1229
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 1231
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->writeCompactedLongArray(Landroid/os/Parcel;[JI)V

    .line 1233
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    const/4 v11, 0x0

    :goto_7
    if-ge v11, v5, :cond_a

    .line 1235
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1236
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/SparseArray;

    .line 1237
    .restart local v24       #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1238
    .restart local v8       #NUID:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    const/4 v14, 0x0

    .restart local v14       #iu:I
    :goto_8
    if-ge v14, v8, :cond_9

    .line 1240
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1242
    .restart local v20       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1243
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1239
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1234
    .end local v20           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1246
    .end local v8           #NUID:I
    .end local v14           #iu:I
    .end local v24           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    const/4 v11, 0x0

    :goto_9
    if-ge v11, v4, :cond_f

    .line 1248
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1249
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/SparseArray;

    .line 1250
    .restart local v23       #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1251
    .restart local v8       #NUID:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    const/4 v14, 0x0

    .restart local v14       #iu:I
    :goto_a
    if-ge v14, v8, :cond_e

    .line 1253
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v25

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 1255
    .restart local v19       #pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1256
    .restart local v6       #NPROCS:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    const/4 v12, 0x0

    .restart local v12       #iproc:I
    :goto_b
    if-ge v12, v6, :cond_c

    .line 1258
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1259
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 1260
    .restart local v20       #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 1262
    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    :goto_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 1265
    :cond_b
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeToParcel(Landroid/os/Parcel;J)V

    goto :goto_c

    .line 1269
    .end local v20           #proc:Lcom/android/internal/app/ProcessStats$ProcessState;
    :cond_c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v7

    .line 1270
    .restart local v7       #NSRVS:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/4 v13, 0x0

    .restart local v13       #isvc:I
    :goto_d
    if-ge v13, v7, :cond_d

    .line 1272
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 1274
    .local v22, svc:Lcom/android/internal/app/ProcessStats$ServiceState;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats;->writeCommonString(Landroid/os/Parcel;Ljava/lang/String;)V

    .line 1275
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeToParcel(Landroid/os/Parcel;J)V

    .line 1271
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 1252
    .end local v22           #svc:Lcom/android/internal/app/ProcessStats$ServiceState;
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_a

    .line 1247
    .end local v6           #NPROCS:I
    .end local v7           #NSRVS:I
    .end local v12           #iproc:I
    .end local v13           #isvc:I
    .end local v19           #pkgState:Lcom/android/internal/app/ProcessStats$PackageState;
    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 1280
    .end local v8           #NUID:I
    .end local v14           #iu:I
    .end local v23           #uids:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_f
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ProcessStats;->mCommonStringToIndex:Landroid/util/ArrayMap;

    .line 1281
    return-void
.end method
