.class public Landroid/content/res/BaiduResources;
.super Landroid/content/res/Resources;
.source "BaiduResources.java"


# static fields
.field private static final mAnColorHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mHasParseYiValue:Z

.field private static mIsYiValueExist:Z

.field private static final mYiColorHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sParseTheme:Z

.field private static sThemeChanged:I

.field private static sThemeExist:Z


# instance fields
.field mAPPMultiParseConfig:Z

.field mAppMultiColorExist:Z

.field mAppMultiColorHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAppMultiConfigExist:Z

.field mAppMultiConfigHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAppMultiParseColor:Z

.field mAppMultiTmpConfig:Landroid/util/TypedValue;

.field mAppMultiTmpValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    sput-boolean v1, Landroid/content/res/BaiduResources;->sParseTheme:Z

    sput-boolean v1, Landroid/content/res/BaiduResources;->sThemeExist:Z

    sput-boolean v1, Landroid/content/res/BaiduResources;->mHasParseYiValue:Z

    sput-boolean v1, Landroid/content/res/BaiduResources;->mIsYiValueExist:Z

    const/4 v0, -0x1

    sput v0, Landroid/content/res/BaiduResources;->sThemeChanged:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .parameter "assets"
    .parameter "metrics"
    .parameter "config"
    .parameter "compInfo"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    return-void
.end method

.method private getBoolean(IZ)Ljava/lang/Boolean;
    .locals 1
    .parameter "id"
    .parameter "defaultReturn"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/BaiduResources;->getThemeConfig(I)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, result:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .end local v0           #result:Ljava/lang/Boolean;
    :goto_0
    return-object v0

    .restart local v0       #result:Ljava/lang/Boolean;
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private getThemeColor(I)Ljava/lang/Integer;
    .locals 12
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/high16 v11, 0x7000

    const/4 v10, 0x5

    const/4 v3, 0x0

    const/4 v9, 0x1

    ushr-int/lit8 v1, p1, 0x18

    .local v1, packageId:I
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v2

    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    .local v4, textColor:Ljava/lang/String;
    sget-boolean v5, Landroid/content/res/BaiduResources;->sParseTheme:Z

    if-nez v5, :cond_2

    if-ne v1, v9, :cond_2

    sput-boolean v9, Landroid/content/res/BaiduResources;->sParseTheme:Z

    const-string v5, "framework-res"

    const-string v6, "res/values/colors.xml"

    sget-object v7, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-static {v5, v6, v7}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    sput-boolean v5, Landroid/content/res/BaiduResources;->sThemeExist:Z

    :cond_2
    sget-boolean v5, Landroid/content/res/BaiduResources;->mHasParseYiValue:Z

    if-nez v5, :cond_3

    if-ne v1, v10, :cond_3

    sput-boolean v9, Landroid/content/res/BaiduResources;->mHasParseYiValue:Z

    const-string v5, "framework-yi-res"

    const-string v6, "res/values/colors.xml"

    sget-object v7, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-static {v5, v6, v7}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    sput-boolean v5, Landroid/content/res/BaiduResources;->mIsYiValueExist:Z

    :cond_3
    iget-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    if-nez v5, :cond_5

    if-lt p1, v11, :cond_5

    iget-object v6, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    monitor-enter v6

    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    const-string v5, "res/values/colors.xml"

    iget-object v7, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-static {v2, v5, v7}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    const-string v5, "com.android.contacts"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "com.baidu.dialpad"

    const-string v7, "res/values/colors.xml"

    iget-object v8, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-static {v5, v7, v8}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, exist:Ljava/lang/Boolean;
    iget-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    if-nez v5, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    .end local v0           #exist:Ljava/lang/Boolean;
    :cond_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    sget-boolean v5, Landroid/content/res/BaiduResources;->sThemeExist:Z

    if-nez v5, :cond_6

    sget-boolean v5, Landroid/content/res/BaiduResources;->mIsYiValueExist:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    if-eqz v5, :cond_0

    :cond_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x0

    .local v3, result:Ljava/lang/Integer;
    sget-boolean v5, Landroid/content/res/BaiduResources;->sThemeExist:Z

    if-eqz v5, :cond_7

    if-ne v1, v9, :cond_7

    sget-object v5, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    .end local v3           #result:Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v3       #result:Ljava/lang/Integer;
    :cond_7
    sget-boolean v5, Landroid/content/res/BaiduResources;->mIsYiValueExist:Z

    if-eqz v5, :cond_8

    if-ne v1, v10, :cond_8

    sget-object v5, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto/16 :goto_0

    :cond_8
    iget-boolean v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorExist:Z

    if-eqz v5, :cond_0

    if-lt p1, v11, :cond_0

    iget-object v5, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #result:Ljava/lang/Integer;
    check-cast v3, Ljava/lang/Integer;

    .restart local v3       #result:Ljava/lang/Integer;
    goto/16 :goto_0
