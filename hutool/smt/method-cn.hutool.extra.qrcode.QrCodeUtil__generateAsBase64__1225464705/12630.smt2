(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2405 0)
(declare-sort var2652 0)
(declare-sort var2508 0)
(declare-sort var1040 0)
(declare-sort var1603 0)
(declare-sort var127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1040_generate/-1800191517 (String var2652) var2508)
(declare-fun var1603_toBase64DataUri/-576055889 (var127 String) String)
(declare-fun cast-from-var2508-to-var127 (var2508) var127)
(declare-const null-String String)
(declare-const null-var2652 var2652)
(declare-const var361 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var361 null-String)))
(declare-const var3857 var2652) ; Statement: r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var3857 null-var2652)))
(declare-const var3931 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3931 null-String)))
(define-const var3093 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3282 Int (hashCode/-467973558 var3931)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; } 
(assert (and (not (= var3282 115312)) (and (not (= var3282 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); } 
(assert (and (not (= var3093 1)) (and (not (= var3093 0)) true))) ; Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var2809 var2508 (var1040_generate/-1800191517 var361 var3857)) ; Statement: r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2) 
(define-const var1778 String (var1603_toBase64DataUri/-576055889 (cast-from-var2508-to-var127 var2809) var3931)) ; Statement: r6 = staticinvoke <cn.hutool.core.img.ImgUtil: java.lang.String toBase64DataUri(java.awt.Image,java.lang.String)>(r5, r0) 
(assert true) ; Non Conditional
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var1040_generate/-1800191517=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.awt.image.BufferedImage), var1603_toBase64DataUri/-576055889=([java.awt.Image, java.lang.String], java.lang.String), cast-from-var2508-to-var127=([java.awt.image.BufferedImage], java.awt.Image)}
; {var361=r1, var2405=null_type, var2652=cn.hutool.extra.qrcode.QrConfig, var3857=r2, var3931=r0, var3093=b1, var3282=$i0, var2508=java.awt.image.BufferedImage, var1040=cn.hutool.extra.qrcode.QrCodeUtil, var2809=r5, var1603=cn.hutool.core.img.ImgUtil, var127=java.awt.Image, var1778=r6}
; {r1=var361, null_type=var2405, cn.hutool.extra.qrcode.QrConfig=var2652, r2=var3857, r0=var3931, b1=var3093, $i0=var3282, java.awt.image.BufferedImage=var2508, cn.hutool.extra.qrcode.QrCodeUtil=var1040, r5=var2809, cn.hutool.core.img.ImgUtil=var1603, java.awt.Image=var127, r6=var1778}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; };	lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); };	r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);	r6 = staticinvoke <cn.hutool.core.img.ImgUtil: java.lang.String toBase64DataUri(java.awt.Image,java.lang.String)>(r5, r0);	return r6
;block_num 4