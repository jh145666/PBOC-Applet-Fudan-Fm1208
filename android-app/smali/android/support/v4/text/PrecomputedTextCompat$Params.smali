.class public final Landroid/support/v4/text/PrecomputedTextCompat$Params;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/PrecomputedTextCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Params"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    }
.end annotation


# instance fields
.field private final mBreakStrategy:I

.field private final mHyphenationFrequency:I

.field private final mPaint:Landroid/text/TextPaint;

.field private final mTextDir:Landroid/text/TextDirectionHeuristic;

.field final mWrapped:Landroid/text/PrecomputedText$Params;


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .locals 1
    .param p1, "wrapped"    # Landroid/text/PrecomputedText$Params;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 211
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 212
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 213
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    .line 214
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    .line 216
    return-void
.end method

.method constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "strategy"    # I
    .param p4, "frequency"    # I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 197
    new-instance v0, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v0, p1}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-virtual {v0, p3}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p4}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    goto :goto_0

    .line 200
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    .line 202
    :goto_0
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 203
    iput-object p2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 204
    iput p3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 205
    iput p4, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    .line 206
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 271
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 272
    return v0

    .line 274
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_10

    instance-of v2, p1, Landroid/support/v4/text/PrecomputedTextCompat$Params;

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 277
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/support/v4/text/PrecomputedTextCompat$Params;

    .line 278
    .local v2, "other":Landroid/support/v4/text/PrecomputedTextCompat$Params;
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    if-eqz v3, :cond_2

    .line 279
    iget-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    iget-object v1, v2, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    invoke-virtual {v0, v1}, Landroid/text/PrecomputedText$Params;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 282
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4

    .line 283
    iget v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 284
    return v1

    .line 286
    :cond_3
    iget v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 287
    return v1

    .line 291
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_5

    .line 292
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    if-eq v3, v4, :cond_5

    .line 293
    return v1

    .line 297
    :cond_5
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_6

    .line 298
    return v1

    .line 300
    :cond_6
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v3

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    .line 301
    return v1

    .line 303
    :cond_7
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v3

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    .line 304
    return v1

    .line 306
    :cond_8
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_a

    .line 307
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v3

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_9

    .line 308
    return v1

    .line 310
    :cond_9
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v3

    .line 311
    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 312
    return v1

    .line 315
    :cond_a
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 316
    return v1

    .line 318
    :cond_b
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_c

    .line 319
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 320
    return v1

    .line 322
    :cond_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_d

    .line 323
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 324
    return v1

    .line 327
    :cond_d
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-nez v3, :cond_e

    .line 328
    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 329
    return v1

    .line 331
    :cond_e
    iget-object v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2}, Landroid/support/v4/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 332
    return v1

    .line 335
    :cond_f
    return v0

    .line 275
    .end local v2    # "other":Landroid/support/v4/text/PrecomputedTextCompat$Params;
    :cond_10
    :goto_0
    return v1
.end method

.method public getBreakStrategy()I
    .locals 1

    .line 249
    iget v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    return v0
.end method

.method public getHyphenationFrequency()I
    .locals 1

    .line 261
    iget v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    return v0
.end method

.method public getTextDirection()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 237
    iget-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .line 224
    iget-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public hashCode()I
    .locals 24

    .line 340
    move-object/from16 v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/16 v4, 0xb

    const/16 v5, 0x9

    const/16 v6, 0x8

    const/4 v14, 0x0

    if-lt v1, v2, :cond_0

    .line 341
    iget-object v1, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v15, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 342
    invoke-virtual {v15}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0xa

    iget-object v3, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/16 v17, 0x7

    iget-object v7, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v18, 0x6

    iget-object v8, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 343
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v8

    const/16 v19, 0x5

    iget-object v9, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v9

    const/16 v20, 0x4

    iget-object v10, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/16 v21, 0x3

    iget-object v11, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/16 v22, 0x2

    iget v12, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 344
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v23, 0x1

    iget v13, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v14

    aput-object v2, v4, v23

    aput-object v15, v4, v22

    aput-object v3, v4, v21

    aput-object v7, v4, v20

    aput-object v8, v4, v19

    aput-object v9, v4, v18

    aput-object v10, v4, v17

    aput-object v11, v4, v6

    aput-object v12, v4, v5

    aput-object v13, v4, v16

    .line 341
    invoke-static {v4}, Landroid/support/v4/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 345
    :cond_0
    const/16 v16, 0xa

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    const/16 v23, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 346
    iget-object v1, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 347
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v7, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v8, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->getFlags()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 348
    invoke-virtual {v9}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    iget-object v10, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v10

    iget-object v11, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v13, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 349
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v15, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v14

    aput-object v2, v4, v23

    aput-object v3, v4, v22

    aput-object v7, v4, v21

    aput-object v8, v4, v20

    aput-object v9, v4, v19

    aput-object v10, v4, v18

    aput-object v11, v4, v17

    aput-object v12, v4, v6

    aput-object v13, v4, v5

    aput-object v15, v4, v16

    .line 346
    invoke-static {v4}, Landroid/support/v4/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 350
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_2

    .line 351
    iget-object v1, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 352
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v7

    iget-object v8, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 353
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v10, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v14

    aput-object v2, v5, v23

    aput-object v3, v5, v22

    aput-object v4, v5, v21

    aput-object v7, v5, v20

    aput-object v8, v5, v19

    aput-object v9, v5, v18

    aput-object v10, v5, v17

    aput-object v11, v5, v6

    .line 351
    invoke-static {v5}, Landroid/support/v4/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 354
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_3

    .line 355
    iget-object v1, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 356
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v7, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v7

    iget-object v8, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 357
    invoke-virtual {v8}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    iget-object v9, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v10, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v11, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v14

    aput-object v2, v5, v23

    aput-object v3, v5, v22

    aput-object v4, v5, v21

    aput-object v7, v5, v20

    aput-object v8, v5, v19

    aput-object v9, v5, v18

    aput-object v10, v5, v17

    aput-object v11, v5, v6

    .line 355
    invoke-static {v5}, Landroid/support/v4/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 359
    :cond_3
    iget-object v1, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    .line 360
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    iget-object v7, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v8, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    .line 361
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v14

    aput-object v2, v6, v23

    aput-object v3, v6, v22

    aput-object v4, v6, v21

    aput-object v5, v6, v20

    aput-object v7, v6, v19

    aput-object v8, v6, v18

    aput-object v9, v6, v17

    .line 359
    invoke-static {v6}, Landroid/support/v4/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "textSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textScaleX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textSkewX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", letterSpacing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", elegantTextHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const-string v3, ", textLocale="

    if-lt v1, v2, :cond_1

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 377
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", typeface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_3

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", variationSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", textDir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", breakStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mBreakStrategy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", hyphenationFrequency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params;->mHyphenationFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
