.class public Lcom/android/internal/util/SearchHelper;
.super Ljava/lang/Object;
.source "SearchHelper.java"


# static fields
.field public static final ANIM_TYPE_BOTTOM_UP:I = 0x4

.field public static final ANIM_TYPE_FADE_IN:I = 0x2

.field public static final ANIM_TYPE_IN_OUT:I = 0x5

.field public static final ANIM_TYPE_NORMAL:I = 0x1

.field public static final ANIM_TYPE_RIGHT_LEFT:I = 0x3

.field public static final CALL_APP_ID:Ljava/lang/String; = "delimitwordsearch"

.field private static final SEMIVIEW_ACTION:Ljava/lang/String; = "android.intent.action.QUICKVIEW"

.field private static final SEMIVIEW_ANIMTYPE:Ljava/lang/String; = "AnimType"

.field private static final SEMIVIEW_CALLAPPID:Ljava/lang/String; = "CallAppID"

.field private static final SEMIVIEW_DATA:Ljava/lang/String; = "Data"

.field private static final SEMIVIEW_STYLE:Ljava/lang/String; = "Style"

.field private static final SEMIVIEW_TOUCH_POINT_X:Ljava/lang/String; = "Touch_Point_X"

.field private static final SEMIVIEW_TOUCH_POINT_Y:Ljava/lang/String; = "Touch_Point_Y"

.field private static final SEMIVIEW_TYPE:Ljava/lang/String; = "Type"

.field public static final STYLE_NOPIN:I = 0x8

.field public static final STYLE_NOTITLEBAR:I = 0x2

.field public static final STYLE_NOZOOMBUTTON:I = 0x1

.field public static final STYLE_STABLE:I = 0x4

.field public static final TYPE_BAIKE_SEMIVIEW:I = 0x3

.field public static final TYPE_DEFAULT_SEMIVIEW:I = 0x2

.field public static final TYPE_TRANSLATOR_SEMIVIEW:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startSearch(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 8
    .parameter "context"
    .parameter "searchText"
    .parameter "startPointerX"
    .parameter "startPointerY"

    .prologue
    .line 57
    const/16 v5, 0xe

    .line 58
    .local v5, style:I
    const/4 v4, 0x2

    const/4 v6, 0x3

    const-string v7, "delimitwordsearch"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public static startSearch(Landroid/content/Context;Ljava/lang/String;III)V
    .locals 8
    .parameter "context"
    .parameter "searchText"
    .parameter "startPointerX"
    .parameter "startPointerY"
    .parameter "type"

    .prologue
    .line 73
    const/16 v5, 0xe

    .line 74
    .local v5, style:I
    const/4 v6, 0x3

    const-string v7, "delimitwordsearch"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/SearchHelper;->startSearch(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public static startSearch(Landroid/content/Context;Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "searchText"
    .parameter "startPointerX"
    .parameter "startPointerY"
    .parameter "type"
    .parameter "style"
    .parameter "animType"
    .parameter "callAppId"

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 96
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 101
    .local v3, intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.QUICKVIEW"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v6, "Data"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v6, "Type"

    invoke-virtual {v3, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v6, "Style"

    invoke-virtual {v3, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v6, "AnimType"

    move/from16 v0, p6

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v6, "CallAppID"

    move-object/from16 v0, p7

    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 108
    :cond_3
    const-string v6, "Touch_Point_X"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    const-string v6, "Touch_Point_Y"

    invoke-virtual {v3, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    :cond_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v6

    if-nez v6, :cond_1

    .line 113
    const v6, 0x10404d6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, " "

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, url:Ljava/lang/String;
    const v6, 0x10404d6

    const/4 v7, 0x1

    :try_start_0
    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "utf-8"

    invoke-static {p1, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 122
    :goto_1
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 123
    .local v5, webSearchIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .end local v5           #webSearchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 127
    .local v1, ee:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v1           #ee:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .line 118
    .local v2, ex:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
