(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1736 0)
(declare-sort var3071 0)
(declare-sort var2048 0)
(declare-sort var3052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _default/-2056846942 (var1736) var3071)
(declare-fun hashCode/1739917532 (var3071) Int)
(declare-fun _name/-2056846942 (var1736) String)
(declare-fun _type/-2056846942 (var1736) var3052)
(declare-const null-var1736 var1736)
(declare-const null-var3071 var3071)
(declare-const null-String String)
(declare-const null-var3052 var3052)
(declare-const var3432 var1736) ; Statement: r0 := @this: org.javacc.utils.OptionInfo 
(assert (not (= var3432 null-var1736)))
(define-const var309 var3071 (_default/-2056846942 var3432)) ; Statement: $r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert (not (= var309 null-var3071))) ; Cond: $r1 != null 
(define-const var322 var3071 (_default/-2056846942 var3432)) ; Statement: $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert true)
(define-const var3295 Int (hashCode/1739917532 var322)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3282 Int (+ 31 var3295)) ; Statement: $i4 = 31 + $i5 
(define-const var1818 Int (* 31 var3282)) ; Statement: $i0 = 31 * $i4 
(define-const var1531 String (_name/-2056846942 var3432)) ; Statement: $r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert (not (not (= var1531 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var469 Int 0) ; Statement: $i6 = 0 
 ; Statement: goto [?= $i3 = $i0 + $i6] 
(assert true) ; Non Conditional
(define-const var3379 Int (+ var1818 var469)) ; Statement: $i3 = $i0 + $i6 
(define-const var736 Int (* 31 var3379)) ; Statement: $i1 = 31 * $i3 
(define-const var130 var3052 (_type/-2056846942 var3432)) ; Statement: $r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert (not (not (= var130 null-var3052)))) ; Negate: Cond: $r5 != null  
(define-const var3073 Int 0) ; Statement: $i7 = 0 
 ; Statement: goto [?= $i2 = $i1 + $i7] 
(assert true) ; Non Conditional
(define-const var708 Int (+ var736 var3073)) ; Statement: $i2 = $i1 + $i7 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {_default/-2056846942=([org.javacc.utils.OptionInfo], java.lang.Object), hashCode/1739917532=([java.lang.Object], int), _name/-2056846942=([org.javacc.utils.OptionInfo], java.lang.String), _type/-2056846942=([org.javacc.utils.OptionInfo], org.javacc.utils.OptionType)}
; {var1736=org.javacc.utils.OptionInfo, var3432=r0, var3071=java.lang.Object, var309=$r1, var322=$r2, var3295=$i5, var3282=$i4, var1818=$i0, var1531=$r3, var2048=null_type, var469=$i6, var3379=$i3, var736=$i1, var3052=org.javacc.utils.OptionType, var130=$r5, var3073=$i7, var708=$i2}
; {org.javacc.utils.OptionInfo=var1736, r0=var3432, java.lang.Object=var3071, $r1=var309, $r2=var322, $i5=var3295, $i4=var3282, $i0=var1818, $r3=var1531, null_type=var2048, $i6=var469, $i3=var3379, $i1=var736, org.javacc.utils.OptionType=var3052, $r5=var130, $i7=var3073, $i2=var708}
;seq 
;cnt {}
;stmts r0 := @this: org.javacc.utils.OptionInfo;	$r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$i5 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$i4 = 31 + $i5;	$i0 = 31 * $i4;	$r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$i6 = 0;	goto [?= $i3 = $i0 + $i6];	$i3 = $i0 + $i6;	$i1 = 31 * $i3;	$r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$i7 = 0;	goto [?= $i2 = $i1 + $i7];	$i2 = $i1 + $i7;	return $i2
;block_num 7