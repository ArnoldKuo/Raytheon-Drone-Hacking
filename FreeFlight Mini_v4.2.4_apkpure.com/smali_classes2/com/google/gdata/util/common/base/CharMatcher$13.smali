.class final Lcom/google/gdata/util/common/base/CharMatcher$13;
.super Lcom/google/gdata/util/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gdata/util/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/gdata/util/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(CC)V
    .locals 0

    .prologue
    .line 392
    iput-char p1, p0, Lcom/google/gdata/util/common/base/CharMatcher$13;->val$match1:C

    iput-char p2, p0, Lcom/google/gdata/util/common/base/CharMatcher$13;->val$match2:C

    invoke-direct {p0}, Lcom/google/gdata/util/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 392
    check-cast p1, Ljava/lang/Character;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lcom/google/gdata/util/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 394
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$13;->val$match1:C

    if-eq p1, v0, :cond_0

    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$13;->val$match2:C

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setBits(Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;)V
    .locals 1
    .param p1, "table"    # Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;

    .prologue
    .line 397
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$13;->val$match1:C

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;->set(C)V

    .line 398
    iget-char v0, p0, Lcom/google/gdata/util/common/base/CharMatcher$13;->val$match2:C

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/base/CharMatcher$LookupTable;->set(C)V

    .line 399
    return-void
.end method
