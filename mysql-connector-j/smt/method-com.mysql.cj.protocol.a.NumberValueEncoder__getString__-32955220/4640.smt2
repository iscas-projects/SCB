(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1813 0)
(declare-sort var653 0)
(declare-sort var1714 0)
(declare-sort var427 0)
(declare-sort var1287 0)
(declare-sort var3926 0)
(declare-sort var2302 0)
(declare-sort var161 0)
(declare-sort var3922 0)
(declare-sort var3400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var653_getValue/1809189437 (var653) var1714)
(declare-fun cast-from-var1714-to-var427 (var1714) var427)
(declare-fun var653_getScaleOrLength/-620558396 (var653) Int)
(declare-fun cast-from-var427-to-var1287 (var427) var1287)
(declare-fun getScaled/575983753 (var3926 var427 Int) var427)
(declare-fun cast-from-var1813-to-var3926 (var1813) var3926)
(declare-fun var653_getMysqlType/-215853011 (var653) var161)
(declare-fun ordinal/-291641772 (var3922) Int)
(declare-fun cast-from-var161-to-var3922 (var161) var3922)
(declare-fun floatValue/1369160421 (var1287) Float32)
(declare-fun Float32_toString/1458027134 (Float32) String)
(declare-fun var3400_fixDecimalExponent/1765417736 (String) String)
(declare-const null-var1813 var1813)
(declare-const null-var653 var653)
(declare-const var2302-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1628 var1813) ; Statement: r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder 
(assert (not (= var1628 null-var1813)))
(declare-const var3653 var653) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3653 null-var653)))
(define-const var3818 var1714 (var653_getValue/1809189437 var3653)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1167 Bool false) ; Statement: $z0 = $r1 instanceof java.math.BigDecimal 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert (not (= (ite var1167 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1971 var1714 (var653_getValue/1809189437 var3653)) ; Statement: $r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var607 var427 (cast-from-var1714-to-var427 var1971)) ; Statement: $r26 = (java.math.BigDecimal) $r25 
(define-const var146 Int (var653_getScaleOrLength/-620558396 var3653)) ; Statement: $l6 = interfaceinvoke r0.<com.mysql.cj.BindValue: long getScaleOrLength()>() 
(assert true)
(define-const var2866 var1287 (cast-from-var427-to-var1287 (getScaled/575983753 (cast-from-var1813-to-var3926 var1628) var607 var146))) ; Statement: $r27 = virtualinvoke r20.<com.mysql.cj.protocol.a.NumberValueEncoder: java.math.BigDecimal getScaled(java.math.BigDecimal,long)>($r26, $l6) 
 ; Statement: goto [?= $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>] 
(assert true) ; Non Conditional
(define-const var159 (Array Int Int) var2302-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var2368 var161 (var653_getMysqlType/-215853011 var3653)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3049 Int (ordinal/-291641772 (cast-from-var161-to-var3922 var2368))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var820 Int (select var159 var3049)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; } 
(assert (and (= var820 15) (and (not (= var820 14)) (and (not (= var820 13)) (and (not (= var820 12)) (and (not (= var820 11)) (and (not (= var820 10)) (and (not (= var820 9)) (and (not (= var820 8)) (and (not (= var820 7)) (and (not (= var820 6)) (and (not (= var820 5)) (and (not (= var820 4)) (and (not (= var820 3)) (and (not (= var820 2)) (and (not (= var820 1)) true)))))))))))))))) ; Intersect: Cond: $i1 == 15  and Intersect: Negate: Cond: $i1 == 14   and Intersect: Negate: Cond: $i1 == 13   and Intersect: Negate: Cond: $i1 == 12   and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional               
(assert true)
(define-const var305 Float32 (floatValue/1369160421 var2866)) ; Statement: $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>() 
(define-const var2837 String (Float32_toString/1458027134 var305)) ; Statement: $r9 = staticinvoke <java.lang.Float: java.lang.String toString(float)>($f0) 
(define-const var1485 String (var3400_fixDecimalExponent/1765417736 var2837)) ; Statement: $r10 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String fixDecimalExponent(java.lang.String)>($r9) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var653_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1714-to-var427=([java.lang.Object], java.math.BigDecimal), var653_getScaleOrLength/-620558396=([com.mysql.cj.BindValue], long), cast-from-var427-to-var1287=([java.math.BigDecimal], java.lang.Number), getScaled/575983753=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.math.BigDecimal, long], java.math.BigDecimal), cast-from-var1813-to-var3926=([com.mysql.cj.protocol.a.NumberValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var653_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var161-to-var3922=([com.mysql.cj.MysqlType], java.lang.Enum), floatValue/1369160421=([java.lang.Number], float), Float32_toString/1458027134=([float], java.lang.String), var3400_fixDecimalExponent/1765417736=([java.lang.String], java.lang.String)}
; {var1813=com.mysql.cj.protocol.a.NumberValueEncoder, var1628=r20, var653=com.mysql.cj.BindValue, var3653=r0, var1714=java.lang.Object, var3818=$r1, var1167=$z0, var1971=$r25, var427=java.math.BigDecimal, var607=$r26, var146=$l6, var1287=java.lang.Number, var3926=com.mysql.cj.protocol.a.AbstractValueEncoder, var2866=$r27, var2302=com.mysql.cj.protocol.a.NumberValueEncoder$1, var159=$r3, var161=com.mysql.cj.MysqlType, var2368=$r4, var3922=java.lang.Enum, var3049=$i0, var820=$i1, var305=$f0, var2837=$r9, var3400=com.mysql.cj.util.StringUtils, var1485=$r10}
; {com.mysql.cj.protocol.a.NumberValueEncoder=var1813, r20=var1628, com.mysql.cj.BindValue=var653, r0=var3653, java.lang.Object=var1714, $r1=var3818, $z0=var1167, $r25=var1971, java.math.BigDecimal=var427, $r26=var607, $l6=var146, java.lang.Number=var1287, com.mysql.cj.protocol.a.AbstractValueEncoder=var3926, $r27=var2866, com.mysql.cj.protocol.a.NumberValueEncoder$1=var2302, $r3=var159, com.mysql.cj.MysqlType=var161, $r4=var2368, java.lang.Enum=var3922, $i0=var3049, $i1=var820, $f0=var305, $r9=var2837, com.mysql.cj.util.StringUtils=var3400, $r10=var1485}
;seq <java.lang.Float: java.lang.String toString(float)>
;cnt {}
;stmts r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$z0 = $r1 instanceof java.math.BigDecimal;	if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r25 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r26 = (java.math.BigDecimal) $r25;	$l6 = interfaceinvoke r0.<com.mysql.cj.BindValue: long getScaleOrLength()>();	$r27 = virtualinvoke r20.<com.mysql.cj.protocol.a.NumberValueEncoder: java.math.BigDecimal getScaled(java.math.BigDecimal,long)>($r26, $l6);	goto [?= $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>];	$r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; };	$f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();	$r9 = staticinvoke <java.lang.Float: java.lang.String toString(float)>($f0);	$r10 = staticinvoke <com.mysql.cj.util.StringUtils: java.lang.String fixDecimalExponent(java.lang.String)>($r9);	return $r10
;block_num 4