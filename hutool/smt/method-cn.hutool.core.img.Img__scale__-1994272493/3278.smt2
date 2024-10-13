(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1031 0)
(declare-sort var510 0)
(declare-sort var3239 0)
(declare-sort var1796 0)
(declare-sort var3648 0)
(declare-sort var508 0)
(declare-sort var2055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun getValidSrcImg/632871976 (var1031) var510)
(declare-fun targetImageType/-703132465 (var1031) String)
(declare-fun getWidth/-1493219075 (var510 var3239) Int)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun Float32_valueOf/-1292433465 (Float32) Float32)
(declare-fun var3648_mul/347495896 (var508 var508) var1796)
(declare-fun cast-from-Int-to-var508 (Int) var508)
(declare-fun cast-from-Float32-to-var508 (Float32) var508)
(declare-fun intValue/1580253757 (var1796) Int)
(declare-fun getHeight/-1529524492 (var510 var3239) Int)
(declare-fun scale/34929001 (var1031 Int Int) var1031)
(declare-const null-var1031 var1031)
(declare-const null-Float32 Float32)
(declare-const null-NullType var2055)
(declare-const null-var3239 var3239)
(declare-const var1445 var1031) ; Statement: r0 := @this: cn.hutool.core.img.Img 
(assert (not (= var1445 null-var1031)))
(declare-const var2288 Float32) ; Statement: f0 := @parameter0: float 
(assert (not (= var2288 null-Float32)))
(define-const var3595 Int (ite (fp.gt var2288 ((_ to_fp 8 24) #x00000000)) 1 (ite (fp.lt var2288 ((_ to_fp 8 24) #x00000000)) (- 1) 0))) ; Statement: $b0 = f0 cmpg 0.0F 
(define-const var1330 Int (cast-from-Int-to-Int var3595)) ; Statement: $i5 = (int) $b0 
 ; Statement: if $i5 >= 0 goto $r14 = specialinvoke r0.<cn.hutool.core.img.Img: java.awt.Image getValidSrcImg()>() 
(assert (>= var1330 0)) ; Cond: $i5 >= 0 
(assert true)
(define-const var2867 var510 (getValidSrcImg/632871976 var1445)) ; Statement: $r14 = specialinvoke r0.<cn.hutool.core.img.Img: java.awt.Image getValidSrcImg()>() 
(define-const var827 String "png") ; Statement: $r2 = "png" 
(define-const var2543 String (targetImageType/-703132465 var1445)) ; Statement: $r1 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType> 
(assert true)
(define-const var3083 Bool (= var827 var2543)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $i1 = virtualinvoke $r14.<java.awt.Image: int getWidth(java.awt.image.ImageObserver)>(null) 
(assert (= (ite var3083 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2275 Int (getWidth/-1493219075 var2867 null-var3239)) ; Statement: $i1 = virtualinvoke $r14.<java.awt.Image: int getWidth(java.awt.image.ImageObserver)>(null) 
(define-const var33 Int (Int_valueOf/-1371140006 var2275)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1) 
(define-const var421 Float32 (Float32_valueOf/-1292433465 var2288)) ; Statement: $r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>(f0) 
(define-const var1166 var1796 (var3648_mul/347495896 (cast-from-Int-to-var508 var33) (cast-from-Float32-to-var508 var421))) ; Statement: $r5 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal mul(java.lang.Number,java.lang.Number)>($r4, $r3) 
(assert true)
(define-const var3330 Int (intValue/1580253757 var1166)) ; Statement: i4 = virtualinvoke $r5.<java.math.BigDecimal: int intValue()>() 
(assert true)
(define-const var353 Int (getHeight/-1529524492 var2867 null-var3239)) ; Statement: $i2 = virtualinvoke $r14.<java.awt.Image: int getHeight(java.awt.image.ImageObserver)>(null) 
(define-const var1521 Int (Int_valueOf/-1371140006 var353)) ; Statement: $r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2) 
(define-const var3688 Float32 (Float32_valueOf/-1292433465 var2288)) ; Statement: $r6 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>(f0) 
(define-const var1679 var1796 (var3648_mul/347495896 (cast-from-Int-to-var508 var1521) (cast-from-Float32-to-var508 var3688))) ; Statement: $r8 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal mul(java.lang.Number,java.lang.Number)>($r7, $r6) 
(assert true)
(define-const var1698 Int (intValue/1580253757 var1679)) ; Statement: i3 = virtualinvoke $r8.<java.math.BigDecimal: int intValue()>() 
(assert true)
;(assert (scale/34929001 var1445 var3330 var1698)) ; Statement: virtualinvoke r0.<cn.hutool.core.img.Img: cn.hutool.core.img.Img scale(int,int)>(i4, i3) 

(declare-const var1445!1 var1031)
(declare-const var3330!1 Int)
(declare-const var1698!1 Int)
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([byte], int), getValidSrcImg/632871976=([cn.hutool.core.img.Img], java.awt.Image), targetImageType/-703132465=([cn.hutool.core.img.Img], java.lang.String), getWidth/-1493219075=([java.awt.Image, java.awt.image.ImageObserver], int), Int_valueOf/-1371140006=([int], java.lang.Integer), Float32_valueOf/-1292433465=([float], java.lang.Float), var3648_mul/347495896=([java.lang.Number, java.lang.Number], java.math.BigDecimal), cast-from-Int-to-var508=([java.lang.Integer], java.lang.Number), cast-from-Float32-to-var508=([java.lang.Float], java.lang.Number), intValue/1580253757=([java.math.BigDecimal], int), getHeight/-1529524492=([java.awt.Image, java.awt.image.ImageObserver], int), scale/34929001=([cn.hutool.core.img.Img, int, int], cn.hutool.core.img.Img)}
; {var1031=cn.hutool.core.img.Img, var1445=r0, var2288=f0, var3595=$b0, var1330=$i5, var510=java.awt.Image, var2867=$r14, var827=$r2, var2543=$r1, var3083=$z0, var3239=java.awt.image.ImageObserver, var2275=$i1, var33=$r4, var421=$r3, var1796=java.math.BigDecimal, var3648=cn.hutool.core.util.NumberUtil, var508=java.lang.Number, var1166=$r5, var3330=i4, var353=$i2, var1521=$r7, var3688=$r6, var1679=$r8, var1698=i3, var2055=null_type}
; {cn.hutool.core.img.Img=var1031, r0=var1445, f0=var2288, $b0=var3595, $i5=var1330, java.awt.Image=var510, $r14=var2867, $r2=var827, $r1=var2543, $z0=var3083, java.awt.image.ImageObserver=var3239, $i1=var2275, $r4=var33, $r3=var421, java.math.BigDecimal=var1796, cn.hutool.core.util.NumberUtil=var3648, java.lang.Number=var508, $r5=var1166, i4=var3330, $i2=var353, $r7=var1521, $r6=var3688, $r8=var1679, i3=var1698, null_type=var2055}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: cn.hutool.core.img.Img;	f0 := @parameter0: float;	$b0 = f0 cmpg 0.0F;	$i5 = (int) $b0;	if $i5 >= 0 goto $r14 = specialinvoke r0.<cn.hutool.core.img.Img: java.awt.Image getValidSrcImg()>();	$r14 = specialinvoke r0.<cn.hutool.core.img.Img: java.awt.Image getValidSrcImg()>();	$r2 = "png";	$r1 = r0.<cn.hutool.core.img.Img: java.lang.String targetImageType>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $i1 = virtualinvoke $r14.<java.awt.Image: int getWidth(java.awt.image.ImageObserver)>(null);	$i1 = virtualinvoke $r14.<java.awt.Image: int getWidth(java.awt.image.ImageObserver)>(null);	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i1);	$r3 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>(f0);	$r5 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal mul(java.lang.Number,java.lang.Number)>($r4, $r3);	i4 = virtualinvoke $r5.<java.math.BigDecimal: int intValue()>();	$i2 = virtualinvoke $r14.<java.awt.Image: int getHeight(java.awt.image.ImageObserver)>(null);	$r7 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>($i2);	$r6 = staticinvoke <java.lang.Float: java.lang.Float valueOf(float)>(f0);	$r8 = staticinvoke <cn.hutool.core.util.NumberUtil: java.math.BigDecimal mul(java.lang.Number,java.lang.Number)>($r7, $r6);	i3 = virtualinvoke $r8.<java.math.BigDecimal: int intValue()>();	virtualinvoke r0.<cn.hutool.core.img.Img: cn.hutool.core.img.Img scale(int,int)>(i4, i3);	return r0
;block_num 4