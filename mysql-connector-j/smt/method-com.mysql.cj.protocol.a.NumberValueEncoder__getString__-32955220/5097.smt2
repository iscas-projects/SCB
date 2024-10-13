(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2900 0)
(declare-sort var1635 0)
(declare-sort var127 0)
(declare-sort var1588 0)
(declare-sort var3562 0)
(declare-sort var227 0)
(declare-sort var1291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1635_getValue/1809189437 (var1635) var127)
(declare-fun cast-from-var127-to-var1588 (var127) var1588)
(declare-fun var1635_getMysqlType/-215853011 (var1635) var227)
(declare-fun ordinal/-291641772 (var1291) Int)
(declare-fun cast-from-var227-to-var1291 (var227) var1291)
(declare-const null-var2900 var2900)
(declare-const null-var1635 var1635)
(declare-const var3562-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var249 var2900) ; Statement: r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder 
(assert (not (= var249 null-var2900)))
(declare-const var954 var1635) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var954 null-var1635)))
(define-const var3768 var127 (var1635_getValue/1809189437 var954)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2412 Bool false) ; Statement: $z0 = $r1 instanceof java.math.BigDecimal 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert (= (ite var2412 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3552 var127 (var1635_getValue/1809189437 var954)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var618 var1588 (cast-from-var127-to-var1588 var3552)) ; Statement: $r27 = (java.lang.Number) $r2 
(assert true) ; Non Conditional
(define-const var1747 (Array Int Int) var3562-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1670 var227 (var1635_getMysqlType/-215853011 var954)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var962 Int (ordinal/-291641772 (cast-from-var227-to-var1291 var1670))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2177 Int (select var1747 var962)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2177 1) true)) ; Intersect: Cond: $i1 == 1  and Non Conditional 
 ; Statement: return "null" 
(check-sat)
(get-model)
(get-unsat-core)
; {var1635_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var127-to-var1588=([java.lang.Object], java.lang.Number), var1635_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var227-to-var1291=([com.mysql.cj.MysqlType], java.lang.Enum)}
; {var2900=com.mysql.cj.protocol.a.NumberValueEncoder, var249=r20, var1635=com.mysql.cj.BindValue, var954=r0, var127=java.lang.Object, var3768=$r1, var2412=$z0, var3552=$r2, var1588=java.lang.Number, var618=$r27, var3562=com.mysql.cj.protocol.a.NumberValueEncoder$1, var1747=$r3, var227=com.mysql.cj.MysqlType, var1670=$r4, var1291=java.lang.Enum, var962=$i0, var2177=$i1}
; {com.mysql.cj.protocol.a.NumberValueEncoder=var2900, r20=var249, com.mysql.cj.BindValue=var1635, r0=var954, java.lang.Object=var127, $r1=var3768, $z0=var2412, $r2=var3552, java.lang.Number=var1588, $r27=var618, com.mysql.cj.protocol.a.NumberValueEncoder$1=var3562, $r3=var1747, com.mysql.cj.MysqlType=var227, $r4=var1670, java.lang.Enum=var1291, $i0=var962, $i1=var2177}
;seq 
;cnt {}
;stmts r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$z0 = $r1 instanceof java.math.BigDecimal;	if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r27 = (java.lang.Number) $r2;	$r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; };	return "null"
;block_num 4