(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var494 0)
(declare-sort var2933 0)
(declare-sort var2307 0)
(declare-sort var3408 0)
(declare-sort var3536 0)
(declare-sort var2249 0)
(declare-sort var914 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getValidSrcImg/632871976 (var494) var2933)
(declare-fun targetImageType/-703132465 (var494) String)
(declare-fun Float32_valueOf/-1292433465 (Float32) Float32)
(declare-fun var2307_toDouble/-800661649 (var3408) Float64)
(declare-fun cast-from-Float32-to-var3408 (Float32) var3408)
(declare-fun var3536_getScaleInstance/1254178380 (Float64 Float64) var3536)
(declare-fun var914_toBufferedImage/846541504 (var2933 String) var2249)
(declare-fun var914_transform/-2074677421 (var3536 var2249) var2249)
(declare-fun cast-from-var2249-to-var2933 (var2249) var2933)
(declare-fun targetImage/-703132465 (var494) var2933)
(declare-const null-var494 var494)
(declare-const null-Float32 Float32)
(declare-const var115 var494) ; Statement: r0 := @this: cn.hutool.core.img.Img 
(assert (not (= var115 null-var494)))
(declare-const var1785 Float32) ; Statement: f0 := @parameter0: float 
(assert (not (= var1785 null-Float32)))
(define-const var706 Int (ite (fp.gt var1785 ((_ to_fp 8 24) #x00000000)) 1 (ite (fp.lt var1785 ((_ to_fp 8 24) #x00000000)) (- 1) 0))) ; Statement: $b0 = f0 cmpg 0.0F 
(define-const var215 Int (cast-from-Int-to-Int var706)) ; Statement: $i5 = (int) $b0 
 ; Statement: if $i5 >= 0 goto $r14 = specialinvoke r0.<cn.hutool.core.img.Img: java.awt.Image getValidSrcImg()>() 
(assert (>= var215 0)) ; Cond: $i5 >= 0 
(assert true)
(define-const var2447 var2933 (getValidSrcImg/632871976 var115)) ; Statement: $r14 = specialinvoke r0.<cn.hutool.core.img.Img: java.awt.Image getValidSrcImg()>() 
(define-const var2350 String "png") ; Statement: $r2 = "png" 
(define-const var1844 String (targetImageType/-703132465 var115)) ; Statement: $r1 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType> 
(assert true)
(define-const var2171 Bool (= var2350 var1844)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $i1 = virtualinvoke $r14.<java.awt.Image: int getWidth(java.awt.image.ImageObserver)>(null) 
(assert (not (= (ite var2171 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3768 Float32 (Float32_valueOf/-1292433465 var1785)) ; Statement: $r9 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>(f0) 
(define-const var598 Float64 (var2307_toDouble/-800661649 (cast-from-Float32-to-var3408 var3768))) ; Statement: d0 = staticinvoke <cn.hutool.core.util.NumberUtil: double toDouble(java.lang.Number)>($r9) 
(define-const var294 var3536 (var3536_getScaleInstance/1254178380 var598 var598)) ; Statement: $r12 = staticinvoke <java.awt.geom.AffineTransform: java.awt.geom.AffineTransform getScaleInstance(double,double)>(d0, d0) 
(define-const var2790 String (targetImageType/-703132465 var115)) ; Statement: $r10 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType> 
(define-const var704 var2249 (var914_toBufferedImage/846541504 var2447 var2790)) ; Statement: $r11 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage toBufferedImage(java.awt.Image,java.lang.String)>($r14, $r10) 
(define-const var3388 var2249 (var914_transform/-2074677421 var294 var704)) ; Statement: $r13 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage transform(java.awt.geom.AffineTransform,java.awt.image.BufferedImage)>($r12, $r11) 
(declare-const var115!1 var494)
(assert (not (= var115!1 null-var494)))
(assert (= (targetImage/-703132465 var115!1) (cast-from-var2249-to-var2933 var3388))) ; Statement: r0.<cn.hutool.core.img.Img: java.awt.Image targetImage> = $r13 
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), getValidSrcImg/632871976=([cn.hutool.core.img.Img], java.awt.Image), targetImageType/-703132465=([cn.hutool.core.img.Img], java.lang.String), Float32_valueOf/-1292433465=([float], java.lang.Float), var2307_toDouble/-800661649=([java.lang.Number], double), cast-from-Float32-to-var3408=([java.lang.Float], java.lang.Number), var3536_getScaleInstance/1254178380=([double, double], java.awt.geom.AffineTransform), var914_toBufferedImage/846541504=([java.awt.Image, java.lang.String], java.awt.image.BufferedImage), var914_transform/-2074677421=([java.awt.geom.AffineTransform, java.awt.image.BufferedImage], java.awt.image.BufferedImage), cast-from-var2249-to-var2933=([java.awt.image.BufferedImage], java.awt.Image), targetImage/-703132465=([cn.hutool.core.img.Img], java.awt.Image)}
; {var494=cn.hutool.core.img.Img, var115=r0, var1785=f0, var706=$b0, var215=$i5, var2933=java.awt.Image, var2447=$r14, var2350=$r2, var1844=$r1, var2171=$z0, var3768=$r9, var2307=cn.hutool.core.util.NumberUtil, var3408=java.lang.Number, var598=d0, var3536=java.awt.geom.AffineTransform, var294=$r12, var2790=$r10, var2249=java.awt.image.BufferedImage, var914=cn.hutool.core.img.ImgUtil, var704=$r11, var3388=$r13}
; {cn.hutool.core.img.Img=var494, r0=var115, f0=var1785, $b0=var706, $i5=var215, java.awt.Image=var2933, $r14=var2447, $r2=var2350, $r1=var1844, $z0=var2171, $r9=var3768, cn.hutool.core.util.NumberUtil=var2307, java.lang.Number=var3408, d0=var598, java.awt.geom.AffineTransform=var3536, $r12=var294, $r10=var2790, java.awt.image.BufferedImage=var2249, cn.hutool.core.img.ImgUtil=var914, $r11=var704, $r13=var3388}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.core.img.Img;	f0 := @parameter0: float;	$b0 = f0 cmpg 0.0F;	$i5 = (int) $b0;	if $i5 >= 0 goto $r14 = specialinvoke r0.<cn.hutool.core.img.Img: java.awt.Image getValidSrcImg()>();	$r14 = specialinvoke r0.<cn.hutool.core.img.Img: java.awt.Image getValidSrcImg()>();	$r2 = "png";	$r1 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $i1 = virtualinvoke $r14.<java.awt.Image: int getWidth(java.awt.image.ImageObserver)>(null);	$r9 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>(f0);	d0 = staticinvoke <cn.hutool.core.util.NumberUtil: double toDouble(java.lang.Number)>($r9);	$r12 = staticinvoke <java.awt.geom.AffineTransform: java.awt.geom.AffineTransform getScaleInstance(double,double)>(d0, d0);	$r10 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType>;	$r11 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage toBufferedImage(java.awt.Image,java.lang.String)>($r14, $r10);	$r13 = staticinvoke <cn.hutool.core.img.ImgUtil: java.awt.image.BufferedImage transform(java.awt.geom.AffineTransform,java.awt.image.BufferedImage)>($r12, $r11);	r0.<cn.hutool.core.img.Img: java.awt.Image targetImage> = $r13;	goto [?= return r0];	return r0
;block_num 4