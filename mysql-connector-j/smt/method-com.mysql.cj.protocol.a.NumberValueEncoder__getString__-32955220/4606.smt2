(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2187 0)
(declare-sort var152 0)
(declare-sort var2449 0)
(declare-sort var1895 0)
(declare-sort var2670 0)
(declare-sort var968 0)
(declare-sort var1576 0)
(declare-sort var1033 0)
(declare-sort var1977 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var152_getValue/1809189437 (var152) var2449)
(declare-fun cast-from-var2449-to-var1895 (var2449) var1895)
(declare-fun var152_getScaleOrLength/-620558396 (var152) Int)
(declare-fun cast-from-var1895-to-var2670 (var1895) var2670)
(declare-fun getScaled/575983753 (var968 var1895 Int) var1895)
(declare-fun cast-from-var2187-to-var968 (var2187) var968)
(declare-fun var152_getMysqlType/-215853011 (var152) var1033)
(declare-fun ordinal/-291641772 (var1977) Int)
(declare-fun cast-from-var1033-to-var1977 (var1033) var1977)
(declare-fun intValue/207705611 (var2670) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var2187 var2187)
(declare-const null-var152 var152)
(declare-const var1576-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3045 var2187) ; Statement: r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder 
(assert (not (= var3045 null-var2187)))
(declare-const var2565 var152) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var2565 null-var152)))
(define-const var3711 var2449 (var152_getValue/1809189437 var2565)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2240 Bool false) ; Statement: $z0 = $r1 instanceof java.math.BigDecimal 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert (not (= (ite var2240 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3170 var2449 (var152_getValue/1809189437 var2565)) ; Statement: $r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1562 var1895 (cast-from-var2449-to-var1895 var3170)) ; Statement: $r26 = (java.math.BigDecimal) $r25 
(define-const var3374 Int (var152_getScaleOrLength/-620558396 var2565)) ; Statement: $l6 = interfaceinvoke r0.<com.mysql.cj.BindValue: long getScaleOrLength()>() 
(assert true)
(define-const var724 var2670 (cast-from-var1895-to-var2670 (getScaled/575983753 (cast-from-var2187-to-var968 var3045) var1562 var3374))) ; Statement: $r27 = virtualinvoke r20.<com.mysql.cj.protocol.a.NumberValueEncoder: java.math.BigDecimal getScaled(java.math.BigDecimal,long)>($r26, $l6) 
 ; Statement: goto [?= $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>] 
(assert true) ; Non Conditional
(define-const var2726 (Array Int Int) var1576-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var940 var1033 (var152_getMysqlType/-215853011 var2565)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3941 Int (ordinal/-291641772 (cast-from-var1033-to-var1977 var940))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var920 Int (select var2726 var3941)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; } 
(assert (and (= var920 3) (and (not (= var920 2)) (and (not (= var920 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(assert true)
(define-const var3407 Int (intValue/207705611 var724)) ; Statement: $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>() 
(define-const var845 String (String_valueOf/1240665136 var3407)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var152_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2449-to-var1895=([java.lang.Object], java.math.BigDecimal), var152_getScaleOrLength/-620558396=([com.mysql.cj.BindValue], long), cast-from-var1895-to-var2670=([java.math.BigDecimal], java.lang.Number), getScaled/575983753=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.math.BigDecimal, long], java.math.BigDecimal), cast-from-var2187-to-var968=([com.mysql.cj.protocol.a.NumberValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var152_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1033-to-var1977=([com.mysql.cj.MysqlType], java.lang.Enum), intValue/207705611=([java.lang.Number], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var2187=com.mysql.cj.protocol.a.NumberValueEncoder, var3045=r20, var152=com.mysql.cj.BindValue, var2565=r0, var2449=java.lang.Object, var3711=$r1, var2240=$z0, var3170=$r25, var1895=java.math.BigDecimal, var1562=$r26, var3374=$l6, var2670=java.lang.Number, var968=com.mysql.cj.protocol.a.AbstractValueEncoder, var724=$r27, var1576=com.mysql.cj.protocol.a.NumberValueEncoder$1, var2726=$r3, var1033=com.mysql.cj.MysqlType, var940=$r4, var1977=java.lang.Enum, var3941=$i0, var920=$i1, var3407=$i3, var845=$r12}
; {com.mysql.cj.protocol.a.NumberValueEncoder=var2187, r20=var3045, com.mysql.cj.BindValue=var152, r0=var2565, java.lang.Object=var2449, $r1=var3711, $z0=var2240, $r25=var3170, java.math.BigDecimal=var1895, $r26=var1562, $l6=var3374, java.lang.Number=var2670, com.mysql.cj.protocol.a.AbstractValueEncoder=var968, $r27=var724, com.mysql.cj.protocol.a.NumberValueEncoder$1=var1576, $r3=var2726, com.mysql.cj.MysqlType=var1033, $r4=var940, java.lang.Enum=var1977, $i0=var3941, $i1=var920, $i3=var3407, $r12=var845}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$z0 = $r1 instanceof java.math.BigDecimal;	if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r26 = (java.math.BigDecimal) $r25;	$l6 = interfaceinvoke r0.<com.mysql.cj.BindValue: long getScaleOrLength()>();	$r27 = virtualinvoke r20.<com.mysql.cj.protocol.a.NumberValueEncoder: java.math.BigDecimal getScaled(java.math.BigDecimal,long)>($r26, $l6);	goto [?= $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>];	$r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; };	$i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	return $r12
;block_num 4