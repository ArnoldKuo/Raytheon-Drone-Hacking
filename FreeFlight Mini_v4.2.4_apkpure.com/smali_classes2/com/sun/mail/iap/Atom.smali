.class Lcom/sun/mail/iap/Atom;
.super Ljava/lang/Object;
.source "Argument.java"


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Lcom/sun/mail/iap/Atom;->string:Ljava/lang/String;

    .line 288
    return-void
.end method
