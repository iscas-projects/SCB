(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var385 0)
(declare-sort var3002 0)
(declare-sort var2739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var3002-init () var3002)
(declare-fun arr-var2739-init () (Array Int var2739))
(declare-fun cast-from-String-to-var2739 (String) var2739)
(declare-fun <init>/-1324222640 (var3002 String (Array Int var2739)) void)
(declare-const null-String String)
(declare-const null-__Array__Int__var2739__ (Array Int var2739))
(declare-const var17 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var17 null-String)))
(define-const var2980 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var2667 Int (hashCode/-467973558 var17)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 66245349: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES256");     case 66246401: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES384");     case 66248104: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES512");     case 637568043: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA384withECDSA");     case 982518116: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA512withECDSA");     case 1211345095: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA256withECDSA");     default: goto tableswitch(b1) {     case 0: goto return 64;     case 1: goto return 64;     case 2: goto return 96;     case 3: goto return 96;     case 4: goto return 132;     case 5: goto return 132;     default: goto $r1 = new cn.hutool.jwt.JWTException; }; } 
(assert (and (not (= var2667 1211345095)) (and (not (= var2667 982518116)) (and (not (= var2667 637568043)) (and (not (= var2667 66248104)) (and (not (= var2667 66246401)) (and (not (= var2667 66245349)) true))))))) ; Intersect: Negate: Cond: $i0 == 1211345095   and Intersect: Negate: Cond: $i0 == 982518116   and Intersect: Negate: Cond: $i0 == 637568043   and Intersect: Negate: Cond: $i0 == 66248104   and Intersect: Negate: Cond: $i0 == 66246401   and Intersect: Negate: Cond: $i0 == 66245349   and Non Conditional      
 ; Statement: tableswitch(b1) {     case 0: goto return 64;     case 1: goto return 64;     case 2: goto return 96;     case 3: goto return 96;     case 4: goto return 132;     case 5: goto return 132;     default: goto $r1 = new cn.hutool.jwt.JWTException; } 
(assert (and (not (= var2980 5)) (and (not (= var2980 4)) (and (not (= var2980 3)) (and (not (= var2980 2)) (and (not (= var2980 1)) (and (not (= var2980 0)) true))))))) ; Intersect: Negate: Cond: b1 == 5   and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional      
(define-const var372 var3002 var3002-init) ; Statement: $r1 = new cn.hutool.jwt.JWTException 
(define-const var2497 (Array Int var2739) arr-var2739-init) ; Statement: $r2 = newarray (java.lang.Object)[1] 
(declare-const var2497!1 (Array Int var2739))
(assert (not (= var2497!1 null-__Array__Int__var2739__)))
(assert (= (select var2497!1 0) (cast-from-String-to-var2739 var17))) ; Statement: $r2[0] = r0 
(assert true)
;(assert (<init>/-1324222640 var372 "Unsupported Algorithm: {}" var2497!1)) ; Statement: specialinvoke $r1.<cn.hutool.jwt.JWTException: void <init>(java.lang.String,java.lang.Object[])>("Unsupported Algorithm: {}", $r2) 

(declare-const var372!1 var3002)
(declare-const var2431 String)
(declare-const var2497!2 (Array Int var2739))
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var3002-init=([], cn.hutool.jwt.JWTException), arr-var2739-init=([], java.lang.Object[]), cast-from-String-to-var2739=([java.lang.String], java.lang.Object), <init>/-1324222640=([cn.hutool.jwt.JWTException, java.lang.String, java.lang.Object[]], void)}
; {var17=r0, var385=null_type, var2980=b1, var2667=$i0, var3002=cn.hutool.jwt.JWTException, var372=$r1, var2739=java.lang.Object, var2497=$r2, var2431="Unsupported Algorithm: {}"}
; {r0=var17, null_type=var385, b1=var2980, $i0=var2667, cn.hutool.jwt.JWTException=var3002, $r1=var372, java.lang.Object=var2739, $r2=var2497, "Unsupported Algorithm: {}"=var2431}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @parameter0: java.lang.String;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 66245349: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES256");     case 66246401: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES384");     case 66248104: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ES512");     case 637568043: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA384withECDSA");     case 982518116: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA512withECDSA");     case 1211345095: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("SHA256withECDSA");     default: goto tableswitch(b1) {     case 0: goto return 64;     case 1: goto return 64;     case 2: goto return 96;     case 3: goto return 96;     case 4: goto return 132;     case 5: goto return 132;     default: goto $r1 = new cn.hutool.jwt.JWTException; }; };	tableswitch(b1) {     case 0: goto return 64;     case 1: goto return 64;     case 2: goto return 96;     case 3: goto return 96;     case 4: goto return 132;     case 5: goto return 132;     default: goto $r1 = new cn.hutool.jwt.JWTException; };	$r1 = new cn.hutool.jwt.JWTException;	$r2 = newarray (java.lang.Object)[1];	$r2[0] = r0;	specialinvoke $r1.<cn.hutool.jwt.JWTException: void <init>(java.lang.String,java.lang.Object[])>("Unsupported Algorithm: {}", $r2);	throw $r1
;block_num 3