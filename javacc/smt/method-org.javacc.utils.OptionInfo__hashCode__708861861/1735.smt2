(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2977 0)
(declare-sort var2322 0)
(declare-sort var2618 0)
(declare-sort var2296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _default/-2056846942 (var2977) var2322)
(declare-fun hashCode/1739917532 (var2322) Int)
(declare-fun _name/-2056846942 (var2977) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun _type/-2056846942 (var2977) var2296)
(declare-const null-var2977 var2977)
(declare-const null-var2322 var2322)
(declare-const null-String String)
(declare-const null-var2296 var2296)
(declare-const var3712 var2977) ; Statement: r0 := @this: org.javacc.utils.OptionInfo 
(assert (not (= var3712 null-var2977)))
(define-const var2536 var2322 (_default/-2056846942 var3712)) ; Statement: $r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert (not (= var2536 null-var2322))) ; Cond: $r1 != null 
(define-const var3964 var2322 (_default/-2056846942 var3712)) ; Statement: $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert true)
(define-const var3178 Int (hashCode/1739917532 var3964)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2131 Int (+ 31 var3178)) ; Statement: $i4 = 31 + $i5 
(define-const var2058 Int (* 31 var2131)) ; Statement: $i0 = 31 * $i4 
(define-const var3551 String (_name/-2056846942 var3712)) ; Statement: $r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert (not (= var3551 null-String))) ; Cond: $r3 != null 
(define-const var1696 String (_name/-2056846942 var3712)) ; Statement: $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert true)
(define-const var3420 Int (hashCode/-467973558 var1696)) ; Statement: $i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2651 Int (+ var2058 var3420)) ; Statement: $i3 = $i0 + $i6 
(define-const var114 Int (* 31 var2651)) ; Statement: $i1 = 31 * $i3 
(define-const var1635 var2296 (_type/-2056846942 var3712)) ; Statement: $r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert (not (not (= var1635 null-var2296)))) ; Negate: Cond: $r5 != null  
(define-const var62 Int 0) ; Statement: $i7 = 0 
 ; Statement: goto [?= $i2 = $i1 + $i7] 
(assert true) ; Non Conditional
(define-const var3626 Int (+ var114 var62)) ; Statement: $i2 = $i1 + $i7 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {_default/-2056846942=([org.javacc.utils.OptionInfo], java.lang.Object), hashCode/1739917532=([java.lang.Object], int), _name/-2056846942=([org.javacc.utils.OptionInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), _type/-2056846942=([org.javacc.utils.OptionInfo], org.javacc.utils.OptionType)}
; {var2977=org.javacc.utils.OptionInfo, var3712=r0, var2322=java.lang.Object, var2536=$r1, var3964=$r2, var3178=$i5, var2131=$i4, var2058=$i0, var3551=$r3, var2618=null_type, var1696=$r4, var3420=$i6, var2651=$i3, var114=$i1, var2296=org.javacc.utils.OptionType, var1635=$r5, var62=$i7, var3626=$i2}
; {org.javacc.utils.OptionInfo=var2977, r0=var3712, java.lang.Object=var2322, $r1=var2536, $r2=var3964, $i5=var3178, $i4=var2131, $i0=var2058, $r3=var3551, null_type=var2618, $r4=var1696, $i6=var3420, $i3=var2651, $i1=var114, org.javacc.utils.OptionType=var2296, $r5=var1635, $i7=var62, $i2=var3626}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.javacc.utils.OptionInfo;	$r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$i5 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$i4 = 31 + $i5;	$i0 = 31 * $i4;	$r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i3 = $i0 + $i6;	$i1 = 31 * $i3;	$r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$i7 = 0;	goto [?= $i2 = $i1 + $i7];	$i2 = $i1 + $i7;	return $i2
;block_num 7