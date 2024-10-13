(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2126 0)
(declare-sort var2494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1540952980 (var2126) String)
(declare-fun clazzType/-1540952980 (var2126) ClassObject)
(declare-fun expression/-1540952980 (var2126) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2126 var2126)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var1338 var2126) ; Statement: r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert (not (= var1338 null-var2126)))
(define-const var914 String (name/-1540952980 var1338)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (= var914 null-String)) ; Cond: $r1 == null 
(define-const var2873 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var3457 Int (* 31 var2873)) ; Statement: $i0 = 31 * $i4 
(define-const var1548 ClassObject (clazzType/-1540952980 var1338)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (= var1548 null-ClassObject)) ; Cond: $r2 == null 
(define-const var1104 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var795 Int (+ var3457 var1104)) ; Statement: $i3 = $i0 + $i5 
(define-const var590 Int (* 31 var795)) ; Statement: $i1 = 31 * $i3 
(define-const var3500 String (expression/-1540952980 var1338)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (not (= var3500 null-String))) ; Negate: Cond: $r3 == null  
(define-const var2904 String (expression/-1540952980 var1338)) ; Statement: $r4 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
(assert true)
(define-const var1204 Int (hashCode/-467973558 var2904)) ; Statement: $i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var602 Int (+ var590 var1204)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), clazzType/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.Class), expression/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var2126=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var1338=r0, var914=$r1, var2494=null_type, var2873=$i4, var3457=$i0, var1548=$r2, var1104=$i5, var795=$i3, var590=$i1, var3500=$r3, var2904=$r4, var1204=$i6, var602=$i2}
; {org.apache.ibatis.ognl.enhance.OgnlLocalReference=var2126, r0=var1338, $r1=var914, null_type=var2494, $i4=var2873, $i0=var3457, $r2=var1548, $i5=var1104, $i3=var795, $i1=var590, $r3=var3500, $r4=var2904, $i6=var1204, $i2=var602}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference;	$r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$i4 = 0;	$i0 = 31 * $i4;	$r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	if $r2 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	if $r3 == null goto $i6 = 0;	$r4 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	$i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7