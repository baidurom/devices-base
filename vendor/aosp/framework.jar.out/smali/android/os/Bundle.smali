.class public final Landroid/os/Bundle;
.super Ljava/lang/Object;
.source "Bundle.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final BUNDLE_MAGIC:I = 0x4c444e42

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field public static final EMPTY:Landroid/os/Bundle; = null

.field private static final TAG:Ljava/lang/String; = "Bundle"


# instance fields
.field private mAllowFds:Z

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mFdsKnown:Z

.field private mHasFds:Z

.field mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 41
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v1, v0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 1624
    new-instance v0, Landroid/os/Bundle$1;

    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 54
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 58
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "capacity"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 54
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 58
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .parameter "b"

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 54
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 56
    iput-boolean v4, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 57
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 58
    iput-boolean v0, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 117
    iget-object v0, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 119
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 120
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 125
    :goto_0
    iget-object v0, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    .line 126
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 131
    :goto_1
    iget-boolean v0, p1, Landroid/os/Bundle;->mHasFds:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 132
    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 133
    iget-object v0, p1, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 134
    return-void

    .line 122
    :cond_0
    iput-object v3, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0

    .line 128
    :cond_1
    iput-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcelledData"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 54
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 58
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 80
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 81
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcelledData"
    .parameter "length"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 54
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 58
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 84
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .parameter "loader"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 54
    iput-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 57
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 58
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 95
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 96
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 97
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 143
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 144
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v0
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "e"

    .prologue
    .line 828
    const-string v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 829
    return-void
.end method

