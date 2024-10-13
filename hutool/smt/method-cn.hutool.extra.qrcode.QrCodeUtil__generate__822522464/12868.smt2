(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3399 0)
(declare-sort var667 0)
(declare-sort var772 0)
(declare-sort var3880 0)
(declare-sort var735 0)
(declare-sort var2813 0)
(declare-sort var2688 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3880_extName/-110974875 (var772) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var735_generateAsAsciiArt/1484703223 (String var667) String)
(declare-fun var3880_writeString/1339318823 (String var772 var2813) var772)
(declare-const null-String String)
(declare-const null-var667 var667)
(declare-const null-var772 var772)
(declare-const var2688-UTF_8 var2813)
(declare-const var3444 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3444 null-String)))
(declare-const var3583 var667) ; Statement: r3 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var3583 null-var667)))
(declare-const var728 var772) ; Statement: r0 := @parameter2: java.io.File 
(assert (not (= var728 null-var772)))
(define-const var2030 String (var3880_extName/-110974875 var728)) ; Statement: r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0) 
(define-const var2226 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var3310 Int (hashCode/-467973558 var2030)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); }; } 
(assert (and (not (= var3310 115312)) (and (not (= var3310 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); } 
(assert (and (= var2226 1) (and (not (= var2226 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var844 String (var735_generateAsAsciiArt/1484703223 var3444 var3583)) ; Statement: r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3) 
(define-const var724 var2813 var2688-UTF_8) ; Statement: $r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
;(assert (var3880_writeString/1339318823 var844 var728 var724)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: java.io.File writeString(java.lang.String,java.io.File,java.nio.charset.Charset)>(r4, r0, $r5) 

(declare-const var844!1 String)
(declare-const var728!1 var772)
(declare-const var724!1 var2813)
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3880_extName/-110974875=([java.io.File], java.lang.String), hashCode/-467973558=([java.lang.String], int), var735_generateAsAsciiArt/1484703223=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), var3880_writeString/1339318823=([java.lang.String, java.io.File, java.nio.charset.Charset], java.io.File)}
; {var3444=r2, var3399=null_type, var667=cn.hutool.extra.qrcode.QrConfig, var3583=r3, var772=java.io.File, var728=r0, var3880=cn.hutool.core.io.FileUtil, var2030=r1, var2226=b1, var3310=$i0, var735=cn.hutool.extra.qrcode.QrCodeUtil, var844=r4, var2813=java.nio.charset.Charset, var2688=java.nio.charset.StandardCharsets, var724=$r5}
; {r2=var3444, null_type=var3399, cn.hutool.extra.qrcode.QrConfig=var667, r3=var3583, java.io.File=var772, r0=var728, cn.hutool.core.io.FileUtil=var3880, r1=var2030, b1=var2226, $i0=var3310, cn.hutool.extra.qrcode.QrCodeUtil=var735, r4=var844, java.nio.charset.Charset=var2813, java.nio.charset.StandardCharsets=var2688, $r5=var724}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r3 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.io.File;	r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0);	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); }; };	lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); };	r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);	$r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	staticinvoke <cn.hutool.core.io.FileUtil: java.io.File writeString(java.lang.String,java.io.File,java.nio.charset.Charset)>(r4, r0, $r5);	goto [?= return r0];	return r0
;block_num 4