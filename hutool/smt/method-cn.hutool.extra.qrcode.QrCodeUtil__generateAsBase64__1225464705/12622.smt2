(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2233 0)
(declare-sort var3460 0)
(declare-sort var3101 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3101_generateAsAsciiArt/1484703223 (String var3460) String)
(declare-fun var3101_txtToBase64/-2051690515 (String) String)
(declare-const null-String String)
(declare-const null-var3460 var3460)
(declare-const var215 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var215 null-String)))
(declare-const var3215 var3460) ; Statement: r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var3215 null-var3460)))
(declare-const var2946 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2946 null-String)))
(define-const var2789 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var873 Int (hashCode/-467973558 var2946)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; } 
(assert (and (not (= var873 115312)) (and (not (= var873 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); } 
(assert (and (= var2789 1) (and (not (= var2789 0)) true))) ; Intersect: Cond: b1 == 1  and Intersect: Negate: Cond: b1 == 0   and Non Conditional  
(define-const var3181 String (var3101_generateAsAsciiArt/1484703223 var215 var3215)) ; Statement: r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2) 
(define-const var1327 String (var3101_txtToBase64/-2051690515 var3181)) ; Statement: r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String txtToBase64(java.lang.String)>(r3) 
 ; Statement: goto [?= return r6] 
(assert true) ; Non Conditional
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var3101_generateAsAsciiArt/1484703223=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), var3101_txtToBase64/-2051690515=([java.lang.String], java.lang.String)}
; {var215=r1, var2233=null_type, var3460=cn.hutool.extra.qrcode.QrConfig, var3215=r2, var2946=r0, var2789=b1, var873=$i0, var3101=cn.hutool.extra.qrcode.QrCodeUtil, var3181=r3, var1327=r6}
; {r1=var215, null_type=var2233, cn.hutool.extra.qrcode.QrConfig=var3460, r2=var3215, r0=var2946, b1=var2789, $i0=var873, cn.hutool.extra.qrcode.QrCodeUtil=var3101, r3=var3181, r6=var1327}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; };	lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); };	r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);	r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String txtToBase64(java.lang.String)>(r3);	goto [?= return r6];	return r6
;block_num 4