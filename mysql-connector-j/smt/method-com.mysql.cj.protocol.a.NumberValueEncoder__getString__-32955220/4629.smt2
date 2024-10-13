(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var724 0)
(declare-sort var3626 0)
(declare-sort var3467 0)
(declare-sort var777 0)
(declare-sort var164 0)
(declare-sort var886 0)
(declare-sort var2347 0)
(declare-sort var704 0)
(declare-sort var3494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3626_getValue/1809189437 (var3626) var3467)
(declare-fun cast-from-var3467-to-var777 (var3467) var777)
(declare-fun var3626_getScaleOrLength/-620558396 (var3626) Int)
(declare-fun cast-from-var777-to-var164 (var777) var164)
(declare-fun getScaled/575983753 (var886 var777 Int) var777)
(declare-fun cast-from-var724-to-var886 (var724) var886)
(declare-fun var3626_getMysqlType/-215853011 (var3626) var704)
(declare-fun ordinal/-291641772 (var3494) Int)
(declare-fun cast-from-var704-to-var3494 (var704) var3494)
(declare-fun longValue/1015738669 (var164) Int)
(declare-fun String_valueOf/-107395227 (Int) String)
(declare-const null-var724 var724)
(declare-const null-var3626 var3626)
(declare-const var2347-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var2758 var724) ; Statement: r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder 
(assert (not (= var2758 null-var724)))
(declare-const var493 var3626) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var493 null-var3626)))
(define-const var868 var3467 (var3626_getValue/1809189437 var493)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1205 Bool false) ; Statement: $z0 = $r1 instanceof java.math.BigDecimal 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert (not (= (ite var1205 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2286 var3467 (var3626_getValue/1809189437 var493)) ; Statement: $r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1765 var777 (cast-from-var3467-to-var777 var2286)) ; Statement: $r26 = (java.math.BigDecimal) $r25 
(define-const var1322 Int (var3626_getScaleOrLength/-620558396 var493)) ; Statement: $l6 = interfaceinvoke r0.<com.mysql.cj.BindValue: long getScaleOrLength()>() 
(assert true)
(define-const var2031 var164 (cast-from-var777-to-var164 (getScaled/575983753 (cast-from-var724-to-var886 var2758) var1765 var1322))) ; Statement: $r27 = virtualinvoke r20.<com.mysql.cj.protocol.a.NumberValueEncoder: java.math.BigDecimal getScaled(java.math.BigDecimal,long)>($r26, $l6) 
 ; Statement: goto [?= $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>] 
(assert true) ; Non Conditional
(define-const var860 (Array Int Int) var2347-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1661 var704 (var3626_getMysqlType/-215853011 var493)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3526 Int (ordinal/-291641772 (cast-from-var704-to-var3494 var1661))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2538 Int (select var860 var3526)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2538 12) (and (not (= var2538 11)) (and (not (= var2538 10)) (and (not (= var2538 9)) (and (not (= var2538 8)) (and (not (= var2538 7)) (and (not (= var2538 6)) (and (not (= var2538 5)) (and (not (= var2538 4)) (and (not (= var2538 3)) (and (not (= var2538 2)) (and (not (= var2538 1)) true))))))))))))) ; Intersect: Cond: $i1 == 12  and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(assert true)
(define-const var2962 Int (longValue/1015738669 var2031)) ; Statement: $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>() 
(define-const var455 String (String_valueOf/-107395227 var2962)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l2) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3626_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var3467-to-var777=([java.lang.Object], java.math.BigDecimal), var3626_getScaleOrLength/-620558396=([com.mysql.cj.BindValue], long), cast-from-var777-to-var164=([java.math.BigDecimal], java.lang.Number), getScaled/575983753=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.math.BigDecimal, long], java.math.BigDecimal), cast-from-var724-to-var886=([com.mysql.cj.protocol.a.NumberValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var3626_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var704-to-var3494=([com.mysql.cj.MysqlType], java.lang.Enum), longValue/1015738669=([java.lang.Number], long), String_valueOf/-107395227=([long], java.lang.String)}
; {var724=com.mysql.cj.protocol.a.NumberValueEncoder, var2758=r20, var3626=com.mysql.cj.BindValue, var493=r0, var3467=java.lang.Object, var868=$r1, var1205=$z0, var2286=$r25, var777=java.math.BigDecimal, var1765=$r26, var1322=$l6, var164=java.lang.Number, var886=com.mysql.cj.protocol.a.AbstractValueEncoder, var2031=$r27, var2347=com.mysql.cj.protocol.a.NumberValueEncoder$1, var860=$r3, var704=com.mysql.cj.MysqlType, var1661=$r4, var3494=java.lang.Enum, var3526=$i0, var2538=$i1, var2962=$l2, var455=$r11}
; {com.mysql.cj.protocol.a.NumberValueEncoder=var724, r20=var2758, com.mysql.cj.BindValue=var3626, r0=var493, java.lang.Object=var3467, $r1=var868, $z0=var1205, $r25=var2286, java.math.BigDecimal=var777, $r26=var1765, $l6=var1322, java.lang.Number=var164, com.mysql.cj.protocol.a.AbstractValueEncoder=var886, $r27=var2031, com.mysql.cj.protocol.a.NumberValueEncoder$1=var2347, $r3=var860, com.mysql.cj.MysqlType=var704, $r4=var1661, java.lang.Enum=var3494, $i0=var3526, $i1=var2538, $l2=var2962, $r11=var455}
;seq <java.lang.String: java.lang.String valueOf(long)>
;cnt {"<java.lang.String: java.lang.String valueOf(long)>": 1}
;stmts r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$z0 = $r1 instanceof java.math.BigDecimal;	if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r26 = (java.math.BigDecimal) $r25;	$l6 = interfaceinvoke r0.<com.mysql.cj.BindValue: long getScaleOrLength()>();	$r27 = virtualinvoke r20.<com.mysql.cj.protocol.a.NumberValueEncoder: java.math.BigDecimal getScaled(java.math.BigDecimal,long)>($r26, $l6);	goto [?= $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>];	$r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; };	$l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();	$r11 = staticinvoke <java.lang.String: java.lang.String valueOf(long)>($l2);	return $r11
;block_num 4