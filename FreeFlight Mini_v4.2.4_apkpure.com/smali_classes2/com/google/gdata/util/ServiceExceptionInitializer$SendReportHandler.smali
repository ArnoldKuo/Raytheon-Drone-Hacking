.class Lcom/google/gdata/util/ServiceExceptionInitializer$SendReportHandler;
.super Lcom/google/gdata/util/XmlParser$ElementHandler;
.source "ServiceExceptionInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/util/ServiceExceptionInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendReportHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;


# direct methods
.method private constructor <init>(Lcom/google/gdata/util/ServiceExceptionInitializer;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$SendReportHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser$ElementHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gdata/util/ServiceExceptionInitializer;Lcom/google/gdata/util/ServiceExceptionInitializer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/gdata/util/ServiceExceptionInitializer;
    .param p2, "x1"    # Lcom/google/gdata/util/ServiceExceptionInitializer$1;

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/google/gdata/util/ServiceExceptionInitializer$SendReportHandler;-><init>(Lcom/google/gdata/util/ServiceExceptionInitializer;)V

    return-void
.end method


# virtual methods
.method public processEndElement()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$SendReportHandler;->this$0:Lcom/google/gdata/util/ServiceExceptionInitializer;

    invoke-static {v0}, Lcom/google/gdata/util/ServiceExceptionInitializer;->access$1000(Lcom/google/gdata/util/ServiceExceptionInitializer;)Lcom/google/gdata/util/ServiceException;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gdata/util/ServiceException;->errorElement:Lcom/google/gdata/util/ErrorElement;

    iget-object v1, p0, Lcom/google/gdata/util/ServiceExceptionInitializer$SendReportHandler;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/ErrorElement;->setSendReport(Ljava/lang/String;)Lcom/google/gdata/util/ErrorElement;

    .line 261
    return-void
.end method
