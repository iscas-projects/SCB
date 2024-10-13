(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var459 0)
(declare-sort var2163 0)
(declare-sort var2420 0)
(declare-sort var2042 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/-291641772 (var2042) Int)
(declare-fun cast-from-var459-to-var2042 (var459) var2042)
(declare-const null-var459 var459)
(declare-const null-String String)
(declare-const var2420-$SwitchMap$cn$hutool$core$date$Week (Array Int Int))
(declare-const var215 var459) ; Statement: r0 := @this: cn.hutool.core.date.Week 
(assert (not (= var215 null-var459)))
(declare-const var3116 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3116 null-String)))
(define-const var2829 (Array Int Int) var2420-$SwitchMap$cn$hutool$core$date$Week) ; Statement: $r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week> 
(assert true)
(define-const var1480 Int (ordinal/-291641772 (cast-from-var459-to-var2042 var215))) ; Statement: $i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>() 
(define-const var2009 Int (select var2829 var1480)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; } 
(assert (and (not (= var2009 7)) (and (not (= var2009 6)) (and (not (= var2009 5)) (and (not (= var2009 4)) (and (not (= var2009 3)) (and (not (= var2009 2)) (and (not (= var2009 1)) true)))))))) ; Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional       
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/-291641772=([java.lang.Enum], int), cast-from-var459-to-var2042=([cn.hutool.core.date.Week], java.lang.Enum)}
; {var459=cn.hutool.core.date.Week, var215=r0, var3116=r3, var2163=null_type, var2420=cn.hutool.core.date.Week$1, var2829=$r1, var2042=java.lang.Enum, var1480=$i0, var2009=$i1}
; {cn.hutool.core.date.Week=var459, r0=var215, r3=var3116, null_type=var2163, cn.hutool.core.date.Week$1=var2420, $r1=var2829, java.lang.Enum=var2042, $i0=var1480, $i1=var2009}
;seq 
;cnt {}
;stmts r0 := @this: cn.hutool.core.date.Week;	r3 := @parameter0: java.lang.String;	$r1 = <cn.hutool.core.date.Week$1: int[] $SwitchMap$cn$hutool$core$date$Week>;	$i0 = virtualinvoke r0.<cn.hutool.core.date.Week: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto $r27 = new java.lang.StringBuilder;     case 2: goto $r23 = new java.lang.StringBuilder;     case 3: goto $r19 = new java.lang.StringBuilder;     case 4: goto $r15 = new java.lang.StringBuilder;     case 5: goto $r11 = new java.lang.StringBuilder;     case 6: goto $r7 = new java.lang.StringBuilder;     case 7: goto $r2 = new java.lang.StringBuilder;     default: goto return null; };	return null
;block_num 2