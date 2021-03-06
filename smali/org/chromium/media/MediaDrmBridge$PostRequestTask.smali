.class Lorg/chromium/media/MediaDrmBridge$PostRequestTask;
.super Landroid/os/AsyncTask;
.source "MediaDrmBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PostRequestTask"


# instance fields
.field private mDrmRequest:[B

.field private mResponseBody:[B

.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaDrmBridge;[B)V
    .locals 0
    .param p2, "drmRequest"    # [B

    .prologue
    .line 1048
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1049
    iput-object p2, p0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->mDrmRequest:[B

    .line 1050
    return-void
.end method

.method private postRequest(Ljava/lang/String;[B)[B
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "drmRequest"    # [B

    .prologue
    const/4 v11, 0x0

    .line 1062
    const/4 v9, 0x0

    .line 1064
    .local v9, "urlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "&signedRequest="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v12, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v7, "request":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v9, v0

    .line 1066
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1067
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 1068
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1069
    const-string v10, "POST"

    invoke-virtual {v9, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1070
    const-string v10, "User-Agent"

    const-string v12, "Widevine CDM v1.0"

    invoke-virtual {v9, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string v10, "Content-Type"

    const-string v12, "application/json"

    invoke-virtual {v9, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 1074
    .local v8, "responseCode":I
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_3

    .line 1075
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1077
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1078
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .line 1079
    .local v6, "read":I
    const/16 v4, 0x200

    .line 1080
    .local v4, "bufferSize":I
    new-array v3, v4, [B
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1083
    .local v3, "buffer":[B
    :goto_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 1084
    const/4 v10, -0x1

    if-ne v6, v10, :cond_1

    .line 1088
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 1090
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    .line 1102
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1104
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "bufferSize":I
    .end local v6    # "read":I
    .end local v7    # "request":Ljava/net/URL;
    .end local v8    # "responseCode":I
    :cond_0
    :goto_1
    return-object v10

    .line 1085
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v4    # "bufferSize":I
    .restart local v6    # "read":I
    .restart local v7    # "request":Ljava/net/URL;
    .restart local v8    # "responseCode":I
    :cond_1
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v2, v3, v10, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1088
    :catchall_0
    move-exception v10

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    throw v10
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1095
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "buffer":[B
    .end local v4    # "bufferSize":I
    .end local v6    # "read":I
    .end local v7    # "request":Ljava/net/URL;
    .end local v8    # "responseCode":I
    :catch_0
    move-exception v5

    .line 1096
    .local v5, "e":Ljava/net/MalformedURLException;
    :try_start_5
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1102
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v5    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_2
    move-object v10, v11

    .line 1104
    goto :goto_1

    .line 1092
    .restart local v7    # "request":Ljava/net/URL;
    .restart local v8    # "responseCode":I
    :cond_3
    :try_start_6
    const-string v10, "PostRequestTask"

    const-string v12, "Server returned HTTP error code %d"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10, v12, v13}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1102
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v10, v11

    goto :goto_1

    .line 1097
    .end local v7    # "request":Ljava/net/URL;
    .end local v8    # "responseCode":I
    :catch_1
    move-exception v5

    .line 1098
    .local v5, "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1102
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 1099
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 1100
    .local v5, "e":Ljava/lang/IllegalStateException;
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1102
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v10

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v10
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1042
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 1054
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->mDrmRequest:[B

    invoke-direct {p0, v0, v1}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->postRequest(Ljava/lang/String;[B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->mResponseBody:[B

    .line 1055
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->mResponseBody:[B

    if-eqz v0, :cond_0

    .line 1056
    const-string v0, "PostRequestTask"

    const-string v1, "response length=%d"

    iget-object v2, p0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->mResponseBody:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1058
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1042
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 1109
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$PostRequestTask;->mResponseBody:[B

    invoke-static {v0, v1}, Lorg/chromium/media/MediaDrmBridge;->access$3300(Lorg/chromium/media/MediaDrmBridge;[B)V

    .line 1110
    return-void
.end method
