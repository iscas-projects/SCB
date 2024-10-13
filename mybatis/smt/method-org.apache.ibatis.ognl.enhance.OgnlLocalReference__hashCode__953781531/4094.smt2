(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3392 0)
(declare-sort var2180 0)
(declare-sort var3582 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1540952980 (var3392) String)
(declare-fun clazzType/-1540952980 (var3392) ClassObject)
(declare-fun hashCode/1739917532 (var3582) Int)
(declare-fun cast-from-ClassObject-to-var3582 (ClassObject) var3582)
(declare-fun expression/-1540952980 (var3392) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3392 var3392)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1424 var3392) ; Statement: r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert (not (= var1424 null-var3392)))
(define-const var2913 String (name/-1540952980 var1424)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (= var2913 null-String)) ; Cond: $r1 == null 
(define-const var2199 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var3524 Int (* 31 var2199)) ; Statement: $i0 = 31 * $i4 
(define-const var786 ClassObject (clazzType/-1540952980 var1424)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (not (= var786 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var2356 ClassObject (clazzType/-1540952980 var1424)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
(assert true)
(define-const var3555 Int (hashCode/1739917532 (cast-from-ClassObject-to-var3582 var2356))) ; Statement: $i5 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var979 Int (+ var3524 var3555)) ; Statement: $i3 = $i0 + $i5 
(define-const var209 Int (* 31 var979)) ; Statement: $i1 = 31 * $i3 
(define-const var2512 String (expression/-1540952980 var1424)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (not (= var2512 null-String))) ; Negate: Cond: $r3 == null  
(define-const var1148 String (expression/-1540952980 var1424)) ; Statement: $r4 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
(assert true)
(define-const var443 Int (hashCode/-467973558 var1148)) ; Statement: $i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var3453 Int (+ var209 var443)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), clazzType/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var3582=([java.lang.Class], java.lang.Object), expression/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3392=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var1424=r0, var2913=$r1, var2180=null_type, var2199=$i4, var3524=$i0, var786=$r2, var2356=$r5, var3582=java.lang.Object, var3555=$i5, var979=$i3, var209=$i1, var2512=$r3, var1148=$r4, var443=$i6, var3453=$i2}
; {org.apache.ibatis.ognl.enhance.OgnlLocalReference=var3392, r0=var1424, $r1=var2913, null_type=var2180, $i4=var2199, $i0=var3524, $r2=var786, $r5=var2356, java.lang.Object=var3582, $i5=var3555, $i3=var979, $i1=var209, $r3=var2512, $r4=var1148, $i6=var443, $i2=var3453}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference;	$r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$i4 = 0;	$i0 = 31 * $i4;	$r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	if $r2 == null goto $i5 = 0;	$r5 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	$i5 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	if $r3 == null goto $i6 = 0;	$r4 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	$i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7