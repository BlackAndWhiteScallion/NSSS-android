.class Lorg/chromium/net/HttpNegotiateAuthenticator$1;
.super Ljava/lang/Object;
.source "HttpNegotiateAuthenticator.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/HttpNegotiateAuthenticator;->getNextAuthToken(JLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

.field final synthetic val$nativeResultObject:J


# direct methods
.method constructor <init>(Lorg/chromium/net/HttpNegotiateAuthenticator;J)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iput-wide p2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$nativeResultObject:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 86
    .local v1, "result":Landroid/os/Bundle;
    iget-object v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    const-string v4, "spnegoContext"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/chromium/net/HttpNegotiateAuthenticator;->access$002(Lorg/chromium/net/HttpNegotiateAuthenticator;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 89
    const-string v3, "spnegoResult"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 123
    const/16 v2, -0x9

    .line 125
    .local v2, "status":I
    :goto_0
    iget-object v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-wide v4, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$nativeResultObject:J

    const-string v6, "authtoken"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v2, v6}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "status":I
    :goto_1
    return-void

    .line 92
    .restart local v1    # "result":Landroid/os/Bundle;
    :pswitch_0
    const/4 v2, 0x0

    .line 93
    .restart local v2    # "status":I
    goto :goto_0

    .line 95
    .end local v2    # "status":I
    :pswitch_1
    const/16 v2, -0x9

    .line 96
    .restart local v2    # "status":I
    goto :goto_0

    .line 98
    .end local v2    # "status":I
    :pswitch_2
    const/4 v2, -0x3

    .line 99
    .restart local v2    # "status":I
    goto :goto_0

    .line 101
    .end local v2    # "status":I
    :pswitch_3
    const/16 v2, -0x156

    .line 102
    .restart local v2    # "status":I
    goto :goto_0

    .line 104
    .end local v2    # "status":I
    :pswitch_4
    const/16 v2, -0x140

    .line 105
    .restart local v2    # "status":I
    goto :goto_0

    .line 107
    .end local v2    # "status":I
    :pswitch_5
    const/16 v2, -0x152

    .line 108
    .restart local v2    # "status":I
    goto :goto_0

    .line 110
    .end local v2    # "status":I
    :pswitch_6
    const/16 v2, -0x153

    .line 111
    .restart local v2    # "status":I
    goto :goto_0

    .line 113
    .end local v2    # "status":I
    :pswitch_7
    const/16 v2, -0x155

    .line 114
    .restart local v2    # "status":I
    goto :goto_0

    .line 117
    .end local v2    # "status":I
    :pswitch_8
    const/16 v2, -0x158

    .line 118
    .restart local v2    # "status":I
    goto :goto_0

    .line 120
    .end local v2    # "status":I
    :pswitch_9
    const/16 v2, -0x149

    .line 121
    .restart local v2    # "status":I
    goto :goto_0

    .line 127
    .end local v1    # "result":Landroid/os/Bundle;
    .end local v2    # "status":I
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iget-wide v4, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$nativeResultObject:J

    const/4 v6, -0x3

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/chromium/net/HttpNegotiateAuthenticator;->nativeSetResult(JILjava/lang/String;)V

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
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
