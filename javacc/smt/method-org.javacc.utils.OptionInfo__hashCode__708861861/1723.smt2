(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3618 0)
(declare-sort var3778 0)
(declare-sort var1566 0)
(declare-sort var2407 0)
(declare-sort var3589 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _default/-2056846942 (var3618) var3778)
(declare-fun hashCode/1739917532 (var3778) Int)
(declare-fun _name/-2056846942 (var3618) String)
(declare-fun _type/-2056846942 (var3618) var2407)
(declare-fun hashCode/385986394 (var3589) Int)
(declare-fun cast-from-var2407-to-var3589 (var2407) var3589)
(declare-const null-var3618 var3618)
(declare-const null-var3778 var3778)
(declare-const null-String String)
(declare-const null-var2407 var2407)
(declare-const var734 var3618) ; Statement: r0 := @this: org.javacc.utils.OptionInfo 
(assert (not (= var734 null-var3618)))
(define-const var3395 var3778 (_default/-2056846942 var734)) ; Statement: $r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert (not (= var3395 null-var3778))) ; Cond: $r1 != null 
(define-const var335 var3778 (_default/-2056846942 var734)) ; Statement: $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert true)
(define-const var1645 Int (hashCode/1739917532 var335)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var41 Int (+ 31 var1645)) ; Statement: $i4 = 31 + $i5 
(define-const var964 Int (* 31 var41)) ; Statement: $i0 = 31 * $i4 
(define-const var2514 String (_name/-2056846942 var734)) ; Statement: $r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert (not (not (= var2514 null-String)))) ; Negate: Cond: $r3 != null  
(define-const var2974 Int 0) ; Statement: $i6 = 0 
 ; Statement: goto [?= $i3 = $i0 + $i6] 
(assert true) ; Non Conditional
(define-const var2459 Int (+ var964 var2974)) ; Statement: $i3 = $i0 + $i6 
(define-const var1148 Int (* 31 var2459)) ; Statement: $i1 = 31 * $i3 
(define-const var2777 var2407 (_type/-2056846942 var734)) ; Statement: $r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert (not (= var2777 null-var2407))) ; Cond: $r5 != null 
(define-const var886 var2407 (_type/-2056846942 var734)) ; Statement: $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert true)
(define-const var2550 Int (hashCode/385986394 (cast-from-var2407-to-var3589 var886))) ; Statement: $i7 = virtualinvoke $r6.<org.javacc.utils.OptionType: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2111 Int (+ var1148 var2550)) ; Statement: $i2 = $i1 + $i7 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {_default/-2056846942=([org.javacc.utils.OptionInfo], java.lang.Object), hashCode/1739917532=([java.lang.Object], int), _name/-2056846942=([org.javacc.utils.OptionInfo], java.lang.String), _type/-2056846942=([org.javacc.utils.OptionInfo], org.javacc.utils.OptionType), hashCode/385986394=([java.lang.Enum], int), cast-from-var2407-to-var3589=([org.javacc.utils.OptionType], java.lang.Enum)}
; {var3618=org.javacc.utils.OptionInfo, var734=r0, var3778=java.lang.Object, var3395=$r1, var335=$r2, var1645=$i5, var41=$i4, var964=$i0, var2514=$r3, var1566=null_type, var2974=$i6, var2459=$i3, var1148=$i1, var2407=org.javacc.utils.OptionType, var2777=$r5, var886=$r6, var3589=java.lang.Enum, var2550=$i7, var2111=$i2}
; {org.javacc.utils.OptionInfo=var3618, r0=var734, java.lang.Object=var3778, $r1=var3395, $r2=var335, $i5=var1645, $i4=var41, $i0=var964, $r3=var2514, null_type=var1566, $i6=var2974, $i3=var2459, $i1=var1148, org.javacc.utils.OptionType=var2407, $r5=var2777, $r6=var886, java.lang.Enum=var3589, $i7=var2550, $i2=var2111}
;seq 
;cnt {}
;stmts r0 := @this: org.javacc.utils.OptionInfo;	$r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$i5 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$i4 = 31 + $i5;	$i0 = 31 * $i4;	$r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$i6 = 0;	goto [?= $i3 = $i0 + $i6];	$i3 = $i0 + $i6;	$i1 = 31 * $i3;	$r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$i7 = virtualinvoke $r6.<org.javacc.utils.OptionType: int hashCode()>();	$i2 = $i1 + $i7;	return $i2
;block_num 7