.class Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "BaseFeed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/BaseFeed$FeedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemsPerPageHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/BaseFeed$FeedHandler;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;)V
    .locals 0

    .prologue
    .line 1018
    .local p0, "this":Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler.ItemsPerPageHandler;"
    iput-object p1, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;->this$1:Lcom/google/gdata/data/BaseFeed$FeedHandler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;Lcom/google/gdata/data/BaseFeed$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/BaseFeed$FeedHandler;
    .param p2, "x1"    # Lcom/google/gdata/data/BaseFeed$1;

    .prologue
    .line 1018
    .local p0, "this":Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler.ItemsPerPageHandler;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;-><init>(Lcom/google/gdata/data/BaseFeed$FeedHandler;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 1023
    .local p0, "this":Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;, "Lcom/google/gdata/data/BaseFeed<TF;TE;>.FeedHandler.ItemsPerPageHandler;"
    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;->this$1:Lcom/google/gdata/data/BaseFeed$FeedHandler;

    iget-object v1, v1, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    iget-object v1, v1, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget v1, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1024
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->duplicateItemsPerPage:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v1

    .line 1028
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;->value:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1029
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->logoValueRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v1

    .line 1034
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;->this$1:Lcom/google/gdata/data/BaseFeed$FeedHandler;

    iget-object v1, v1, Lcom/google/gdata/data/BaseFeed$FeedHandler;->this$0:Lcom/google/gdata/data/BaseFeed;

    iget-object v1, v1, Lcom/google/gdata/data/BaseFeed;->feedState:Lcom/google/gdata/data/BaseFeed$FeedState;

    iget-object v2, p0, Lcom/google/gdata/data/BaseFeed$FeedHandler$ItemsPerPageHandler;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/google/gdata/data/BaseFeed$FeedState;->itemsPerPage:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    return-void

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->itemsPerPageNotInteger:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v1
.end method
