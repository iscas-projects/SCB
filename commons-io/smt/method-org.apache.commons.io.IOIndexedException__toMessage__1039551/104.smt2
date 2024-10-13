(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var900 0)
(declare-sort var1509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getClass/1258963082 (var1509) ClassObject)
(declare-fun cast-from-var900-to-var1509 (var900) var1509)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun getMessage/849299655 (var900) String)
(declare-fun arr-var1509-init () (Array Int var1509))
(declare-fun cast-from-String-to-var1509 (String) var1509)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var1509 (Int) var1509)
(declare-fun String_format/1339386452 (String (Array Int var1509)) String)
(declare-const null-Int Int)
(declare-const null-var900 var900)
(declare-const null-__Array__Int__var1509__ (Array Int var1509))
(declare-const var1226 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1226 null-Int)))
(declare-const var954 var900) ; Statement: r0 := @parameter1: java.lang.Throwable 
(assert (not (= var954 null-var900)))
 ; Statement: if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (= var954 null-var900))) ; Cond: r0 != null 
(assert true)
(define-const var2979 ClassObject (getClass/1258963082 (cast-from-var900-to-var1509 var954))) ; Statement: $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2996 String (getSimpleName/-390194377 var2979)) ; Statement: $r6 = virtualinvoke $r1.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true) ; Non Conditional
(define-const var3372 String var2996) ; Statement: r2 = $r6 
 ; Statement: if r0 != null goto $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert (not (= var954 null-var900))) ; Cond: r0 != null 
(assert true)
(define-const var1125 String (getMessage/849299655 var954)) ; Statement: $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true) ; Non Conditional
(define-const var3551 (Array Int var1509) arr-var1509-init) ; Statement: $r3 = newarray (java.lang.Object)[3] 
(declare-const var3551!1 (Array Int var1509))
(assert (not (= var3551!1 null-__Array__Int__var1509__)))
(assert (= (select var3551!1 0) (cast-from-String-to-var1509 var3372))) ; Statement: $r3[0] = r2 
(define-const var2750 Int (Int_valueOf/-1371140006 var1226)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3551!2 (Array Int var1509))
(assert (not (= var3551!2 null-__Array__Int__var1509__)))
(assert (= (select var3551!2 1) (cast-from-Int-to-var1509 var2750))) ; Statement: $r3[1] = $r4 
(declare-const var3551!3 (Array Int var1509))
(assert (not (= var3551!3 null-__Array__Int__var1509__)))
(assert (= (select var3551!3 2) (cast-from-String-to-var1509 var1125))) ; Statement: $r3[2] = $r7 
(define-const var2403 String (String_format/1339386452 "%s #%,d: %s" var3551!3)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s #%,d: %s", $r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var900-to-var1509=([java.lang.Throwable], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), arr-var1509-init=([], java.lang.Object[]), cast-from-String-to-var1509=([java.lang.String], java.lang.Object), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var1509=([java.lang.Integer], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var1226=i0, var900=java.lang.Throwable, var954=r0, var1509=java.lang.Object, var2979=$r1, var2996=$r6, var3372=r2, var1125=$r7, var3551=$r3, var2750=$r4, var2403=$r5}
; {i0=var1226, java.lang.Throwable=var900, r0=var954, java.lang.Object=var1509, $r1=var2979, $r6=var2996, r2=var3372, $r7=var1125, $r3=var3551, $r4=var2750, $r5=var2403}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts i0 := @parameter0: int;	r0 := @parameter1: java.lang.Throwable;	if r0 != null goto $r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r1 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r1.<java.lang.Class: java.lang.String getSimpleName()>();	r2 = $r6;	if r0 != null goto $r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>();	$r7 = virtualinvoke r0.<java.lang.Throwable: java.lang.String getMessage()>();	$r3 = newarray (java.lang.Object)[3];	$r3[0] = r2;	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[1] = $r4;	$r3[2] = $r7;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s #%,d: %s", $r3);	return $r5
;block_num 5