.end method

.method private getThemeConfig(I)Ljava/lang/Boolean;
    .locals 11
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    ushr-int/lit8 v2, p1, 0x18

    .local v2, packageId:I
    if-eqz p1, :cond_0

    if-eq v2, v5, :cond_0

    const/4 v7, 0x5

    if-ne v2, v7, :cond_1

    :cond_0
    move-object v5, v6

    :goto_0
    return-object v5

    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .local v0, entryName:Ljava/lang/String;
    iget-boolean v7, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    if-nez v7, :cond_3

    const/high16 v7, 0x7000

    if-lt p1, v7, :cond_3

    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .local v3, packageName:Ljava/lang/String;
    iget-object v7, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    monitor-enter v7

    const/4 v8, 0x1

    :try_start_0
    iput-boolean v8, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    const-string v8, "res/values/configs.xml"

    iget-object v9, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-static {v3, v8, v9}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    const-string v8, "com.android.contacts"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "com.baidu.dialpad"

    const-string v9, "res/values/configs.xml"

    iget-object v10, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-static {v8, v9, v10}, Landroid/content/res/BaiduResources;->parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .local v1, exist:Ljava/lang/Boolean;
    iget-boolean v8, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    if-nez v8, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    .end local v1           #exist:Ljava/lang/Boolean;
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3           #packageName:Ljava/lang/String;
    :cond_3
    iget-boolean v7, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigExist:Z

    if-eqz v7, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    move-object v5, v6

    goto :goto_0

    .restart local v3       #packageName:Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .end local v3           #packageName:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, result:Ljava/lang/Integer;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v5, :cond_6

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    :cond_7
    move-object v5, v6

    goto :goto_0
.end method

