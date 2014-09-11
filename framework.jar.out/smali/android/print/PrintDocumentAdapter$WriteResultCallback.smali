.class public abstract Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WriteResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method


# virtual methods
.method public onWriteCancelled()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 194
    return-void
.end method

.method public onWriteFinished([Landroid/print/PageRange;)V
    .locals 0
    .parameter "pages"

    .prologue
    .line 185
    return-void
.end method
