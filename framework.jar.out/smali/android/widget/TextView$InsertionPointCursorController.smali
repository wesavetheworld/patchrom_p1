.class Landroid/widget/TextView$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mHandle:Landroid/widget/TextView$InsertionHandleView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 11038
    iput-object p1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11038
    invoke-direct {p0, p1}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;)V

    return-void
.end method

.method private getHandle()Landroid/widget/TextView$InsertionHandleView;
    .locals 3

    .prologue
    .line 11062
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 11063
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$7200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v2}, Landroid/widget/TextView;->access$6200(Landroid/widget/TextView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    #setter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$7102(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11066
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    if-nez v0, :cond_1

    .line 11067
    new-instance v0, Landroid/widget/TextView$InsertionHandleView;

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/TextView;->access$7100(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$InsertionHandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    .line 11069
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 11050
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    if-eqz v0, :cond_0

    .line 11051
    iget-object v0, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->hide()V

    .line 11053
    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 11074
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 11075
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 11077
    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$InsertionPointCursorController;->mHandle:Landroid/widget/TextView$InsertionHandleView;

    invoke-virtual {v1}, Landroid/widget/TextView$InsertionHandleView;->onDetached()V

    .line 11078
    :cond_0
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 11056
    if-nez p1, :cond_0

    .line 11057
    invoke-virtual {p0}, Landroid/widget/TextView$InsertionPointCursorController;->hide()V

    .line 11059
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 11042
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->show()V

    .line 11043
    return-void
.end method

.method public showWithActionPopup()V
    .locals 1

    .prologue
    .line 11046
    invoke-direct {p0}, Landroid/widget/TextView$InsertionPointCursorController;->getHandle()Landroid/widget/TextView$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->showWithActionPopup()V

    .line 11047
    return-void
.end method
