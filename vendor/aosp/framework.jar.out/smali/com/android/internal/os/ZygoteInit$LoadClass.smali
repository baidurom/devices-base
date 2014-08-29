.class Lcom/android/internal/os/ZygoteInit$LoadClass;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/ZygoteInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadClass"
.end annotation


# instance fields
.field mRuntime:Ldalvik/system/VMRuntime;

.field mnEnd:I

.field mnStart:I


# direct methods
.method public constructor <init>(Ldalvik/system/VMRuntime;II)V
    .locals 1
    .parameter "runtime"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput v0, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnStart:I

    .line 456
    iput v0, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnEnd:I

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mRuntime:Ldalvik/system/VMRuntime;

    .line 459
    if-eqz p1, :cond_0

    .line 460
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mRuntime:Ldalvik/system/VMRuntime;

    .line 462
    :cond_0
    if-ltz p2, :cond_1

    if-le p3, p2, :cond_1

    .line 463
    iput p2, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnStart:I

    .line 464
    iput p3, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnEnd:I

    .line 466
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 470
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnStart:I

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnEnd:I

    iget v5, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnStart:I

    if-le v4, v5, :cond_3

    .line 471
    iget v1, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnStart:I

    .local v1, i:I
    :goto_0
    iget v4, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mnEnd:I

    if-gt v1, v4, :cond_3

    .line 472
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$000()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, line:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 475
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    const v5, 0xc350

    if-le v4, v5, :cond_0

    .line 476
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 477
    iget-object v4, p0, Lcom/android/internal/os/ZygoteInit$LoadClass;->mRuntime:Ldalvik/system/VMRuntime;

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 478
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    :catch_0
    move-exception v0

    .line 481
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class not found for preloading: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 482
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 483
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error preloading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    instance-of v4, v3, Ljava/lang/Error;

    if-eqz v4, :cond_1

    .line 485
    check-cast v3, Ljava/lang/Error;

    .end local v3           #t:Ljava/lang/Throwable;
    throw v3

    .line 487
    .restart local v3       #t:Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v3, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_2

    .line 488
    check-cast v3, Ljava/lang/RuntimeException;

    .end local v3           #t:Ljava/lang/Throwable;
    throw v3

    .line 490
    .restart local v3       #t:Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 494
    .end local v1           #i:I
    .end local v2           #line:Ljava/lang/String;
    .end local v3           #t:Ljava/lang/Throwable;
    :cond_3
    return-void
.end method
