(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var530 0)
(declare-sort var1004 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMessage/849299655 (var530) String)
(declare-fun arr-var1004-init () (Array Int var1004))
(declare-fun cast-from-String-to-var1004 (String) var1004)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1004 (Int) var1004)
(declare-fun String_format/1339386452 (String (Array Int var1004)) String)
(declare-const null-Int Int)
(declare-const null-var530 var530)
(declare-const null-__Array__Int__var1004__ (Array Int var1004))
(declare-const var1115 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1115 null-Int)))
(declare-const var3899 var530) ; Statement: r0 := @parameter1: java.lang.Throwable 
(assert (not (= var3899 null-var530)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= var3899 null-var530)))) ; Negate: Cond: r0 != null  
(define-const var3569 String "Null") ; Statement: $r6 = "Null" 
 ; Statement: goto [?= r2 = $r6] 
(assert true) ; Non Conditional
(define-const var581 String var3569) ; Statement: r2 = $r6 
 ; Statement: if r0 != null goto $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert (not (= var3899 null-var530))) ; Cond: r0 != null 
(assert true)
(define-const var555 String (getMessage/849299655 var3899)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true) ; Non Conditional
(define-const var935 (Array Int var1004) arr-var1004-init) ; Statement: $r3 = newarray (java.lang.Object)[3] 
(declare-const var935!1 (Array Int var1004))
(assert (not (= var935!1 null-__Array__Int__var1004__)))
(assert (= (select var935!1 0) (cast-from-String-to-var1004 var581))) ; Statement: $r3[0] = r2 
(define-const var3661 Int (Int_valueOf/-1371140006 var1115)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var935!2 (Array Int var1004))
(assert (not (= var935!2 null-__Array__Int__var1004__)))
(assert (= (select var935!2 1) (cast-from-Int-to-var1004 var3661))) ; Statement: $r3[1] = $r4 
(declare-const var935!3 (Array Int var1004))
(assert (not (= var935!3 null-__Array__Int__var1004__)))
(assert (= (select var935!3 2) (cast-from-String-to-var1004 var555))) ; Statement: $r3[2] = $r7 
(define-const var1807 String (String_format/1339386452 "%s #%,d: %s" var935!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s #%,d: %s", $r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getMessage/849299655=([java.lang.Throwable], java.lang.String), arr-var1004-init=([], java.lang.Object[]), cast-from-String-to-var1004=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1004=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1115=i0, var530=java.lang.Throwable, var3899=r0, var3569=$r6, var581=r2, var555=$r7, var1004=java.lang.Object, var935=$r3, var3661=$r4, var1807=$r5}
; {i0=var1115, java.lang.Throwable=var530, r0=var3899, $r6=var3569, r2=var581, $r7=var555, java.lang.Object=var1004, $r3=var935, $r4=var3661, $r5=var1807}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.Throwable;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r6 = "Null";	goto [?= r2 = $r6];	r2 = $r6;	if r0 != null goto $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>();	$r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>();	$r3 = newarray (java.lang.Object)[3];	$r3[0] = r2;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[1] = $r4;	$r3[2] = $r7;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s #%,d: %s", $r3);	return $r5
;block_num 5