.class final Lcom/android/internal/telephony/gemini/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gemini/GeminiPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/android/internal/telephony/gemini/GeminiPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized run()V
    .locals 26

    .prologue
    .line 436
    monitor-enter p0

    :try_start_0
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 438
    const/4 v4, 0x0

    .line 439
    const/4 v3, 0x0

    .line 440
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v5

    .line 441
    if-eqz v5, :cond_4

    .line 442
    iget-object v4, v5, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 443
    const-string v6, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAllIccIdsDone old IccId In Slot0 is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 445
    const-string/jumbo v7, "slot"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    sget-object v7, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v5, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v6, v4

    .line 452
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v4

    .line 453
    if-eqz v4, :cond_5

    .line 454
    iget-object v3, v4, Landroid/provider/Telephony$SIMInfo;->mICCId:Ljava/lang/String;

    .line 455
    const-string v5, "PHONE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAllIccIdsDone old IccId In Slot1 is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v5, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 457
    const-string/jumbo v7, "slot"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    sget-object v7, Landroid/provider/Telephony$SimInfo;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v8, v4, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v5, v3

    .line 466
    :goto_1
    const/4 v4, 0x0

    .line 467
    const/4 v3, 0x0

    .line 468
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 469
    :cond_0
    const-string v7, "PHONE"

    const-string v8, "getAllIccIdsDone No SIM inserted in Slot 0, set the slot for Removed SIM to NONE "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 487
    :cond_2
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone No SIM inserted in Slot 1, set the slot for Removed SIM to NONE "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v14, v3

    move v15, v4

    .line 502
    :goto_3
    const-wide/16 v6, -0x3

    .line 503
    const-wide/16 v8, -0x3

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    .line 505
    if-nez v17, :cond_c

    const/4 v3, 0x0

    move v10, v3

    .line 506
    :goto_4
    const/4 v3, 0x0

    move v4, v3

    :goto_5
    if-ge v4, v10, :cond_e

    .line 507
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 508
    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v5, :cond_d

    .line 509
    iget-wide v6, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 506
    :cond_3
    :goto_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_5

    .line 449
    :cond_4
    const-string v5, "PHONE"

    const-string v6, "getAllIccIdsDone No sim in slot0 for last time "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    goto/16 :goto_0

    .line 461
    :cond_5
    const-string v4, "PHONE"

    const-string v5, "getAllIccIdsDone No sim in slot1 for last time "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v3

    goto/16 :goto_1

    .line 471
    :cond_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 474
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 475
    const-string v7, "PHONE"

    const-string v8, "getAllIccIdsDone special SIM with invalid ICCID is inserted in slot1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 481
    const/4 v4, 0x1

    .line 482
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 477
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 436
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 489
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 490
    :cond_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    .line 491
    const-string v7, "PHONE"

    const-string v8, "getAllIccIdsDone special SIM with invalid ICCID is inserted in slot2"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 497
    add-int/lit8 v4, v4, 0x1

    .line 498
    or-int/lit8 v3, v3, 0x2

    move v14, v3

    move v15, v4

    goto/16 :goto_3

    .line 493
    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/provider/Telephony$SIMInfo;->insertICCId(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    goto :goto_8

    .line 505
    :cond_c
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    move v10, v3

    goto/16 :goto_4

    .line 510
    :cond_d
    iget v5, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_3

    .line 511
    iget-wide v8, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    goto/16 :goto_6

    .line 514
    :cond_e
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllIccIdsDone simIdForSlot ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    if-lez v15, :cond_f

    .line 517
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone New SIM detected. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    .line 519
    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 521
    if-lez v3, :cond_1a

    .line 522
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    .line 527
    :cond_f
    :goto_9
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone set PROPERTY_SIM_INFO_READY to true. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v3, "gsm.siminfo.ready"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v3, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllIccIdsDone  PROPERTY_SIM_INFO_READY after set is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gsm.siminfo.ready"

    const/4 v11, 0x0

    invoke-static {v5, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string/jumbo v3, "video_call_sim_setting"

    const-wide/16 v4, -0x5

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 533
    const-string/jumbo v3, "voice_call_sim_setting"

    const-wide/16 v11, -0x5

    move-object/from16 v0, v16

    invoke-static {v0, v3, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 535
    const-string/jumbo v3, "sms_sim_setting"

    const-wide/16 v11, -0x5

    move-object/from16 v0, v16

    invoke-static {v0, v3, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v20

    .line 536
    const-string v3, "gprs_connection_sim_setting"

    const-wide/16 v11, -0x5

    move-object/from16 v0, v16

    invoke-static {v0, v3, v11, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v22

    .line 538
    const/4 v11, 0x0

    .line 542
    const-wide/16 v12, -0x5

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v24

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 545
    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    move-wide v12, v8

    .line 556
    :cond_10
    :goto_a
    const-string/jumbo v3, "video_call_sim_setting"

    move-object/from16 v0, v16

    invoke-static {v0, v3, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 558
    const/4 v11, 0x1

    .line 562
    :cond_11
    new-instance v24, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATA_DEFAULT_SIM"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    const-string/jumbo v3, "simid"

    move-object/from16 v0, v24

    move-wide/from16 v1, v22

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 564
    const/4 v3, 0x1

    if-le v10, v3, :cond_1f

    .line 565
    const-wide/16 v3, -0x5

    cmp-long v3, v18, v3

    if-nez v3, :cond_12

    .line 566
    const-string/jumbo v3, "voice_call_sim_setting"

    const-wide/16 v4, -0x1

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 570
    :cond_12
    const-wide/16 v3, -0x5

    cmp-long v3, v20, v3

    if-nez v3, :cond_13

    .line 571
    const-string/jumbo v3, "sms_sim_setting"

    const-wide/16 v4, -0x1

    move-object/from16 v0, v16

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 575
    :cond_13
    const-wide/16 v3, -0x5

    cmp-long v3, v22, v3

    if-nez v3, :cond_14

    .line 576
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 578
    const-string/jumbo v3, "simid"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 607
    :cond_14
    :goto_b
    const-wide/16 v3, -0x5

    .line 608
    const/4 v5, 0x1

    if-le v10, v5, :cond_23

    .line 609
    const-wide/16 v3, -0x1

    move-wide v12, v3

    .line 614
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v4, v18

    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 615
    const-string/jumbo v3, "voice_call_sim_setting"

    move-object/from16 v0, v16

    invoke-static {v0, v3, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 616
    const/4 v11, 0x1

    .line 619
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v4, v20

    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 620
    const-string/jumbo v3, "sms_sim_setting"

    move-object/from16 v0, v16

    invoke-static {v0, v3, v12, v13}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 621
    const/4 v11, 0x1

    .line 624
    :cond_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const-string v5, "broadCast intent ACTION_SIM_INFO_UPDATE "

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V

    .line 626
    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-static {v3, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-wide/from16 v4, v22

    invoke-static/range {v3 .. v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;JJJ)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 629
    const/4 v3, 0x1

    if-le v10, v3, :cond_25

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 631
    const-string/jumbo v3, "simid"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 641
    :cond_17
    :goto_d
    const/4 v3, 0x1

    .line 644
    :goto_e
    if-lez v15, :cond_27

    .line 645
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone. New SIM detected. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3, v10, v14}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;II)V

    .line 652
    :cond_18
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 654
    const-string/jumbo v3, "simid"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 655
    const-wide/16 v5, -0x5

    cmp-long v5, v3, v5

    if-eqz v5, :cond_19

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_19

    .line 656
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v3

    .line 657
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    :cond_19
    monitor-exit p0

    return-void

    .line 524
    :cond_1a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/util/List;)V

    goto/16 :goto_9

    .line 547
    :cond_1b
    if-nez v24, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v3

    if-eqz v3, :cond_10

    move-wide v12, v6

    .line 548
    goto/16 :goto_a

    .line 551
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v3

    if-eqz v3, :cond_10

    move-wide v12, v6

    .line 552
    goto/16 :goto_a

    .line 580
    :cond_1d
    const-string/jumbo v3, "simid"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_b

    .line 582
    :cond_1e
    const-string/jumbo v3, "simid"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_b

    .line 585
    :cond_1f
    const/4 v3, 0x1

    if-ne v10, v3, :cond_14

    .line 586
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-wide v3, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    .line 587
    const-string v5, "enable_internet_call_value"

    const/4 v12, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v5, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v12}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_20

    if-eqz v5, :cond_20

    const-wide/16 v12, -0x5

    cmp-long v5, v18, v12

    if-nez v5, :cond_21

    .line 591
    :cond_20
    const-string/jumbo v5, "voice_call_sim_setting"

    move-object/from16 v0, v16

    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 595
    :cond_21
    const-string/jumbo v5, "sms_sim_setting"

    move-object/from16 v0, v16

    invoke-static {v0, v5, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 598
    const-wide/16 v12, -0x5

    cmp-long v5, v22, v12

    if-nez v5, :cond_14

    .line 599
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 600
    const-string/jumbo v5, "simid"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_b

    .line 602
    :cond_22
    const-string/jumbo v3, "simid"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_b

    .line 610
    :cond_23
    const/4 v5, 0x1

    if-ne v10, v5, :cond_29

    .line 611
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-wide v3, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-wide v12, v3

    goto/16 :goto_c

    .line 633
    :cond_24
    const-string/jumbo v3, "simid"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_d

    .line 635
    :cond_25
    if-lez v10, :cond_17

    .line 636
    const-string/jumbo v4, "simid"

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    iget-wide v5, v3, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_d

    .line 639
    :cond_26
    const-string/jumbo v3, "simid"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/16 :goto_d

    .line 647
    :cond_27
    if-eqz v3, :cond_18

    if-lez v10, :cond_18

    .line 648
    const-string v3, "PHONE"

    const-string v4, "getAllIccIdsDone No new SIM detected and Default SIM for some service has been removed. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/gemini/d;->a:Lcom/android/internal/telephony/gemini/GeminiPhone;

    invoke-static {v3, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    :cond_28
    move v3, v11

    goto/16 :goto_e

    :cond_29
    move-wide v12, v3

    goto/16 :goto_c

    :cond_2a
    move v14, v3

    move v15, v4

    goto/16 :goto_3
.end method
