.class public Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

.field private mNestedScrollingParentTouch:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 58
    return-void
.end method

.method private getNestedScrollingParentForType(I)Landroid/view/ViewParent;
    .locals 1
    .param p1, "type"    # I

    .line 383
    packed-switch p1, :pswitch_data_0

    .line 389
    const/4 v0, 0x0

    return-object v0

    .line 387
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    return-object v0

    .line 385
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setNestedScrollingParentForType(ILandroid/view/ViewParent;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "p"    # Landroid/view/ViewParent;

    .line 393
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 398
    :pswitch_0
    iput-object p2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentNonTouch:Landroid/view/ViewParent;

    goto :goto_0

    .line 395
    :pswitch_1
    iput-object p2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParentTouch:Landroid/view/ViewParent;

    .line 396
    nop

    .line 401
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 2
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 327
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 329
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v1

    return v1

    .line 334
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v1
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 347
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 349
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v1

    return v1

    .line 354
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    return v1
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 264
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "dx":I
    .end local p2    # "dy":I
    .end local p3    # "consumed":[I
    .end local p4    # "offsetInWindow":[I
    .local v1, "dx":I
    .local v2, "dy":I
    .local v3, "consumed":[I
    .local v4, "offsetInWindow":[I
    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .locals 10
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I

    .line 278
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 279
    invoke-direct {p0, p5}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v2

    .line 280
    .local v2, "parent":Landroid/view/ViewParent;
    if-nez v2, :cond_0

    .line 281
    return v1

    .line 284
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    goto :goto_0

    .line 309
    :cond_1
    if-eqz p4, :cond_2

    .line 310
    aput v1, p4, v1

    .line 311
    aput v1, p4, v0

    move v4, p1

    move v5, p2

    move v7, p5

    goto :goto_3

    .line 309
    :cond_2
    move v4, p1

    move v5, p2

    move v7, p5

    goto :goto_3

    .line 285
    :cond_3
    :goto_0
    const/4 v3, 0x0

    .line 286
    .local v3, "startX":I
    const/4 v4, 0x0

    .line 287
    .local v4, "startY":I
    if-eqz p4, :cond_4

    .line 288
    iget-object v5, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v5, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 289
    aget v3, p4, v1

    .line 290
    aget v4, p4, v0

    move v8, v3

    move v9, v4

    goto :goto_1

    .line 287
    :cond_4
    move v8, v3

    move v9, v4

    .line 293
    .end local v3    # "startX":I
    .end local v4    # "startY":I
    .local v8, "startX":I
    .local v9, "startY":I
    :goto_1
    if-nez p3, :cond_6

    .line 294
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v3, :cond_5

    .line 295
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    .line 297
    :cond_5
    iget-object p3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    move-object v6, p3

    goto :goto_2

    .line 293
    :cond_6
    move-object v6, p3

    .line 299
    .end local p3    # "consumed":[I
    .local v6, "consumed":[I
    :goto_2
    aput v1, v6, v1

    .line 300
    aput v1, v6, v0

    .line 301
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v4, p1

    move v5, p2

    move v7, p5

    .end local p1    # "dx":I
    .end local p2    # "dy":I
    .end local p5    # "type":I
    .local v4, "dx":I
    .local v5, "dy":I
    .local v7, "type":I
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[II)V

    .line 303
    if-eqz p4, :cond_7

    .line 304
    iget-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 305
    aget p1, p4, v1

    sub-int/2addr p1, v8

    aput p1, p4, v1

    .line 306
    aget p1, p4, v0

    sub-int/2addr p1, v9

    aput p1, p4, v0

    .line 308
    :cond_7
    aget p1, v6, v1

    if-nez p1, :cond_8

    aget p1, v6, v0

    if-eqz p1, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1

    .line 278
    .end local v2    # "parent":Landroid/view/ViewParent;
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "consumed":[I
    .end local v7    # "type":I
    .end local v8    # "startX":I
    .end local v9    # "startY":I
    .restart local p1    # "dx":I
    .restart local p2    # "dy":I
    .restart local p3    # "consumed":[I
    .restart local p5    # "type":I
    :cond_a
    move v4, p1

    move v5, p2

    move v7, p5

    .line 314
    .end local p1    # "dx":I
    .end local p2    # "dy":I
    .end local p5    # "type":I
    .restart local v4    # "dx":I
    .restart local v5    # "dy":I
    .restart local v7    # "type":I
    :goto_3
    return v1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 7
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 204
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .end local p1    # "dxConsumed":I
    .end local p2    # "dyConsumed":I
    .end local p3    # "dxUnconsumed":I
    .end local p4    # "dyUnconsumed":I
    .end local p5    # "offsetInWindow":[I
    .local v1, "dxConsumed":I
    .local v2, "dyConsumed":I
    .local v3, "dxUnconsumed":I
    .local v4, "dyUnconsumed":I
    .local v5, "offsetInWindow":[I
    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result p1

    return p1
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .locals 12
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I

    .line 220
    move-object/from16 v0, p5

    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 221
    move/from16 v9, p6

    invoke-direct {p0, v9}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v3

    .line 222
    .local v3, "parent":Landroid/view/ViewParent;
    if-nez v3, :cond_0

    .line 223
    return v2

    .line 226
    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    if-eqz v0, :cond_5

    .line 246
    aput v2, v0, v2

    .line 247
    aput v2, v0, v1

    goto :goto_2

    .line 227
    :cond_2
    :goto_0
    const/4 v4, 0x0

    .line 228
    .local v4, "startX":I
    const/4 v5, 0x0

    .line 229
    .local v5, "startY":I
    if-eqz v0, :cond_3

    .line 230
    iget-object v6, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 231
    aget v4, v0, v2

    .line 232
    aget v5, v0, v1

    move v10, v4

    move v11, v5

    goto :goto_1

    .line 229
    :cond_3
    move v10, v4

    move v11, v5

    .line 235
    .end local v4    # "startX":I
    .end local v5    # "startY":I
    .local v10, "startX":I
    .local v11, "startY":I
    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v5, p1

    move v6, p2

    move v7, p3

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIIII)V

    .line 238
    if-eqz v0, :cond_4

    .line 239
    iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 240
    aget v4, v0, v2

    sub-int/2addr v4, v10

    aput v4, v0, v2

    .line 241
    aget v2, v0, v1

    sub-int/2addr v2, v11

    aput v2, v0, v1

    .line 243
    :cond_4
    return v1

    .line 250
    .end local v3    # "parent":Landroid/view/ViewParent;
    .end local v10    # "startX":I
    .end local v11    # "startY":I
    :cond_5
    :goto_2
    return v2
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 114
    invoke-direct {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 366
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 379
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 380
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 70
    iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 73
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    .line 74
    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .locals 4
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 145
    invoke-virtual {p0, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 147
    return v1

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 151
    .local v0, "p":Landroid/view/ViewParent;
    iget-object v2, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    .line 152
    .local v2, "child":Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_3

    .line 153
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    invoke-direct {p0, p2, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 155
    iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v2, v3, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;II)V

    .line 156
    return v1

    .line 158
    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 159
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    .line 161
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 164
    .end local v0    # "p":Landroid/view/ViewParent;
    .end local v2    # "child":Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 176
    return-void
.end method

.method public stopNestedScroll(I)V
    .locals 2
    .param p1, "type"    # I

    .line 186
    invoke-direct {p0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->getNestedScrollingParentForType(I)Landroid/view/ViewParent;

    move-result-object v0

    .line 187
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-static {v0, v1, p1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;I)V

    .line 189
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingParentForType(ILandroid/view/ViewParent;)V

    .line 191
    :cond_0
    return-void
.end method
