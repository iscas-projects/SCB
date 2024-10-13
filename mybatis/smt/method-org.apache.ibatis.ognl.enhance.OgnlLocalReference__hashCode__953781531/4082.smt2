(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var281 0)
(declare-sort var1399 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1540952980 (var281) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun clazzType/-1540952980 (var281) ClassObject)
(declare-fun expression/-1540952980 (var281) String)
(declare-const null-var281 var281)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var626 var281) ; Statement: r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert (not (= var626 null-var281)))
(define-const var1805 String (name/-1540952980 var626)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (not (= var1805 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2937 String (name/-1540952980 var626)) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
(assert true)
(define-const var703 Int (hashCode/-467973558 var2937)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i4] 
(assert true) ; Non Conditional
(define-const var1117 Int (* 31 var703)) ; Statement: $i0 = 31 * $i4 
(define-const var2982 ClassObject (clazzType/-1540952980 var626)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (= var2982 null-ClassObject)) ; Cond: $r2 == null 
(define-const var508 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var1033 Int (+ var1117 var508)) ; Statement: $i3 = $i0 + $i5 
(define-const var3578 Int (* 31 var1033)) ; Statement: $i1 = 31 * $i3 
(define-const var3899 String (expression/-1540952980 var626)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (= var3899 null-String)) ; Cond: $r3 == null 
(define-const var456 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var794 Int (+ var3578 var456)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), clazzType/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.Class), expression/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String)}
; {var281=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var626=r0, var1805=$r1, var1399=null_type, var2937=$r6, var703=$i4, var1117=$i0, var2982=$r2, var508=$i5, var1033=$i3, var3578=$i1, var3899=$r3, var456=$i6, var794=$i2}
; {org.apache.ibatis.ognl.enhance.OgnlLocalReference=var281, r0=var626, $r1=var1805, null_type=var1399, $r6=var2937, $i4=var703, $i0=var1117, $r2=var2982, $i5=var508, $i3=var1033, $i1=var3578, $r3=var3899, $i6=var456, $i2=var794}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference;	$r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$r6 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i4];	$i0 = 31 * $i4;	$r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	if $r2 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	if $r3 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 7