.class Lcom/google/gdata/data/webmastertools/SitemapNews$PublicationLabelConstruct;
.super Lcom/google/gdata/data/ValueConstruct;
.source "SitemapNews.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "publication-label"
    nsAlias = "wt"
    nsUri = "http://schemas.google.com/webmasters/tools/2007"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/webmastertools/SitemapNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PublicationLabelConstruct"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 139
    sget-object v0, Lcom/google/gdata/data/webmastertools/Namespaces;->WT_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "publication-label"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
