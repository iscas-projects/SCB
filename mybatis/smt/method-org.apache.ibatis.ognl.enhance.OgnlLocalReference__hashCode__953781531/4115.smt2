(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3899 0)
(declare-sort var579 0)
(declare-sort var1223 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1540952980 (var3899) String)
(declare-fun clazzType/-1540952980 (var3899) ClassObject)
(declare-fun hashCode/1739917532 (var1223) Int)
(declare-fun cast-from-ClassObject-to-var1223 (ClassObject) var1223)
(declare-fun expression/-1540952980 (var3899) String)
(declare-const null-var3899 var3899)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var453 var3899) ; Statement: r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert (not (= var453 null-var3899)))
(define-const var154 String (name/-1540952980 var453)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (= var154 null-String)) ; Cond: $r1 == null 
(define-const var3750 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var429 Int (* 31 var3750)) ; Statement: $i0 = 31 * $i4 
(define-const var295 ClassObject (clazzType/-1540952980 var453)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (not (= var295 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var29 ClassObject (clazzType/-1540952980 var453)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
(assert true)
(define-const var444 Int (hashCode/1739917532 (cast-from-ClassObject-to-var1223 var29))) ; Statement: $i5 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var2316 Int (+ var429 var444)) ; Statement: $i3 = $i0 + $i5 
(define-const var1358 Int (* 31 var2316)) ; Statement: $i1 = 31 * $i3 
(define-const var1811 String (expression/-1540952980 var453)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (= var1811 null-String)) ; Cond: $r3 == null 
(define-const var3304 Int 0) ; Statement: $i6 = 0 
(assert true) ; Non Conditional
(define-const var1129 Int (+ var1358 var3304)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), clazzType/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var1223=([java.lang.Class], java.lang.Object), expression/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String)}
; {var3899=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var453=r0, var154=$r1, var579=null_type, var3750=$i4, var429=$i0, var295=$r2, var29=$r5, var1223=java.lang.Object, var444=$i5, var2316=$i3, var1358=$i1, var1811=$r3, var3304=$i6, var1129=$i2}
; {org.apache.ibatis.ognl.enhance.OgnlLocalReference=var3899, r0=var453, $r1=var154, null_type=var579, $i4=var3750, $i0=var429, $r2=var295, $r5=var29, java.lang.Object=var1223, $i5=var444, $i3=var2316, $i1=var1358, $r3=var1811, $i6=var3304, $i2=var1129}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference;	$r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$i4 = 0;	$i0 = 31 * $i4;	$r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	if $r2 == null goto $i5 = 0;	$r5 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	$i5 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	if $r3 == null goto $i6 = 0;	$i6 = 0;	$i2 = $i1 + $i6;	return $i2
;block_num 7