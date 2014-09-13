.class public final Landroid/print/PrintAttributes$Margins;
.super Ljava/lang/Object;
.source "PrintAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Margins"
.end annotation


# static fields
.field public static final NO_MARGINS:Landroid/print/PrintAttributes$Margins;


# instance fields
.field private final mBottomMils:I

.field private final mLeftMils:I

.field private final mRightMils:I

.field private final mTopMils:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1033
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrintAttributes$Margins;->NO_MARGINS:Landroid/print/PrintAttributes$Margins;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "leftMils"
    .parameter "topMils"
    .parameter "rightMils"
    .parameter "bottomMils"

    .prologue
    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1049
    iput p2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    .line 1050
    iput p1, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    .line 1051
    iput p3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    .line 1052
    iput p4, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    .line 1053
    return-void
.end method

.method static createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .locals 5
    .parameter "parcel"

    .prologue
    .line 1099
    new-instance v0, Landroid/print/PrintAttributes$Margins;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1119
    if-ne p0, p1, :cond_1

    .line 1141
    :cond_0
    :goto_0
    return v1

    .line 1122
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 1123
    goto :goto_0

    .line 1125
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 1126
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1128
    check-cast v0, Landroid/print/PrintAttributes$Margins;

    .line 1129
    .local v0, other:Landroid/print/PrintAttributes$Margins;
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    iget v4, v0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 1130
    goto :goto_0

    .line 1132
    :cond_4
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    iget v4, v0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 1133
    goto :goto_0

    .line 1135
    :cond_5
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    iget v4, v0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    if-eq v3, v4, :cond_6

    move v1, v2

    .line 1136
    goto :goto_0

    .line 1138
    :cond_6
    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    iget v4, v0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 1139
    goto :goto_0
.end method

.method public getBottomMils()I
    .locals 1

    .prologue
    .line 1088
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    return v0
.end method

.method public getLeftMils()I
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    return v0
.end method

.method public getRightMils()I
    .locals 1

    .prologue
    .line 1079
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    return v0
.end method

.method public getTopMils()I
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 1108
    const/16 v0, 0x1f

    .line 1109
    .local v0, prime:I
    const/4 v1, 0x1

    .line 1110
    .local v1, result:I
    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    add-int/lit8 v1, v2, 0x1f

    .line 1111
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    add-int v1, v2, v3

    .line 1112
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    add-int v1, v2, v3

    .line 1113
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    add-int v1, v2, v3

    .line 1114
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Margins{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string v1, "leftMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1149
    const-string v1, ", topMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1150
    const-string v1, ", rightMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1151
    const-string v1, ", bottomMils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1152
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 1092
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mLeftMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mTopMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mRightMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1095
    iget v0, p0, Landroid/print/PrintAttributes$Margins;->mBottomMils:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1096
    return-void
.end method
