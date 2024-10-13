(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2410 0)
(declare-sort var2567 0)
(declare-sort var784 0)
(declare-sort var2851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun appendable/-2967664 (var2410) var2567)
(declare-fun toString/-522406933 (var784) String)
(declare-fun cast-from-var2567-to-var784 (var2567) var784)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun suffix/-2967664 (var2410) String)
(declare-fun var2851_length/-1661662818 (String) Int)
(declare-const null-var2410 var2410)
(declare-const null-var2567 var2567)
(declare-const var3830 var2410) ; Statement: r0 := @this: cn.hutool.core.text.StrJoiner 
(assert (not (= var3830 null-var2410)))
(define-const var492 var2567 (appendable/-2967664 var3830)) ; Statement: $r1 = r0.<cn.hutool.core.text.StrJoiner: java.lang.Appendable appendable> 
 ; Statement: if $r1 == null goto $r2 = r0.<cn.hutool.core.text.StrJoiner: java.lang.String emptyResult> 
(assert (not (= var492 null-var2567))) ; Negate: Cond: $r1 == null  
(define-const var3498 var2567 (appendable/-2967664 var3830)) ; Statement: $r4 = r0.<cn.hutool.core.text.StrJoiner: java.lang.Appendable appendable> 
(assert true)
(define-const var3438 String (toString/-522406933 (cast-from-var2567-to-var784 var3498))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3344 Int (length/-134980193 var3438)) ; Statement: $i1 = virtualinvoke $r5.<java.lang.String: int length()>() 
(define-const var2088 String (suffix/-2967664 var3830)) ; Statement: $r6 = r0.<cn.hutool.core.text.StrJoiner: java.lang.CharSequence suffix> 
(define-const var1522 Int (var2851_length/-1661662818 var2088)) ; Statement: $i0 = staticinvoke <cn.hutool.core.util.StrUtil: int length(java.lang.CharSequence)>($r6) 
(define-const var3595 Int (+ var3344 var1522)) ; Statement: $i2 = $i1 + $i0 
 ; Statement: goto [?= return $i2] 
(assert true) ; Non Conditional
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {appendable/-2967664=([cn.hutool.core.text.StrJoiner], java.lang.Appendable), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2567-to-var784=([java.lang.Appendable], java.lang.Object), length/-134980193=([java.lang.String], int), suffix/-2967664=([cn.hutool.core.text.StrJoiner], java.lang.CharSequence), var2851_length/-1661662818=([java.lang.CharSequence], int)}
; {var2410=cn.hutool.core.text.StrJoiner, var3830=r0, var2567=java.lang.Appendable, var492=$r1, var3498=$r4, var784=java.lang.Object, var3438=$r5, var3344=$i1, var2088=$r6, var2851=cn.hutool.core.text.CharSequenceUtil, var1522=$i0, var3595=$i2}
; {cn.hutool.core.text.StrJoiner=var2410, r0=var3830, java.lang.Appendable=var2567, $r1=var492, $r4=var3498, java.lang.Object=var784, $r5=var3438, $i1=var3344, $r6=var2088, cn.hutool.core.text.CharSequenceUtil=var2851, $i0=var1522, $i2=var3595}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: cn.hutool.core.text.StrJoiner;	$r1 = r0.<cn.hutool.core.text.StrJoiner: java.lang.Appendable appendable>;	if $r1 == null goto $r2 = r0.<cn.hutool.core.text.StrJoiner: java.lang.String emptyResult>;	$r4 = r0.<cn.hutool.core.text.StrJoiner: java.lang.Appendable appendable>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$i1 = virtualinvoke $r5.<java.lang.String: int length()>();	$r6 = r0.<cn.hutool.core.text.StrJoiner: java.lang.CharSequence suffix>;	$i0 = staticinvoke <cn.hutool.core.util.StrUtil: int length(java.lang.CharSequence)>($r6);	$i2 = $i1 + $i0;	goto [?= return $i2];	return $i2
;block_num 3