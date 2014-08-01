.class Lcom/android/internal/telephony/CallManager$1;
.super Landroid/os/Handler;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CallManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2318
    iput-object p1, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v13, -0x1

    const/4 v9, 0x0

    .line 2324
    const-string v10, "CallManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " handleMessage msgid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2326
    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 2629
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2329
    :pswitch_1
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_DISCONNECT)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    const/16 v8, 0x64

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1

    .line 2331
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2335
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V
    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    .line 2339
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->clearEspeechInfo()Z
    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->access$100(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 2333
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 2343
    :pswitch_2
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_PRECISE_CALL_STATE_CHANGED)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    const/16 v8, 0x65

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_2

    .line 2345
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2349
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handle3GSwitchLock()V
    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->access$000(Lcom/android/internal/telephony/CallManager;)V

    .line 2352
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->checkIfExistsFollowingAction()Z
    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->access$200(Lcom/android/internal/telephony/CallManager;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2353
    :catch_0
    move-exception v8

    goto :goto_0

    .line 2347
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_2

    .line 2359
    :pswitch_3
    const-string v10, "CallManager"

    const-string v11, " handleMessage (EVENT_NEW_RINGING_CONNECTION)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    const/4 v2, 0x0

    .line 2364
    .local v2, bECCExists:Z
    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 2366
    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2367
    .local v0, activeCallAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isSpecialEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    move v2, v8

    .line 2369
    :goto_3
    const-string v10, "CallManager"

    const-string v11, "Reject incoming call since ECC call exists."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    .end local v0           #activeCallAddress:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z
    invoke-static {v10}, Lcom/android/internal/telephony/CallManager;->access$300(Lcom/android/internal/telephony/CallManager;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_4
    move v3, v8

    .line 2373
    .local v3, bMoMtConflict:Z
    :goto_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_8

    .line 2374
    :cond_5
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    iget-object v4, v8, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 2376
    .local v4, c:Lcom/android/internal/telephony/Connection;
    :try_start_1
    const-string v8, "CallManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "silently drop incoming call: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2378
    :catch_1
    move-exception v5

    .line 2379
    .local v5, e:Lcom/android/internal/telephony/CallStateException;
    const-string v8, "CallManager"

    const-string/jumbo v9, "new ringing connection"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .end local v3           #bMoMtConflict:Z
    .end local v4           #c:Lcom/android/internal/telephony/Connection;
    .end local v5           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v0       #activeCallAddress:Ljava/lang/String;
    :cond_6
    move v2, v9

    .line 2367
    goto :goto_3

    .end local v0           #activeCallAddress:Ljava/lang/String;
    :cond_7
    move v3, v9

    .line 2371
    goto :goto_4

    .line 2382
    .restart local v3       #bMoMtConflict:Z
    :cond_8
    const/16 v8, 0x66

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_9

    .line 2383
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2385
    :cond_9
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2392
    .end local v2           #bECCExists:Z
    .end local v3           #bMoMtConflict:Z
    :pswitch_4
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_UNKNOWN_CONNECTION)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    const/16 v8, 0x67

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_a

    .line 2394
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2396
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2401
    :pswitch_5
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_INCOMING_RING)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2404
    const/16 v8, 0x68

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_b

    .line 2405
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2407
    :cond_b
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2413
    :pswitch_6
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_RINGBACK_TONE)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    const/16 v8, 0x69

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_c

    .line 2415
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2417
    :cond_c
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2422
    :pswitch_7
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_ON)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const/16 v8, 0x6a

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_d

    .line 2424
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2426
    :cond_d
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2431
    :pswitch_8
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_IN_CALL_VOICE_PRIVACY_OFF)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    const/16 v8, 0x6b

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_e

    .line 2433
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2435
    :cond_e
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2440
    :pswitch_9
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_CALL_WAITING)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    const/16 v8, 0x6c

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_f

    .line 2442
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2444
    :cond_f
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2449
    :pswitch_a
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_DISPLAY_INFO)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    const/16 v8, 0x6d

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_10

    .line 2451
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2453
    :cond_10
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2458
    :pswitch_b
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_SIGNAL_INFO)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const/16 v8, 0x6e

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_11

    .line 2460
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2462
    :cond_11
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2467
    :pswitch_c
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_CDMA_OTA_STATUS_CHANGE)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    const/16 v8, 0x6f

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_12

    .line 2469
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2471
    :cond_12
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2476
    :pswitch_d
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_RESEND_INCALL_MUTE)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    const/16 v8, 0x70

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_13

    .line 2478
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2480
    :cond_13
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2485
    :pswitch_e
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_MMI_INITIATE)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    const/16 v8, 0x71

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_14

    .line 2487
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2489
    :cond_14
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2494
    :pswitch_f
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_MMI_COMPLETE)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    const/16 v8, 0x72

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_15

    .line 2496
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2498
    :cond_15
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2503
    :pswitch_10
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_ECM_TIMER_RESET)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    const/16 v8, 0x73

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_16

    .line 2505
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2507
    :cond_16
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2512
    :pswitch_11
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_SUBSCRIPTION_INFO_READY)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    const/16 v8, 0x74

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_17

    .line 2514
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2516
    :cond_17
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2521
    :pswitch_12
    const-string v8, "CallManager"

    const-string v10, " handleMessage (EVENT_SUPP_SERVICE_FAILED)"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    const/16 v8, 0x75

    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v8, v10, :cond_18

    .line 2523
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v8, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v10, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2528
    :goto_5
    const-string v8, "CallManager"

    const-string v10, "Reset WaitingForHoldRequest variables since hold request is failed."

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    sget-object v10, Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;->NONE:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    #setter for: Lcom/android/internal/telephony/CallManager;->mWaitingReasonForHold:Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;
    invoke-static {v8, v10}, Lcom/android/internal/telephony/CallManager;->access$402(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;)Lcom/android/internal/telephony/CallManager$WaitingReasonForHold;

    .line 2530
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #setter for: Lcom/android/internal/telephony/CallManager;->bWaitingForHoldRequest:Z
    invoke-static {v8, v9}, Lcom/android/internal/telephony/CallManager;->access$502(Lcom/android/internal/telephony/CallManager;Z)Z

    .line 2533
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #getter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->access$600(Lcom/android/internal/telephony/CallManager;)I

    move-result v8

    if-eq v8, v13, :cond_0

    .line 2534
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;
    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->access$700(Lcom/android/internal/telephony/CallManager;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2535
    .local v1, audioManager:Landroid/media/AudioManager;
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #getter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v8}, Lcom/android/internal/telephony/CallManager;->access$600(Lcom/android/internal/telephony/CallManager;)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->setMode(I)V

    .line 2536
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #setter for: Lcom/android/internal/telephony/CallManager;->mCurrentAudioMode:I
    invoke-static {v8, v13}, Lcom/android/internal/telephony/CallManager;->access$602(Lcom/android/internal/telephony/CallManager;I)I

    goto/16 :goto_0

    .line 2525
    .end local v1           #audioManager:Landroid/media/AudioManager;
    :cond_18
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v10, v8, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v10, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_5

    .line 2542
    :pswitch_13
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_SERVICE_STATE_CHANGED)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/16 v8, 0x76

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_19

    .line 2544
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2546
    :cond_19
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2553
    :pswitch_14
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_POST_DIAL_CHARACTER)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    const/16 v8, 0x77

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1a

    .line 2555
    const/4 v6, 0x0

    .local v6, i:I
    :goto_6
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v8, v8, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 2557
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v8, v8, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8, v6}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v7

    .line 2558
    .local v7, notifyMsg:Landroid/os/Message;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2559
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 2560
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2555
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2563
    .end local v6           #i:I
    .end local v7           #notifyMsg:Landroid/os/Message;
    :cond_1a
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_7
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v8, v8, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 2565
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v8, v8, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants2:Landroid/os/RegistrantList;

    invoke-virtual {v8, v6}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->messageForRegistrant()Landroid/os/Message;

    move-result-object v7

    .line 2566
    .restart local v7       #notifyMsg:Landroid/os/Message;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v8, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2567
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v7, Landroid/os/Message;->arg1:I

    .line 2568
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 2563
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2575
    .end local v6           #i:I
    .end local v7           #notifyMsg:Landroid/os/Message;
    :pswitch_15
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_SPEECH_INFO)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    #calls: Lcom/android/internal/telephony/CallManager;->handleSpeechInfo(Landroid/os/Message;)Z
    invoke-static {v8, p1}, Lcom/android/internal/telephony/CallManager;->access$800(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2581
    :pswitch_16
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_VT_RING_INFO)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    const/16 v8, 0x7a

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1b

    .line 2583
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2585
    :cond_1b
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mVtRingInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2590
    :pswitch_17
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_VT_STATUS_INFO)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    iget-object v9, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    #calls: Lcom/android/internal/telephony/CallManager;->setVTSpeechCall(Landroid/os/AsyncResult;)V
    invoke-static {v9, v8}, Lcom/android/internal/telephony/CallManager;->access$900(Lcom/android/internal/telephony/CallManager;Landroid/os/AsyncResult;)V

    .line 2594
    const/16 v8, 0x79

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1c

    .line 2595
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2597
    :cond_1c
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mVtStatusInfoRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2602
    :pswitch_18
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_CRSS_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    const/16 v8, 0x7b

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1d

    .line 2604
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2606
    :cond_1d
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mCrssSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2611
    :pswitch_19
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_SUPP_SERVICE_NOTIFICATION)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    const/16 v8, 0x7c

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1e

    .line 2613
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2615
    :cond_1e
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mSuppServiceNotificationRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2620
    :pswitch_1a
    const-string v8, "CallManager"

    const-string v9, " handleMessage (EVENT_VT_REPLACE_DISCONNECT)"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    const/16 v8, 0x7d

    iget v9, p1, Landroid/os/Message;->what:I

    if-ne v8, v9, :cond_1f

    .line 2622
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2624
    :cond_1f
    iget-object v8, p0, Lcom/android/internal/telephony/CallManager$1;->this$0:Lcom/android/internal/telephony/CallManager;

    iget-object v9, v8, Lcom/android/internal/telephony/CallManager;->mVtReplaceDisconnectRegistrants2:Landroid/os/RegistrantList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-virtual {v9, v8}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 2326
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_16
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method
