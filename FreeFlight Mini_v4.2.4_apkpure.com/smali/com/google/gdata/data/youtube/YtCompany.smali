.class public Lcom/google/gdata/data/youtube/YtCompany;
.super Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;
.source "YtCompany.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "company"
    nsAlias = "yt"
    nsUri = "http://gdata.youtube.com/schemas/2007"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "company"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/google/gdata/data/youtube/AbstractFreeTextExtension;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
