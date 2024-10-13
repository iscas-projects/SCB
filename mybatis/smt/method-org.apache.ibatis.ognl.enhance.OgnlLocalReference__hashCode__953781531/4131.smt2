(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var211 0)
(declare-sort var2892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1540952980 (var211) String)
(declare-fun clazzType/-1540952980 (var211) ClassObject)
(declare-fun expression/-1540952980 (var211) String)
(declare-const null-var211 var211)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var2316 var211) ; Statement: r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert (not (= var2316 null-var211)))
(define-const var1240 String (name/-1540952980 var2316)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (= var1240 null-String)) ; Cond: $r1 == null 
(define-const var520 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var912 Int (* 31 var520)) ; Statement: $i0 = 31 * $i4 
(define-const var1845 ClassObject (clazzType/-1540952980 var2316)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (= var1845 null-ClassObject)) ; Cond: $r2 == null 
(define-const var3063 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var1732 Int (+ var912 var3063)) ; Statement: $i3 = $i0 + $i5 
(define-const var837 Int (* 31 var1732)) ; Statement: $i1 = 31 * $i3 
(define-const var1626 String (expression/-1540952980 var2316)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (= var1626 null-String)) ; Cond: $r3 == null 
(define-const var1087 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var2796 Int (+ var837 var1087)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), clazzType/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.Class), expression/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String)}
; {var211=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var2316=r0, var1240=$r1, var2892=null_type, var520=$i4, var912=$i0, var1845=$r2, var3063=$i5, var1732=$i3, var837=$i1, var1626=$r3, var1087=$i6, var2796=$i2}
; {org.apache.ibatis.ognl.enhance.OgnlLocalReference=var211, r0=var2316, $r1=var1240, null_type=var2892, $i4=var520, $i0=var912, $r2=var1845, $i5=var3063, $i3=var1732, $i1=var837, $r3=var1626, $i6=var1087, $i2=var2796}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference;	$r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$i4 = 0;	$i0 = 31 * $i4;	$r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	if $r2 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	if $r3 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 7