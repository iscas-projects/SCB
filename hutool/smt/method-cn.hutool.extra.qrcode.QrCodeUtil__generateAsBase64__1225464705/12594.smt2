(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2008 0)
(declare-sort var3668 0)
(declare-sort var1856 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1856_generateAsSvg/1487644733 (String var3668) String)
(declare-fun var1856_svgToBase64/-137634951 (String) String)
(declare-const null-String String)
(declare-const null-var3668 var3668)
(declare-const var2572 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2572 null-String)))
(declare-const var3302 var3668) ; Statement: r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig 
(assert (not (= var3302 null-var3668)))
(declare-const var3219 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var3219 null-String)))
(define-const var3944 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2395 Int (hashCode/-467973558 var3219)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; } 
(assert (and (not (= var2395 115312)) (and (not (= var2395 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); } 
(assert (and (= var3944 0) true)) ; Intersect: Cond: b1 == 0  and Non Conditional 
(define-const var1872 String (var1856_generateAsSvg/1487644733 var2572 var3302)) ; Statement: r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2) 
(define-const var114 String (var1856_svgToBase64/-137634951 var1872)) ; Statement: r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String svgToBase64(java.lang.String)>(r4) 
 ; Statement: goto [?= return r6] 
(assert true) ; Non Conditional
 ; Statement: return r6 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var1856_generateAsSvg/1487644733=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), var1856_svgToBase64/-137634951=([java.lang.String], java.lang.String)}
; {var2572=r1, var2008=null_type, var3668=cn.hutool.extra.qrcode.QrConfig, var3302=r2, var3219=r0, var3944=b1, var2395=$i0, var1856=cn.hutool.extra.qrcode.QrCodeUtil, var1872=r4, var114=r6}
; {r1=var2572, null_type=var2008, cn.hutool.extra.qrcode.QrConfig=var3668, r2=var3302, r0=var3219, b1=var3944, $i0=var2395, cn.hutool.extra.qrcode.QrCodeUtil=var1856, r4=var1872, r6=var114}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r2 := @parameter1: cn.hutool.extra.qrcode.QrConfig;	r0 := @parameter2: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); }; };	lookupswitch(b1) {     case 0: goto r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     case 1: goto r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);     default: goto r5 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2); };	r4 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, r2);	r6 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String svgToBase64(java.lang.String)>(r4);	goto [?= return r6];	return r6
;block_num 4