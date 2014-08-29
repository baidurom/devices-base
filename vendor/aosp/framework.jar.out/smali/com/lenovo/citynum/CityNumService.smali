.class public Lcom/lenovo/citynum/CityNumService;
.super Ljava/lang/Object;
.source "CityNumService.java"


# static fields
.field public static final ERR_NO_DATABASE:I = 0x9002

.field public static final ERR_TOO_SHORT:I = 0x9001

.field public static final FILE_NAME:Ljava/lang/String; = null

.field private static final FILE_PATH:Ljava/lang/String; = null

.field private static final PHONE_CITY_FORMAT_VER_1:I = 0x1

.field private static final PHONE_CITY_FORMAT_VER_2:I = 0x0

.field private static final PHONE_CITY_FORMAT_VER_3:I = 0x0

.field private static final POS_CITY_NUM:I = 0x1e

.field private static final POS_VERSION:I = 0x0

.field public static final QUERY_ERROR_INIT_FAILED:I = 0x7001

.field public static final QUERY_ERROR_NORMAL_ERROR:I = 0x7004

.field public static final QUERY_ERROR_NO_ERR:I = 0x7000

.field public static final QUERY_ERROR_TOO_SHORT:I = 0x7002

.field private static final TAG:Ljava/lang/String; = "CityNumService"

.field public static final UPDATE_RESULT_FAILED:I = 0x8002

.field public static final UPDATE_RESULT_SUCCESS:I = 0x8001

.field static hasInit:Z

.field private static sMe:Lcom/lenovo/citynum/CityNumService;


# instance fields
.field private final FILE_MD5_SERVER:Ljava/lang/String;

.field private final FILE_NAME_MD5_TEMP:Ljava/lang/String;

.field private final FILE_NAME_TEMP:Ljava/lang/String;

.field private final FILE_SERVER:Ljava/lang/String;

.field private final FILE_VERSION_DATA:Ljava/lang/String;

.field private final FILE_VERSION_SERVER:Ljava/lang/String;

.field private POS_COUNTRY_NUM:I

.field private POS_OTHER_NUM:I

.field private POS_PHONE_NUM:I

.field private buf_is:Ljava/io/BufferedInputStream;

.field private city_num:I