.method private typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .parameter "className"
    .parameter "defaultValue"
    .parameter "e"

    .prologue
    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    const-string v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    const-string v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    const-string v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    const-string v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    const-string v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v1, "Bundle"

    const-string v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 268
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 271
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 282
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    .line 1639
    const/4 v0, 0x0

    .line 1640
    .local v0, mask:I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    or-int/lit8 v0, v0, 0x1

    .line 1643
    :cond_0
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 293
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 1585
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1586
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1587
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1594
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1591
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1594
    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 803
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 806
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 841
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 842
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 849
    .end local p2
    :goto_0
    return p2

    .line 846
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 847
    :catch_0
    move-exception v6

    .line 848
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1365
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1366
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1367
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1374
    :goto_0
    return-object v3

    .line 1371
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Z

    move-object v3, v0

    check-cast v3, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1372
    :catch_0
    move-exception v1

    .line 1373
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1374
    goto :goto_0
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 1166
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1167
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1168
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1175
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1172
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "Bundle"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1175
    goto :goto_0
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .parameter "key"

    .prologue
    .line 861
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 875
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 876
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 877
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    .line 883
    .end local v2           #o:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 880
    .restart local v2       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 881
    :catch_0
    move-exception v5

    .line 882
    .local v5, e:Ljava/lang/ClassCastException;
    const-string v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 883
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1387
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1388
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1389
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1396
    :goto_0
    return-object v3

    .line 1393
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1394
    :catch_0
    move-exception v1

    .line 1395
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "byte[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1396
    goto :goto_0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1
    .parameter "key"

    .prologue
    .line 895
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 908
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 909
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 910
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 917
    .end local p2
    :goto_0
    return p2

    .line 914
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 915
    :catch_0
    move-exception v6

    .line 916
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1431
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1432
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1433
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1440
    :goto_0
    return-object v3

    .line 1437
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [C

    move-object v3, v0

    check-cast v3, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1438
    :catch_0
    move-exception v1

    .line 1439
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "char[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1440
    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "key"

    .prologue
    .line 1133
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1134
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1136
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1137
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1138
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "CharSequence"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1139
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1153
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1154
    .local v0, cs:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1563
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1564
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1565
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1572
    :goto_0
    return-object v3

    .line 1569
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/CharSequence;

    move-object v3, v0

    check-cast v3, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1570
    :catch_0
    move-exception v1

    .line 1571
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "CharSequence[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1572
    goto :goto_0
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1343
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1344
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1345
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1352
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1349
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<CharSequence>"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1352
    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .parameter "key"

    .prologue
    .line 1065
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1066
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1078
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1079
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1080
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 1087
    .end local p2
    :goto_0
    return-wide p2

    .line 1084
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Double;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 1085
    :catch_0
    move-exception v6

    .line 1086
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1519
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1520
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1521
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1528
    :goto_0
    return-object v3

    .line 1525
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [D

    move-object v3, v0

    check-cast v3, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1526
    :catch_0
    move-exception v1

    .line 1527
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "double[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1528
    goto :goto_0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .parameter "key"

    .prologue
    .line 1031
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1044
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1045
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1046
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 1053
    .end local p2
    :goto_0
    return p2

    .line 1050
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 1051
    :catch_0
    move-exception v6

    .line 1052
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1497
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1498
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1499
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1506
    :goto_0
    return-object v3

    .line 1503
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [F

    move-object v3, v0

    check-cast v3, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1504
    :catch_0
    move-exception v1

    .line 1505
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "float[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1506
    goto :goto_0
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .parameter "key"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1611
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1612
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1613
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1620
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1617
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "IBinder"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1620
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 963
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 964
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 976
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 977
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 978
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 985
    .end local p2
    :goto_0
    return p2

    .line 982
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 983
    :catch_0
    move-exception v6

    .line 984
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1453
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1454
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1455
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1462
    :goto_0
    return-object v3

    .line 1459
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [I

    move-object v3, v0

    check-cast v3, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1460
    :catch_0
    move-exception v1

    .line 1461
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "int[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1462
    goto :goto_0
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1299
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1300
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1301
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1308
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1305
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1306
    :catch_0
    move-exception v0

    .line 1307
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<Integer>"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1308
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .parameter "key"

    .prologue
    .line 997
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 998
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1010
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1011
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1012
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 1019
    .end local p2
    :goto_0
    return-wide p2

    .line 1016
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 1017
    :catch_0
    move-exception v6

    .line 1018
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1475
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1476
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1477
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1484
    :goto_0
    return-object v3

    .line 1481
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [J

    move-object v3, v0

    check-cast v3, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1482
    :catch_0
    move-exception v1

    .line 1483
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "long[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1484
    goto :goto_0
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 159
    iget-object v4, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 160
    .local v2, size:I
    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 161
    const-string v4, "Bundle"

    const-string v5, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    if-nez v2, :cond_1

    move-object v1, v3

    .line 171
    :goto_0
    return-object v1

    .line 166
    :cond_1
    iget-object v4, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 168
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v4, "getPairValue()"

    const-string v5, "String"

    invoke-direct {p0, v4, v1, v5, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v3

    .line 171
    goto :goto_0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1188
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1189
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1190
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1197
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1194
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "Parcelable"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1197
    goto :goto_0
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1210
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1211
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1212
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1219
    :goto_0
    return-object v3

    .line 1216
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Landroid/os/Parcelable;

    move-object v3, v0

    check-cast v3, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1217
    :catch_0
    move-exception v1

    .line 1218
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "Parcelable[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1219
    goto :goto_0
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1232
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1233
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1234
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1241
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1238
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "ArrayList"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1241
    goto :goto_0
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 1277
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1278
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1279
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1286
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1283
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "Serializable"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1286
    goto :goto_0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .parameter "key"

    .prologue
    .line 929
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 930
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 7
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 942
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 943
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 944
    .local v3, o:Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 951
    .end local p2
    :goto_0
    return p2

    .line 948
    .restart local p2
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 949
    :catch_0
    move-exception v6

    .line 950
    .local v6, e:Ljava/lang/ClassCastException;
    const-string v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    goto :goto_0
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1409
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1410
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1411
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1418
    :goto_0
    return-object v3

    .line 1415
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [S

    move-object v3, v0

    check-cast v3, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1416
    :catch_0
    move-exception v1

    .line 1417
    .local v1, e:Ljava/lang/ClassCastException;
    const-string/jumbo v3, "short[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1418
    goto :goto_0
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1255
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1256
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1257
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1264
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1261
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1262
    :catch_0
    move-exception v0

    .line 1263
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "SparseArray"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1264
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 1100
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1101
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1103
    .local v1, o:Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1104
    .restart local v1       #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1105
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "String"

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1106
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 1120
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, s:Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 1541
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1542
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1543
    .local v2, o:Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v3, v4

    .line 1550
    :goto_0
    return-object v3

    .line 1547
    :cond_0
    :try_start_0
    move-object v0, v2

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1548
    :catch_0
    move-exception v1

    .line 1549
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "String[]"

    invoke-direct {p0, p1, v2, v3, v1}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v3, v4

    .line 1550
    goto :goto_0
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1321
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 1322
    iget-object v3, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1323
    .local v1, o:Ljava/lang/Object;
    if-nez v1, :cond_0

    move-object v1, v2

    .line 1330
    .end local v1           #o:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 1327
    .restart local v1       #o:Ljava/lang/Object;
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1328
    :catch_0
    move-exception v0

    .line 1329
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v3, "ArrayList<String>"

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    move-object v1, v2

    .line 1330
    goto :goto_0
.end method

.method public hasFileDescriptors()Z
    .locals 8

    .prologue
    .line 335
    iget-boolean v7, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-nez v7, :cond_1

    .line 336
    const/4 v2, 0x0

    .line 338
    .local v2, fdFound:Z
    iget-object v7, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v7, :cond_2

    .line 339
    iget-object v7, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v7}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 340
    const/4 v2, 0x1

    .line 390
    :cond_0
    :goto_0
    iput-boolean v2, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 391
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 393
    .end local v2           #fdFound:Z
    :cond_1
    iget-boolean v7, p0, Landroid/os/Bundle;->mHasFds:Z

    return v7

    .line 344
    .restart local v2       #fdFound:Z
    :cond_2
    iget-object v7, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_0

    .line 345
    iget-object v7, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 346
    .local v5, obj:Ljava/lang/Object;
    instance-of v7, v5, Landroid/os/Parcelable;

    if-eqz v7, :cond_3

    .line 347
    check-cast v5, Landroid/os/Parcelable;

    .end local v5           #obj:Ljava/lang/Object;
    invoke-interface {v5}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    .line 349
    const/4 v2, 0x1

    .line 350
    goto :goto_0

    .line 352
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_3
    instance-of v7, v5, [Landroid/os/Parcelable;

    if-eqz v7, :cond_6

    .line 353
    check-cast v5, [Landroid/os/Parcelable;

    .end local v5           #obj:Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, [Landroid/os/Parcelable;

    .line 354
    .local v0, array:[Landroid/os/Parcelable;
    array-length v7, v0

    add-int/lit8 v4, v7, -0x1

    .local v4, n:I
    :goto_2
    if-ltz v4, :cond_4

    .line 355
    aget-object v7, v0, v4

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    .line 357
    const/4 v2, 0x1

    .line 344
    .end local v0           #array:[Landroid/os/Parcelable;
    .end local v4           #n:I
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 354
    .restart local v0       #array:[Landroid/os/Parcelable;
    .restart local v4       #n:I
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 361
    .end local v0           #array:[Landroid/os/Parcelable;
    .end local v4           #n:I
    .restart local v5       #obj:Ljava/lang/Object;
    :cond_6
    instance-of v7, v5, Landroid/util/SparseArray;

    if-eqz v7, :cond_8

    move-object v1, v5

    .line 362
    check-cast v1, Landroid/util/SparseArray;

    .line 364
    .local v1, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4       #n:I
    :goto_4
    if-ltz v4, :cond_4

    .line 365
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    .line 367
    const/4 v2, 0x1

    .line 368
    goto :goto_3

    .line 364
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 371
    .end local v1           #array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v4           #n:I
    :cond_8
    instance-of v7, v5, Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    move-object v0, v5

    .line 372
    check-cast v0, Ljava/util/ArrayList;

    .line 375
    .local v0, array:Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Landroid/os/Parcelable;

    if-eqz v7, :cond_4

    .line 377
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .restart local v4       #n:I
    :goto_5
    if-ltz v4, :cond_4

    .line 378
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    .line 379
    .local v6, p:Landroid/os/Parcelable;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_9

    .line 381
    const/4 v2, 0x1

    .line 382
    goto :goto_3

    .line 377
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_5
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 259
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 260
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isParcelled()Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 328
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 2
    .parameter "map"

    .prologue
    .line 312
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 313
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    .line 314
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 317
    iget-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    iget-boolean v1, p1, Landroid/os/Bundle;->mHasFds:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 318
    iget-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 319
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 775
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 776
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 404
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 405
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 636
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 637
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 756
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 757
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 416
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 417
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 649
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 428
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 429
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 672
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 673
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 512
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 513
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 745
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 613
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 489
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 720
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 721
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 476
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 477
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 708
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 709
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 791
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 792
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 452
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 453
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 684
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 685
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 588
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 589
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 465
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 696
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 697
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 525
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 527
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 538
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 539
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 541
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 553
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 554
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 556
    return-void
.end method

.method public putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 560
    .local p2, value:Ljava/util/List;,"Ljava/util/List<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 561
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 563
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 625
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 441
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 660
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 661
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 575
    .local p2, value:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 576
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 578
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 501
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 732
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 733
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, value:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 601
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    .line 1685
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1686
    .local v0, length:I
    if-gez v0, :cond_0

    .line 1687
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad length in parcel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1689
    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1690
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 6
    .parameter "parcel"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 1693
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1694
    .local v0, magic:I
    const v3, 0x4c444e42

    if-eq v0, v3, :cond_0

    .line 1696
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad magic number for Bundle: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1701
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1702
    .local v1, offset:I
    add-int v3, v1, p2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1705
    .local v2, p:Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1706
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1709
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1711
    iput-object v2, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    .line 1712
    invoke-virtual {v2}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v3

    iput-boolean v3, p0, Landroid/os/Bundle;->mHasFds:Z

    .line 1713
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/Bundle;->mFdsKnown:Z

    .line 1714
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 303
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method public setAllowFds(Z)Z
    .locals 1
    .parameter "allowFds"

    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 195
    .local v0, orig:Z
    iput-boolean p1, p0, Landroid/os/Bundle;->mAllowFds:Z

    .line 196
    return v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 182
    iput-object p1, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 183
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    .line 252
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1718
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    .line 1719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle[mParcelledData.dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1722
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bundle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 1718
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized unparcel()V
    .locals 4

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, N:I
    if-ltz v0, :cond_0

    .line 225
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    if-nez v1, :cond_2

    .line 226
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    .line 231
    :goto_1
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/os/Bundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V

    .line 232
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 233
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 213
    .end local v0           #N:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 228
    .restart local v0       #N:I
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->erase()V

    .line 229
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 1652
    iget-boolean v5, p0, Landroid/os/Bundle;->mAllowFds:Z

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    move-result v3

    .line 1654
    .local v3, oldAllowFds:Z
    :try_start_0
    iget-object v5, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v5, :cond_0

    .line 1655
    iget-object v5, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v5}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 1656
    .local v1, length:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    const v5, 0x4c444e42

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    iget-object v5, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    .line 1677
    return-void

    .line 1660
    .end local v1           #length:I
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1661
    .local v2, lengthPos:I
    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    const v5, 0x4c444e42

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1664
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 1665
    .local v4, startPos:I
    iget-object v5, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1666
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1669
    .local v0, endPos:I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1670
    sub-int v1, v0, v4

    .line 1671
    .restart local v1       #length:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1675
    .end local v0           #endPos:I
    .end local v1           #length:I
    .end local v2           #lengthPos:I
    .end local v4           #startPos:I
    :catchall_0
    move-exception v5

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    throw v5
.end method
