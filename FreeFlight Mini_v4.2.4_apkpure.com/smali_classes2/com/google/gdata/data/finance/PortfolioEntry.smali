.class public Lcom/google/gdata/data/finance/PortfolioEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "PortfolioEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/finance/2007#portfolio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/finance/PortfolioEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/finance/2007#portfolio"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/finance/2007#portfolio"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/finance/PortfolioEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PortfolioEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/finance/PortfolioEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 59
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 63
    const-class v0, Lcom/google/gdata/data/finance/PortfolioEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 67
    const-class v0, Lcom/google/gdata/data/finance/PortfolioEntry;

    const-class v1, Lcom/google/gdata/data/finance/PortfolioFeedLink;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 68
    new-instance v0, Lcom/google/gdata/data/finance/PortfolioFeedLink;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/PortfolioFeedLink;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/PortfolioFeedLink;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 69
    const-class v0, Lcom/google/gdata/data/finance/PortfolioEntry;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/gdata/data/finance/PortfolioData;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    new-instance v0, Lcom/google/gdata/data/finance/PortfolioData;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/PortfolioData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/PortfolioData;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    goto :goto_0
.end method

.method public getFeedLink()Lcom/google/gdata/data/finance/PortfolioFeedLink;
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/google/gdata/data/finance/PortfolioFeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/PortfolioFeedLink;

    return-object v0
.end method

.method public getPortfolioData()Lcom/google/gdata/data/finance/PortfolioData;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/google/gdata/data/finance/PortfolioData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/PortfolioData;

    return-object v0
.end method

.method public hasFeedLink()Z
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/google/gdata/data/finance/PortfolioFeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPortfolioData()Z
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/google/gdata/data/finance/PortfolioData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setFeedLink(Lcom/google/gdata/data/finance/PortfolioFeedLink;)V
    .locals 1
    .param p1, "feedLink"    # Lcom/google/gdata/data/finance/PortfolioFeedLink;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    const-class v0, Lcom/google/gdata/data/finance/PortfolioFeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PortfolioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPortfolioData(Lcom/google/gdata/data/finance/PortfolioData;)V
    .locals 1
    .param p1, "portfolioData"    # Lcom/google/gdata/data/finance/PortfolioData;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const-class v0, Lcom/google/gdata/data/finance/PortfolioData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PortfolioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PortfolioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{PortfolioEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method
