(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1342 0)
(declare-sort var3500 0)
(declare-sort var2578 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$value/-29446135 (var1342) var3500)
(declare-fun arr-var3500-init () (Array Int var3500))
(declare-fun getClass/1258963082 (var3500) ClassObject)
(declare-fun cast-from-var2578-to-var3500 (var2578) var3500)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun cast-from-String-to-var3500 (String) var3500)
(declare-fun getMessage/849299655 (var2578) String)
(declare-fun String_format/1339386452 (String (Array Int var3500)) String)
(declare-fun val$name/-29446135 (var1342) String)
(declare-const null-var1342 var1342)
(declare-const null-var3500 var3500)
(declare-const null-var2578 var2578)
(declare-const null-__Array__Int__var3500__ (Array Int var3500))
(declare-const var1371 var1342) ; Statement: r0 := @this: org.junit.experimental.theories.PotentialAssignment$1 
(assert (not (= var1371 null-var1342)))
(define-const var1529 var3500 (val$value/-29446135 var1371)) ; Statement: $r1 = r0.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.Object val$value> 
 ; Statement: if $r1 != null goto $r2 = newarray (java.lang.Object)[1] 
(assert (not (not (= var1529 null-var3500)))) ; Negate: Cond: $r1 != null  
(declare-const var1392 var2578) ; Statement: $r4 := @caughtexception 
(assert (not (= var1392 null-var2578)))
(define-const var389 (Array Int var3500) arr-var3500-init) ; Statement: $r5 = newarray (java.lang.Object)[2] 
(assert true)
(define-const var755 ClassObject (getClass/1258963082 (cast-from-var2578-to-var3500 var1392))) ; Statement: $r6 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2465 String (getSimpleName/-390194377 var755)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>() 
(declare-const var389!1 (Array Int var3500))
(assert (not (= var389!1 null-__Array__Int__var3500__)))
(assert (= (select var389!1 0) (cast-from-String-to-var3500 var2465))) ; Statement: $r5[0] = $r7 
(assert true)
(define-const var1646 String (getMessage/849299655 var1392)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.Throwable: java.lang.String getMessage()>() 
(declare-const var389!2 (Array Int var3500))
(assert (not (= var389!2 null-__Array__Int__var3500__)))
(assert (= (select var389!2 1) (cast-from-String-to-var3500 var1646))) ; Statement: $r5[1] = $r8 
(define-const var756 String (String_format/1339386452 "[toString() threw %s: %s]" var389!2)) ; Statement: r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("[toString() threw %s: %s]", $r5) 
(assert true) ; Non Conditional
(define-const var1217 (Array Int var3500) arr-var3500-init) ; Statement: $r10 = newarray (java.lang.Object)[2] 
(declare-const var1217!1 (Array Int var3500))
(assert (not (= var1217!1 null-__Array__Int__var3500__)))
(assert (= (select var1217!1 0) (cast-from-String-to-var3500 var756))) ; Statement: $r10[0] = r9 
(define-const var1731 String (val$name/-29446135 var1371)) ; Statement: $r11 = r0.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.String val$name> 
(declare-const var1217!2 (Array Int var3500))
(assert (not (= var1217!2 null-__Array__Int__var3500__)))
(assert (= (select var1217!2 1) (cast-from-String-to-var3500 var1731))) ; Statement: $r10[1] = $r11 
(define-const var1757 String (String_format/1339386452 "%s <from %s>" var1217!2)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s <from %s>", $r10) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {val$value/-29446135=([org.junit.experimental.theories.PotentialAssignment$1], java.lang.Object), arr-var3500-init=([], java.lang.Object[]), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2578-to-var3500=([java.lang.Throwable], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), cast-from-String-to-var3500=([java.lang.String], java.lang.Object), getMessage/849299655=([java.lang.Throwable], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), val$name/-29446135=([org.junit.experimental.theories.PotentialAssignment$1], java.lang.String)}
; {var1342=org.junit.experimental.theories.PotentialAssignment$1, var1371=r0, var3500=java.lang.Object, var1529=$r1, var2578=java.lang.Throwable, var1392=$r4, var389=$r5, var755=$r6, var2465=$r7, var1646=$r8, var756=r9, var1217=$r10, var1731=$r11, var1757=$r12}
; {org.junit.experimental.theories.PotentialAssignment$1=var1342, r0=var1371, java.lang.Object=var3500, $r1=var1529, java.lang.Throwable=var2578, $r4=var1392, $r5=var389, $r6=var755, $r7=var2465, $r8=var1646, r9=var756, $r10=var1217, $r11=var1731, $r12=var1757}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 2}
;stmts r0 := @this: org.junit.experimental.theories.PotentialAssignment$1;	$r1 = r0.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.Object val$value>;	if $r1 != null goto $r2 = newarray (java.lang.Object)[1];	$r4 := @caughtexception;	$r5 = newarray (java.lang.Object)[2];	$r6 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getSimpleName()>();	$r5[0] = $r7;	$r8 = virtualinvoke $r4.<java.lang.Throwable: java.lang.String getMessage()>();	$r5[1] = $r8;	r9 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("[toString() threw %s: %s]", $r5);	$r10 = newarray (java.lang.Object)[2];	$r10[0] = r9;	$r11 = r0.<org.junit.experimental.theories.PotentialAssignment$1: java.lang.String val$name>;	$r10[1] = $r11;	$r12 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%s <from %s>", $r10);	return $r12
;block_num 3