.class public Lcom/google/gdata/client/GoogleService$NotVerifiedException;
.super Lcom/google/gdata/util/AuthenticationException;
.source "GoogleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/client/GoogleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotVerifiedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/gdata/util/AuthenticationException;-><init>(Ljava/lang/String;)V

    .line 98
    return-void
.end method
