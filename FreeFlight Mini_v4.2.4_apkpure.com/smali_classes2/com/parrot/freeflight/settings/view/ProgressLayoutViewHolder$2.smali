.class Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;
.super Ljava/lang/Object;
.source "ProgressLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    .prologue
    .line 81
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;, "Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;"
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder$2;->this$0:Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-virtual {v0, p2, p3}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;->handleOnKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
