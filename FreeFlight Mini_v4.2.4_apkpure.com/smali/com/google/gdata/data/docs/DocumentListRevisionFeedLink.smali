.class public Lcom/google/gdata/data/docs/DocumentListRevisionFeedLink;
.super Lcom/google/gdata/data/extensions/FeedLink;
.source "DocumentListRevisionFeedLink.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    isRepeatable = true
    localName = "feedLink"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/extensions/FeedLink",
        "<",
        "Lcom/google/gdata/data/docs/RevisionFeed;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/google/gdata/data/docs/RevisionFeed;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/extensions/FeedLink;-><init>(Ljava/lang/Class;)V

    .line 38
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/google/gdata/data/extensions/FeedLink;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 43
    new-instance v0, Lcom/google/gdata/data/ExtensionProfile;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionProfile;-><init>()V

    .line 44
    .local v0, "ep":Lcom/google/gdata/data/ExtensionProfile;
    new-instance v1, Lcom/google/gdata/data/docs/RevisionFeed;

    invoke-direct {v1}, Lcom/google/gdata/data/docs/RevisionFeed;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/docs/RevisionFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 45
    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareFeedLinkProfile(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 46
    return-void
.end method