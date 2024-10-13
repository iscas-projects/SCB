(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2155_nullToEmpty/-379247643 (String) String)
(define-fun concat/1917019066 ((s String) (next String)) String (str.++ s next))
(declare-const null-String String)
(declare-const var193 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var193 null-String)))
(declare-const var2895 String) ; Statement: r0 := @parameter1: java.lang.CharSequence 
(assert (not (= var2895 null-String)))
(declare-const var3827 String) ; Statement: r4 := @parameter2: java.lang.CharSequence 
(assert (not (= var3827 null-String)))
(define-const var1797 String (var2155_nullToEmpty/-379247643 var2895)) ; Statement: $r3 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r0) 
(define-const var1734 String (var2155_nullToEmpty/-379247643 var193)) ; Statement: $r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r1) 
(assert true)
(define-const var1278 String (concat/1917019066 var1797 var1734)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.String: java.lang.String concat(java.lang.String)>($r2) 
(define-const var1020 String (var2155_nullToEmpty/-379247643 var3827)) ; Statement: $r5 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r4) 
(assert true)
(define-const var1819 String (concat/1917019066 var1278 var1020)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.String: java.lang.String concat(java.lang.String)>($r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var2155_nullToEmpty/-379247643=([java.lang.CharSequence], java.lang.String), concat/1917019066=([java.lang.String, java.lang.String], java.lang.String)}
; {var193=r1, var2895=r0, var3827=r4, var2155=cn.hutool.core.text.CharSequenceUtil, var1797=$r3, var1734=$r2, var1278=$r6, var1020=$r5, var1819=$r7}
; {r1=var193, r0=var2895, r4=var3827, cn.hutool.core.text.CharSequenceUtil=var2155, $r3=var1797, $r2=var1734, $r6=var1278, $r5=var1020, $r7=var1819}
;seq <java.lang.String: java.lang.String concat(java.lang.String)>;	<java.lang.String: java.lang.String concat(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String concat(java.lang.String)>": 2}
;stmts r1 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.lang.CharSequence;	r4 := @parameter2: java.lang.CharSequence;	$r3 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r0);	$r2 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r1);	$r6 = virtualinvoke $r3.<java.lang.String: java.lang.String concat(java.lang.String)>($r2);	$r5 = staticinvoke <cn.hutool.core.text.CharSequenceUtil: java.lang.String nullToEmpty(java.lang.CharSequence)>(r4);	$r7 = virtualinvoke $r6.<java.lang.String: java.lang.String concat(java.lang.String)>($r5);	return $r7
;block_num 1