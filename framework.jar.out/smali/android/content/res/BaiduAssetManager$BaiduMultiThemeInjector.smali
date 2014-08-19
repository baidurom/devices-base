.class Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;
.super Ljava/lang/Object;
.source "BaiduAssetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/BaiduAssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduMultiThemeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final findAccurateRes(ILandroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 3
    .parameter "dpi"
    .parameter "value"
    .parameter "folderPath"
    .parameter "fileName"
    .parameter "isIcon"

    .prologue
    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .local v0, result:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".9.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 p0, 0xf0

    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x1e0

    if-ne v1, p0, :cond_2

    :cond_1
    const/16 p0, 0x140

    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    iput p0, p1, Landroid/util/TypedValue;->density:I

    :goto_1
    return-object v0

    :cond_3
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 p0, 0x140

    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_4
    const/16 p0, 0x1e0

    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const/16 p0, 0x1e0

    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_5
    const/16 p0, 0xf0

    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    const/16 p0, 0x140

    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_6
    const/16 p0, 0xf0

    invoke-static {p2, p0, p3, p4}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_2
    .end sparse-switch
.end method

.method private static final getFileUnderDpi(Ljava/lang/String;ILjava/lang/String;Z)Ljava/io/File;
    .locals 5
    .parameter "folderPath"
    .parameter "dpi"
    .parameter "fileName"
    .parameter "isIcon"

    .prologue
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v2, tempPath:Ljava/lang/StringBuffer;
    sparse-switch p1, :sswitch_data_0

    :goto_0
    const-string v1, ""

    .local v1, realFile:Ljava/lang/String;
    if-nez p3, :cond_1

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, lastIndex:I
    if-ltz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v0           #lastIndex:I
    :cond_0
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3

    .end local v1           #realFile:Ljava/lang/String;
    :sswitch_0
    const-string v3, "/res/drawable-xhdpi/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_1
    const-string v3, "/res/drawable-hdpi/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :sswitch_2
    const-string v3, "/res/drawable-xxhdpi/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .restart local v1       #realFile:Ljava/lang/String;
    :cond_1
    move-object v1, p2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_0
        0x1e0 -> :sswitch_2
    .end sparse-switch
.end method

.method static init(Landroid/content/res/AssetManager;)V
    .locals 1
    .parameter "am"

    .prologue
    const-string v0, "/system/framework/framework-res-yi.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    return-void
.end method

.method static final openIconAsset(Landroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/InputStream;
    .locals 10
    .parameter "value"
    .parameter "fileName"
    .parameter "packageName"
    .parameter "isIcon"

    .prologue
    const/4 v3, 0x0

    .local v3, inputStream:Ljava/io/InputStream;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v8, ""

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v7, Ljava/lang/StringBuffer;

    const-string v8, "/data/data/com.baidu.thememanager.ui/files"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v7, sb:Ljava/lang/StringBuffer;
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_1

    const-string v8, "icons"

    :goto_0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Landroid/content/res/BaiduAssetManager;->access$sget-sDpi-c0b92c()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, p0, v9, p1, p3}, Landroid/content/res/BaiduAssetManager$BaiduMultiThemeInjector;->findAccurateRes(ILandroid/util/TypedValue;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .local v0, accurateFile:Ljava/io/File;
    if-nez v0, :cond_2

    new-instance v2, Ljava/io/File;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, file:Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3           #inputStream:Ljava/io/InputStream;
    .local v4, inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v0           #accurateFile:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    .end local p2
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_0
    :goto_2
    return-object v3

    .restart local v7       #sb:Ljava/lang/StringBuffer;
    .restart local p2
    :cond_1
    move-object v8, p2

    goto :goto_0

    .restart local v0       #accurateFile:Ljava/io/File;
    :cond_2
    move-object v2, v0

    goto :goto_1

    .restart local v2       #file:Ljava/io/File;
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v8, "/system/etc/baidu/theme"

    invoke-direct {v6, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .local v6, ovlPath:Ljava/lang/StringBuffer;
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_4

    const-string p2, "icons"

    .end local p2
    :cond_4
    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, ovlFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    move-object v3, v4

    .end local v4           #inputStream:Ljava/io/InputStream;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_2

    .end local v0           #accurateFile:Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v5           #ovlFile:Ljava/io/File;
    .end local v6           #ovlPath:Ljava/lang/StringBuffer;
    .end local v7           #sb:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static setIconPath(Landroid/content/res/BaiduAssetManager;)V
    .locals 1
    .parameter "am"

    .prologue
    invoke-static {}, Landroid/content/ThemeDefine;->getIconPath()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/BaiduAssetManager;->mIconPath:Ljava/util/HashMap;

    return-void
.end method
