.class public Lcom/google/gdata/client/finance/PortfolioQuery;
.super Lcom/google/gdata/client/Query;
.source "PortfolioQuery.java"


# instance fields
.field private includeReturns:Ljava/lang/Boolean;

.field private inlinePositions:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2
    .param p1, "feedUrl"    # Ljava/net/URL;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/gdata/client/Query;-><init>(Ljava/net/URL;)V

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/finance/PortfolioQuery;->inlinePositions:Ljava/lang/Boolean;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/client/finance/PortfolioQuery;->includeReturns:Ljava/lang/Boolean;

    .line 46
    return-void
.end method


# virtual methods
.method public getIncludeReturns()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/gdata/client/finance/PortfolioQuery;->includeReturns:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInlinePositions()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/gdata/client/finance/PortfolioQuery;->inlinePositions:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIncludeReturns(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "includeReturns"    # Ljava/lang/Boolean;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/finance/PortfolioQuery;->includeReturns:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    iput-object p1, p0, Lcom/google/gdata/client/finance/PortfolioQuery;->includeReturns:Ljava/lang/Boolean;

    .line 105
    const-string v1, "returns"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/finance/PortfolioQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    return-void

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setInlinePositions(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "inlinePositions"    # Ljava/lang/Boolean;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/finance/PortfolioQuery;->inlinePositions:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iput-object p1, p0, Lcom/google/gdata/client/finance/PortfolioQuery;->inlinePositions:Ljava/lang/Boolean;

    .line 72
    const-string v1, "positions"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/gdata/client/finance/PortfolioQuery;->setStringCustomParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_1
    return-void

    .line 72
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method