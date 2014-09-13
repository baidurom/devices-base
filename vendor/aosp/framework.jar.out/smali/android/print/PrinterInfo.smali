.class public final Landroid/print/PrinterInfo;
.super Ljava/lang/Object;
.source "PrinterInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_BUSY:I = 0x2

.field public static final STATUS_IDLE:I = 0x1

.field public static final STATUS_UNAVAILABLE:I = 0x3


# instance fields
.field private mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

.field private mDescription:Ljava/lang/String;

.field private mId:Landroid/print/PrinterId;

.field private mName:Ljava/lang/String;

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 310
    new-instance v0, Landroid/print/PrinterInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrinterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterId;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    .line 127
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterCapabilitiesInfo;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    .line 128
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrinterInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/print/PrinterInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrinterInfo$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/print/PrinterInfo;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/print/PrinterInfo;)V
    .locals 0
    .parameter "prototype"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Landroid/print/PrinterInfo;->copyFrom(Landroid/print/PrinterInfo;)V

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/print/PrinterInfo;Landroid/print/PrinterInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/print/PrinterInfo;-><init>(Landroid/print/PrinterInfo;)V

    return-void
.end method

.method static synthetic access$102(Landroid/print/PrinterInfo;Landroid/print/PrinterId;)Landroid/print/PrinterId;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object p1
.end method

.method static synthetic access$202(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/print/PrinterInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Landroid/print/PrinterInfo;->mStatus:I

    return p1
.end method

.method static synthetic access$402(Landroid/print/PrinterInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Landroid/print/PrinterInfo;Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrinterCapabilitiesInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object p1
.end method


# virtual methods
.method public copyFrom(Landroid/print/PrinterInfo;)V
    .locals 2
    .parameter "other"

    .prologue
    .line 59
    if-ne p0, p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p1, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    .line 63
    iget-object v0, p1, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    .line 64
    iget v0, p1, Landroid/print/PrinterInfo;->mStatus:I

    iput v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    .line 65
    iget-object v0, p1, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget-object v1, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Landroid/print/PrinterCapabilitiesInfo;

    iget-object v1, p1, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-direct {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/print/PrinterCapabilitiesInfo;)V

    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 158
    if-ne p0, p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 161
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 162
    goto :goto_0

    .line 164
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 165
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 167
    check-cast v0, Landroid/print/PrinterInfo;

    .line 168
    .local v0, other:Landroid/print/PrinterInfo;
    iget-object v3, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    if-nez v3, :cond_4

    .line 169
    iget-object v3, v0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    if-eqz v3, :cond_5

    move v1, v2

    .line 170
    goto :goto_0

    .line 172
    :cond_4
    iget-object v3, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    iget-object v4, v0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v3, v4}, Landroid/print/PrinterId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 173
    goto :goto_0

    .line 175
    :cond_5
    iget-object v3, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    iget-object v4, v0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 176
    goto :goto_0

    .line 178
    :cond_6
    iget v3, p0, Landroid/print/PrinterInfo;->mStatus:I

    iget v4, v0, Landroid/print/PrinterInfo;->mStatus:I

    if-eq v3, v4, :cond_7

    move v1, v2

    .line 179
    goto :goto_0

    .line 181
    :cond_7
    iget-object v3, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    iget-object v4, v0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    move v1, v2

    .line 182
    goto :goto_0

    .line 184
    :cond_8
    iget-object v3, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-nez v3, :cond_9

    .line 185
    iget-object v3, v0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v3, :cond_0

    move v1, v2

    .line 186
    goto :goto_0

    .line 188
    :cond_9
    iget-object v3, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    iget-object v4, v0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v3, v4}, Landroid/print/PrinterCapabilitiesInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 189
    goto :goto_0
.end method

.method public getCapabilities()Landroid/print/PrinterCapabilitiesInfo;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Landroid/print/PrinterId;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 146
    const/16 v0, 0x1f

    .line 147
    .local v0, prime:I
    const/4 v1, 0x1

    .line 148
    .local v1, result:I
    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v2}, Landroid/print/PrinterId;->hashCode()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 149
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v1, v4, v2

    .line 150
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/print/PrinterInfo;->mStatus:I

    add-int v1, v2, v4

    .line 151
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v1, v4, v2

    .line 152
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    if-eqz v4, :cond_0

    iget-object v3, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v3}, Landroid/print/PrinterCapabilitiesInfo;->hashCode()I

    move-result v3

    :cond_0
    add-int v1, v2, v3

    .line 153
    return v1

    :cond_1
    move v2, v3

    .line 148
    goto :goto_0

    :cond_2
    move v2, v3

    .line 149
    goto :goto_1

    :cond_3
    move v2, v3

    .line 151
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ", capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flags"

    .prologue
    .line 137
    iget-object v0, p0, Landroid/print/PrinterInfo;->mId:Landroid/print/PrinterId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 138
    iget-object v0, p0, Landroid/print/PrinterInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget v0, p0, Landroid/print/PrinterInfo;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-object v0, p0, Landroid/print/PrinterInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Landroid/print/PrinterInfo;->mCapabilities:Landroid/print/PrinterCapabilitiesInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    return-void
.end method
