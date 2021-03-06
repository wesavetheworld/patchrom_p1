.class Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller$SplineOverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SplineFixer"
.end annotation


# instance fields
.field private final DEFAULT_FRAME_TIME:I

.field private final FRAME_DELAY_COEF:I

.field private final TAG:Ljava/lang/String;

.field private final VEL_EXPAND_COEF:D

.field private mAccuDistFix:I

.field private mCurrFrame:I

.field private mCurrOrigDist:D

.field private mDebugging:Z

.field private mEnabled:Z

.field private mLastOrigDist:D

.field private mLastTime:J

.field final synthetic this$0:Landroid/widget/OverScroller$SplineOverScroller;


# direct methods
.method constructor <init>(Landroid/widget/OverScroller$SplineOverScroller;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 1033
    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    const v0, 0x41855555

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->DEFAULT_FRAME_TIME:I

    .line 1038
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->FRAME_DELAY_COEF:I

    .line 1041
    const-wide v0, 0x3f33a92a30553261L

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->VEL_EXPAND_COEF:D

    .line 1044
    const-string v0, "SplineFixer"

    iput-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->TAG:Ljava/lang/String;

    .line 1047
    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mEnabled:Z

    .line 1050
    const-string v0, "debug.overscroller.splinefixer"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mDebugging:Z

    .line 1053
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    .line 1056
    iput-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    .line 1059
    iput-wide v3, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastOrigDist:D

    .line 1062
    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrFrame:I

    .line 1065
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastTime:J

    return-void
.end method


# virtual methods
.method enable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1068
    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mEnabled:Z

    .line 1069
    return-void
.end method

.method getExpandedFlingDuration(II)I
    .locals 10
    .parameter "velocity"
    .parameter "duration"

    .prologue
    const-wide/high16 v8, 0x3ff0

    .line 1088
    const-wide v4, 0x3f33a92a30553261L

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-double v6, v6

    mul-double v2, v4, v6

    .line 1089
    .local v2, v:D
    const-wide v4, 0x400dbf0a8b145769L

    div-double v6, v8, v2

    add-double/2addr v6, v8

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double v0, v4, v6

    .line 1091
    .local v0, c:D
    iget-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mDebugging:Z

    if-eqz v4, :cond_0

    .line 1092
    const-string v4, "SplineFixer"

    const-string v5, "-------- Start --------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const-string v4, "SplineFixer"

    const-string v5, "Velocity:%dpx/s\tDuration:%dms(Coef:%.3f)\tFinal:%dpx"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v8}, Landroid/widget/OverScroller$SplineOverScroller;->access$500(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v8}, Landroid/widget/OverScroller$SplineOverScroller;->access$400(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_0
    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int v4, v4

    return v4
.end method

.method getFixedDistance()D
    .locals 13

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    .line 1106
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastOrigDist:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastOrigDist:D

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    iget-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 1108
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_2

    .line 1109
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    .line 1115
    :cond_0
    :goto_0
    iget-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mDebugging:Z

    if-eqz v4, :cond_1

    .line 1116
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrFrame:I

    .line 1118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1119
    .local v0, currTime:J
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastTime:J

    cmp-long v4, v4, v2

    if-nez v4, :cond_3

    .line 1120
    .local v2, timeIntv:J
    :goto_1
    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastTime:J

    .line 1122
    const-string v4, "SplineFixer"

    const-string v5, "Thread:%2d(%s)\tFrame:%3d\tInterval:%2dms\tDistance:%5dpx\tAccumulatedFix:%2dpx\tPosition:%dpx"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrFrame:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-wide v8, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget v8, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->this$0:Landroid/widget/OverScroller$SplineOverScroller;

    #getter for: Landroid/widget/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v8}, Landroid/widget/OverScroller$SplineOverScroller;->access$300(Landroid/widget/OverScroller$SplineOverScroller;)I

    move-result v8

    iget-wide v9, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    iget v11, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    int-to-double v11, v11

    add-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    .end local v0           #currTime:J
    .end local v2           #timeIntv:J
    :cond_1
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastOrigDist:D

    .line 1134
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    return-wide v4

    .line 1110
    :cond_2
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    invoke-static {v4, v5}, Ljava/lang/Math;->signum(D)D

    move-result-wide v4

    const-wide/high16 v6, -0x4010

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    .line 1111
    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    goto/16 :goto_0

    .line 1119
    .restart local v0       #currTime:J
    :cond_3
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastTime:J

    sub-long v2, v0, v4

    goto/16 :goto_1
.end method

.method getFixedFinalPosition(I)I
    .locals 4
    .parameter "start"

    .prologue
    .line 1138
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method getFrameDelay()I
    .locals 2

    .prologue
    .line 1142
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->DEFAULT_FRAME_TIME:I

    :goto_0
    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 1072
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mEnabled:Z

    return v0
.end method

.method reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 1076
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mDebugging:Z

    if-eqz v0, :cond_0

    .line 1077
    const-string v0, "SplineFixer"

    const-string v1, "-------- Reset --------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mAccuDistFix:I

    .line 1081
    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    .line 1082
    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastOrigDist:D

    .line 1083
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrFrame:I

    .line 1084
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mLastTime:J

    .line 1085
    return-void
.end method

.method setCurrentOriginalDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 1102
    iput-wide p1, p0, Landroid/widget/OverScroller$SplineOverScroller$SplineFixer;->mCurrOrigDist:D

    .line 1103
    return-void
.end method
