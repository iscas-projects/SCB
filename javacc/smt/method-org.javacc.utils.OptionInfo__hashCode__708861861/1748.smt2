(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var480 0)
(declare-sort var1548 0)
(declare-sort var2535 0)
(declare-sort var2141 0)
(declare-sort var1159 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _default/-2056846942 (var480) var1548)
(declare-fun hashCode/1739917532 (var1548) Int)
(declare-fun _name/-2056846942 (var480) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun _type/-2056846942 (var480) var2141)
(declare-fun hashCode/385986394 (var1159) Int)
(declare-fun cast-from-var2141-to-var1159 (var2141) var1159)
(declare-const null-var480 var480)
(declare-const null-var1548 var1548)
(declare-const null-String String)
(declare-const null-var2141 var2141)
(declare-const var199 var480) ; Statement: r0 := @this: org.javacc.utils.OptionInfo 
(assert (not (= var199 null-var480)))
(define-const var126 var1548 (_default/-2056846942 var199)) ; Statement: $r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert (not (= var126 null-var1548))) ; Cond: $r1 != null 
(define-const var1636 var1548 (_default/-2056846942 var199)) ; Statement: $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert true)
(define-const var202 Int (hashCode/1739917532 var1636)) ; Statement: $i5 = virtualinvoke $r2.<java.lang.Object: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1261 Int (+ 31 var202)) ; Statement: $i4 = 31 + $i5 
(define-const var1417 Int (* 31 var1261)) ; Statement: $i0 = 31 * $i4 
(define-const var3764 String (_name/-2056846942 var199)) ; Statement: $r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert (not (= var3764 null-String))) ; Cond: $r3 != null 
(define-const var1032 String (_name/-2056846942 var199)) ; Statement: $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert true)
(define-const var1264 Int (hashCode/-467973558 var1032)) ; Statement: $i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2883 Int (+ var1417 var1264)) ; Statement: $i3 = $i0 + $i6 
(define-const var2371 Int (* 31 var2883)) ; Statement: $i1 = 31 * $i3 
(define-const var3069 var2141 (_type/-2056846942 var199)) ; Statement: $r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert (not (= var3069 null-var2141))) ; Cond: $r5 != null 
(define-const var3836 var2141 (_type/-2056846942 var199)) ; Statement: $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert true)
(define-const var1061 Int (hashCode/385986394 (cast-from-var2141-to-var1159 var3836))) ; Statement: $i7 = virtualinvoke $r6.<org.javacc.utils.OptionType: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3843 Int (+ var2371 var1061)) ; Statement: $i2 = $i1 + $i7 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {_default/-2056846942=([org.javacc.utils.OptionInfo], java.lang.Object), hashCode/1739917532=([java.lang.Object], int), _name/-2056846942=([org.javacc.utils.OptionInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), _type/-2056846942=([org.javacc.utils.OptionInfo], org.javacc.utils.OptionType), hashCode/385986394=([java.lang.Enum], int), cast-from-var2141-to-var1159=([org.javacc.utils.OptionType], java.lang.Enum)}
; {var480=org.javacc.utils.OptionInfo, var199=r0, var1548=java.lang.Object, var126=$r1, var1636=$r2, var202=$i5, var1261=$i4, var1417=$i0, var3764=$r3, var2535=null_type, var1032=$r4, var1264=$i6, var2883=$i3, var2371=$i1, var2141=org.javacc.utils.OptionType, var3069=$r5, var3836=$r6, var1159=java.lang.Enum, var1061=$i7, var3843=$i2}
; {org.javacc.utils.OptionInfo=var480, r0=var199, java.lang.Object=var1548, $r1=var126, $r2=var1636, $i5=var202, $i4=var1261, $i0=var1417, $r3=var3764, null_type=var2535, $r4=var1032, $i6=var1264, $i3=var2883, $i1=var2371, org.javacc.utils.OptionType=var2141, $r5=var3069, $r6=var3836, java.lang.Enum=var1159, $i7=var1061, $i2=var3843}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.javacc.utils.OptionInfo;	$r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$i5 = virtualinvoke $r2.<java.lang.Object: int hashCode()>();	$i4 = 31 + $i5;	$i0 = 31 * $i4;	$r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i3 = $i0 + $i6;	$i1 = 31 * $i3;	$r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$i7 = virtualinvoke $r6.<org.javacc.utils.OptionType: int hashCode()>();	$i2 = $i1 + $i7;	return $i2
;block_num 7