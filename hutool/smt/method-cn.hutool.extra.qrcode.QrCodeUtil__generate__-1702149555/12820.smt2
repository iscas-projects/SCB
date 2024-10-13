(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3072 0)
(declare-sort var2809 0)
(declare-sort var3607 0)
(declare-sort var3992 0)
(declare-sort var125 0)
(declare-sort var2297 0)
(declare-sort var1655 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3607_extName/-110974875 (var2809) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3992-init () var3992)
(declare-fun <init>/1695002932 (var3992 Int Int) void)
(declare-fun var125_generateAsAsciiArt/1484703223 (String var3992) String)
(declare-fun var3607_writeString/1339318823 (String var2809 var2297) var2809)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2809 var2809)
(declare-const var1655-UTF_8 var2297)
(declare-const var2823 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2823 null-String)))
(declare-const var3513 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3513 null-Int)))
(declare-const var1428 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1428 null-Int)))
(declare-const var3204 var2809) ; Statement: r0 := @parameter3: java.io.File 
(assert (not (= var3204 null-var2809)))
(define-const var2451 String (var3607_extName/-110974875 var3204)) ; Statement: r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0) 
(define-const var3439 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var1607 Int (hashCode/-467973558 var2451)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); }; } 
(assert (and (not (= var1607 115312)) (and (not (= var1607 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); } 
(assert (and (= var3439 1) (and (not (= var3439 0)) true))) ; Intersect: Cond: b3 == 1  and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var1325 var3992 var3992-init) ; Statement: $r3 = new cn.hutool.extra.qrcode.QrConfig 
(assert true)
;(assert (<init>/1695002932 var1325 var3513 var1428)) ; Statement: specialinvoke $r3.<cn.hutool.extra.qrcode.QrConfig: void <init>(int,int)>(i1, i2) 

(declare-const var1325!1 var3992)
(declare-const var3513!1 Int)
(declare-const var1428!1 Int)
(define-const var3816 String (var125_generateAsAsciiArt/1484703223 var2823 var1325!1)) ; Statement: r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, $r3) 
(define-const var1435 var2297 var1655-UTF_8) ; Statement: $r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
;(assert (var3607_writeString/1339318823 var3816 var3204 var1435)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: java.io.File writeString(java.lang.String,java.io.File,java.nio.charset.Charset)>(r4, r0, $r5) 

(declare-const var3816!1 String)
(declare-const var3204!1 var2809)
(declare-const var1435!1 var2297)
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3607_extName/-110974875=([java.io.File], java.lang.String), hashCode/-467973558=([java.lang.String], int), var3992-init=([], cn.hutool.extra.qrcode.QrConfig), <init>/1695002932=([cn.hutool.extra.qrcode.QrConfig, int, int], void), var125_generateAsAsciiArt/1484703223=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), var3607_writeString/1339318823=([java.lang.String, java.io.File, java.nio.charset.Charset], java.io.File)}
; {var2823=r2, var3072=null_type, var3513=i1, var1428=i2, var2809=java.io.File, var3204=r0, var3607=cn.hutool.core.io.FileUtil, var2451=r1, var3439=b3, var1607=$i0, var3992=cn.hutool.extra.qrcode.QrConfig, var1325=$r3, var125=cn.hutool.extra.qrcode.QrCodeUtil, var3816=r4, var2297=java.nio.charset.Charset, var1655=java.nio.charset.StandardCharsets, var1435=$r5}
; {r2=var2823, null_type=var3072, i1=var3513, i2=var1428, java.io.File=var2809, r0=var3204, cn.hutool.core.io.FileUtil=var3607, r1=var2451, b3=var3439, $i0=var1607, cn.hutool.extra.qrcode.QrConfig=var3992, $r3=var1325, cn.hutool.extra.qrcode.QrCodeUtil=var125, r4=var3816, java.nio.charset.Charset=var2297, java.nio.charset.StandardCharsets=var1655, $r5=var1435}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	r0 := @parameter3: java.io.File;	r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0);	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); }; };	lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); };	$r3 = new cn.hutool.extra.qrcode.QrConfig;	specialinvoke $r3.<cn.hutool.extra.qrcode.QrConfig: void <init>(int,int)>(i1, i2);	r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, $r3);	$r5 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	staticinvoke <cn.hutool.core.io.FileUtil: java.io.File writeString(java.lang.String,java.io.File,java.nio.charset.Charset)>(r4, r0, $r5);	goto [?= return r0];	return r0
;block_num 4