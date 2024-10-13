(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3174 0)
(declare-sort var459 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun countTestCases/21863498 (var3174) Int)
(declare-fun arr-var459-init () (Array Int var459))
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun cast-from-Int-to-var459 (Int) var459)
(declare-fun cast-from-String-to-var459 (String) var459)
(declare-fun String_format/1339386452 (String (Array Int var459)) String)
(declare-const null-var3174 var3174)
(declare-const null-__Array__Int__var459__ (Array Int var459))
(declare-const var3923 var3174) ; Statement: r0 := @parameter0: junit.framework.TestSuite 
(assert (not (= var3923 null-var3174)))
(assert true)
(define-const var1143 Int (countTestCases/21863498 var3923)) ; Statement: i0 = virtualinvoke r0.<junit.framework.TestSuite: int countTestCases()>() 
 ; Statement: if i0 != 0 goto $r1 = newarray (java.lang.Object)[1] 
(assert (not (not (= var1143 0)))) ; Negate: Cond: i0 != 0  
(define-const var2668 String "") ; Statement: $r6 = "" 
 ; Statement: goto [?= $r3 = newarray (java.lang.Object)[2]] 
(assert true) ; Non Conditional
(define-const var2290 (Array Int var459) arr-var459-init) ; Statement: $r3 = newarray (java.lang.Object)[2] 
(define-const var40 Int (Int_valueOf/-1371140006 var1143)) ; Statement: $r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var2290!1 (Array Int var459))
(assert (not (= var2290!1 null-__Array__Int__var459__)))
(assert (= (select var2290!1 0) (cast-from-Int-to-var459 var40))) ; Statement: $r3[0] = $r4 
(declare-const var2290!2 (Array Int var459))
(assert (not (= var2290!2 null-__Array__Int__var459__)))
(assert (= (select var2290!2 1) (cast-from-String-to-var459 var2668))) ; Statement: $r3[1] = $r6 
(define-const var2214 String (String_format/1339386452 "TestSuite with %s tests%s" var2290!2)) ; Statement: $r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("TestSuite with %s tests%s", $r3) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {countTestCases/21863498=([junit.framework.TestSuite], int), arr-var459-init=([], java.lang.Object[]), Int_valueOf/-1371140006=([int], java.lang.Integer), cast-from-Int-to-var459=([java.lang.Integer], java.lang.Object), cast-from-String-to-var459=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3174=junit.framework.TestSuite, var3923=r0, var1143=i0, var2668=$r6, var459=java.lang.Object, var2290=$r3, var40=$r4, var2214=$r5}
; {junit.framework.TestSuite=var3174, r0=var3923, i0=var1143, $r6=var2668, java.lang.Object=var459, $r3=var2290, $r4=var40, $r5=var2214}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: junit.framework.TestSuite;	i0 = virtualinvoke r0.<junit.framework.TestSuite: int countTestCases()>();	if i0 != 0 goto $r1 = newarray (java.lang.Object)[1];	$r6 = "";	goto [?= $r3 = newarray (java.lang.Object)[2]];	$r3 = newarray (java.lang.Object)[2];	$r4 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3[0] = $r4;	$r3[1] = $r6;	$r5 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("TestSuite with %s tests%s", $r3);	return $r5
;block_num 3