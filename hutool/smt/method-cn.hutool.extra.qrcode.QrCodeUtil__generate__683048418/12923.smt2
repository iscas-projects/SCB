(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3940 0)
(declare-sort var1353 0)
(declare-sort var2586 0)
(declare-sort var3264 0)
(declare-sort var1580 0)
(declare-sort var3076 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3264_generateAsSvg/1487644733 (String var1353) String)
(declare-fun arr-var1580-init () (Array Int var1580))
(declare-fun cast-from-String-to-var1580 (String) var1580)
(declare-fun var3076_writeUtf8/-45938270 (var2586 Bool (Array Int var1580)) void)
(declare-const null-String String)
(declare-const null-var1353 var1353)
(declare-const null-var2586 var2586)
(declare-const null-__Array__Int__var1580__ (Array Int var1580))
(declare-const var3578 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3578 null-String)))
(declare-const var3398 var1353) ; Statement: r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var3398 null-var1353)))
(declare-const var3968 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3968 null-String)))
(declare-const var2778 var2586) ; Statement: r4 := @parameter3: java.io.OutputStream 
(assert (not (= var2778 null-var2586)))
(define-const var3525 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2595 Int (hashCode/-467973558 var3968)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; } 
(assert (and (not (= var2595 115312)) (and (not (= var2595 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); } 
(assert (and (= var3525 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var3911 String (var3264_generateAsSvg/1487644733 var3578 var3398)) ; Statement: r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2) 
(define-const var2884 (Array Int var1580) arr-var1580-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(declare-const var2884!1 (Array Int var1580))
(assert (not (= var2884!1 null-__Array__Int__var1580__)))
(assert (= (select var2884!1 0) (cast-from-String-to-var1580 var3911))) ; Statement: $r7[0] = r6 
;(assert (var3076_writeUtf8/-45938270 var2778 (ite (= 1 0) true false) var2884!1)) ; Statement: staticinvoke <cn.hutool.core.io.IoUtil: void writeUtf8(java.io.OutputStream,boolean,java.lang.Object[])>(r4, 0, $r7) 

(declare-const var2778!1 var2586)
(declare-const var3143 Int)
(declare-const var2884!2 (Array Int var1580))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var3264_generateAsSvg/1487644733=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), arr-var1580-init=([], java.lang.Object[]), cast-from-String-to-var1580=([java.lang.String], java.lang.Object), var3076_writeUtf8/-45938270=([java.io.OutputStream, boolean, java.lang.Object[]], void)}
; {var3578=r1, var3940=null_type, var1353=cn.hutool.extra.qrcode.QrConfig, var3398=r2, var3968=r0, var2586=java.io.OutputStream, var2778=r4, var3525=b1, var2595=$i0, var3264=cn.hutool.extra.qrcode.QrCodeUtil, var3911=r6, var1580=java.lang.Object, var2884=$r7, var3076=cn.hutool.core.io.IoUtil, var3143=0}
; {r1=var3578, null_type=var3940, cn.hutool.extra.qrcode.QrConfig=var1353, r2=var3398, r0=var3968, java.io.OutputStream=var2586, r4=var2778, b1=var3525, $i0=var2595, cn.hutool.extra.qrcode.QrCodeUtil=var3264, r6=var3911, java.lang.Object=var1580, $r7=var2884, cn.hutool.core.io.IoUtil=var3076, 0=var3143}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.lang.String;	r4 := @parameter3: java.io.OutputStream;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; };	lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); };	r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);	$r7 = newarray (java.lang.Object)[1];	$r7[0] = r6;	staticinvoke <cn.hutool.core.io.IoUtil: void writeUtf8(java.io.OutputStream,boolean,java.lang.Object[])>(r4, 0, $r7);	goto [?= return];	return
;block_num 4