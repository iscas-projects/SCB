(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var686 0)
(declare-sort var3611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3611_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2831 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2831 null-String)))
(declare-const var242 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var242 null-String)))
(define-const var1261 Bool (var3611_isEmpty/1595667738 (cast-from-String-to-String var2831))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1261 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3138 Bool (var3611_isEmpty/1595667738 (cast-from-String-to-String var242))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 != 0 goto return r0 
(assert (not (not (= (ite var3138 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var3658 Int (length/-134980193 var2831)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2736 Int (length/-134980193 var242)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var942 Int (* 2 var2736)) ; Statement: $i1 = 2 * $i0 
 ; Statement: if $i2 >= $i1 goto $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
(assert (not (>= var3658 var942))) ; Negate: Cond: $i2 >= $i1  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3611_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int)}
; {var2831=r0, var686=null_type, var242=r1, var3611=org.apache.commons.lang3.StringUtils, var1261=$z0, var3138=$z1, var3658=$i2, var2736=$i0, var942=$i1}
; {r0=var2831, null_type=var686, r1=var242, org.apache.commons.lang3.StringUtils=var3611, $z0=var1261, $z1=var3138, $i2=var3658, $i0=var2736, $i1=var942}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 != 0 goto return r0;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 2 * $i0;	if $i2 >= $i1 goto $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	return r0
;block_num 4