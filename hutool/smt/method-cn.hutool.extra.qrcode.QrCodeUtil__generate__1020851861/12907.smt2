(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1495 0)
(declare-sort var3401 0)
(declare-sort var247 0)
(declare-sort var3898 0)
(declare-sort var1374 0)
(declare-sort var860 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var247-init () var247)
(declare-fun <init>/1695002932 (var247 Int Int) void)
(declare-fun var3898_generateAsAsciiArt/1484703223 (String var247) String)
(declare-fun arr-var1374-init () (Array Int var1374))
(declare-fun cast-from-String-to-var1374 (String) var1374)
(declare-fun var860_writeUtf8/-45938270 (var3401 Bool (Array Int var1374)) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3401 var3401)
(declare-const null-__Array__Int__var1374__ (Array Int var1374))
(declare-const var3298 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3298 null-String)))
(declare-const var2732 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2732 null-Int)))
(declare-const var450 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var450 null-Int)))
(declare-const var2551 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var2551 null-String)))
(declare-const var2986 var3401) ; Statement: r4 := @parameter4: java.io.OutputStream 
(assert (not (= var2986 null-var3401)))
(define-const var3733 Int (- 1)) ; Statement: b3 = -1 
(assert true)
(define-const var550 Int (hashCode/-467973558 var2551)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); }; } 
(assert (and (not (= var550 115312)) (and (not (= var550 114276)) true))) ; Intersect: Negate: Cond: $i0 == 115312   and Intersect: Negate: Cond: $i0 == 114276   and Non Conditional  
 ; Statement: lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); } 
(assert (and (= var3733 1) (and (not (= var3733 0)) true))) ; Intersect: Cond: b3 == 1  and Intersect: Negate: Cond: b3 == 0   and Non Conditional  
(define-const var771 var247 var247-init) ; Statement: $r2 = new cn.hutool.extra.qrcode.QrConfig 
(assert true)
;(assert (<init>/1695002932 var771 var2732 var450)) ; Statement: specialinvoke $r2.<cn.hutool.extra.qrcode.QrConfig: void <init>(int,int)>(i1, i2) 

(declare-const var771!1 var247)
(declare-const var2732!1 Int)
(declare-const var450!1 Int)
(define-const var2872 String (var3898_generateAsAsciiArt/1484703223 var3298 var771!1)) ; Statement: r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, $r2) 
(define-const var3306 (Array Int var1374) arr-var1374-init) ; Statement: $r5 = newarray (java.lang.Object)[1] 
(declare-const var3306!1 (Array Int var1374))
(assert (not (= var3306!1 null-__Array__Int__var1374__)))
(assert (= (select var3306!1 0) (cast-from-String-to-var1374 var2872))) ; Statement: $r5[0] = r3 
;(assert (var860_writeUtf8/-45938270 var2986 (ite (= 1 0) true false) var3306!1)) ; Statement: staticinvoke <cn.hutool.core.io.IoUtil: void writeUtf8(java.io.OutputStream,boolean,java.lang.Object[])>(r4, 0, $r5) 

(declare-const var2986!1 var3401)
(declare-const var2927 Int)
(declare-const var3306!2 (Array Int var1374))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var247-init=([], cn.hutool.extra.qrcode.QrConfig), <init>/1695002932=([cn.hutool.extra.qrcode.QrConfig, int, int], void), var3898_generateAsAsciiArt/1484703223=([java.lang.String, cn.hutool.extra.qrcode.QrConfig], java.lang.String), arr-var1374-init=([], java.lang.Object[]), cast-from-String-to-var1374=([java.lang.String], java.lang.Object), var860_writeUtf8/-45938270=([java.io.OutputStream, boolean, java.lang.Object[]], void)}
; {var3298=r1, var1495=null_type, var2732=i1, var450=i2, var2551=r0, var3401=java.io.OutputStream, var2986=r4, var3733=b3, var550=$i0, var247=cn.hutool.extra.qrcode.QrConfig, var771=$r2, var3898=cn.hutool.extra.qrcode.QrCodeUtil, var2872=r3, var1374=java.lang.Object, var3306=$r5, var860=cn.hutool.core.io.IoUtil, var2927=0}
; {r1=var3298, null_type=var1495, i1=var2732, i2=var450, r0=var2551, java.io.OutputStream=var3401, r4=var2986, b3=var3733, $i0=var550, cn.hutool.extra.qrcode.QrConfig=var247, $r2=var771, cn.hutool.extra.qrcode.QrCodeUtil=var3898, r3=var2872, java.lang.Object=var1374, $r5=var3306, cn.hutool.core.io.IoUtil=var860, 0=var2927}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i2 := @parameter2: int;	r0 := @parameter3: java.lang.String;	r4 := @parameter4: java.io.OutputStream;	b3 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 114276: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("svg");     case 115312: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("txt");     default: goto lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); }; };	lookupswitch(b3) {     case 0: goto $r6 = new cn.hutool.extra.qrcode.QrConfig;     case 1: goto $r2 = new cn.hutool.extra.qrcode.QrConfig;     default: goto r9 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.awt.image.BufferedImage generate(java.lang.String,int,int)>(r1, i1, i2); };	$r2 = new cn.hutool.extra.qrcode.QrConfig;	specialinvoke $r2.<cn.hutool.extra.qrcode.QrConfig: void <init>(int,int)>(i1, i2);	r3 = staticinvoke <cn.hutool.extra.qrcode.QrCodeUtil: java.lang.String generateAsAsciiArt(java.lang.String,cn.hutool.extra.qrcode.QrConfig)>(r1, $r2);	$r5 = newarray (java.lang.Object)[1];	$r5[0] = r3;	staticinvoke <cn.hutool.core.io.IoUtil: void writeUtf8(java.io.OutputStream,boolean,java.lang.Object[])>(r4, 0, $r5);	goto [?= return];	return
;block_num 4