.class public Lcom/google/gdata/data/sites/WebPageEntry;
.super Lcom/google/gdata/data/sites/BasePageEntry;
.source "WebPageEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/sites/2008#webpage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/sites/BasePageEntry",
        "<",
        "Lcom/google/gdata/data/sites/WebPageEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/sites/2008#webpage"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/sites/2008#webpage"

    const-string v3, "webpage"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/sites/WebPageEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/sites/BasePageEntry;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/google/gdata/data/sites/WebPageEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/sites/WebPageEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
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
    .line 59
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/sites/BasePageEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getAtomAttachmentsLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 68
    const-string v0, "http://schemas.google.com/sites/2008#attachments"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/WebPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getAtomRepliesLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 77
    const-string v0, "replies"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/WebPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlAttachmentsLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 86
    const-string v0, "http://schemas.google.com/sites/2008#attachments"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/WebPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlRepliesLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 95
    const-string v0, "replies"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/WebPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getParentLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 104
    const-string v0, "http://schemas.google.com/sites/2008#parent"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/WebPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WebPageEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/data/sites/BasePageEntry;->toString()Ljava/lang/String;

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
