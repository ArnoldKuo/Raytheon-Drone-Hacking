.class public Lcom/google/gdata/data/analytics/GwoComboString;
.super Lcom/google/gdata/data/ValueConstruct;
.source "GwoComboString.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "comboString"
    nsAlias = "gwo"
    nsUri = "http://schemas.google.com/analytics/websiteoptimizer/2009"
.end annotation


# static fields
.field static final XML_NAME:Ljava/lang/String; = "comboString"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/gdata/data/analytics/GwoComboString;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lcom/google/gdata/data/analytics/AnalyticsNamespace;->GWO_NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "comboString"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/GwoComboString;->setRequired(Z)V

    .line 51
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 63
    const-class v1, Lcom/google/gdata/data/analytics/GwoComboString;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 65
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 66
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{GwoComboString value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/GwoComboString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
