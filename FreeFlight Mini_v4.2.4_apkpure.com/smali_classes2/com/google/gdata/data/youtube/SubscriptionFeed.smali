.class public Lcom/google/gdata/data/youtube/SubscriptionFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "SubscriptionFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#subscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/youtube/SubscriptionFeed;",
        "Lcom/google/gdata/data/youtube/SubscriptionEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/gdata/data/youtube/SubscriptionEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 40
    const-string v0, "http://gdata.youtube.com/schemas/2007#subscription"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "base":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/youtube/SubscriptionEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 45
    const-string v0, "http://gdata.youtube.com/schemas/2007#subscription"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseFeed;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 51
    invoke-static {p1}, Lcom/google/gdata/data/batch/BatchUtils;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 52
    return-void
.end method
