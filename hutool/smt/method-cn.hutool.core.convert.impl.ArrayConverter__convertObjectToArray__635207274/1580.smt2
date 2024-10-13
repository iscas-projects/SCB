(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1807 0)
(declare-sort var757 0)
(declare-sort var912 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun targetComponentType/1362905233 (var1807) ClassObject)
(declare-fun toString/-522406933 (var757) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun convertArrayToArray/-1566120974 (var1807 var757) var757)
(declare-fun cast-from-__Array__Int__Int__-to-var757 ((Array Int Int)) var757)
(declare-const null-var1807 var1807)
(declare-const null-var757 var757)
(declare-const var912-TYPE ClassObject)
(declare-const var3727 var1807) ; Statement: r1 := @this: cn.hutool.core.convert.impl.ArrayConverter 
(assert (not (= var3727 null-var1807)))
(declare-const var3763 var757) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var3763 null-var757)))
(define-const var2390 Bool false) ; Statement: $z0 = r0 instanceof java.lang.CharSequence 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.util.List 
(assert (not (= (ite var2390 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2759 ClassObject (targetComponentType/1362905233 var3727)) ; Statement: $r23 = r1.<cn.hutool.core.convert.impl.ArrayConverter: java.lang.Class targetComponentType> 
(define-const var3235 ClassObject var912-TYPE) ; Statement: $r22 = <java.lang.Character: java.lang.Class TYPE> 
 ; Statement: if $r23 == $r22 goto $r24 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert (= var2759 var3235)) ; Cond: $r23 == $r22 
(assert true)
(define-const var3827 String (toString/-522406933 var3763)) ; Statement: $r24 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1878 (Array Int Int) (toCharArray/415275702 var3827)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var3201 var757 (convertArrayToArray/-1566120974 var3727 (cast-from-__Array__Int__Int__-to-var757 var1878))) ; Statement: $r26 = specialinvoke r1.<cn.hutool.core.convert.impl.ArrayConverter: java.lang.Object convertArrayToArray(java.lang.Object)>($r25) 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {targetComponentType/1362905233=([cn.hutool.core.convert.impl.ArrayConverter], java.lang.Class), toString/-522406933=([java.lang.Object], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), convertArrayToArray/-1566120974=([cn.hutool.core.convert.impl.ArrayConverter, java.lang.Object], java.lang.Object), cast-from-__Array__Int__Int__-to-var757=([char[]], java.lang.Object)}
; {var1807=cn.hutool.core.convert.impl.ArrayConverter, var3727=r1, var757=java.lang.Object, var3763=r0, var2390=$z0, var2759=$r23, var912=java.lang.Character, var3235=$r22, var3827=$r24, var1878=$r25, var3201=$r26}
; {cn.hutool.core.convert.impl.ArrayConverter=var1807, r1=var3727, java.lang.Object=var757, r0=var3763, $z0=var2390, $r23=var2759, java.lang.Character=var912, $r22=var3235, $r24=var3827, $r25=var1878, $r26=var3201}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r1 := @this: cn.hutool.core.convert.impl.ArrayConverter;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof java.lang.CharSequence;	if $z0 == 0 goto $z1 = r0 instanceof java.util.List;	$r23 = r1.<cn.hutool.core.convert.impl.ArrayConverter: java.lang.Class targetComponentType>;	$r22 = <java.lang.Character: java.lang.Class TYPE>;	if $r23 == $r22 goto $r24 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r24 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r25 = virtualinvoke $r24.<java.lang.String: char[] toCharArray()>();	$r26 = specialinvoke r1.<cn.hutool.core.convert.impl.ArrayConverter: java.lang.Object convertArrayToArray(java.lang.Object)>($r25);	return $r26
;block_num 3