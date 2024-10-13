(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3417 0)
(declare-sort var1150 0)
(declare-sort var459 0)
(declare-sort var2564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var459!class ClassObject)
(declare-fun getClass/1258963082 (var2564) ClassObject)
(declare-fun cast-from-var459-to-var2564 (var459) var2564)
(declare-const null-var3417 var3417)
(declare-const null-var1150 var1150)
(declare-const null-var459 var459)
(declare-const var2238 var3417) ; Statement: r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator 
(assert (not (= var2238 null-var3417)))
(declare-const var2794 var1150) ; Statement: r1 := @parameter0: org.apache.poi.ss.usermodel.Cell 
(assert (not (= var2794 null-var1150)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3086 var459) ; Statement: $r28 := @caughtexception 
(assert (not (= var3086 null-var459)))
(assert true)
(define-const var989 ClassObject (getClass/1258963082 (cast-from-var459-to-var2564 var3086))) ; Statement: $r29 = virtualinvoke $r28.<java.lang.Object: java.lang.Class getClass()>() 
 ; Statement: if $r29 != class "Ljava/lang/IllegalStateException;" goto throw $r28 
(assert (not (= var989 var459!class))) ; Cond: $r29 != class "Ljava/lang/IllegalStateException;" 
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var459-to-var2564=([java.lang.IllegalStateException], java.lang.Object)}
; {var3417=org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator, var2238=r0, var1150=org.apache.poi.ss.usermodel.Cell, var2794=r1, var459=java.lang.IllegalStateException, var3086=$r28, var2564=java.lang.Object, var989=$r29}
; {org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator=var3417, r0=var2238, org.apache.poi.ss.usermodel.Cell=var1150, r1=var2794, java.lang.IllegalStateException=var459, $r28=var3086, java.lang.Object=var2564, $r29=var989}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.poi.xssf.usermodel.BaseXSSFFormulaEvaluator;	r1 := @parameter0: org.apache.poi.ss.usermodel.Cell;	$r28 := @caughtexception;	$r29 = virtualinvoke $r28.<java.lang.Object: java.lang.Class getClass()>();	if $r29 != class "Ljava/lang/IllegalStateException;" goto throw $r28;	throw $r28
;block_num 3