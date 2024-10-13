(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2381 0)
(declare-sort var2044 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2044_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2044_startsWith/-1523570395 (String String) Bool)
(declare-fun var2044_endsWith/932405132 (String String) Bool)
(declare-const null-String String)
(declare-const var1560 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1560 null-String)))
(declare-const var2206 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2206 null-String)))
(define-const var1945 Bool (var2044_isEmpty/1595667738 (cast-from-String-to-String var1560))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1945 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1976 Bool (var2044_isEmpty/1595667738 (cast-from-String-to-String var2206))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 != 0 goto return r0 
(assert (not (not (= (ite var1976 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var3588 Int (length/-134980193 var1560)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var761 Int (length/-134980193 var2206)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var3541 Int (* 2 var761)) ; Statement: $i1 = 2 * $i0 
 ; Statement: if $i2 >= $i1 goto $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
(assert (>= var3588 var3541)) ; Cond: $i2 >= $i1 
(define-const var115 Bool (var2044_startsWith/-1523570395 (cast-from-String-to-String var1560) (cast-from-String-to-String var2206))) ; Statement: $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
 ; Statement: if $z2 == 0 goto return r0 
(assert (not (= (ite var115 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1998 Bool (var2044_endsWith/932405132 (cast-from-String-to-String var1560) (cast-from-String-to-String var2206))) ; Statement: $z3 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean endsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1) 
 ; Statement: if $z3 == 0 goto return r0 
(assert (= (ite var1998 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2044_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), var2044_startsWith/-1523570395=([java.lang.CharSequence, java.lang.CharSequence], boolean), var2044_endsWith/932405132=([java.lang.CharSequence, java.lang.CharSequence], boolean)}
; {var1560=r0, var2381=null_type, var2206=r1, var2044=org.apache.commons.lang3.StringUtils, var1945=$z0, var1976=$z1, var3588=$i2, var761=$i0, var3541=$i1, var115=$z2, var1998=$z3}
; {r0=var1560, null_type=var2381, r1=var2206, org.apache.commons.lang3.StringUtils=var2044, $z0=var1945, $z1=var1976, $i2=var3588, $i0=var761, $i1=var3541, $z2=var115, $z3=var1998}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 != 0 goto return r0;	$i2 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 2 * $i0;	if $i2 >= $i1 goto $z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	$z2 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean startsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	if $z2 == 0 goto return r0;	$z3 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean endsWith(java.lang.CharSequence,java.lang.CharSequence)>(r0, r1);	if $z3 == 0 goto return r0;	return r0
;block_num 6