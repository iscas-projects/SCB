(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1904 0)
(declare-sort var2524 0)
(declare-sort var1251 0)
(declare-sort var586 0)
(declare-sort var636 0)
(declare-sort var728 0)
(declare-sort var1588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1251_extName/-110974875 (var2524) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var636_generate/-1394465834 (String Int Int) var586)
(declare-fun var728_write/-957939688 (var1588 var2524) void)
(declare-fun cast-from-var586-to-var1588 (var586) var1588)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2524 var2524)
(declare-const var3571 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3571 null-String)))
(declare-const var3589 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3589 null-Int)))
(declare-const var3579 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var3579 null-Int)))
(declare-const var2044 var2524) ; Statement: r0 := @parameter3: java.io.File 
(assert (not (= var2044 null-var2524)))
(define-const var1874 String (var1251_extName/-110974875 var2044)) ; Statement: r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0) 
(define-const var2545 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3368 Int (hashCode/-467973558 var1874)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); }; } 
(assert (and (not (= var3368 115312)) (and (not (= var3368 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); } 
(assert (and (not (= var2545 1)) (and (not (= var2545 0)) true))) ; Intersect: Negate: Cond: b3 == 1   and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var2445 var586 (var636_generate/-1394465834 var3571 var3589 var3579)) ; Statement: r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2) 
;(assert (var728_write/-957939688 (cast-from-var586-to-var1588 var2445) var2044)) ; Statement: staticinvoke <cn.hutool.core.img.ImgUtil: void write(java.awt.Image,java.io.File)>(r9, r0) 

(declare-const var2445!1 var586)
(declare-const var2044!1 var2524)
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1251_extName/-110974875=([java.io.File], java.lang.String), hashCode/-467973558=([java.lang.String], int), var636_generate/-1394465834=([java.lang.String, int, int], java.awt.image.BufferedImage), var728_write/-957939688=([java.awt.Image, java.io.File], void), cast-from-var586-to-var1588=([java.awt.image.BufferedImage], java.awt.Image)}
; {var3571=r2, var1904=null_type, var3589=i1, var3579=i2, var2524=java.io.File, var2044=r0, var1251=cn.hutool.core.io.FileUtil, var1874=r1, var2545=b3, var3368=$i0, var586=java.awt.image.BufferedImage, var636=cn.hutool.extra.qrcode.QrCodeUtil, var2445=r9, var728=cn.hutool.core.img.ImgUtil, var1588=java.awt.Image}
; {r2=var3571, null_type=var1904, i1=var3589, i2=var3579, java.io.File=var2524, r0=var2044, cn.hutool.core.io.FileUtil=var1251, r1=var1874, b3=var2545, $i0=var3368, java.awt.image.BufferedImage=var586, cn.hutool.extra.qrcode.QrCodeUtil=var636, r9=var2445, cn.hutool.core.img.ImgUtil=var728, java.awt.Image=var1588}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	r0 := @parameter3: java.io.File;	r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0);	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); }; };	lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); };	r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2);	staticinvoke <cn.hutool.core.img.ImgUtil: void write(java.awt.Image,java.io.File)>(r9, r0);	return r0
;block_num 4