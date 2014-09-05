.class Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCaptiveCheckState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 252
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$1704(Landroid/net/CaptivePortalTracker;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 253
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 263
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    move v3, v0

    .line 293
    :cond_0
    :goto_0
    return v3

    .line 265
    :pswitch_0
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$1700(Landroid/net/CaptivePortalTracker;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 266
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$1800(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v4, v5}, Landroid/net/CaptivePortalTracker;->access$1900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 267
    .local v2, server:Ljava/net/InetAddress;
    if-eqz v2, :cond_1

    iget-object v4, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #calls: Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z
    invoke-static {v4, v2}, Landroid/net/CaptivePortalTracker;->access$2000(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 268
    .local v0, captive:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 273
    :cond_2
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 274
    if-eqz v0, :cond_3

    .line 277
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #calls: Landroid/net/CaptivePortalTracker;->setNotificationVisible(Z)V
    invoke-static {v4, v3}, Landroid/net/CaptivePortalTracker;->access$900(Landroid/net/CaptivePortalTracker;Z)V

    .line 287
    :cond_3
    :goto_1
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v5, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$2100(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/CaptivePortalTracker;->access$2200(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 280
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "captivePortal"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 283
    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    iget-object v4, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    #getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 263
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
