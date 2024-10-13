(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var388 0)
(declare-sort var3950 0)
(declare-sort var2855 0)
(declare-sort var3851 0)
(declare-sort var2169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun _default/-2056846942 (var388) var3950)
(declare-fun _name/-2056846942 (var388) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun _type/-2056846942 (var388) var3851)
(declare-fun hashCode/385986394 (var2169) Int)
(declare-fun cast-from-var3851-to-var2169 (var3851) var2169)
(declare-const null-var388 var388)
(declare-const null-var3950 var3950)
(declare-const null-String String)
(declare-const null-var3851 var3851)
(declare-const var2412 var388) ; Statement: r0 := @this: org.javacc.utils.OptionInfo 
(assert (not (= var2412 null-var388)))
(define-const var316 var3950 (_default/-2056846942 var2412)) ; Statement: $r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default> 
(assert (not (not (= var316 null-var3950)))) ; Negate: Cond: $r1 != null  
(define-const var2418 Int 0) ; Statement: $i5 = 0 
 ; Statement: goto [?= $i4 = 31 + $i5] 
(assert true) ; Non Conditional
(define-const var1468 Int (+ 31 var2418)) ; Statement: $i4 = 31 + $i5 
(define-const var2637 Int (* 31 var1468)) ; Statement: $i0 = 31 * $i4 
(define-const var1289 String (_name/-2056846942 var2412)) ; Statement: $r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
 ; Statement: if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert (not (= var1289 null-String))) ; Cond: $r3 != null 
(define-const var3346 String (_name/-2056846942 var2412)) ; Statement: $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name> 
(assert true)
(define-const var2735 Int (hashCode/-467973558 var3346)) ; Statement: $i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var711 Int (+ var2637 var2735)) ; Statement: $i3 = $i0 + $i6 
(define-const var2988 Int (* 31 var711)) ; Statement: $i1 = 31 * $i3 
(define-const var2501 var3851 (_type/-2056846942 var2412)) ; Statement: $r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert (not (= var2501 null-var3851))) ; Cond: $r5 != null 
(define-const var2342 var3851 (_type/-2056846942 var2412)) ; Statement: $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type> 
(assert true)
(define-const var3434 Int (hashCode/385986394 (cast-from-var3851-to-var2169 var2342))) ; Statement: $i7 = virtualinvoke $r6.<org.javacc.utils.OptionType: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2289 Int (+ var2988 var3434)) ; Statement: $i2 = $i1 + $i7 
 ; Statement: return $i2 
(check-sat)
(get-model)
(get-unsat-core)
; {_default/-2056846942=([org.javacc.utils.OptionInfo], java.lang.Object), _name/-2056846942=([org.javacc.utils.OptionInfo], java.lang.String), hashCode/-467973558=([java.lang.String], int), _type/-2056846942=([org.javacc.utils.OptionInfo], org.javacc.utils.OptionType), hashCode/385986394=([java.lang.Enum], int), cast-from-var3851-to-var2169=([org.javacc.utils.OptionType], java.lang.Enum)}
; {var388=org.javacc.utils.OptionInfo, var2412=r0, var3950=java.lang.Object, var316=$r1, var2418=$i5, var1468=$i4, var2637=$i0, var1289=$r3, var2855=null_type, var3346=$r4, var2735=$i6, var711=$i3, var2988=$i1, var3851=org.javacc.utils.OptionType, var2501=$r5, var2342=$r6, var2169=java.lang.Enum, var3434=$i7, var2289=$i2}
; {org.javacc.utils.OptionInfo=var388, r0=var2412, java.lang.Object=var3950, $r1=var316, $i5=var2418, $i4=var1468, $i0=var2637, $r3=var1289, null_type=var2855, $r4=var3346, $i6=var2735, $i3=var711, $i1=var2988, org.javacc.utils.OptionType=var3851, $r5=var2501, $r6=var2342, java.lang.Enum=var2169, $i7=var3434, $i2=var2289}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.javacc.utils.OptionInfo;	$r1 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	if $r1 != null goto $r2 = r0.<org.javacc.utils.OptionInfo: java.lang.Object _default>;	$i5 = 0;	goto [?= $i4 = 31 + $i5];	$i4 = 31 + $i5;	$i0 = 31 * $i4;	$r3 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	if $r3 != null goto $r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$r4 = r0.<org.javacc.utils.OptionInfo: java.lang.String _name>;	$i6 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i3 = $i0 + $i6;	$i1 = 31 * $i3;	$r5 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	if $r5 != null goto $r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$r6 = r0.<org.javacc.utils.OptionInfo: org.javacc.utils.OptionType _type>;	$i7 = virtualinvoke $r6.<org.javacc.utils.OptionType: int hashCode()>();	$i2 = $i1 + $i7;	return $i2
;block_num 7