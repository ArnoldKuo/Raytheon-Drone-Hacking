.class Lcom/google/gdata/data/Source$SourceHandler$IdHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "Source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Source$SourceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/gdata/data/Source$SourceHandler;


# direct methods
.method private constructor <init>(Lcom/google/gdata/data/Source$SourceHandler;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;->this$1:Lcom/google/gdata/data/Source$SourceHandler;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/data/Source$SourceHandler;Lcom/google/gdata/data/Source$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/data/Source$SourceHandler;
    .param p2, "x1"    # Lcom/google/gdata/data/Source$1;

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;-><init>(Lcom/google/gdata/data/Source$SourceHandler;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;->this$1:Lcom/google/gdata/data/Source$SourceHandler;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v0, v0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 560
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->duplicateFeedId:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;->value:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 565
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->idValueRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;->this$1:Lcom/google/gdata/data/Source$SourceHandler;

    iget-object v0, v0, Lcom/google/gdata/data/Source$SourceHandler;->this$0:Lcom/google/gdata/data/Source;

    iget-object v0, v0, Lcom/google/gdata/data/Source;->srcState:Lcom/google/gdata/data/Source$SourceState;

    iget-object v1, p0, Lcom/google/gdata/data/Source$SourceHandler$IdHandler;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/gdata/data/Source$SourceState;->id:Ljava/lang/String;

    .line 570
    return-void
.end method
