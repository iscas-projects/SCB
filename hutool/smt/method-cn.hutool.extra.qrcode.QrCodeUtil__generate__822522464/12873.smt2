(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2729 0)
(declare-sort var3682 0)
(declare-sort var274 0)
(declare-sort var1619 0)
(declare-sort var975 0)
(declare-sort var1805 0)
(declare-sort var1595 0)
(declare-sort var3337 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1619_extName/-110974875 (var274) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1805_generate/-1800191517 (String var3682) var975)
(declare-fun var1595_write/-957939688 (var3337 var274) void)
(declare-fun cast-from-var975-to-var3337 (var975) var3337)
(declare-const null-String String)
(declare-const null-var3682 var3682)
(declare-const null-var274 var274)
(declare-const var3960 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3960 null-String)))
(declare-const var2584 var3682) ; Statement: r3 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var2584 null-var3682)))
(declare-const var3357 var274) ; Statement: r0 := @parameter2: java.io.File 
(assert (not (= var3357 null-var274)))
(define-const var1105 String (var1619_extName/-110974875 var3357)) ; Statement: r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0) 
(define-const var1494 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var307 Int (hashCode/-467973558 var1105)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); }; } 
(assert (and (not (= var307 115312)) (and (not (= var307 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); } 
(assert (and (not (= var1494 1)) (and (not (= var1494 0)) true))) ; Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var2016 var975 (var1805_generate/-1800191517 var3960 var2584)) ; Statement: r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3) 
;(assert (var1595_write/-957939688 (cast-from-var975-to-var3337 var2016) var3357)) ; Statement: staticinvoke <cn.hutool.core.img.ImgUtil: void write(java.awt.Image,java.io.File)>(r8, r0) 

(declare-const var2016!1 var975)
(declare-const var3357!1 var274)
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1619_extName/-110974875=([java.io.File], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1805_generate/-1800191517=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.awt.image.BufferedImage), var1595_write/-957939688=([java.awt.Image, java.io.File], void), cast-from-var975-to-var3337=([java.awt.image.BufferedImage], java.awt.Image)}
; {var3960=r2, var2729=null_type, var3682=cn.hutool.extra.qrcode.QrConfig, var2584=r3, var274=java.io.File, var3357=r0, var1619=cn.hutool.core.io.FileUtil, var1105=r1, var1494=b1, var307=$i0, var975=java.awt.image.BufferedImage, var1805=cn.hutool.extra.qrcode.QrCodeUtil, var2016=r8, var1595=cn.hutool.core.img.ImgUtil, var3337=java.awt.Image}
; {r2=var3960, null_type=var2729, cn.hutool.extra.qrcode.QrConfig=var3682, r3=var2584, java.io.File=var274, r0=var3357, cn.hutool.core.io.FileUtil=var1619, r1=var1105, b1=var1494, $i0=var307, java.awt.image.BufferedImage=var975, cn.hutool.extra.qrcode.QrCodeUtil=var1805, r8=var2016, cn.hutool.core.img.ImgUtil=var1595, java.awt.Image=var3337}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r3 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.io.File;	r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0);	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); }; };	lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); };	r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);	staticinvoke <cn.hutool.core.img.ImgUtil: void write(java.awt.Image,java.io.File)>(r8, r0);	return r0
;block_num 4