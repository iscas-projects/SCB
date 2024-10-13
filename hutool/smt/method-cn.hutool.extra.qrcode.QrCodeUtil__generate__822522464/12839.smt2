(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2562 0)
(declare-sort var3334 0)
(declare-sort var1342 0)
(declare-sort var3702 0)
(declare-sort var3761 0)
(declare-sort var193 0)
(declare-sort var2954 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3702_extName/-110974875 (var1342) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3761_generateAsSvg/1487644733 (String var3334) String)
(declare-fun var3702_writeString/1339318823 (String var1342 var193) var1342)
(declare-const null-String String)
(declare-const null-var3334 var3334)
(declare-const null-var1342 var1342)
(declare-const var2954-UTF_8 var193)
(declare-const var3363 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3363 null-String)))
(declare-const var163 var3334) ; Statement: r3 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var163 null-var3334)))
(declare-const var863 var1342) ; Statement: r0 := @parameter2: java.io.File 
(assert (not (= var863 null-var1342)))
(define-const var1657 String (var3702_extName/-110974875 var863)) ; Statement: r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0) 
(define-const var1413 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1637 Int (hashCode/-467973558 var1657)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); }; } 
(assert (and (not (= var1637 115312)) (and (not (= var1637 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); } 
(assert (and (= var1413 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var554 String (var3761_generateAsSvg/1487644733 var3363 var163)) ; Statement: r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3) 
(define-const var2592 var193 var2954-UTF_8) ; Statement: $r7 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
;(assert (var3702_writeString/1339318823 var554 var863 var2592)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: java.io.File writeString(java.lang.String,java.io.File,java.nio.charset.Charset)>(r6, r0, $r7) 

(declare-const var554!1 String)
(declare-const var863!1 var1342)
(declare-const var2592!1 var193)
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3702_extName/-110974875=([java.io.File], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3761_generateAsSvg/1487644733=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), var3702_writeString/1339318823=([java.lang.String, java.io.File, java.nio.charset.Charset], java.io.File)}
; {var3363=r2, var2562=null_type, var3334=cn.hutool.extra.qrcode.QrConfig, var163=r3, var1342=java.io.File, var863=r0, var3702=cn.hutool.core.io.FileUtil, var1657=r1, var1413=b1, var1637=$i0, var3761=cn.hutool.extra.qrcode.QrCodeUtil, var554=r6, var193=java.nio.charset.Charset, var2954=java.nio.charset.StandardCharsets, var2592=$r7}
; {r2=var3363, null_type=var2562, cn.hutool.extra.qrcode.QrConfig=var3334, r3=var163, java.io.File=var1342, r0=var863, cn.hutool.core.io.FileUtil=var3702, r1=var1657, b1=var1413, $i0=var1637, cn.hutool.extra.qrcode.QrCodeUtil=var3761, r6=var554, java.nio.charset.Charset=var193, java.nio.charset.StandardCharsets=var2954, $r7=var2592}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r3 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.io.File;	r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0);	b1 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); }; };	lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     case 1: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3); };	r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, r3);	$r7 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	staticinvoke <cn.hutool.core.io.FileUtil: java.io.File writeString(java.lang.String,java.io.File,java.nio.charset.Charset)>(r6, r0, $r7);	goto [?= return r0];	return r0
;block_num 4