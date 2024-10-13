(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var858 0)
(declare-sort var3806 0)
(declare-sort var1324 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1540952980 (var858) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun clazzType/-1540952980 (var858) ClassObject)
(declare-fun hashCode/1739917532 (var1324) Int)
(declare-fun cast-from-ClassObject-to-var1324 (ClassObject) var1324)
(declare-fun expression/-1540952980 (var858) String)
(declare-const null-var858 var858)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var266 var858) ; Statement: r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert (not (= var266 null-var858)))
(define-const var1115 String (name/-1540952980 var266)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (not (= var1115 null-String))) ; Negate: Cond: $r1 == null  
(define-const var643 String (name/-1540952980 var266)) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
(assert true)
(define-const var1449 Int (hashCode/-467973558 var643)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i4] 
(assert true) ; Non Conditional
(define-const var3487 Int (* 31 var1449)) ; Statement: $i0 = 31 * $i4 
(define-const var3347 ClassObject (clazzType/-1540952980 var266)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (not (= var3347 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var3361 ClassObject (clazzType/-1540952980 var266)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
(assert true)
(define-const var514 Int (hashCode/1739917532 (cast-from-ClassObject-to-var1324 var3361))) ; Statement: $i5 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var2721 Int (+ var3487 var514)) ; Statement: $i3 = $i0 + $i5 
(define-const var2998 Int (* 31 var2721)) ; Statement: $i1 = 31 * $i3 
(define-const var665 String (expression/-1540952980 var266)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (= var665 null-String)) ; Cond: $r3 == null 
(define-const var3616 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var2832 Int (+ var2998 var3616)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), clazzType/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var1324=([java.lang.Class], java.lang.Object), expression/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String)}
; {var858=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var266=r0, var1115=$r1, var3806=null_type, var643=$r6, var1449=$i4, var3487=$i0, var3347=$r2, var3361=$r5, var1324=java.lang.Object, var514=$i5, var2721=$i3, var2998=$i1, var665=$r3, var3616=$i6, var2832=$i2}
; {org.apache.ibatis.ognl.enhance.OgnlLocalReference=var858, r0=var266, $r1=var1115, null_type=var3806, $r6=var643, $i4=var1449, $i0=var3487, $r2=var3347, $r5=var3361, java.lang.Object=var1324, $i5=var514, $i3=var2721, $i1=var2998, $r3=var665, $i6=var3616, $i2=var2832}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference;	$r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$r6 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i4];	$i0 = 31 * $i4;	$r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	if $r2 == null goto $i5 = 0;	$r5 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	$i5 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	if $r3 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 7