.method public static parseThemeValue()Z
    .locals 24

    .prologue
    const-string v16, "theme_values.xml"

    .local v16, paramString:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, inputStream:Ljava/io/InputStream;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/data/data/com.baidu.thememanager.ui/files"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "framework-yi-res"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .local v17, path:Ljava/lang/String;
    const/16 v22, 0x1

    sput-boolean v22, Landroid/content/res/BaiduResources;->sParseTheme:Z

    :try_start_0
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v20, theme:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_0

    new-instance v21, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v21, themeFile:Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_4

    new-instance v11, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v10           #inputStream:Ljava/io/InputStream;
    .local v11, inputStream:Ljava/io/InputStream;
    move-object v10, v11

    .end local v11           #inputStream:Ljava/io/InputStream;
    .end local v21           #themeFile:Ljava/io/File;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    :cond_0
    sget-object v22, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    sget-object v22, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    :cond_1
    sget-object v22, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2

    sget-object v22, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    :cond_2
    if-eqz v10, :cond_a

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .local v3, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .local v6, document:Lorg/w3c/dom/Document;
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    .local v18, root:Lorg/w3c/dom/Element;
    const-string v22, "Baidu-Theme"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .local v12, list:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v9, v0, :cond_9

    invoke-interface {v12, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .local v14, node:Lorg/w3c/dom/Node;
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object v0, v14

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v8, v0

    .local v8, element:Lorg/w3c/dom/Element;
    const-string v22, "color"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    .local v19, string:Ljava/lang/String;
    const-string v22, "name"

    move-object/from16 v0, v22

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, name:Ljava/lang/String;
    const-string v22, "package"

    move-object/from16 v0, v22

    invoke-interface {v8, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, package1:Ljava/lang/String;
    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x10

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .local v4, col:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .local v5, color:Ljava/lang/Integer;
    const-string v22, "android"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_6

    sget-object v22, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v13           #name:Ljava/lang/String;
    .end local v15           #package1:Ljava/lang/String;
    .end local v19           #string:Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v18           #root:Lorg/w3c/dom/Element;
    .restart local v21       #themeFile:Ljava/io/File;
    :cond_4
    const/16 v22, 0x0

    .end local v20           #theme:Ljava/io/File;
    .end local v21           #themeFile:Ljava/io/File;
    :cond_5
    :goto_2
    return v22

    :catch_0
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    const/16 v22, 0x0

    goto :goto_2

    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #col:Ljava/lang/Long;
    .restart local v5       #color:Ljava/lang/Integer;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v15       #package1:Ljava/lang/String;
    .restart local v18       #root:Lorg/w3c/dom/Element;
    .restart local v19       #string:Ljava/lang/String;
    .restart local v20       #theme:Ljava/io/File;
    :cond_6
    :try_start_2
    const-string v22, "yi"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_7

    sget-object v22, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v15           #package1:Ljava/lang/String;
    .end local v18           #root:Lorg/w3c/dom/Element;
    .end local v19           #string:Ljava/lang/String;
    :catch_1
    move-exception v7

    .local v7, e:Lorg/xml/sax/SAXException;
    :try_start_3
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v22, 0x0

    if-eqz v10, :cond_5

    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #col:Ljava/lang/Long;
    .restart local v5       #color:Ljava/lang/Integer;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v15       #package1:Ljava/lang/String;
    .restart local v18       #root:Lorg/w3c/dom/Element;
    .restart local v19       #string:Ljava/lang/String;
    :cond_7
    :try_start_5
    sget-object v22, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    move-object/from16 v0, v22

    invoke-virtual {v0, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_1

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #col:Ljava/lang/Long;
    .end local v5           #color:Ljava/lang/Integer;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #node:Lorg/w3c/dom/Node;
    .end local v15           #package1:Ljava/lang/String;
    .end local v18           #root:Lorg/w3c/dom/Element;
    .end local v19           #string:Ljava/lang/String;
    :catch_3
    move-exception v7

    .local v7, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_6
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/16 v22, 0x0

    if-eqz v10, :cond_5

    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    :catch_4
    move-exception v7

    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v7           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v8       #element:Lorg/w3c/dom/Element;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v14       #node:Lorg/w3c/dom/Node;
    .restart local v18       #root:Lorg/w3c/dom/Element;
    :cond_8
    :try_start_8
    const-string v22, "dimen"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    const-string v22, "else"

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v22

    if-eqz v22, :cond_3

    goto :goto_1

    .end local v8           #element:Lorg/w3c/dom/Element;
    .end local v14           #node:Lorg/w3c/dom/Node;
    :cond_9
    if-eqz v10, :cond_a

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v18           #root:Lorg/w3c/dom/Element;
    :cond_a
    :goto_3
    const/16 v22, 0x1

    goto :goto_2

    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v6       #document:Lorg/w3c/dom/Document;
    .restart local v9       #i:I
    .restart local v12       #list:Lorg/w3c/dom/NodeList;
    .restart local v18       #root:Lorg/w3c/dom/Element;
    :catch_5
    move-exception v7

    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #document:Lorg/w3c/dom/Document;
    .end local v7           #e:Ljava/io/IOException;
    .end local v9           #i:I
    .end local v12           #list:Lorg/w3c/dom/NodeList;
    .end local v18           #root:Lorg/w3c/dom/Element;
    :catch_6
    move-exception v7

    .restart local v7       #e:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/16 v22, 0x0

    if-eqz v10, :cond_5

    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_2

    :catch_7
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v22

    if-eqz v10, :cond_b

    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_b
    :goto_4
    throw v22

    :catch_8
    move-exception v7

    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private static parseThemeValueLocal(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Z
    .locals 27
    .parameter "packageName"
    .parameter "fileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v17, p1

    .local v17, paramString:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, inputStream:Ljava/io/InputStream;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "/data/data/com.baidu.thememanager.ui/files"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .local v18, path:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "/system/etc/baidu/theme"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .local v16, ovlPath:Ljava/lang/String;
    :try_start_0
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v22, theme:Ljava/io/File;
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v14, ovlDir:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_4

    new-instance v23, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v23, themeFile:Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_2

    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9           #inputStream:Ljava/io/InputStream;
    .local v10, inputStream:Ljava/io/InputStream;
    move-object v9, v10

    .end local v10           #inputStream:Ljava/io/InputStream;
    .end local v23           #themeFile:Ljava/io/File;
    .restart local v9       #inputStream:Ljava/io/InputStream;
    :goto_0
    if-eqz v9, :cond_b

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .local v3, builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .local v2, builder:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .local v5, document:Lorg/w3c/dom/Document;
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v19

    .local v19, root:Lorg/w3c/dom/Element;
    const-string v21, "resources"

    .local v21, tag:Ljava/lang/String;
    const-string v25, "color"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_7

    const-string v21, "color"

    :cond_0
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .local v11, list:Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v8, v0, :cond_a

    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .local v13, node:Lorg/w3c/dom/Node;
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    move-object v0, v13

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v7, v0

    .local v7, element:Lorg/w3c/dom/Element;
    const-string v25, "color"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .local v20, string:Ljava/lang/String;
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v12

    .local v12, name:Ljava/lang/String;
    :try_start_2
    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .local v4, color:Ljava/lang/Integer;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .end local v4           #color:Ljava/lang/Integer;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v12           #name:Ljava/lang/String;
    .end local v20           #string:Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v21           #tag:Ljava/lang/String;
    .restart local v23       #themeFile:Ljava/io/File;
    :cond_2
    const/16 v25, 0x0

    .end local v14           #ovlDir:Ljava/io/File;
    .end local v22           #theme:Ljava/io/File;
    .end local v23           #themeFile:Ljava/io/File;
    :cond_3
    :goto_4
    return v25

    .restart local v14       #ovlDir:Ljava/io/File;
    .restart local v22       #theme:Ljava/io/File;
    :cond_4
    :try_start_3
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v25

    if-eqz v25, :cond_6

    new-instance v15, Ljava/io/File;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v15, ovlFile:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_5

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v9           #inputStream:Ljava/io/InputStream;
    .restart local v10       #inputStream:Ljava/io/InputStream;
    move-object v9, v10

    .end local v10           #inputStream:Ljava/io/InputStream;
    .restart local v9       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    :cond_5
    const/16 v25, 0x0

    goto :goto_4

    .end local v15           #ovlFile:Ljava/io/File;
    :cond_6
    const/16 v25, 0x0

    goto :goto_4

    .end local v14           #ovlDir:Ljava/io/File;
    .end local v22           #theme:Ljava/io/File;
    :catch_0
    move-exception v6

    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    const/16 v25, 0x0

    goto :goto_4

    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v14       #ovlDir:Ljava/io/File;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v22       #theme:Ljava/io/File;
    :cond_7
    :try_start_4
    const-string v25, "config"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_0

    const-string v21, "config"

    goto/16 :goto_1

    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v20       #string:Ljava/lang/String;
    :catch_1
    move-exception v6

    .local v6, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_3

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v20           #string:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    :catch_2
    move-exception v6

    .local v6, e:Lorg/xml/sax/SAXException;
    :try_start_5
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v25, 0x0

    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v6

    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v21       #tag:Ljava/lang/String;
    :cond_8
    :try_start_7
    const-string v25, "dimen"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    const-string v25, "config"

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .restart local v20       #string:Ljava/lang/String;
    const-string v25, "name"

    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #name:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v24

    .local v24, value:Ljava/lang/Boolean;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_9

    const/16 v25, 0x1

    :goto_5
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_3

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v20           #string:Ljava/lang/String;
    .end local v21           #tag:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/Boolean;
    :catch_4
    move-exception v6

    .local v6, e:Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_8
    invoke-virtual {v6}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/16 v25, 0x0

    if-eqz v9, :cond_3

    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception v6

    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v7       #element:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v13       #node:Lorg/w3c/dom/Node;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v20       #string:Ljava/lang/String;
    .restart local v21       #tag:Ljava/lang/String;
    .restart local v24       #value:Ljava/lang/Boolean;
    :cond_9
    const/16 v25, 0x0

    goto :goto_5

    .end local v7           #element:Lorg/w3c/dom/Element;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #node:Lorg/w3c/dom/Node;
    .end local v20           #string:Ljava/lang/String;
    .end local v24           #value:Ljava/lang/Boolean;
    :cond_a
    if-eqz v9, :cond_b

    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v21           #tag:Ljava/lang/String;
    :cond_b
    :goto_6
    const/16 v25, 0x1

    goto/16 :goto_4

    .restart local v2       #builder:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #document:Lorg/w3c/dom/Document;
    .restart local v8       #i:I
    .restart local v11       #list:Lorg/w3c/dom/NodeList;
    .restart local v19       #root:Lorg/w3c/dom/Element;
    .restart local v21       #tag:Ljava/lang/String;
    :catch_6
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .end local v2           #builder:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #document:Lorg/w3c/dom/Document;
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #i:I
    .end local v11           #list:Lorg/w3c/dom/NodeList;
    .end local v19           #root:Lorg/w3c/dom/Element;
    .end local v21           #tag:Ljava/lang/String;
    :catch_7
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/16 v25, 0x0

    if-eqz v9, :cond_3

    :try_start_c
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_4

    :catch_8
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v25

    if-eqz v9, :cond_c

    :try_start_d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    :cond_c
    :goto_7
    throw v25

    :catch_9
    move-exception v6

    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method


# virtual methods
.method clearThemeValue(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAppMultiParseColor:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/content/res/BaiduResources;->mAppMultiTmpConfig:Landroid/util/TypedValue;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/res/BaiduResources;->mAppMultiConfigHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/res/BaiduResources;->mAPPMultiParseConfig:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolorstatelists()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    if-nez p1, :cond_5

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_5
    iget v0, p1, Landroid/content/res/Configuration;->themeChanged:I

    .local v0, theme:I
    sget v1, Landroid/content/res/BaiduResources;->sThemeChanged:I

    if-eq v0, v1, :cond_4

    sput v0, Landroid/content/res/BaiduResources;->sThemeChanged:I

    sput-boolean v3, Landroid/content/res/BaiduResources;->sParseTheme:Z

    sput-boolean v3, Landroid/content/res/BaiduResources;->mHasParseYiValue:Z

    sget-object v1, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Landroid/content/res/BaiduResources;->mAnColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_6
    sget-object v1, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/content/res/BaiduResources;->mYiColorHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 5
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    .local v0, value:Landroid/util/TypedValue;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/res/BaiduResources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_0

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/content/res/BaiduResources;->getBoolean(IZ)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/util/TypedValue;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getColor(I)I
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v3, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v3

    :try_start_0
    iget-object v1, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    .local v1, value:Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/BaiduResources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_0

    iget v2, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {p0, p1, v2}, Landroid/content/res/BaiduResources;->getColor(II)I

    move-result v2

    monitor-exit v3

    :goto_0
    return v2

    :cond_0
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {p0, v2, p1}, Landroid/content/res/BaiduResources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .local v0, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Landroid/content/res/BaiduResources;->getColor(II)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v1           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #value:Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource ID #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " type #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/util/TypedValue;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method getColor(II)I
    .locals 1
    .parameter "id"
    .parameter "defaultReturn"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/res/BaiduResources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, result:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2
    :cond_0
    return p2
.end method

.method public getIconDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    .local v0, value:Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/BaiduResources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/BaiduResources;->loadDrawableBaidu(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .end local v0           #value:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;
    .locals 13
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    iget v9, p1, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v9, v9

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    iget v11, p1, Landroid/util/TypedValue;->data:I

    int-to-long v11, v11

    or-long v5, v9, v11

    .local v5, key:J
    invoke-direct {p0, p2}, Landroid/content/res/BaiduResources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, color:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .local v1, csl:Landroid/content/res/ColorStateList;
    move-object v2, v1

    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .local v2, csl:Landroid/content/res/ColorStateList;
    :goto_0
    return-object v2

    .end local v2           #csl:Landroid/content/res/ColorStateList;
    :cond_0
    iget v9, p1, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_3

    iget v9, p1, Landroid/util/TypedValue;->type:I

    const/16 v10, 0x1f

    if-gt v9, v10, :cond_3

    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolorstatelists()Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_1

    move-object v2, v1

    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .end local v2           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    :cond_1
    iget v9, p1, Landroid/util/TypedValue;->data:I

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/BaiduResources;->ismPreloading()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "color"

    invoke-virtual {p0, p1, v9}, Landroid/content/res/BaiduResources;->verifyPreloadConfigBaidu(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolorstatelists()Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v5, v6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    move-object v2, v1

    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .end local v2           #csl:Landroid/content/res/ColorStateList;
    :cond_3
    invoke-virtual {p0, v5, v6}, Landroid/content/res/BaiduResources;->getCachedColorStateListBaidu(J)Landroid/content/res/ColorStateList;

    move-result-object v1

    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_4

    move-object v2, v1

    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .end local v2           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    :cond_4
    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolorstatelists()Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #csl:Landroid/content/res/ColorStateList;
    check-cast v1, Landroid/content/res/ColorStateList;

    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    if-eqz v1, :cond_5

    move-object v2, v1

    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto :goto_0

    .end local v2           #csl:Landroid/content/res/ColorStateList;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    :cond_5
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v9, :cond_6

    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resource is not a ColorStateList (color or path): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    iget-object v9, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, file:Ljava/lang/String;
    const-string v9, ".xml"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    :try_start_0
    iget v9, p1, Landroid/util/TypedValue;->assetCookie:I

    const-string v10, "colorstatelist"

    invoke-virtual {p0, v4, p2, v9, v10}, Landroid/content/res/BaiduResources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    .local v8, rp:Landroid/content/res/XmlResourceParser;
    invoke-static {p0, v8}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Landroid/content/res/BaiduResources;->ismPreloading()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "color"

    invoke-virtual {p0, p1, v9}, Landroid/content/res/BaiduResources;->verifyPreloadConfigBaidu(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolorstatelists()Landroid/util/LongSparseArray;

    move-result-object v9

    invoke-virtual {v9, v5, v6, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_7
    :goto_1
    move-object v2, v1

    .end local v1           #csl:Landroid/content/res/ColorStateList;
    .restart local v2       #csl:Landroid/content/res/ColorStateList;
    goto/16 :goto_0

    .end local v2           #csl:Landroid/content/res/ColorStateList;
    .end local v8           #rp:Landroid/content/res/XmlResourceParser;
    .restart local v1       #csl:Landroid/content/res/ColorStateList;
    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from color state list resource ID #0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .local v7, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7, v3}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v7

    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_8
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from drawable resource ID #0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": .xml extension required"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .restart local v8       #rp:Landroid/content/res/XmlResourceParser;
    :cond_9
    iget-object v10, p0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v10

    :try_start_1
    invoke-virtual {p0}, Landroid/content/res/BaiduResources;->getmColorStateListCache()Landroid/util/LongSparseArray;

    move-result-object v9

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v9, v5, v6, v11}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v10

    goto :goto_1

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method

.method loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "value"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/BaiduResources;->loadDrawableBaidu(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadDrawableBaidu(Landroid/util/TypedValue;IZ)Landroid/graphics/drawable/Drawable;
    .locals 20
    .parameter "value"
    .parameter "id"
    .parameter "isIcon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v15, 0x0

    .local v15, isColorDrawable:Z
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    const/4 v15, 0x1

    :cond_0
    if-eqz v15, :cond_1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .local v16, key:J
    :goto_0
    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getmColorDrawableCache()Landroid/util/LongSparseArray;

    move-result-object v3

    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/BaiduResources;->getCachedDrawableBaidu(Landroid/util/LongSparseArray;J)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .local v11, dr:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_3

    move-object v12, v11

    .end local v11           #dr:Landroid/graphics/drawable/Drawable;
    .local v12, dr:Landroid/graphics/drawable/Drawable;
    :goto_2
    return-object v12

    .end local v12           #dr:Landroid/graphics/drawable/Drawable;
    .end local v16           #key:J
    :cond_1
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v3, v3

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    move-object/from16 v0, p1

    iget v6, v0, Landroid/util/TypedValue;->data:I

    int-to-long v6, v6

    or-long v16, v3, v6

    goto :goto_0

    .restart local v16       #key:J
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getmDrawableCache()Landroid/util/LongSparseArray;

    move-result-object v3

    goto :goto_1

    .restart local v11       #dr:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/res/BaiduResources;->getThemeColor(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, color:Ljava/lang/Integer;
    if-eqz v9, :cond_4

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    .end local v11           #dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v11, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .end local v9           #color:Ljava/lang/Integer;
    .restart local v11       #dr:Landroid/graphics/drawable/Drawable;
    :cond_4
    if-nez v11, :cond_5

    if-eqz v15, :cond_7

    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolordrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v10, v3

    .local v10, cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_3
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .end local v10           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_5
    :goto_4
    if-eqz v11, :cond_6

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    .restart local v10       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->ismPreloading()Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "drawable"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/BaiduResources;->verifyPreloadConfigBaidu(Landroid/util/TypedValue;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v15, :cond_c

    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadedcolordrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .end local v10           #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_6
    :goto_5
    move-object v12, v11

    .end local v11           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v12       #dr:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .end local v12           #dr:Landroid/graphics/drawable/Drawable;
    .restart local v11       #dr:Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadeddrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v10, v3

    goto :goto_3

    .restart local v10       #cs:Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_8
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_9

    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_9

    new-instance v11, Landroid/graphics/drawable/ColorDrawable;

    .end local v11           #dr:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {v11, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .restart local v11       #dr:Landroid/graphics/drawable/Drawable;
    :cond_9
    if-nez v11, :cond_5

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-nez v3, :cond_a

    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource is not a Drawable (color or path): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, file:Ljava/lang/String;
    const-string v3, ".xml"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :try_start_0
    move-object/from16 v0, p1

    iget v3, v0, Landroid/util/TypedValue;->assetCookie:I

    const-string v4, "drawable"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v5, v1, v3, v4}, Landroid/content/res/BaiduResources;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v19

    .local v19, rp:Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface/range {v19 .. v19}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .end local v19           #rp:Landroid/content/res/XmlResourceParser;
    :catch_0
    move-exception v13

    .local v13, e:Ljava/lang/Exception;
    new-instance v18, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .local v18, rnf:Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v18

    .end local v13           #e:Ljava/lang/Exception;
    .end local v18           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/res/BaiduResources;->mAssets:Landroid/content/res/AssetManager;

    check-cast v3, Landroid/content/res/BaiduAssetManager;

    const/4 v7, 0x2

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/res/BaiduAssetManager;->openNonAsset(Landroid/util/TypedValue;Ljava/lang/String;IIZ)Ljava/io/InputStream;

    move-result-object v14

    .local v14, is:Ljava/io/InputStream;
    if-eqz v14, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v5, v3}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .end local v14           #is:Ljava/io/InputStream;
    :catch_1
    move-exception v13

    .restart local v13       #e:Ljava/lang/Exception;
    new-instance v18, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from drawable resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .restart local v18       #rnf:Landroid/content/res/Resources$NotFoundException;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v18

    .end local v5           #file:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v18           #rnf:Landroid/content/res/Resources$NotFoundException;
    :cond_c
    invoke-static {}, Landroid/content/res/BaiduResources;->getSpreloadeddrawables()Landroid/util/LongSparseArray;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/res/BaiduResources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v4

    if-eqz v15, :cond_e

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getmColorDrawableCache()Landroid/util/LongSparseArray;

    move-result-object v3

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :goto_6
    monitor-exit v4

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_e
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/BaiduResources;->getmDrawableCache()Landroid/util/LongSparseArray;

    move-result-object v3

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .parameter "config"
    .parameter "metrics"
    .parameter "compat"

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    invoke-virtual {p0}, Landroid/content/res/BaiduResources;->getmConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-static {v0}, Landroid/content/res/BaiduAssetManager;->setDensityDpi(I)V

    invoke-virtual {p0, p1}, Landroid/content/res/BaiduResources;->clearThemeValue(Landroid/content/res/Configuration;)V

    return-void
.end method
