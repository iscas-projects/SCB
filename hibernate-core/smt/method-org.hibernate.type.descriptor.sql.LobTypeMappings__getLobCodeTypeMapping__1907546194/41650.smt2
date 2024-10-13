(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1382 0)
(declare-sort var389 0)
(declare-sort var1385 0)
(declare-sort var2574 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1382-init () var1382)
(declare-fun arr-var1385-init () (Array Int var1385))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1385 (Int) var1385)
(declare-fun var2574_getTypeName/-1664405877 (Int) String)
(declare-fun cast-from-String-to-var1385 (String) var1385)
(declare-fun String_format/-647569892 (var389 String (Array Int var1385)) String)
(declare-fun <init>/875830710 (var1382 String) void)
(declare-const null-Int Int)
(declare-const var389-ROOT var389)
(declare-const null-__Array__Int__var1385__ (Array Int var1385))
(declare-const var1263 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1263 null-Int)))
 ; Statement: lookupswitch(i0) {     case -16: goto return 2011;     case -15: goto return 2011;     case -9: goto return 2011;     case -4: goto return 2004;     case -3: goto return 2004;     case -2: goto return 2004;     case -1: goto return 2005;     case 1: goto return 2005;     case 12: goto return 2005;     case 2004: goto return 2004;     case 2005: goto return 2005;     case 2011: goto return 2011;     default: goto $r0 = new java.lang.IllegalArgumentException; } 
(assert (and (not (= var1263 2011)) (and (not (= var1263 2005)) (and (not (= var1263 2004)) (and (not (= var1263 12)) (and (not (= var1263 1)) (and (not (= var1263 (- 1))) (and (not (= var1263 (- 2))) (and (not (= var1263 (- 3))) (and (not (= var1263 (- 4))) (and (not (= var1263 (- 9))) (and (not (= var1263 (- 15))) (and (not (= var1263 (- 16))) true))))))))))))) ; Intersect: Negate: Cond: i0 == 2011   and Intersect: Negate: Cond: i0 == 2005   and Intersect: Negate: Cond: i0 == 2004   and Intersect: Negate: Cond: i0 == 12   and Intersect: Negate: Cond: i0 == 1   and Intersect: Negate: Cond: i0 == -1   and Intersect: Negate: Cond: i0 == -2   and Intersect: Negate: Cond: i0 == -3   and Intersect: Negate: Cond: i0 == -4   and Intersect: Negate: Cond: i0 == -9   and Intersect: Negate: Cond: i0 == -15   and Intersect: Negate: Cond: i0 == -16   and Non Conditional            
(define-const var3107 var1382 var1382-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var3081 var389 var389-ROOT) ; Statement: $r2 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3859 (Array Int var1385) arr-var1385-init) ; Statement: $r1 = newarray (java.lang.Object)[2] 
(define-const var3798 Int (Int_valueOf/-1371140006 var1263)) ; Statement: $r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3859!1 (Array Int var1385))
(assert (not (= var3859!1 null-__Array__Int__var1385__)))
(assert (= (select var3859!1 0) (cast-from-Int-to-var1385 var3798))) ; Statement: $r1[0] = $r3 
(define-const var3597 Int (Int_valueOf/-1371140006 var1263)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var3986 String (var2574_getTypeName/-1664405877 var3597)) ; Statement: $r5 = staticinvoke <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.lang.String getTypeName(java.lang.Integer)>($r4) 
(declare-const var3859!2 (Array Int var1385))
(assert (not (= var3859!2 null-__Array__Int__var1385__)))
(assert (= (select var3859!2 1) (cast-from-String-to-var1385 var3986))) ; Statement: $r1[1] = $r5 
(define-const var1900 String (String_format/-647569892 var3081 "JDBC type-code [%s (%s)] not known to have a corresponding LOB equivalent" var3859!2)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "JDBC type-code [%s (%s)] not known to have a corresponding LOB equivalent", $r1) 
(assert true)
;(assert (<init>/875830710 var3107 var1900)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var3107!1 var1382)
(declare-const var1900!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1382-init=([], java.lang.IllegalArgumentException), arr-var1385-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1385=([java.lang.Integer], java.lang.Object), var2574_getTypeName/-1664405877=([java.lang.Integer], java.lang.String), cast-from-String-to-var1385=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1263=i0, var1382=java.lang.IllegalArgumentException, var3107=$r0, var389=java.util.Locale, var3081=$r2, var1385=java.lang.Object, var3859=$r1, var3798=$r3, var3597=$r4, var2574=org.hibernate.type.descriptor.JdbcTypeNameMapper, var3986=$r5, var1900=$r6}
; {i0=var1263, java.lang.IllegalArgumentException=var1382, $r0=var3107, java.util.Locale=var389, $r2=var3081, java.lang.Object=var1385, $r1=var3859, $r3=var3798, $r4=var3597, org.hibernate.type.descriptor.JdbcTypeNameMapper=var2574, $r5=var3986, $r6=var1900}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts i0 := @parameter0: int;	lookupswitch(i0) {     case -16: goto return 2011;     case -15: goto return 2011;     case -9: goto return 2011;     case -4: goto return 2004;     case -3: goto return 2004;     case -2: goto return 2004;     case -1: goto return 2005;     case 1: goto return 2005;     case 12: goto return 2005;     case 2004: goto return 2004;     case 2005: goto return 2005;     case 2011: goto return 2011;     default: goto $r0 = new java.lang.IllegalArgumentException; };	$r0 = new java.lang.IllegalArgumentException;	$r2 = <java.util.Locale: java.util.Locale ROOT>;	$r1 = newarray (java.lang.Object)[2];	$r3 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r1[0] = $r3;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r5 = staticinvoke <org.hibernate.type.descriptor.JdbcTypeNameMapper: java.lang.String getTypeName(java.lang.Integer)>($r4);	$r1[1] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r2, "JDBC type-code [%s (%s)] not known to have a corresponding LOB equivalent", $r1);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 2