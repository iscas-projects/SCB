(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2460 0)
(declare-sort var1859 0)
(declare-sort var1604 0)
(declare-sort var1027 0)
(declare-sort var1361 0)
(declare-sort var2846 0)
(declare-sort var2705 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1604_extName/-110974875 (var1859) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1027-init () var1027)
(declare-fun <init>/1695002932 (var1027 Int Int) void)
(declare-fun var1361_generateAsSvg/1487644733 (String var1027) String)
(declare-fun var1604_writeString/1339318823 (String var1859 var2846) var1859)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var1859 var1859)
(declare-const var2705-UTF_8 var2846)
(declare-const var962 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var962 null-String)))
(declare-const var693 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var693 null-Int)))
(declare-const var1579 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var1579 null-Int)))
(declare-const var126 var1859) ; Statement: r0 := @parameter3: java.io.File 
(assert (not (= var126 null-var1859)))
(define-const var2349 String (var1604_extName/-110974875 var126)) ; Statement: r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0) 
(define-const var1247 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3714 Int (hashCode/-467973558 var2349)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); }; } 
(assert (and (not (= var3714 115312)) (and (not (= var3714 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); } 
(assert (and (= var1247 0) true)) ; Intersect: Cond: b3 == 0  and Non Conditional 
(define-const var2669 var1027 var1027-init) ; Statement: $r6 = new cn.hutool.extra.qrcode.QrConfig 
(assert true)
;(assert (<init>/1695002932 var2669 var693 var1579)) ; Statement: specialinvoke $r6.<cn.hutool.extra.qrcode.QrConfig: void <init>(int,int)>(i1, i2) 

(declare-const var2669!1 var1027)
(declare-const var693!1 Int)
(declare-const var1579!1 Int)
(define-const var3624 String (var1361_generateAsSvg/1487644733 var962 var2669!1)) ; Statement: r7 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, $r6) 
(define-const var412 var2846 var2705-UTF_8) ; Statement: $r8 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8> 
;(assert (var1604_writeString/1339318823 var3624 var126 var412)) ; Statement: staticinvoke <cn.hutool.core.io.FileUtil: java.io.File writeString(java.lang.String,java.io.File,java.nio.charset.Charset)>(r7, r0, $r8) 

(declare-const var3624!1 String)
(declare-const var126!1 var1859)
(declare-const var412!1 var2846)
 ; Statement: goto [?= return r0] 
(assert true) ; Non Conditional
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1604_extName/-110974875=([java.io.File], java.lang.String), hashCode/-467973558=([java.lang.String], int), var1027-init=([], cn.hutool.extra.qrcode.QrConfig), <init>/1695002932=([cn.hutool.extra.qrcode.QrConfig, int, int], void), var1361_generateAsSvg/1487644733=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), var1604_writeString/1339318823=([java.lang.String, java.io.File, java.nio.charset.Charset], java.io.File)}
; {var962=r2, var2460=null_type, var693=i1, var1579=i2, var1859=java.io.File, var126=r0, var1604=cn.hutool.core.io.FileUtil, var2349=r1, var1247=b3, var3714=$i0, var1027=cn.hutool.extra.qrcode.QrConfig, var2669=$r6, var1361=cn.hutool.extra.qrcode.QrCodeUtil, var3624=r7, var2846=java.nio.charset.Charset, var2705=java.nio.charset.StandardCharsets, var412=$r8}
; {r2=var962, null_type=var2460, i1=var693, i2=var1579, java.io.File=var1859, r0=var126, cn.hutool.core.io.FileUtil=var1604, r1=var2349, b3=var1247, $i0=var3714, cn.hutool.extra.qrcode.QrConfig=var1027, $r6=var2669, cn.hutool.extra.qrcode.QrCodeUtil=var1361, r7=var3624, java.nio.charset.Charset=var2846, java.nio.charset.StandardCharsets=var2705, $r8=var412}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r2 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	r0 := @parameter3: java.io.File;	r1 = staticinvoke <cn.hutool.core.io.FileUtil: java.lang.String extName(java.io.File)>(r0);	b3 = -1;	$i0 = virtualinvoke r1.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); }; };	lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r3 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r2, i1, i2); };	$r6 = new cn.hutool.extra.qrcode.QrConfig;	specialinvoke $r6.<cn.hutool.extra.qrcode.QrConfig: void <init>(int,int)>(i1, i2);	r7 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r2, $r6);	$r8 = <java.nio.charset.StandardCharsets: java.nio.charset.Charset UTF_8>;	staticinvoke <cn.hutool.core.io.FileUtil: java.io.File writeString(java.lang.String,java.io.File,java.nio.charset.Charset)>(r7, r0, $r8);	goto [?= return r0];	return r0
;block_num 4