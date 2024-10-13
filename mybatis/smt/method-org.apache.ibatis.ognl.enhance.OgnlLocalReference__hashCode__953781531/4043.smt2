(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1262 0)
(declare-sort var183 0)
(declare-sort var3280 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1540952980 (var1262) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun clazzType/-1540952980 (var1262) ClassObject)
(declare-fun hashCode/1739917532 (var3280) Int)
(declare-fun cast-from-ClassObject-to-var3280 (ClassObject) var3280)
(declare-fun expression/-1540952980 (var1262) String)
(declare-const null-var1262 var1262)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3741 var1262) ; Statement: r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference 
(assert (not (= var3741 null-var1262)))
(define-const var735 String (name/-1540952980 var3741)) ; Statement: $r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
 ; Statement: if $r1 == null goto $i4 = 0 
(assert (not (= var735 null-String))) ; Negate: Cond: $r1 == null  
(define-const var3887 String (name/-1540952980 var3741)) ; Statement: $r6 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name> 
(assert true)
(define-const var761 Int (hashCode/-467973558 var3887)) ; Statement: $i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i0 = 31 * $i4] 
(assert true) ; Non Conditional
(define-const var1387 Int (* 31 var761)) ; Statement: $i0 = 31 * $i4 
(define-const var387 ClassObject (clazzType/-1540952980 var3741)) ; Statement: $r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
 ; Statement: if $r2 == null goto $i5 = 0 
(assert (not (= var387 null-ClassObject))) ; Negate: Cond: $r2 == null  
(define-const var832 ClassObject (clazzType/-1540952980 var3741)) ; Statement: $r5 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType> 
(assert true)
(define-const var1595 Int (hashCode/1739917532 (cast-from-ClassObject-to-var3280 var832))) ; Statement: $i5 = virtualinvoke $r5.<java.lang.Object: int hashCode()>() 
 ; Statement: goto [?= $i3 = $i0 + $i5] 
(assert true) ; Non Conditional
(define-const var2068 Int (+ var1387 var1595)) ; Statement: $i3 = $i0 + $i5 
(define-const var551 Int (* 31 var2068)) ; Statement: $i1 = 31 * $i3 
(define-const var1951 String (expression/-1540952980 var3741)) ; Statement: $r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
 ; Statement: if $r3 == null goto $i6 = 0 
(assert (not (= var1951 null-String))) ; Negate: Cond: $r3 == null  
(define-const var1190 String (expression/-1540952980 var3741)) ; Statement: $r4 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression> 
(assert true)
(define-const var2960 Int (hashCode/-467973558 var1190)) ; Statement: $i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = $i1 + $i6] 
(assert true) ; Non Conditional
(define-const var3880 Int (+ var551 var2960)) ; Statement: $i2 = $i1 + $i6 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String), hashCode/-467973558=([java.lang.String], int), clazzType/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.Class), hashCode/1739917532=([java.lang.Object], int), cast-from-ClassObject-to-var3280=([java.lang.Class], java.lang.Object), expression/-1540952980=([org.apache.ibatis.ognl.enhance.OgnlLocalReference], java.lang.String)}
; {var1262=org.apache.ibatis.ognl.enhance.OgnlLocalReference, var3741=r0, var735=$r1, var183=null_type, var3887=$r6, var761=$i4, var1387=$i0, var387=$r2, var832=$r5, var3280=java.lang.Object, var1595=$i5, var2068=$i3, var551=$i1, var1951=$r3, var1190=$r4, var2960=$i6, var3880=$i2}
; {org.apache.ibatis.ognl.enhance.OgnlLocalReference=var1262, r0=var3741, $r1=var735, null_type=var183, $r6=var3887, $i4=var761, $i0=var1387, $r2=var387, $r5=var832, java.lang.Object=var3280, $i5=var1595, $i3=var2068, $i1=var551, $r3=var1951, $r4=var1190, $i6=var2960, $i2=var3880}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.apache.ibatis.ognl.enhance.OgnlLocalReference;	$r1 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	if $r1 == null goto $i4 = 0;	$r6 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String name>;	$i4 = virtualinvoke $r6.<java.lang.String: int hashCode()>();	goto [?= $i0 = 31 * $i4];	$i0 = 31 * $i4;	$r2 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	if $r2 == null goto $i5 = 0;	$r5 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.Class clazzType>;	$i5 = virtualinvoke $r5.<java.lang.Object: int hashCode()>();	goto [?= $i3 = $i0 + $i5];	$i3 = $i0 + $i5;	$i1 = 31 * $i3;	$r3 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	if $r3 == null goto $i6 = 0;	$r4 = r0.<org.apache.ibatis.ognl.enhance.OgnlLocalReference: java.lang.String expression>;	$i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	goto [?= $i2 = $i1 + $i6];	$i2 = $i1 + $i6;	return $i2
;block_num 7