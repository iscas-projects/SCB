(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var467 0)
(declare-sort var923 0)
(declare-sort var407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun countTestCases/21863498 (var467) Int)
(declare-fun arr-var923-init () (Array Int var923))
(declare-fun testAt/1330184767 (var467 Int) var407)
(declare-fun cast-from-var407-to-var923 (var407) var923)
(declare-fun String_format/1339386452 (String (Array Int var923)) String)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var923 (Int) var923)
(declare-fun cast-from-String-to-var923 (String) var923)
(declare-const null-var467 var467)
(declare-const null-__Array__Int__var923__ (Array Int var923))
(declare-const var2912 var467) ; Statement: r0 := @parameter0: junit.framework.TestSuite 
(assert (not (= var2912 null-var467)))
(assert true)
(define-const var2129 Int (countTestCases/21863498 var2912)) ; Statement: i0 = virtualinvoke r0.<junit.framework.TestSuite: int countTestCases()>() 
 ; Statement: if i0 != 0 goto $r1 = newarray (java.lang.Object)[1] 
(assert (not (= var2129 0))) ; Cond: i0 != 0 
(define-const var2160 (Array Int var923) arr-var923-init) ; Statement: $r1 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var2217 var407 (testAt/1330184767 var2912 0)) ; Statement: $r2 = virtualinvoke r0.<junit.framework.TestSuite: junit.framework.Test testAt(int)>(0) 
(declare-const var2160!1 (Array Int var923))
(assert (not (= var2160!1 null-__Array__Int__var923__)))
(assert (= (select var2160!1 0) (cast-from-var407-to-var923 var2217))) ; Statement: $r1[0] = $r2 
(define-const var1381 String (String_format/1339386452 " [example: %s]" var2160!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" [example: %s]", $r1) 
(assert true) ; Non Conditional
(define-const var3452 (Array Int var923) arr-var923-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(define-const var2945 Int (Int_valueOf/-1371140006 var2129)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var3452!1 (Array Int var923))
(assert (not (= var3452!1 null-__Array__Int__var923__)))
(assert (= (select var3452!1 0) (cast-from-Int-to-var923 var2945))) ; Statement: $r3[0] = $r4 
(declare-const var3452!2 (Array Int var923))
(assert (not (= var3452!2 null-__Array__Int__var923__)))
(assert (= (select var3452!2 1) (cast-from-String-to-var923 var1381))) ; Statement: $r3[1] = $r6 
(define-const var3383 String (String_format/1339386452 "TestSuite with %s tests%s" var3452!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("TestSuite with %s tests%s", $r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {countTestCases/21863498=([junit.framework.TestSuite], int), arr-var923-init=([], java.lang.Object[]), testAt/1330184767=([junit.framework.TestSuite, int], junit.framework.Test), cast-from-var407-to-var923=([junit.framework.Test], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var923=([java.lang.Integer], java.lang.Object), cast-from-String-to-var923=([java.lang.String], java.lang.Object)}
; {var467=junit.framework.TestSuite, var2912=r0, var2129=i0, var923=java.lang.Object, var2160=$r1, var407=junit.framework.Test, var2217=$r2, var1381=$r6, var3452=$r3, var2945=$r4, var3383=$r5}
; {junit.framework.TestSuite=var467, r0=var2912, i0=var2129, java.lang.Object=var923, $r1=var2160, junit.framework.Test=var407, $r2=var2217, $r6=var1381, $r3=var3452, $r4=var2945, $r5=var3383}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 2}
;stmts r0 := @parameter0: junit.framework.TestSuite;	i0 = virtualinvoke r0.<junit.framework.TestSuite: int countTestCases()>();	if i0 != 0 goto $r1 = newarray (java.lang.Object)[1];	$r1 = newarray (java.lang.Object)[1];	$r2 = virtualinvoke r0.<junit.framework.TestSuite: junit.framework.Test testAt(int)>(0);	$r1[0] = $r2;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" [example: %s]", $r1);	$r3 = newarray (java.lang.Object)[2];	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[0] = $r4;	$r3[1] = $r6;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("TestSuite with %s tests%s", $r3);	return $r5
;block_num 3