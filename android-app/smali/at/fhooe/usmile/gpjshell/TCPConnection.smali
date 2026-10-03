.class public Lat/fhooe/usmile/gpjshell/TCPConnection;
.super Ljava/lang/Object;
.source "TCPConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TCP_ADB_PORT:S = 0x2332s

.field private static final TCP_TEMP_CAP_DIRECTORY:Ljava/lang/String; = "/tcpapplets/"

.field public static final TCP_TEMP_CAP_FILE:Ljava/lang/String; = "tmpapplet.cap"


# instance fields
.field private mListener:Lat/fhooe/usmile/gpjshell/TCPFileResultListener;

.field private mMainContext:Landroid/app/Activity;

.field private mRunning:Z

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lat/fhooe/usmile/gpjshell/TCPFileResultListener;)V
    .locals 1
    .param p1, "_context"    # Landroid/app/Activity;
    .param p2, "_listener"    # Lat/fhooe/usmile/gpjshell/TCPFileResultListener;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mRunning:Z

    .line 40
    iput-object p1, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mMainContext:Landroid/app/Activity;

    .line 41
    iput-object p2, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mListener:Lat/fhooe/usmile/gpjshell/TCPFileResultListener;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lat/fhooe/usmile/gpjshell/TCPConnection;)Lat/fhooe/usmile/gpjshell/TCPFileResultListener;
    .locals 1
    .param p0, "x0"    # Lat/fhooe/usmile/gpjshell/TCPConnection;

    .line 29
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mListener:Lat/fhooe/usmile/gpjshell/TCPFileResultListener;

    return-object v0
.end method

.method private sendLogOutput(Ljava/lang/String;)V
    .locals 2
    .param p1, "st"    # Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mMainContext:Landroid/app/Activity;

    new-instance v1, Lat/fhooe/usmile/gpjshell/TCPConnection$2;

    invoke-direct {v1, p0, p1}, Lat/fhooe/usmile/gpjshell/TCPConnection$2;-><init>(Lat/fhooe/usmile/gpjshell/TCPConnection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mRunning:Z

    .line 61
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 63
    .local v2, "end":Ljava/lang/Boolean;
    new-instance v3, Ljava/net/ServerSocket;

    const/16 v4, 0x2332

    invoke-direct {v3, v4}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v3, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mServerSocket:Ljava/net/ServerSocket;

    .line 65
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    iget-object v3, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v3}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 69
    .local v3, "s":Ljava/net/Socket;
    const/16 v4, 0x400

    new-array v5, v4, [B

    .line 70
    .local v5, "jj":[B
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 71
    .local v6, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    .local v7, "get":Ljava/io/BufferedInputStream;
    new-instance v8, Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 74
    .local v8, "output":Ljava/io/PrintWriter;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mMainContext:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/tcpapplets/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 77
    new-instance v10, Ljava/io/File;

    const-string v11, "tmpapplet.cap"

    invoke-direct {v10, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v10, "file":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v11, "fs":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 81
    .local v12, "u":I
    :goto_1
    invoke-virtual {v7, v5, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v13

    move v12, v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 82
    invoke-virtual {v11, v5, v1, v12}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 85
    :cond_0
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 86
    const-string v4, "File received"

    invoke-direct {p0, v4}, Lat/fhooe/usmile/gpjshell/TCPConnection;->sendLogOutput(Ljava/lang/String;)V

    .line 88
    const-string v4, "Good bye and thanks for all the fish :)"

    invoke-virtual {v8, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 91
    iget-object v4, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mMainContext:Landroid/app/Activity;

    new-instance v13, Lat/fhooe/usmile/gpjshell/TCPConnection$1;

    invoke-direct {v13, p0, v10}, Lat/fhooe/usmile/gpjshell/TCPConnection$1;-><init>(Lat/fhooe/usmile/gpjshell/TCPConnection;Ljava/io/File;)V

    invoke-virtual {v4, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    iget-boolean v4, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mRunning:Z

    if-nez v4, :cond_1

    .line 100
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 102
    .end local v3    # "s":Ljava/net/Socket;
    .end local v5    # "jj":[B
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "get":Ljava/io/BufferedInputStream;
    .end local v8    # "output":Ljava/io/PrintWriter;
    .end local v9    # "dir":Ljava/io/File;
    .end local v10    # "file":Ljava/io/File;
    .end local v11    # "fs":Ljava/io/FileOutputStream;
    :cond_1
    goto :goto_0

    .line 65
    .end local v2    # "end":Ljava/lang/Boolean;
    .end local v12    # "u":I
    :cond_2
    goto :goto_2

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lat/fhooe/usmile/gpjshell/TCPConnection;->sendLogOutput(Ljava/lang/String;)V

    goto :goto_3

    .line 109
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnknownHostException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lat/fhooe/usmile/gpjshell/TCPConnection;->sendLogOutput(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/net/UnknownHostException;
    goto :goto_2

    .line 106
    :catch_2
    move-exception v0

    .line 107
    .local v0, "e":Ljava/net/SocketException;
    const-string v1, "SocketException"

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .end local v0    # "e":Ljava/net/SocketException;
    :goto_2
    nop

    .line 119
    :goto_3
    return-void
.end method

.method public stopConnection()V
    .locals 3

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mRunning:Z

    .line 46
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    iget-object v0, p0, Lat/fhooe/usmile/gpjshell/TCPConnection;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException, could not close connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lat/fhooe/usmile/gpjshell/TCPConnection;->sendLogOutput(Ljava/lang/String;)V

    .line 54
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method
