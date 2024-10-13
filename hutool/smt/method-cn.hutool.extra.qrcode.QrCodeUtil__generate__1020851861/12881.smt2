(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3475 0)
(declare-sort var2582 0)
(declare-sort var1937 0)
(declare-sort var1759 0)
(declare-sort var3159 0)
(declare-sort var3037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var1937-init () var1937)
(declare-fun <init>/1695002932 (var1937 Int Int) void)
(declare-fun var1759_generateAsSvg/1487644733 (String var1937) String)
(declare-fun arr-var3159-init () (Array Int var3159))
(declare-fun cast-from-String-to-var3159 (String) var3159)
(declare-fun var3037_writeUtf8/-45938270 (var2582 Bool (Array Int var3159)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var2582 var2582)
(declare-const null-__Array__Int__var3159__ (Array Int var3159))
(declare-const var884 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var884 null-String)))
(declare-const var3453 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3453 null-Int)))
(declare-const var343 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var343 null-Int)))
(declare-const var81 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var81 null-String)))
(declare-const var1062 var2582) ; Statement: r4 := @parameter4: java.io.OutputStream 
(assert (not (= var1062 null-var2582)))
(define-const var2678 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var3448 Int (hashCode/-467973558 var81)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); }; } 
(assert (and (not (= var3448 115312)) (and (not (= var3448 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); } 
(assert (and (= var2678 0) true)) ; Intersect: Cond: b3 == 0  and Non Conditional 
(define-const var3958 var1937 var1937-init) ; Statement: $r6 = new cn.hutool.extra.qrcode.QrConfig 
(assert true)
;(assert (<init>/1695002932 var3958 var3453 var343)) ; Statement: specialinvoke $r6.<cn.hutool.extra.qrcode.QrConfig: void <init>(int,int)>(i1, i2) 

(declare-const var3958!1 var1937)
(declare-const var3453!1 Int)
(declare-const var343!1 Int)
(define-const var1378 String (var1759_generateAsSvg/1487644733 var884 var3958!1)) ; Statement: r7 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, $r6) 
(define-const var1841 (Array Int var3159) arr-var3159-init) ; Statement: $r8 = newarray (java.lang.Object)[1] 
(declare-const var1841!1 (Array Int var3159))
(assert (not (= var1841!1 null-__Array__Int__var3159__)))
(assert (= (select var1841!1 0) (cast-from-String-to-var3159 var1378))) ; Statement: $r8[0] = r7 
;(assert (var3037_writeUtf8/-45938270 var1062 (ite (= 1 0) true false) var1841!1)) ; Statement: staticinvoke <cn.hutool.core.io.IoUtil: void writeUtf8(java.io.OutputStream,boolean,java.lang.Object[])>(r4, 0, $r8) 

(declare-const var1062!1 var2582)
(declare-const var2640 Int)
(declare-const var1841!2 (Array Int var3159))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var1937-init=([], cn.hutool.extra.qrcode.QrConfig), <init>/1695002932=([cn.hutool.extra.qrcode.QrConfig, int, int], void), var1759_generateAsSvg/1487644733=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), arr-var3159-init=([], java.lang.Object[]), cast-from-String-to-var3159=([java.lang.String], java.lang.Object), var3037_writeUtf8/-45938270=([java.io.OutputStream, boolean, java.lang.Object[]], void)}
; {var884=r1, var3475=null_type, var3453=i1, var343=i2, var81=r0, var2582=java.io.OutputStream, var1062=r4, var2678=b3, var3448=$i0, var1937=cn.hutool.extra.qrcode.QrConfig, var3958=$r6, var1759=cn.hutool.extra.qrcode.QrCodeUtil, var1378=r7, var3159=java.lang.Object, var1841=$r8, var3037=cn.hutool.core.io.IoUtil, var2640=0}
; {r1=var884, null_type=var3475, i1=var3453, i2=var343, r0=var81, java.io.OutputStream=var2582, r4=var1062, b3=var2678, $i0=var3448, cn.hutool.extra.qrcode.QrConfig=var1937, $r6=var3958, cn.hutool.extra.qrcode.QrCodeUtil=var1759, r7=var1378, java.lang.Object=var3159, $r8=var1841, cn.hutool.core.io.IoUtil=var3037, 0=var2640}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	r0 := @parameter3: java.lang.String;	r4 := @parameter4: java.io.OutputStream;	b3 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); }; };	lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); };	$r6 = new cn.hutool.extra.qrcode.QrConfig;	specialinvoke $r6.<cn.hutool.extra.qrcode.QrConfig: void <init>(int,int)>(i1, i2);	r7 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsSvg(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, $r6);	$r8 = newarray (java.lang.Object)[1];	$r8[0] = r7;	staticinvoke <cn.hutool.core.io.IoUtil: void writeUtf8(java.io.OutputStream,boolean,java.lang.Object[])>(r4, 0, $r8);	goto [?= return];	return
;block_num 4