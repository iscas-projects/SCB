(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3262 0)
(declare-sort var665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var665_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var665_startsWith/-1523570395 (String String) Bool)
(declare-const null-String String)
(declare-const var145 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var145 null-String)))
(declare-const var2555 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2555 null-String)))
(define-const var1692 Bool (var665_isEmpty/1595667738 (cast-from-String-to-String var145))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1692 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2429 Bool (var665_isEmpty/1595667738 (cast-from-String-to-String var2555))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 != 0 goto return r0 
(assert (not (not (= (ite var2429 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var1257 Int (length/-134980193 var145)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2524 Int (length/-134980193 var2555)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3553 Int (* 2 var2524)) ; Statement: $i1 = 2 * $i0 
 ; Statement: if $i2 >= $i1 goto $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
(assert (>= var1257 var3553)) ; Cond: $i2 >= $i1 
(define-const var3024 Bool (var665_startsWith/-1523570395 (cast-from-String-to-String var145) (cast-from-String-to-String var2555))) ; Statement: $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
 ; Statement: if $z2 == 0 goto return r0 
(assert (= (ite var3024 1 0) 0)) ; Cond: $z2 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var665_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var665_startsWith/-1523570395=([java.lang.CharSequence, java.lang.CharSequence], boolean)}
; {var145=r0, var3262=null_type, var2555=r1, var665=org.apache.commons.lang3.StringUtils, var1692=$z0, var2429=$z1, var1257=$i2, var2524=$i0, var3553=$i1, var3024=$z2}
; {r0=var145, null_type=var3262, r1=var2555, org.apache.commons.lang3.StringUtils=var665, $z0=var1692, $z1=var2429, $i2=var1257, $i0=var2524, $i1=var3553, $z2=var3024}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 != 0 goto return r0;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 2 * $i0;	if $i2 >= $i1 goto $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	$z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	if $z2 == 0 goto return r0;	return r0
;block_num 5