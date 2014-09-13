.class public abstract Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.super Ljava/lang/Object;
.source "PrintDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutResultCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    return-void
.end method


# virtual methods
.method public onLayoutCancelled()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 237
    return-void
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 0
    .parameter "info"
    .parameter "changed"

    .prologue
    .line 228
    return-void
.end method
