(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2363 0)
(declare-sort var591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1540952980 (var2363) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun clazzType/-1540952980 (var2363) ClassObject)
(declare-fun expression/-1540952980 (var2363) String)
(declare-const null-var2363 var2363)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var460 var2363) ; Statement: r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert (not (= var460 null-var2363)))
(define-const var48 String (name/-1540952980 var460)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (not (= var48 null-String))) ; Negate: Cond: $r1 == null  
(define-const var2755 String (name/-1540952980 var460)) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
(assert true)
(define-const var3219 Int (hashCode/-467973558 var2755)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i4] 
(assert true) ; Non Conditional
(define-const var1791 Int (* 31 var3219)) ; Statement: $i0 = 31 * $i4 
(define-const var3250 ClassObject (clazzType/-1540952980 var460)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (= var3250 null-ClassObject)) ; Cond: $r2 == null 
(define-const var3681 Int 0) ; Statement: $i5 = 0 
(assert true) ; Non Conditional
(define-const var1024 Int (+ var1791 var3681)) ; Statement: $i3 = $i0 + $i5 
(define-const var3642 Int (* 31 var1024)) ; Statement: $i1 = 31 * $i3 
(define-const var809 String (expression/-1540952980 var460)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (not (= var809 null-String))) ; Negate: Cond: $r3 == null  
(define-const var2869 String (expression/-1540952980 var460)) ; Statement: $r4 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
(assert true)
(define-const var284 Int (hashCode/-467973558 var2869)) ; Statement: $i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var3936 Int (+ var3642 var284)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), clazzType/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.Class), expression/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String)}
; {var2363=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var460=r0, var48=$r1, var591=null_type, var2755=$r6, var3219=$i4, var1791=$i0, var3250=$r2, var3681=$i5, var1024=$i3, var3642=$i1, var809=$r3, var2869=$r4, var284=$i6, var3936=$i2}
; {org.apache.ibatis.ognl.enhance.OgnlLocalReference=var2363, r0=var460, $r1=var48, null_type=var591, $r6=var2755, $i4=var3219, $i0=var1791, $r2=var3250, $i5=var3681, $i3=var1024, $i1=var3642, $r3=var809, $r4=var2869, $i6=var284, $i2=var3936}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference;	$r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$r6 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i4];	$i0 = 31 * $i4;	$r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	if $r2 == null goto $i5 = 0;	$i5 = 0;	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	if $r3 == null goto $i6 = 0;	$r4 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	$i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7