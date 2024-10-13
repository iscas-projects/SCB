(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1680 0)
(declare-sort var23 0)
(declare-sort var3667 0)
(declare-sort var22 0)
(declare-sort var3374 0)
(declare-sort var3111 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var22_generateAsAsciiArt/1484703223 (String var23) String)
(declare-fun arr-var3374-init () (Array Int var3374))
(declare-fun cast-from-String-to-var3374 (String) var3374)
(declare-fun var3111_writeUtf8/-45938270 (var3667 Bool (Array Int var3374)) void)
(declare-const null-String String)
(declare-const null-var23 var23)
(declare-const null-var3667 var3667)
(declare-const null-__Array__Int__var3374__ (Array Int var3374))
(declare-const var171 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var171 null-String)))
(declare-const var1769 var23) ; Statement: r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var1769 null-var23)))
(declare-const var1677 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1677 null-String)))
(declare-const var1904 var3667) ; Statement: r4 := @parameter3: java.io.OutputStream 
(assert (not (= var1904 null-var3667)))
(define-const var282 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var1424 Int (hashCode/-467973558 var1677)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; } 
(assert (and (not (= var1424 115312)) (and (not (= var1424 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); } 
(assert (and (= var282 1) (and (not (= var282 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var2765 String (var22_generateAsAsciiArt/1484703223 var171 var1769)) ; Statement: r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2) 
(define-const var1909 (Array Int var3374) arr-var3374-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var1909!1 (Array Int var3374))
(assert (not (= var1909!1 null-__Array__Int__var3374__)))
(assert (= (select var1909!1 0) (cast-from-String-to-var3374 var2765))) ; Statement: $r5[0] = r3 
;(assert (var3111_writeUtf8/-45938270 var1904 (ite (= 1 0) true false) var1909!1)) ; Statement: staticinvoke <cn.hutool.core.io.IoUtil: void writeUtf8(java.io.OutputStream,boolean,java.lang.Object[])>(r4, 0, $r5) 

(declare-const var1904!1 var3667)
(declare-const var1564 Int)
(declare-const var1909!2 (Array Int var3374))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var22_generateAsAsciiArt/1484703223=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), arr-var3374-init=([], java.lang.Object[]), cast-from-String-to-var3374=([java.lang.String], java.lang.Object), var3111_writeUtf8/-45938270=([java.io.OutputStream, boolean, java.lang.Object[]], void)}
; {var171=r1, var1680=null_type, var23=cn.hutool.extra.qrcode.QrConfig, var1769=r2, var1677=r0, var3667=java.io.OutputStream, var1904=r4, var282=b1, var1424=$i0, var22=cn.hutool.extra.qrcode.QrCodeUtil, var2765=r3, var3374=java.lang.Object, var1909=$r5, var3111=cn.hutool.core.io.IoUtil, var1564=0}
; {r1=var171, null_type=var1680, cn.hutool.extra.qrcode.QrConfig=var23, r2=var1769, r0=var1677, java.io.OutputStream=var3667, r4=var1904, b1=var282, $i0=var1424, cn.hutool.extra.qrcode.QrCodeUtil=var22, r3=var2765, java.lang.Object=var3374, $r5=var1909, cn.hutool.core.io.IoUtil=var3111, 0=var1564}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.lang.String;	r4 := @parameter3: java.io.OutputStream;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; };	lookupswitch(b1) {     case 0: goto r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r8 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); };	r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);	$r5 = newarray (java.lang.Object)[1];	$r5[0] = r3;	staticinvoke <cn.hutool.core.io.IoUtil: void writeUtf8(java.io.OutputStream,boolean,java.lang.Object[])>(r4, 0, $r5);	goto [?= return];	return
;block_num 4