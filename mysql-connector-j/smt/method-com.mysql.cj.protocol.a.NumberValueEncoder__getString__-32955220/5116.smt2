(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3531 0)
(declare-sort var1447 0)
(declare-sort var1069 0)
(declare-sort var2820 0)
(declare-sort var3947 0)
(declare-sort var3285 0)
(declare-sort var3258 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1447_getValue/1809189437 (var1447) var1069)
(declare-fun cast-from-var1069-to-var2820 (var1069) var2820)
(declare-fun var1447_getMysqlType/-215853011 (var1447) var3285)
(declare-fun ordinal/-291641772 (var3258) Int)
(declare-fun cast-from-var3285-to-var3258 (var3285) var3258)
(declare-fun longValue/1015738669 (var2820) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var3531 var3531)
(declare-const null-var1447 var1447)
(declare-const var3947-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var2508 var3531) ; Statement: r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder 
(assert (not (= var2508 null-var3531)))
(declare-const var1805 var1447) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1805 null-var1447)))
(define-const var3601 var1069 (var1447_getValue/1809189437 var1805)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2917 Bool false) ; Statement: $z0 = $r1 instanceof java.math.BigDecimal 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert (= (ite var2917 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3500 var1069 (var1447_getValue/1809189437 var1805)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1026 var2820 (cast-from-var1069-to-var2820 var3500)) ; Statement: $r27 = (java.lang.Number) $r2 
(assert true) ; Non Conditional
(define-const var2488 (Array Int Int) var3947-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var2111 var3285 (var1447_getMysqlType/-215853011 var1805)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3056 Int (ordinal/-291641772 (cast-from-var3285-to-var3258 var2111))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var264 Int (select var2488 var3056)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; } 
(assert (and (= var264 12) (and (not (= var264 11)) (and (not (= var264 10)) (and (not (= var264 9)) (and (not (= var264 8)) (and (not (= var264 7)) (and (not (= var264 6)) (and (not (= var264 5)) (and (not (= var264 4)) (and (not (= var264 3)) (and (not (= var264 2)) (and (not (= var264 1)) true))))))))))))) ; Intersect: Cond: $i1 == 12  and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(assert true)
(define-const var2624 Int (longValue/1015738669 var1026)) ; Statement: $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>() 
(define-const var834 String (String_valueOf/-107395227 var2624)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l2) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1447_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1069-to-var2820=([java.lang.Object], java.lang.Number), var1447_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3285-to-var3258=([com.mysql.cj.MysqlType], java.lang.Enum), longValue/1015738669=([java.lang.Number], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var3531=com.mysql.cj.protocol.a.NumberValueEncoder, var2508=r20, var1447=com.mysql.cj.BindValue, var1805=r0, var1069=java.lang.Object, var3601=$r1, var2917=$z0, var3500=$r2, var2820=java.lang.Number, var1026=$r27, var3947=com.mysql.cj.protocol.a.NumberValueEncoder$1, var2488=$r3, var3285=com.mysql.cj.MysqlType, var2111=$r4, var3258=java.lang.Enum, var3056=$i0, var264=$i1, var2624=$l2, var834=$r11}
; {com.mysql.cj.protocol.a.NumberValueEncoder=var3531, r20=var2508, com.mysql.cj.BindValue=var1447, r0=var1805, java.lang.Object=var1069, $r1=var3601, $z0=var2917, $r2=var3500, java.lang.Number=var2820, $r27=var1026, com.mysql.cj.protocol.a.NumberValueEncoder$1=var3947, $r3=var2488, com.mysql.cj.MysqlType=var3285, $r4=var2111, java.lang.Enum=var3258, $i0=var3056, $i1=var264, $l2=var2624, $r11=var834}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$z0 = $r1 instanceof java.math.BigDecimal;	if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r27 = (java.lang.Number) $r2;	$r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; };	$l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();	$r11 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l2);	return $r11
;block_num 4