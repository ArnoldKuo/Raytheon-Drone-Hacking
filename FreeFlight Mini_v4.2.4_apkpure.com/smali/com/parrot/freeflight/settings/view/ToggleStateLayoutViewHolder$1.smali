.class Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;
.super Ljava/lang/Object;
.source "ToggleStateLayoutViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    .prologue
    .line 48
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;"
    iput-object p1, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;, "Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;"
    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    iget-object v0, v0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->mLeftRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->access$000(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->access$200(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;Z)V

    .line 53
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->access$100(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;)Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/settings/model/ToggleStateSettingsEntry;->sendValue(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder$1;->this$0:Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;->access$002(Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;I)I

    .line 56
    :cond_0
    return-void
.end method