(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var726 0)
(declare-sort var267 0)
(declare-sort var1311 0)
(declare-sort var1308 0)
(declare-sort var1305 0)
(declare-sort var3634 0)
(declare-sort var624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var267_getValue/1809189437 (var267) var1311)
(declare-fun cast-from-var1311-to-var1308 (var1311) var1308)
(declare-fun var267_getMysqlType/-215853011 (var267) var3634)
(declare-fun ordinal/-291641772 (var624) Int)
(declare-fun cast-from-var3634-to-var624 (var3634) var624)
(declare-fun intValue/207705611 (var1308) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var726 var726)
(declare-const null-var267 var267)
(declare-const var1305-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var320 var726) ; Statement: r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder 
(assert (not (= var320 null-var726)))
(declare-const var1514 var267) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1514 null-var267)))
(define-const var2954 var1311 (var267_getValue/1809189437 var1514)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2871 Bool false) ; Statement: $z0 = $r1 instanceof java.math.BigDecimal 
 ; Statement: if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(assert (= (ite var2871 1 0) 0)) ; Cond: $z0 == 0 
(define-const var786 var1311 (var267_getValue/1809189437 var1514)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2320 var1308 (cast-from-var1311-to-var1308 var786)) ; Statement: $r27 = (java.lang.Number) $r2 
(assert true) ; Non Conditional
(define-const var2958 (Array Int Int) var1305-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1279 var3634 (var267_getMysqlType/-215853011 var1514)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2395 Int (ordinal/-291641772 (cast-from-var3634-to-var624 var1279))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2002 Int (select var2958 var2395)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2002 3) (and (not (= var2002 2)) (and (not (= var2002 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(assert true)
(define-const var3254 Int (intValue/207705611 var2320)) ; Statement: $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>() 
(define-const var642 String (String_valueOf/1240665136 var3254)) ; Statement: $r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var267_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1311-to-var1308=([java.lang.Object], java.lang.Number), var267_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3634-to-var624=([com.mysql.cj.MysqlType], java.lang.Enum), intValue/207705611=([java.lang.Number], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var726=com.mysql.cj.protocol.a.NumberValueEncoder, var320=r20, var267=com.mysql.cj.BindValue, var1514=r0, var1311=java.lang.Object, var2954=$r1, var2871=$z0, var786=$r2, var1308=java.lang.Number, var2320=$r27, var1305=com.mysql.cj.protocol.a.NumberValueEncoder$1, var2958=$r3, var3634=com.mysql.cj.MysqlType, var1279=$r4, var624=java.lang.Enum, var2395=$i0, var2002=$i1, var3254=$i3, var642=$r12}
; {com.mysql.cj.protocol.a.NumberValueEncoder=var726, r20=var320, com.mysql.cj.BindValue=var267, r0=var1514, java.lang.Object=var1311, $r1=var2954, $z0=var2871, $r2=var786, java.lang.Number=var1308, $r27=var2320, com.mysql.cj.protocol.a.NumberValueEncoder$1=var1305, $r3=var2958, com.mysql.cj.MysqlType=var3634, $r4=var1279, java.lang.Enum=var624, $i0=var2395, $i1=var2002, $i3=var3254, $r12=var642}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r20 := @this: com.mysql.cj.protocol.a.NumberValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$z0 = $r1 instanceof java.math.BigDecimal;	if $z0 == 0 goto $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r27 = (java.lang.Number) $r2;	$r3 = <com.mysql.cj.protocol.a.NumberValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $l4 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 3: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 4: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 5: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 6: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 7: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 8: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 9: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 10: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 11: goto $i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();     case 12: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 13: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 14: goto $l2 = virtualinvoke $r27.<java.lang.Number: long longValue()>();     case 15: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 16: goto $f0 = virtualinvoke $r27.<java.lang.Number: float floatValue()>();     case 17: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 18: goto $d0 = virtualinvoke $r27.<java.lang.Number: double doubleValue()>();     case 19: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 20: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 21: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 22: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 23: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 24: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 25: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 26: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 27: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 28: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 29: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 30: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 31: goto $z1 = $r27 instanceof java.math.BigDecimal;     case 32: goto $z1 = $r27 instanceof java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; };	$i3 = virtualinvoke $r27.<java.lang.Number: int intValue()>();	$r12 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	return $r12
;block_num 4