.class Lcom/android/server/LenovoBatteryManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LenovoBatteryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LenovoBatteryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LenovoBatteryManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LenovoBatteryManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/LenovoBatteryManagerService$1;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    if-nez p2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v0, "action.boardcast.resume.activity.info"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/LenovoBatteryManagerService$1;->this$0:Lcom/android/server/LenovoBatteryManagerService;

    const-string v1, "packageName"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/LenovoBatteryManagerService;->executePackageChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LenovoBatteryManagerService;->access$100(Lcom/android/server/LenovoBatteryManagerService;Ljava/lang/String;)V

    goto :goto_0
.end method
