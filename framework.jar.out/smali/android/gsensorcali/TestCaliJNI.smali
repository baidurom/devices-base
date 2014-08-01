.class public Landroid/gsensorcali/TestCaliJNI;
.super Ljava/lang/Object;
.source "TestCaliJNI.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native displayString()Ljava/lang/String;
.end method

.method private static native gs_cali_int()Z
.end method

.method private static native gs_end_cali()V
.end method

.method private static native gs_start_cali(J)[F
.end method


# virtual methods
.method public gsCallInt()Z
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Landroid/gsensorcali/TestCaliJNI;->gs_cali_int()Z

    move-result v0

    return v0
.end method

.method public gsEndCail()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Landroid/gsensorcali/TestCaliJNI;->gs_end_cali()V

    .line 19
    return-void
.end method

.method public gsStartCail(J)[F
    .locals 3
    .parameter "timeout_ms"

    .prologue
    .line 12
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 13
    .local v0, data:[F
    invoke-static {p1, p2}, Landroid/gsensorcali/TestCaliJNI;->gs_start_cali(J)[F

    move-result-object v0

    .line 14
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "data[0] "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    return-object v0
.end method
