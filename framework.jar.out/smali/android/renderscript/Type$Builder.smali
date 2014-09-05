.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/renderscript/Element;

.field mRS:Landroid/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1
    .parameter "rs"
    .parameter "e"

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 234
    invoke-virtual {p2}, Landroid/renderscript/BaseObj;->checkValid()V

    .line 235
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 236
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    .line 237
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 307
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-lez v0, :cond_2

    .line 308
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_1

    .line 309
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_1
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_2

    .line 312
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_2
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v0, :cond_3

    .line 316
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-ge v0, v1, :cond_3

    .line 317
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_3
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v0, :cond_4

    .line 321
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-ge v0, v1, :cond_4

    .line 322
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_4
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v0, :cond_6

    .line 327
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v0, :cond_6

    .line 328
    :cond_5
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_6
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v3, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v5, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v6, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v7, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v8

    .line 334
    .local v8, id:I
    new-instance v9, Landroid/renderscript/Type;

    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v9, v8, v0}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 335
    .local v9, t:Landroid/renderscript/Type;
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v0, v9, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 336
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v0, v9, Landroid/renderscript/Type;->mDimX:I

    .line 337
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v0, v9, Landroid/renderscript/Type;->mDimY:I

    .line 338
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v0, v9, Landroid/renderscript/Type;->mDimZ:I

    .line 339
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v0, v9, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 340
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v0, v9, Landroid/renderscript/Type;->mDimFaces:Z

    .line 341
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v0, v9, Landroid/renderscript/Type;->mDimYuv:I

    .line 343
    invoke-virtual {v9}, Landroid/renderscript/Type;->calcElementCount()V

    .line 344
    return-object v9
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 275
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    .line 276
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0
    .parameter "value"

    .prologue
    .line 270
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 271
    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 246
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 247
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 250
    return-object p0
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 254
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 255
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    .line 258
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "yuvFormat"

    .prologue
    .line 287
    sparse-switch p1, :sswitch_data_0

    .line 293
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Only NV21 and YV12 are supported.."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :sswitch_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    .line 297
    return-object p0

    .line 287
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .locals 2
    .parameter "value"

    .prologue
    .line 262
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 263
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    .line 266
    return-object p0
.end method
