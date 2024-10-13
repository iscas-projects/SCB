(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var293 0)
(declare-sort var3578 0)
(declare-sort var2919 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2919-init () var2919)
(declare-fun <init>/750527633 (var2919) void)
(declare-const null-var293 var293)
(declare-const null-String String)
(declare-const var2047 var293) ; Statement: r49 := @this: freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression 
(assert (not (= var2047 null-var293)))
(declare-const var1314 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1314 null-String)))
(assert true)
(define-const var703 Int (lastIndexOf/-1292097097 var1314 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3922 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i0 != $i7 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var703 var3922)))) ; Negate: Cond: i0 != $i7  
(define-const var2667 var2919 var2919-init) ; Statement: $r51 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/750527633 var2667)) ; Statement: specialinvoke $r51.<java.lang.IllegalArgumentException: void <init>()>() 

(declare-const var2667!1 var2919)
 ; Statement: throw $r51 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var2919-init=([], java.lang.IllegalArgumentException), <init>/750527633=([java.lang.IllegalArgumentException], void)}
; {var293=freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression, var2047=r49, var1314=r0, var3578=null_type, var703=i0, var3922=$i7, var2919=java.lang.IllegalArgumentException, var2667=$r51}
; {freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression=var293, r49=var2047, r0=var1314, null_type=var3578, i0=var703, $i7=var3922, java.lang.IllegalArgumentException=var2919, $r51=var2667}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r49 := @this: freemarker.core._ObjectBuilderSettingEvaluator$BuilderCallExpression;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	$i7 = (int) -1;	if i0 != $i7 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r51 = new java.lang.IllegalArgumentException;	specialinvoke $r51.<java.lang.IllegalArgumentException: void <init>()>();	throw $r51
;block_num 2