.field private city_pool:[Lcom/lenovo/citynum/CityInfo;

.field private country_num:I

.field private country_pool:[Lcom/lenovo/citynum/CountryInfo;

.field private cur_city_code:S

.field private cur_num_code:S

.field private data_version:[B

.field private file_date:[B

.field private file_is:Ljava/io/FileInputStream;

.field private format_version:[B

.field private other_num_count:I

.field private other_pool:[Lcom/lenovo/citynum/OtherInfo;

.field private phone_num:I

.field private phone_pool:[Lcom/lenovo/citynum/NumInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/citynum/CityNumService;->FILE_PATH:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/citynum/CityNumService;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "phone_city.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/lenovo/citynum/CityNumService;

    invoke-direct {v0}, Lcom/lenovo/citynum/CityNumService;-><init>()V

    sput-object v0, Lcom/lenovo/citynum/CityNumService;->sMe:Lcom/lenovo/citynum/CityNumService;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "http://rd.lenovomobile.com/callerloc/Version.txt"

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_SERVER:Ljava/lang/String;

    .line 34
    const-string v0, "http://rd.lenovomobile.com/callerloc/phone_city.bin"

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_SERVER:Ljava/lang/String;

    .line 35
    const-string v0, "http://rd.lenovomobile.com/callerloc/md5.txt"

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_MD5_SERVER:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/citynum/CityNumService;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "version.cgm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_DATA:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_TEMP:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".md5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    .line 57
    iput v2, p0, Lcom/lenovo/citynum/CityNumService;->POS_PHONE_NUM:I

    .line 59
    iput v2, p0, Lcom/lenovo/citynum/CityNumService;->POS_COUNTRY_NUM:I

    .line 61
    iput v2, p0, Lcom/lenovo/citynum/CityNumService;->POS_OTHER_NUM:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 75
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    .line 76
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->format_version:[B

    .line 77
    const/16 v0, 0x18

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_date:[B

    .line 78
    iput v2, p0, Lcom/lenovo/citynum/CityNumService;->city_num:I

    .line 79
    iput v2, p0, Lcom/lenovo/citynum/CityNumService;->phone_num:I

    .line 80
    iput v2, p0, Lcom/lenovo/citynum/CityNumService;->country_num:I

    .line 81
    iput v2, p0, Lcom/lenovo/citynum/CityNumService;->other_num_count:I

    .line 82
    iput-short v2, p0, Lcom/lenovo/citynum/CityNumService;->cur_num_code:S

    .line 83
    iput-short v2, p0, Lcom/lenovo/citynum/CityNumService;->cur_city_code:S

    .line 89
    return-void
.end method

.method private ByteToChar([B[CI)V
    .locals 3
    .parameter "buf_b"
    .parameter "buf_c"
    .parameter "len"

    .prologue
    .line 673
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v1, p3, -0x2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 674
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    mul-int/lit8 v2, v0, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, p2, v0

    .line 673
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_0
    return-void
.end method

.method private CheckCityCode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 738
    iget-short v1, p0, Lcom/lenovo/citynum/CityNumService;->cur_num_code:S

    iget-short v2, p0, Lcom/lenovo/citynum/CityNumService;->cur_city_code:S

    if-ne v1, v2, :cond_1

    .line 743
    :cond_0
    :goto_0
    return v0

    .line 740
    :cond_1
    iget-short v1, p0, Lcom/lenovo/citynum/CityNumService;->cur_city_code:S

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    iget-short v1, p0, Lcom/lenovo/citynum/CityNumService;->cur_city_code:S

    mul-int/lit8 v1, v1, 0xa

    iget-short v2, p0, Lcom/lenovo/citynum/CityNumService;->cur_num_code:S

    if-eq v1, v2, :cond_0

    .line 743
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CheckVersion()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 224
    const/16 v6, 0x40

    new-array v1, v6, [B

    .line 226
    .local v1, data:[B
    const/4 v6, 0x0

    :try_start_0
    sget-object v7, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v7}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v0

    .line 227
    .local v0, cnt:I
    if-nez v0, :cond_1

    .line 252
    .end local v0           #cnt:I
    :cond_0
    :goto_0
    return v4

    .line 230
    .restart local v0       #cnt:I
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_2

    .line 231
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->format_version:[B

    aget-byte v7, v1, v3

    aput-byte v7, v6, v3

    .line 230
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 232
    :cond_2
    move v0, v3

    .line 234
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v8, :cond_3

    .line 235
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    add-int v7, v0, v3

    aget-byte v7, v1, v7

    aput-byte v7, v6, v3

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 236
    :cond_3
    add-int/2addr v0, v3

    .line 238
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->format_version:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    if-ne v6, v5, :cond_0

    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->format_version:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->format_version:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    if-nez v6, :cond_0

    .line 244
    const/4 v3, 0x0

    :goto_3
    const/16 v6, 0x14

    if-ge v3, v6, :cond_4

    .line 245
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->file_date:[B

    add-int v7, v0, v3

    aget-byte v7, v1, v7

    aput-byte v7, v6, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 247
    .end local v0           #cnt:I
    .end local v3           #i:I
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #cnt:I
    .restart local v3       #i:I
    :cond_4
    move v4, v5

    .line 252
    goto :goto_0
.end method

.method private CompareMd5Match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"
    .parameter "md5"

    .prologue
    const/4 v1, 0x0

    .line 485
    invoke-static {p1}, Lcom/lenovo/citynum/MyMD5;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, fileMd5:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file md5 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "md5 in server = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 488
    if-nez v0, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v1

    .line 491
    :cond_1
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 492
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private ConvertByte2String([B)Ljava/lang/String;
    .locals 4
    .parameter "b"

    .prologue
    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .local v2, str:Ljava/lang/StringBuilder;
    array-length v1, p1

    .line 800
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 801
    aget-byte v3, p1, v0

    invoke-direct {p0, v3}, Lcom/lenovo/citynum/CityNumService;->ConvertDigit2String(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private ConvertDigit2String(B)Ljava/lang/String;
    .locals 1
    .parameter "b"

    .prologue
    .line 807
    packed-switch p1, :pswitch_data_0

    .line 829
    const-string v0, ""

    :goto_0
    return-object v0

    .line 809
    :pswitch_0
    const-string v0, "0"

    goto :goto_0

    .line 811
    :pswitch_1
    const-string v0, "1"

    goto :goto_0

    .line 813
    :pswitch_2
    const-string v0, "2"

    goto :goto_0

    .line 815
    :pswitch_3
    const-string v0, "3"

    goto :goto_0

    .line 817
    :pswitch_4
    const-string v0, "4"

    goto :goto_0

    .line 819
    :pswitch_5
    const-string v0, "5"

    goto :goto_0

    .line 821
    :pswitch_6
    const-string v0, "6"

    goto :goto_0

    .line 823
    :pswitch_7
    const-string v0, "7"

    goto :goto_0

    .line 825
    :pswitch_8
    const-string v0, "8"

    goto :goto_0

    .line 827
    :pswitch_9
    const-string v0, "9"

    goto :goto_0

    .line 807
    :pswitch_data_0
    .packed-switch 0x30
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
    .end packed-switch
.end method

.method private DownloadData(Landroid/os/Message;)Z
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 403
    new-instance v0, Lcom/lenovo/citynum/DownLoadFile;

    invoke-direct {v0}, Lcom/lenovo/citynum/DownLoadFile;-><init>()V

    .line 406
    .local v0, df:Lcom/lenovo/citynum/DownLoadFile;
    const/4 v4, 0x0

    .line 407
    .local v4, file_server:Ljava/lang/String;
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/lenovo/citynum/CityNumService;->FILE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "temp.CGM"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/lenovo/citynum/CityNumService;->GetFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 408
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 410
    :cond_0
    const-string v4, "http://rd.lenovomobile.com/callerloc/phone_city.bin"

    .line 412
    :cond_1
    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_TEMP:Ljava/lang/String;

    invoke-virtual {v0, v9, v4}, Lcom/lenovo/citynum/DownLoadFile;->down_file2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 413
    const-string v8, "download file failed"

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return v7

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, e:Ljava/io/IOException;
    const-string v8, "download file error"

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 424
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->DownloadMd5File()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    .line 425
    .local v6, result:Z
    if-eq v6, v8, :cond_3

    .line 440
    :try_start_2
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v5, filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 442
    .end local v5           #filemd5:Ljava/io/File;
    :catch_1
    move-exception v8

    goto :goto_0

    .line 428
    :cond_3
    :try_start_3
    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_TEMP:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->GetMd5StringFromFile()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/lenovo/citynum/CityNumService;->CompareMd5Match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 430
    const-string/jumbo v8, "md5 does not match"

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 440
    :try_start_4
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v5       #filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 442
    .end local v5           #filemd5:Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_0

    .line 440
    :cond_4
    :try_start_5
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v5       #filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 448
    .end local v5           #filemd5:Ljava/io/File;
    :goto_1
    :try_start_6
    new-instance v3, Ljava/io/File;

    sget-object v9, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v3, file1:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 450
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_TEMP:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 453
    const/4 v9, 0x0

    sput-boolean v9, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    .line 454
    invoke-virtual {p0}, Lcom/lenovo/citynum/CityNumService;->InitModule()Z

    .line 455
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/lenovo/citynum/CityNumService;->onDownloadFinish(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move v7, v8

    .line 462
    goto :goto_0

    .line 434
    .end local v2           #file:Ljava/io/File;
    .end local v3           #file1:Ljava/io/File;
    .end local v6           #result:Z
    :catch_3
    move-exception v1

    .line 435
    .local v1, e:Ljava/lang/Exception;
    :try_start_7
    const-string v8, "get md file error"

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 436
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 440
    :try_start_8
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v5       #filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 442
    .end local v5           #filemd5:Ljava/io/File;
    :catch_4
    move-exception v8

    goto :goto_0

    .line 439
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 440
    :try_start_9
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v5       #filemd5:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 444
    .end local v5           #filemd5:Ljava/io/File;
    :goto_2
    throw v7

    .line 457
    .restart local v6       #result:Z
    :catch_5
    move-exception v1

    .line 458
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 442
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #result:Z
    :catch_6
    move-exception v8

    goto :goto_2

    .restart local v6       #result:Z
    :catch_7
    move-exception v9

    goto :goto_1
.end method

.method private DownloadMd5File()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 467
    :try_start_0
    new-instance v0, Lcom/lenovo/citynum/DownLoadFile;

    invoke-direct {v0}, Lcom/lenovo/citynum/DownLoadFile;-><init>()V

    .line 468
    .local v0, df:Lcom/lenovo/citynum/DownLoadFile;
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    const-string v4, "http://rd.lenovomobile.com/callerloc/md5.txt"

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/citynum/DownLoadFile;->down_file2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 476
    .end local v0           #df:Lcom/lenovo/citynum/DownLoadFile;
    :goto_0
    return v2

    .line 471
    :catch_0
    move-exception v1

    .line 472
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 476
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #df:Lcom/lenovo/citynum/DownLoadFile;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private DownloadVersionData()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 498
    new-instance v0, Lcom/lenovo/citynum/DownLoadFile;

    invoke-direct {v0}, Lcom/lenovo/citynum/DownLoadFile;-><init>()V

    .line 501
    .local v0, df:Lcom/lenovo/citynum/DownLoadFile;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_DATA:Ljava/lang/String;

    const-string v4, "http://rd.lenovomobile.com/callerloc/Version.txt"

    invoke-virtual {v0, v3, v4}, Lcom/lenovo/citynum/DownLoadFile;->down_file2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 502
    const-string v3, "download file failed"

    invoke-direct {p0, v3}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    :goto_0
    return v2

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 509
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private GetCityByCode(S[C[C)Z
    .locals 7
    .parameter "code"
    .parameter "buf_c"
    .parameter "buf_e"

    .prologue
    .line 717
    const/16 v5, 0x20

    new-array v0, v5, [B

    .line 718
    .local v0, buf1:[B
    const/16 v5, 0x40

    new-array v1, v5, [B

    .line 721
    .local v1, buf2:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v5, p0, Lcom/lenovo/citynum/CityNumService;->city_num:I

    if-ge v2, v5, :cond_0

    .line 722
    iget-object v5, p0, Lcom/lenovo/citynum/CityNumService;->city_pool:[Lcom/lenovo/citynum/CityInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5, p1}, Lcom/lenovo/citynum/CityInfo;->CompareCode(S)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 725
    :cond_0
    iget v5, p0, Lcom/lenovo/citynum/CityNumService;->city_num:I

    if-lt v2, v5, :cond_2

    .line 726
    const/4 v5, 0x0

    .line 734
    :goto_1
    return v5

    .line 721
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    :cond_2
    iget-object v5, p0, Lcom/lenovo/citynum/CityNumService;->city_pool:[Lcom/lenovo/citynum/CityInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/lenovo/citynum/CityInfo;->GetCityPos()I

    move-result v4

    .line 729
    .local v4, pos:I
    sget-object v5, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v3

    .line 730
    .local v3, len:I
    invoke-direct {p0, v0, p2, v3}, Lcom/lenovo/citynum/CityNumService;->ByteToChar([B[CI)V

    .line 731
    add-int v5, v4, v3

    sget-object v6, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v1, v5, v6}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v3

    .line 732
    invoke-direct {p0, v1, p3, v3}, Lcom/lenovo/citynum/CityNumService;->ByteToChar([B[CI)V

    .line 734
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private GetCodeByMobileNum(Ljava/lang/String;I)S
    .locals 9
    .parameter "str"
    .parameter "offset"

    .prologue
    const/4 v8, 0x7

    const/4 v1, 0x0

    .line 747
    const/16 v6, 0x20

    new-array v0, v6, [B

    .line 749
    .local v0, buf:[B
    const/4 v3, 0x0

    .line 750
    .local v3, num:I
    const/4 v5, 0x0

    .line 753
    .local v5, pos:I
    const-string v6, "\\D"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, num_digit:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v8, :cond_1

    .line 773
    :cond_0
    :goto_0
    return v1

    .line 757
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 759
    add-int v6, v2, p2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    add-int/lit8 v6, v6, -0x30

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 760
    aget-byte v6, v0, v2

    rsub-int/lit8 v7, v2, 0x7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {p0, v7}, Lcom/lenovo/citynum/CityNumService;->PowerOf10(I)I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 757
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 762
    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget v6, p0, Lcom/lenovo/citynum/CityNumService;->phone_num:I

    if-ge v2, v6, :cond_3

    .line 763
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->phone_pool:[Lcom/lenovo/citynum/NumInfo;

    aget-object v6, v6, v2

    invoke-virtual {v6, v3}, Lcom/lenovo/citynum/NumInfo;->GetCodePos(I)I

    move-result v5

    .line 764
    if-eqz v5, :cond_4

    .line 767
    :cond_3
    if-eqz v5, :cond_0

    .line 770
    const/4 v6, 0x2

    sget-object v7, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v5, v7}, Lcom/lenovo/citynum/CityNumService;->ReadCnt([BIILjava/lang/String;)I

    .line 771
    aget-byte v6, v0, v1

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    int-to-short v6, v6

    const/4 v7, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-short v1, v6

    .line 773
    .local v1, code:S
    goto :goto_0

    .line 762
    .end local v1           #code:S
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private GetCountryByNum(Ljava/lang/String;I[C[C)Z
    .locals 11
    .parameter "str"
    .parameter "offset"
    .parameter "buf_c"
    .parameter "buf_e"

    .prologue
    const/4 v9, 0x0

    .line 682
    const/16 v10, 0x20

    new-array v0, v10, [B

    .line 683
    .local v0, buf1:[B
    const/16 v10, 0x40

    new-array v1, v10, [B

    .line 684
    .local v1, buf2:[B
    const/4 v6, 0x0

    .local v6, num:S
    const/4 v8, 0x0

    .line 685
    .local v8, tmp:S
    const/4 v3, 0x0

    .line 686
    .local v3, i:I
    const/4 v2, 0x0

    .line 688
    .local v2, flag:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v5, v10, p2

    .line 689
    .local v5, len:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    if-ge v4, v5, :cond_3

    .line 690
    add-int v10, v4, p2

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    int-to-short v10, v10

    add-int/lit8 v10, v10, -0x30

    int-to-short v8, v10

    .line 691
    mul-int/lit8 v10, v6, 0xa

    add-int/2addr v10, v8

    int-to-short v6, v10

    .line 692
    const/high16 v10, 0x1

    if-lt v6, v10, :cond_1

    .line 713
    :cond_0
    :goto_1
    return v9

    .line 695
    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v10, p0, Lcom/lenovo/citynum/CityNumService;->country_num:I

    if-ge v3, v10, :cond_2

    .line 696
    iget-object v10, p0, Lcom/lenovo/citynum/CityNumService;->country_pool:[Lcom/lenovo/citynum/CountryInfo;

    aget-object v10, v10, v3

    invoke-virtual {v10, v6}, Lcom/lenovo/citynum/CountryInfo;->CompareCode(S)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 697
    const/4 v2, 0x1

    .line 701
    :cond_2
    if-eqz v2, :cond_5

    .line 704
    :cond_3
    if-ge v4, v5, :cond_0

    .line 707
    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->country_pool:[Lcom/lenovo/citynum/CountryInfo;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/lenovo/citynum/CountryInfo;->GetCountryPos()I

    move-result v7

    .line 708
    .local v7, pos:I
    sget-object v9, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v9}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v5

    .line 709
    invoke-direct {p0, v0, p3, v5}, Lcom/lenovo/citynum/CityNumService;->ByteToChar([B[CI)V

    .line 710
    add-int v9, v7, v5

    sget-object v10, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v1, v9, v10}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v5

    .line 711
    invoke-direct {p0, v1, p4, v5}, Lcom/lenovo/citynum/CityNumService;->ByteToChar([B[CI)V

    .line 713
    const/4 v9, 0x1

    goto :goto_1

    .line 695
    .end local v7           #pos:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 689
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private GetFileContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "path"

    .prologue
    .line 527
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 529
    .local v5, str:Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 531
    .local v3, in:Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 532
    .local v4, isr:Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 533
    .local v0, br:Ljava/io/BufferedReader;
    const-string v1, ""

    .line 535
    .local v1, data:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #data:Ljava/lang/String;
    .end local v3           #in:Ljava/io/FileInputStream;
    .end local v4           #isr:Ljava/io/InputStreamReader;
    :catch_0
    move-exception v2

    .line 540
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 541
    const/4 v6, 0x0

    .line 543
    .end local v2           #e:Ljava/io/IOException;
    :goto_1
    return-object v6

    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #data:Ljava/lang/String;
    .restart local v3       #in:Ljava/io/FileInputStream;
    .restart local v4       #isr:Ljava/io/InputStreamReader;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private GetInt16Num(I)S
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v3, 0x2

    .line 652
    const/4 v1, 0x0

    .line 653
    .local v1, num:S
    new-array v0, v3, [B

    .line 655
    .local v0, buf:[B
    sget-object v2, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v3, p1, v2}, Lcom/lenovo/citynum/CityNumService;->ReadCnt([BIILjava/lang/String;)I

    .line 656
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    int-to-short v1, v2

    .line 658
    return v1
.end method

.method private GetInt32Num(I)I
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v3, 0x4

    .line 641
    const/4 v1, 0x0

    .line 642
    .local v1, num:I
    new-array v0, v3, [B

    .line 644
    .local v0, buf:[B
    sget-object v2, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v3, p1, v2}, Lcom/lenovo/citynum/CityNumService;->ReadCnt([BIILjava/lang/String;)I

    .line 645
    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x10

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int v1, v2, v3

    .line 648
    return v1
.end method

.method private GetMd5StringFromFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 480
    iget-object v1, p0, Lcom/lenovo/citynum/CityNumService;->FILE_NAME_MD5_TEMP:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/lenovo/citynum/CityNumService;->GetFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, md5:Ljava/lang/String;
    return-object v0
.end method

.method private GetOtherInfo(Ljava/lang/String;[C)Z
    .locals 6
    .parameter "str"
    .parameter "buf_c"

    .prologue
    .line 781
    const/4 v1, 0x0

    .line 782
    .local v1, i:I
    const/4 v2, 0x0

    .line 783
    .local v2, len:I
    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/lenovo/citynum/CityNumService;->other_num_count:I

    if-ge v1, v4, :cond_1

    .line 785
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->other_pool:[Lcom/lenovo/citynum/OtherInfo;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/lenovo/citynum/OtherInfo;->other_num:[B

    invoke-direct {p0, v4}, Lcom/lenovo/citynum/CityNumService;->ConvertByte2String([B)Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, strNew:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 788
    const/16 v4, 0x40

    new-array v0, v4, [B

    .line 789
    .local v0, buf1:[B
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->other_pool:[Lcom/lenovo/citynum/OtherInfo;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/lenovo/citynum/OtherInfo;->start_pos:I

    sget-object v5, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v2

    .line 790
    invoke-direct {p0, v0, p2, v2}, Lcom/lenovo/citynum/CityNumService;->ByteToChar([B[CI)V

    .line 791
    const/4 v4, 0x1

    .line 794
    .end local v0           #buf1:[B
    .end local v3           #strNew:Ljava/lang/String;
    :goto_1
    return v4

    .line 783
    .restart local v3       #strNew:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    .end local v3           #strNew:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private InitCityInfo()Z
    .locals 9

    .prologue
    .line 256
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v4, 0x0

    .line 258
    .local v4, len:I
    const/4 v5, 0x0

    .local v5, start_pos:I
    const/4 v6, 0x0

    .line 259
    .local v6, stop_pos:I
    const/16 v7, 0x40

    new-array v0, v7, [B

    .line 261
    .local v0, buf:[B
    const/16 v7, 0x1e

    :try_start_0
    invoke-direct {p0, v7}, Lcom/lenovo/citynum/CityNumService;->GetInt32Num(I)I

    move-result v7

    iput v7, p0, Lcom/lenovo/citynum/CityNumService;->city_num:I

    .line 262
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->city_num:I

    new-array v7, v7, [Lcom/lenovo/citynum/CityInfo;

    iput-object v7, p0, Lcom/lenovo/citynum/CityNumService;->city_pool:[Lcom/lenovo/citynum/CityInfo;

    .line 263
    const/4 v3, 0x0

    :goto_0
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->city_num:I

    if-ge v3, v7, :cond_0

    .line 264
    iget-object v7, p0, Lcom/lenovo/citynum/CityNumService;->city_pool:[Lcom/lenovo/citynum/CityInfo;

    new-instance v8, Lcom/lenovo/citynum/CityInfo;

    invoke-direct {v8}, Lcom/lenovo/citynum/CityInfo;-><init>()V

    aput-object v8, v7, v3

    .line 263
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 267
    :cond_0
    const/16 v5, 0x22

    .line 268
    const/4 v3, 0x0

    :goto_1
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->city_num:I

    if-ge v3, v7, :cond_1

    .line 269
    invoke-direct {p0, v5}, Lcom/lenovo/citynum/CityNumService;->GetInt16Num(I)S

    move-result v1

    .line 270
    .local v1, code:S
    add-int/lit8 v5, v5, 0x2

    .line 271
    iget-object v7, p0, Lcom/lenovo/citynum/CityNumService;->city_pool:[Lcom/lenovo/citynum/CityInfo;

    aget-object v7, v7, v3

    invoke-virtual {v7, v1, v5, v6}, Lcom/lenovo/citynum/CityInfo;->SetNum(SII)V

    .line 273
    sget-object v7, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v7}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v4

    .line 274
    add-int v7, v5, v4

    sget-object v8, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v7, v8}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    add-int/2addr v4, v7

    .line 275
    add-int/2addr v5, v4

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 277
    .end local v1           #code:S
    :catch_0
    move-exception v2

    .line 278
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    const/4 v7, 0x0

    .line 283
    .end local v2           #e:Ljava/lang/Exception;
    :goto_2
    return v7

    .line 281
    :cond_1
    iput v5, p0, Lcom/lenovo/citynum/CityNumService;->POS_PHONE_NUM:I

    .line 283
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private InitCountryInfo()Z
    .locals 8

    .prologue
    .line 325
    const/4 v3, 0x0

    .local v3, i:I
    const/4 v4, 0x0

    .line 327
    .local v4, len:I
    const/4 v5, 0x0

    .line 328
    .local v5, start_pos:I
    const/16 v6, 0x40

    new-array v0, v6, [B

    .line 331
    .local v0, buf:[B
    :try_start_0
    iget v6, p0, Lcom/lenovo/citynum/CityNumService;->POS_COUNTRY_NUM:I

    invoke-direct {p0, v6}, Lcom/lenovo/citynum/CityNumService;->GetInt32Num(I)I

    move-result v6

    iput v6, p0, Lcom/lenovo/citynum/CityNumService;->country_num:I

    .line 332
    iget v6, p0, Lcom/lenovo/citynum/CityNumService;->country_num:I

    new-array v6, v6, [Lcom/lenovo/citynum/CountryInfo;

    iput-object v6, p0, Lcom/lenovo/citynum/CityNumService;->country_pool:[Lcom/lenovo/citynum/CountryInfo;

    .line 333
    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/lenovo/citynum/CityNumService;->country_num:I

    if-ge v3, v6, :cond_0

    .line 334
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->country_pool:[Lcom/lenovo/citynum/CountryInfo;

    new-instance v7, Lcom/lenovo/citynum/CountryInfo;

    invoke-direct {v7}, Lcom/lenovo/citynum/CountryInfo;-><init>()V

    aput-object v7, v6, v3

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 337
    :cond_0
    iget v6, p0, Lcom/lenovo/citynum/CityNumService;->POS_COUNTRY_NUM:I

    add-int/lit8 v5, v6, 0x4

    .line 338
    const/4 v3, 0x0

    :goto_1
    iget v6, p0, Lcom/lenovo/citynum/CityNumService;->country_num:I

    if-ge v3, v6, :cond_1

    .line 339
    invoke-direct {p0, v5}, Lcom/lenovo/citynum/CityNumService;->GetInt16Num(I)S

    move-result v1

    .line 340
    .local v1, code:S
    add-int/lit8 v5, v5, 0x2

    .line 341
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->country_pool:[Lcom/lenovo/citynum/CountryInfo;

    aget-object v6, v6, v3

    invoke-virtual {v6, v1, v5}, Lcom/lenovo/citynum/CountryInfo;->SetNum(SI)V

    .line 343
    sget-object v6, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v6}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v4

    .line 344
    add-int v6, v5, v4

    sget-object v7, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v6, v7}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    .line 345
    add-int/2addr v5, v4

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 347
    .end local v1           #code:S
    :cond_1
    iput v5, p0, Lcom/lenovo/citynum/CityNumService;->POS_OTHER_NUM:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    const/4 v6, 0x1

    :goto_2
    return v6

    .line 348
    :catch_0
    move-exception v2

    .line 349
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private InitNumInfo()Z
    .locals 9

    .prologue
    .line 289
    const/4 v5, 0x0

    .line 291
    .local v5, s_pos:I
    :try_start_0
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->POS_PHONE_NUM:I

    invoke-direct {p0, v7}, Lcom/lenovo/citynum/CityNumService;->GetInt32Num(I)I

    move-result v7

    iput v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_num:I

    .line 292
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_num:I

    new-array v7, v7, [Lcom/lenovo/citynum/NumInfo;

    iput-object v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_pool:[Lcom/lenovo/citynum/NumInfo;

    .line 293
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_num:I

    if-ge v2, v7, :cond_0

    .line 294
    iget-object v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_pool:[Lcom/lenovo/citynum/NumInfo;

    new-instance v8, Lcom/lenovo/citynum/NumInfo;

    invoke-direct {v8}, Lcom/lenovo/citynum/NumInfo;-><init>()V

    aput-object v8, v7, v2

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_0
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->POS_PHONE_NUM:I

    add-int/lit8 v3, v7, 0x4

    .line 298
    .local v3, pos:I
    const/4 v2, 0x0

    :goto_1
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_num:I

    if-ge v2, v7, :cond_1

    .line 299
    invoke-direct {p0, v3}, Lcom/lenovo/citynum/CityNumService;->GetInt32Num(I)I

    move-result v1

    .line 300
    .local v1, head:I
    add-int/lit8 v3, v3, 0x4

    .line 302
    invoke-direct {p0, v3}, Lcom/lenovo/citynum/CityNumService;->GetInt16Num(I)S

    move-result v4

    .line 303
    .local v4, s_num:S
    add-int/lit8 v7, v3, 0x2

    invoke-direct {p0, v7}, Lcom/lenovo/citynum/CityNumService;->GetInt16Num(I)S

    move-result v6

    .line 304
    .local v6, valid:S
    add-int/lit8 v3, v3, 0x4

    .line 306
    iget-object v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_pool:[Lcom/lenovo/citynum/NumInfo;

    aget-object v7, v7, v2

    invoke-virtual {v7, v1, v4, v6}, Lcom/lenovo/citynum/NumInfo;->SetNum(ISS)V

    .line 307
    iget-object v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_pool:[Lcom/lenovo/citynum/NumInfo;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/lenovo/citynum/NumInfo;->SetCityNum()V

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 310
    .end local v1           #head:I
    .end local v4           #s_num:S
    .end local v6           #valid:S
    :cond_1
    move v5, v3

    .line 311
    const/4 v2, 0x0

    :goto_2
    iget v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_num:I

    if-ge v2, v7, :cond_2

    .line 312
    iget-object v7, p0, Lcom/lenovo/citynum/CityNumService;->phone_pool:[Lcom/lenovo/citynum/NumInfo;

    aget-object v7, v7, v2

    invoke-virtual {v7, v5}, Lcom/lenovo/citynum/NumInfo;->SetCityCodePos(I)I

    move-result v5

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 315
    :cond_2
    iput v5, p0, Lcom/lenovo/citynum/CityNumService;->POS_COUNTRY_NUM:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    const/4 v7, 0x1

    .end local v2           #i:I
    .end local v3           #pos:I
    :goto_3
    return v7

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    const/4 v7, 0x0

    goto :goto_3
.end method

.method private InitOtherInfo()Z
    .locals 7

    .prologue
    .line 357
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x0

    .line 358
    .local v3, len:I
    const/4 v4, 0x0

    .line 359
    .local v4, start_pos:I
    const/16 v5, 0x40

    new-array v0, v5, [B

    .line 362
    .local v0, buf:[B
    :try_start_0
    iget v5, p0, Lcom/lenovo/citynum/CityNumService;->POS_OTHER_NUM:I

    invoke-direct {p0, v5}, Lcom/lenovo/citynum/CityNumService;->GetInt32Num(I)I

    move-result v5

    iput v5, p0, Lcom/lenovo/citynum/CityNumService;->other_num_count:I

    .line 363
    iget v5, p0, Lcom/lenovo/citynum/CityNumService;->other_num_count:I

    new-array v5, v5, [Lcom/lenovo/citynum/OtherInfo;

    iput-object v5, p0, Lcom/lenovo/citynum/CityNumService;->other_pool:[Lcom/lenovo/citynum/OtherInfo;

    .line 364
    const/4 v2, 0x0

    :goto_0
    iget v5, p0, Lcom/lenovo/citynum/CityNumService;->other_num_count:I

    if-ge v2, v5, :cond_0

    .line 365
    iget-object v5, p0, Lcom/lenovo/citynum/CityNumService;->other_pool:[Lcom/lenovo/citynum/OtherInfo;

    new-instance v6, Lcom/lenovo/citynum/OtherInfo;

    invoke-direct {v6}, Lcom/lenovo/citynum/OtherInfo;-><init>()V

    aput-object v6, v5, v2

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_0
    iget v5, p0, Lcom/lenovo/citynum/CityNumService;->POS_OTHER_NUM:I

    add-int/lit8 v4, v5, 0x4

    .line 369
    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/lenovo/citynum/CityNumService;->other_num_count:I

    if-ge v2, v5, :cond_1

    .line 370
    sget-object v5, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v3

    .line 371
    add-int/2addr v4, v3

    .line 372
    iget-object v5, p0, Lcom/lenovo/citynum/CityNumService;->other_pool:[Lcom/lenovo/citynum/OtherInfo;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0, v3, v4}, Lcom/lenovo/citynum/OtherInfo;->SetNum([BII)V

    .line 374
    sget-object v5, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v5}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I

    move-result v3

    .line 375
    add-int v5, v4, v3

    sget-object v6, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {p0, v0, v5, v6}, Lcom/lenovo/citynum/CityNumService;->ReadByte([BILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int/2addr v3, v5

    .line 376
    add-int/2addr v4, v3

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 380
    const/4 v5, 0x0

    .line 383
    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_2
.end method

.method private PowerOf10(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 664
    const/4 v1, 0x1

    .line 665
    .local v1, tmp:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 666
    mul-int/lit8 v1, v1, 0xa

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    :cond_0
    return v1
.end method

.method private ReadByte([BILjava/lang/String;)I
    .locals 7
    .parameter "buf"
    .parameter "pos"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 588
    const/4 v2, 0x0

    .line 589
    .local v2, temp:B
    const/4 v1, 0x0

    .line 592
    .local v1, len:I
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v4, :cond_0

    .line 593
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 596
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v5, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 597
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v4

    if-nez v4, :cond_1

    .line 598
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 599
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 601
    :cond_1
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    .line 637
    :cond_2
    :goto_0
    return v3

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, e:Ljava/io/IOException;
    iput-object v6, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    goto :goto_0

    .line 610
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    .line 611
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    int-to-long v5, p2

    invoke-virtual {v4, v5, v6}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 612
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    int-to-byte v2, v4

    .line 613
    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    .line 614
    aput-byte v2, p1, v1

    .line 615
    add-int/lit8 v1, v1, 0x1

    .line 620
    :cond_4
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I

    move-result v4

    int-to-byte v2, v4

    .line 621
    aput-byte v2, p1, v1

    .line 622
    add-int/lit8 v1, v1, 0x1

    .line 623
    add-int/lit8 v4, v1, -0x2

    aget-byte v4, p1, v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v1, -0x1

    aget-byte v4, p1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 628
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_5

    .line 630
    :try_start_2
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_1
    move v3, v1

    .line 637
    goto :goto_0

    .line 628
    :cond_6
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_2

    .line 630
    :try_start_3
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 631
    :catch_1
    move-exception v0

    .line 632
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 631
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 632
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 624
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 625
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 628
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_2

    .line 630
    :try_start_5
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 631
    :catch_4
    move-exception v0

    .line 632
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 628
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v4, :cond_7

    .line 630
    :try_start_6
    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 633
    :cond_7
    :goto_2
    throw v3

    .line 631
    :catch_5
    move-exception v0

    .line 632
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private ReadCnt([BIILjava/lang/String;)I
    .locals 6
    .parameter "buf"
    .parameter "cnt"
    .parameter "pos"
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 547
    const/4 v1, -0x1

    .line 550
    .local v1, len:I
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v3, :cond_0

    .line 551
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 554
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    sget-object v4, Lcom/lenovo/citynum/CityNumService;->FILE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 555
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v3

    if-nez v3, :cond_1

    .line 556
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 557
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 559
    :cond_1
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    .line 584
    :cond_2
    :goto_0
    return v2

    .line 562
    :catch_0
    move-exception v0

    .line 563
    .local v0, e:Ljava/io/IOException;
    iput-object v5, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    goto :goto_0

    .line 568
    .end local v0           #e:Ljava/io/IOException;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    .line 569
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 570
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, p2}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 575
    iget-object v2, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_4

    .line 577
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_1
    move v2, v1

    .line 584
    goto :goto_0

    .line 578
    :catch_1
    move-exception v0

    .line 579
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 571
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 572
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 575
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_2

    .line 577
    :try_start_4
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 578
    :catch_3
    move-exception v0

    .line 579
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 575
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    if-eqz v3, :cond_5

    .line 577
    :try_start_5
    iget-object v3, p0, Lcom/lenovo/citynum/CityNumService;->buf_is:Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 580
    :cond_5
    :goto_2
    throw v2

    .line 578
    :catch_4
    move-exception v0

    .line 579
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private ReadFileVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 513
    iget-object v0, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_DATA:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->GetFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lcom/lenovo/citynum/CityNumService;Landroid/os/Message;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lenovo/citynum/CityNumService;->DownloadData(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/lenovo/citynum/CityNumService;
    .locals 1

    .prologue
    .line 910
    sget-object v0, Lcom/lenovo/citynum/CityNumService;->sMe:Lcom/lenovo/citynum/CityNumService;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 777
    const-string v0, "CityNumService"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method private onDownloadFinish(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 518
    const-string v0, "download finish"

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 519
    return-void
.end method


# virtual methods
.method public CheckNewServerVersion()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, version:Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-nez v8, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v6

    .line 181
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->DownloadVersionData()Z

    move-result v8

    if-nez v8, :cond_2

    move v6, v7

    .line 182
    goto :goto_0

    .line 184
    :cond_2
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->FILE_VERSION_DATA:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->GetFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "version data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 186
    const-string v8, "\\D"

    const-string v9, "\t"

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 187
    .local v5, version_digit:Ljava/lang/String;
    const-string v8, "\t+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, format_version:[Ljava/lang/String;
    aget-object v8, v0, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v6, :cond_3

    aget-object v8, v0, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    aget-object v8, v0, v10

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_4

    .line 192
    :cond_3
    const-string/jumbo v6, "wrong format version"

    invoke-direct {p0, v6}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    move v6, v7

    .line 193
    goto :goto_0

    .line 196
    :cond_4
    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 197
    .local v2, version_1:I
    const/4 v8, 0x4

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 198
    .local v3, version_2:I
    const/4 v8, 0x5

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 199
    .local v4, version_3:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Server version"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 200
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locate version"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v9, v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 202
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v8, v8, v7

    if-gt v2, v8, :cond_0

    .line 204
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v8, v8, v7

    if-ge v2, v8, :cond_5

    move v6, v7

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_5
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v8, v8, v6

    if-gt v3, v8, :cond_0

    .line 209
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v8, v8, v6

    if-ge v3, v8, :cond_6

    move v6, v7

    .line 210
    goto/16 :goto_0

    .line 212
    :cond_6
    iget-object v8, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v8, v8, v10

    if-gt v4, v8, :cond_0

    .line 214
    iget-object v6, p0, Lcom/lenovo/citynum/CityNumService;->data_version:[B

    aget-byte v6, v6, v10

    if-ge v4, v6, :cond_7

    move v6, v7

    .line 215
    goto/16 :goto_0

    :cond_7
    move v6, v7

    .line 217
    goto/16 :goto_0
.end method

.method public GetCityByNum(Ljava/lang/String;[C[C)I
    .locals 11
    .parameter "str"
    .parameter "buf_c"
    .parameter "buf_e"

    .prologue
    .line 834
    const/4 v1, 0x0

    .line 835
    .local v1, code:S
    const/4 v7, 0x0

    .local v7, offset:I
    const/4 v8, 0x0

    .line 836
    .local v8, tmp:I
    const/4 v2, 0x0

    .local v2, flag:Z
    const/4 v4, 0x1

    .line 838
    .local v4, is_mobile:Z
    const/4 v9, 0x0

    iput-short v9, p0, Lcom/lenovo/citynum/CityNumService;->cur_num_code:S

    .line 839
    const/4 v0, 0x0

    .line 841
    .local v0, IsInternal:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 842
    const/16 v9, 0x7002

    .line 906
    :goto_0
    return v9

    .line 843
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x2b

    if-ne v9, v10, :cond_3

    .line 844
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x38

    if-ne v9, v10, :cond_2

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x36

    if-ne v9, v10, :cond_2

    .line 846
    const/4 v7, 0x3

    .line 847
    const/4 v0, 0x0

    .line 867
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    .line 868
    invoke-direct {p0, p1, v7, p2, p3}, Lcom/lenovo/citynum/CityNumService;->GetCountryByNum(Ljava/lang/String;I[C[C)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_0

    .line 850
    :cond_2
    const/4 v7, 0x1

    .line 851
    const/4 v0, 0x1

    goto :goto_1

    .line 853
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_1

    .line 854
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_1

    .line 855
    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x38

    if-ne v9, v10, :cond_4

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x36

    if-ne v9, v10, :cond_4

    .line 857
    const/4 v7, 0x4

    .line 858
    const/4 v0, 0x0

    goto :goto_1

    .line 861
    :cond_4
    const/4 v7, 0x2

    .line 862
    const/4 v0, 0x1

    goto :goto_1

    .line 868
    :cond_5
    const/16 v9, 0x7004

    goto :goto_0

    .line 871
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v6, v9, v7

    .line 872
    .local v6, len:I
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_7

    .line 873
    const/4 v4, 0x0

    .line 875
    :cond_7
    if-eqz v4, :cond_9

    .line 876
    invoke-direct {p0, p1, v7}, Lcom/lenovo/citynum/CityNumService;->GetCodeByMobileNum(Ljava/lang/String;I)S

    move-result v1

    .line 877
    if-nez v1, :cond_8

    .line 878
    const/16 v9, 0x7004

    goto :goto_0

    .line 880
    :cond_8
    iput-short v1, p0, Lcom/lenovo/citynum/CityNumService;->cur_num_code:S

    .line 881
    invoke-direct {p0, v1, p2, p3}, Lcom/lenovo/citynum/CityNumService;->GetCityByCode(S[C[C)Z

    .line 906
    :goto_2
    const/4 v9, 0x0

    goto :goto_0

    .line 883
    :cond_9
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    if-ge v5, v6, :cond_c

    .line 884
    add-int v9, v5, v7

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v8, v9, -0x30

    .line 885
    mul-int/lit8 v9, v1, 0xa

    add-int/2addr v9, v8

    int-to-short v1, v9

    .line 886
    const/high16 v9, 0x1

    if-lt v1, v9, :cond_a

    .line 887
    const/16 v9, 0x7004

    goto/16 :goto_0

    .line 889
    :cond_a
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    iget v9, p0, Lcom/lenovo/citynum/CityNumService;->city_num:I

    if-ge v3, v9, :cond_b

    .line 890
    iget-object v9, p0, Lcom/lenovo/citynum/CityNumService;->city_pool:[Lcom/lenovo/citynum/CityInfo;

    aget-object v9, v9, v3

    invoke-virtual {v9, v1}, Lcom/lenovo/citynum/CityInfo;->CompareCode(S)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 891
    const/4 v2, 0x1

    .line 895
    :cond_b
    if-eqz v2, :cond_e

    .line 898
    .end local v3           #i:I
    :cond_c
    if-lt v5, v6, :cond_f

    .line 899
    const/16 v9, 0x7004

    goto/16 :goto_0

    .line 889
    .restart local v3       #i:I
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 883
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 901
    .end local v3           #i:I
    :cond_f
    iput-short v1, p0, Lcom/lenovo/citynum/CityNumService;->cur_num_code:S

    .line 902
    invoke-direct {p0, v1, p2, p3}, Lcom/lenovo/citynum/CityNumService;->GetCityByCode(S[C[C)Z

    goto :goto_2
.end method

.method public InitModule()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    sget-boolean v2, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    if-eqz v2, :cond_0

    .line 142
    const-string v1, "has init"

    invoke-direct {p0, v1}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 171
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->CheckVersion()Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    const-string/jumbo v0, "version error"

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->InitCityInfo()Z

    move-result v2

    if-nez v2, :cond_2

    .line 153
    const-string v0, "InitCityInfo error"

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    move v0, v1

    .line 154
    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->InitNumInfo()Z

    move-result v2

    if-nez v2, :cond_3

    .line 157
    const-string v0, "InitNumInfo error"

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    move v0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_3
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->InitCountryInfo()Z

    move-result v2

    if-nez v2, :cond_4

    .line 161
    const-string v0, "InitCountryInfo error"

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    move v0, v1

    .line 162
    goto :goto_0

    .line 165
    :cond_4
    invoke-direct {p0}, Lcom/lenovo/citynum/CityNumService;->InitOtherInfo()Z

    move-result v2

    if-nez v2, :cond_5

    .line 166
    const-string v0, "InitOtherInfo error"

    invoke-direct {p0, v0}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    move v0, v1

    .line 167
    goto :goto_0

    .line 169
    :cond_5
    sput-boolean v0, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    goto :goto_0
.end method

.method public UpDateData(Landroid/os/Handler;)Z
    .locals 4
    .parameter "handler"

    .prologue
    .line 387
    move-object v0, p1

    .line 388
    .local v0, hl:Landroid/os/Handler;
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 389
    .local v1, msg:Landroid/os/Message;
    new-instance v2, Lcom/lenovo/citynum/CityNumService$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/lenovo/citynum/CityNumService$1;-><init>(Lcom/lenovo/citynum/CityNumService;Landroid/os/Message;Landroid/os/Handler;)V

    .line 397
    .local v2, t:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 399
    const/4 v3, 0x1

    return v3
.end method

.method public checkHasInit()Z
    .locals 1

    .prologue
    .line 914
    sget-boolean v0, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    return v0
.end method

.method public onQuery(Ljava/lang/String;Lcom/lenovo/citynum/CityInfo;)I
    .locals 8
    .parameter "num"
    .parameter "cityinfo"

    .prologue
    .line 105
    const/16 v6, 0x64

    :try_start_0
    new-array v0, v6, [C

    .line 106
    .local v0, buf_c:[C
    const/16 v6, 0x64

    new-array v1, v6, [C

    .line 108
    .local v1, buf_e:[C
    sget-boolean v6, Lcom/lenovo/citynum/CityNumService;->hasInit:Z

    if-nez v6, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/lenovo/citynum/CityNumService;->InitModule()Z

    move-result v6

    if-nez v6, :cond_1

    .line 110
    const-string v6, "InitModule failed"

    invoke-direct {p0, v6}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 111
    const/16 v3, 0x7001

    .line 135
    .end local v0           #buf_c:[C
    .end local v1           #buf_e:[C
    :cond_0
    :goto_0
    return v3

    .line 114
    .restart local v0       #buf_c:[C
    .restart local v1       #buf_e:[C
    :cond_1
    const-string v6, "city number service onStart"

    invoke-direct {p0, v6}, Lcom/lenovo/citynum/CityNumService;->log(Ljava/lang/String;)V

    .line 116
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 117
    :cond_2
    const/4 v6, 0x0

    iput-object v6, p2, Lcom/lenovo/citynum/CityInfo;->city_cn:Ljava/lang/String;

    .line 118
    const/4 v6, 0x0

    iput-object v6, p2, Lcom/lenovo/citynum/CityInfo;->city_en:Ljava/lang/String;

    .line 119
    const/16 v3, 0x7002

    goto :goto_0

    .line 121
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/lenovo/citynum/CityNumService;->GetOtherInfo(Ljava/lang/String;[C)Z

    move-result v6

    if-nez v6, :cond_4

    .line 122
    invoke-virtual {p0, p1, v0, v1}, Lcom/lenovo/citynum/CityNumService;->GetCityByNum(Ljava/lang/String;[C[C)I

    move-result v3

    .line 123
    .local v3, result:I
    if-nez v3, :cond_0

    .line 126
    .end local v3           #result:I
    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([C)V

    .line 127
    .local v4, str_cn:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    .line 128
    .local v5, str_en:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/lenovo/citynum/CityInfo;->city_cn:Ljava/lang/String;

    .line 129
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p2, Lcom/lenovo/citynum/CityInfo;->city_en:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v3, 0x0

    goto :goto_0

    .line 130
    .end local v0           #buf_c:[C
    .end local v1           #buf_e:[C
    .end local v4           #str_cn:Ljava/lang/String;
    .end local v5           #str_en:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 131
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    const/16 v3, 0x7004

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/citynum/CityNumService;->file_is:Ljava/io/FileInputStream;

    .line 96
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/citynum/CityNumService;->hasInit:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method
