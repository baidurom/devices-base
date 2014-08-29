.class public Lcom/lenovo/citynum/DownLoadFile;
.super Ljava/lang/Object;
.source "DownLoadFile.java"


# instance fields
.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/citynum/DownLoadFile;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public down_file(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "Storagepath"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    .local v4, myURL:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 19
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 20
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 21
    .local v3, is:Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 22
    const-string v7, "downloadfile"

    const-string/jumbo v8, "stream is null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 28
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 31
    :cond_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 32
    .local v6, os:Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 34
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 35
    .local v5, numread:I
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 41
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 42
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 44
    const/4 v7, 0x1

    return v7

    .line 38
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public down_file2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "Storagepath"
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/citynum/DownLoadFile;->getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/lenovo/citynum/DownLoadFile;->write2SDFromInput(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 53
    .local v2, resultFile:Ljava/io/File;
    if-nez v2, :cond_0

    .line 61
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .end local v2           #resultFile:Ljava/io/File;
    :goto_0
    return v3

    .line 62
    .restart local v2       #resultFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 66
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #resultFile:Ljava/io/File;
    :catch_2
    move-exception v0

    .line 57
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 61
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 62
    :catch_3
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 61
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 64
    :goto_2
    throw v3

    .line 62
    :catch_4
    move-exception v0

    .line 63
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public getInputStreamFromUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter "urlStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lenovo/citynum/DownLoadFile;->url:Ljava/net/URL;

    .line 71
    iget-object v2, p0, Lcom/lenovo/citynum/DownLoadFile;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 72
    .local v1, urlConn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 73
    .local v0, inputStream:Ljava/io/InputStream;
    return-object v0
.end method

.method public get_server_version(Ljava/lang/String;)[B
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    .local v3, myURL:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 111
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 112
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 113
    .local v2, is:Ljava/io/InputStream;
    if-nez v2, :cond_0

    .line 114
    const-string v4, "downloadfile"

    const-string/jumbo v5, "stream is null"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 117
    .local v0, buf:[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 118
    const-string v4, "Downloadfile"

    const-string/jumbo v5, "read server failed"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 122
    return-object v0
.end method

.method public write2SDFromInput(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 10
    .parameter "fileName"
    .parameter "input"

    .prologue
    const/16 v9, 0x1000

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 80
    .local v5, output:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 81
    .end local v2           #file:Ljava/io/File;
    .local v3, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 84
    :cond_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 86
    .end local v5           #output:Ljava/io/OutputStream;
    .local v6, output:Ljava/io/OutputStream;
    const/16 v7, 0x1000

    :try_start_2
    new-array v0, v7, [B

    .line 87
    .local v0, buffer:[B
    const/4 v4, 0x0

    .line 88
    .local v4, length:I
    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_2

    .line 89
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 90
    if-eq v4, v9, :cond_1

    .line 92
    const-string v7, "Download"

    const-string/jumbo v8, "wrong size in download file"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 96
    .end local v0           #buffer:[B
    .end local v4           #length:I
    :catch_0
    move-exception v1

    move-object v5, v6

    .end local v6           #output:Ljava/io/OutputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    move-object v2, v3

    .line 97
    .end local v3           #file:Ljava/io/File;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #file:Ljava/io/File;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 105
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-object v2

    .line 95
    .end local v2           #file:Ljava/io/File;
    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #length:I
    .restart local v6       #output:Ljava/io/OutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 100
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v5, v6

    .end local v6           #output:Ljava/io/OutputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    move-object v2, v3

    .line 103
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_2

    .line 101
    .end local v2           #file:Ljava/io/File;
    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #output:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 102
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .end local v6           #output:Ljava/io/OutputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    move-object v2, v3

    .line 104
    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_2

    .line 101
    .end local v0           #buffer:[B
    .end local v4           #length:I
    :catch_2
    move-exception v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 99
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 100
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 103
    :goto_4
    throw v7

    .line 101
    :catch_3
    move-exception v1

    .line 102
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 99
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .end local v2           #file:Ljava/io/File;
    .end local v5           #output:Ljava/io/OutputStream;
    .restart local v3       #file:Ljava/io/File;
    .restart local v6       #output:Ljava/io/OutputStream;
    :catchall_2
    move-exception v7

    move-object v5, v6

    .end local v6           #output:Ljava/io/OutputStream;
    .restart local v5       #output:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_3

    .line 96
    :catch_4
    move-exception v1

    goto :goto_1

    .end local v2           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :catch_5
    move-exception v1

    move-object v2, v3

    .end local v3           #file:Ljava/io/File;
    .restart local v2       #file:Ljava/io/File;
    goto :goto_1
.end method
