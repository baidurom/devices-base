.class Lcom/lenovo/citynum/CityNumService$1;
.super Ljava/lang/Thread;
.source "CityNumService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/citynum/CityNumService;->UpDateData(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/citynum/CityNumService;

.field final synthetic val$hl:Landroid/os/Handler;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/lenovo/citynum/CityNumService;Landroid/os/Message;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/lenovo/citynum/CityNumService$1;->this$0:Lcom/lenovo/citynum/CityNumService;

    iput-object p2, p0, Lcom/lenovo/citynum/CityNumService$1;->val$msg:Landroid/os/Message;

    iput-object p3, p0, Lcom/lenovo/citynum/CityNumService$1;->val$hl:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 391
    iget-object v1, p0, Lcom/lenovo/citynum/CityNumService$1;->this$0:Lcom/lenovo/citynum/CityNumService;

    iget-object v2, p0, Lcom/lenovo/citynum/CityNumService$1;->val$msg:Landroid/os/Message;

    #calls: Lcom/lenovo/citynum/CityNumService;->DownloadData(Landroid/os/Message;)Z
    invoke-static {v1, v2}, Lcom/lenovo/citynum/CityNumService;->access$000(Lcom/lenovo/citynum/CityNumService;Landroid/os/Message;)Z

    move-result v0

    .line 392
    .local v0, result:Z
    iget-object v2, p0, Lcom/lenovo/citynum/CityNumService$1;->val$msg:Landroid/os/Message;

    if-eqz v0, :cond_0

    const v1, 0x8001

    :goto_0
    iput v1, v2, Landroid/os/Message;->what:I

    .line 394
    iget-object v1, p0, Lcom/lenovo/citynum/CityNumService$1;->val$hl:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lenovo/citynum/CityNumService$1;->val$msg:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void

    .line 392
    :cond_0
    const v1, 0x8002

    goto :goto_0
.end method
