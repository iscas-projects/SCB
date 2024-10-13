(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3057 0)
(declare-sort var2092 0)
(declare-sort var1880 0)
(declare-sort var1937 0)
(declare-sort var3881 0)
(declare-sort var2373 0)
(declare-sort var2079 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3881_generate/-1800191517 (String var2092) var1937)
(declare-fun var2373_write/1615010862 (var2079 String var1880) void)
(declare-fun cast-from-var1937-to-var2079 (var1937) var2079)
(declare-const null-String String)
(declare-const null-var2092 var2092)
(declare-const null-var1880 var1880)
(declare-const var3469 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3469 null-String)))
(declare-const var3012 var2092) ; Statement: r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var3012 null-var2092)))
(declare-const var2114 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2114 null-String)))
(declare-const var3573 var1880) ; Statement: r4 := @parameter3: java.io.OutputStream 
(assert (not (= var3573 null-var1880)))
(define-const var589 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1912 Int (hashCode/-467973558 var2114)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; } 
(assert (and (not (= var1912 115312)) (and (not (= var1912 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); } 
(assert (and (not (= var589 1)) (and (not (= var589 0)) true))) ; Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var2648 var1937 (var3881_generate/-1800191517 var3469 var3012)) ; Statement: r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2) 
;(assert (var2373_write/1615010862 (cast-from-var1937-to-var2079 var2648) var2114 var3573)) ; Statement: staticinvoke <cn.hutool.core.img.ImgUtil: void write(java.awt.Image,java.lang.String,java.io.OutputStream)>(r8, r0, r4) 

(declare-const var2648!1 var1937)
(declare-const var2114!1 String)
(declare-const var3573!1 var1880)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var3881_generate/-1800191517=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.awt.image.BufferedImage), var2373_write/1615010862=([java.awt.Image, java.lang.String, java.io.OutputStream], void), cast-from-var1937-to-var2079=([java.awt.image.BufferedImage], java.awt.Image)}
; {var3469=r1, var3057=null_type, var2092=cn.hutool.extra.qrcode.QrConfig, var3012=r2, var2114=r0, var1880=java.io.OutputStream, var3573=r4, var589=b1, var1912=$i0, var1937=java.awt.image.BufferedImage, var3881=cn.hutool.extra.qrcode.QrCodeUtil, var2648=r8, var2373=cn.hutool.core.img.ImgUtil, var2079=java.awt.Image}
; {r1=var3469, null_type=var3057, cn.hutool.extra.qrcode.QrConfig=var2092, r2=var3012, r0=var2114, java.io.OutputStream=var1880, r4=var3573, b1=var589, $i0=var1912, java.awt.image.BufferedImage=var1937, cn.hutool.extra.qrcode.QrCodeUtil=var3881, r8=var2648, cn.hutool.core.img.ImgUtil=var2373, java.awt.Image=var2079}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.lang.String;	r4 := @parameter3: java.io.OutputStream;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; };	lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); };	r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);	staticinvoke <cn.hutool.core.img.ImgUtil: void write(java.awt.Image,java.lang.String,java.io.OutputStream)>(r8, r0, r4);	return
;block_num 4