(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var383 0)
(declare-sort var1974 0)
(declare-sort var872 0)
(declare-sort var863 0)
(declare-sort var3613 0)
(declare-sort var3706 0)
(declare-sort var2718 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1974_getValue/1809189437 (var1974) var872)
(declare-fun cast-from-var872-to-var863 (var872) var863)
(declare-fun booleanValue/-1820462562 (var863) Bool)
(declare-fun var1974_getMysqlType/-215853011 (var1974) var3706)
(declare-fun ordinal/-291641772 (var2718) Int)
(declare-fun cast-from-var3706-to-var2718 (var3706) var2718)
(declare-fun String_valueOf/-1973653463 (Bool) String)
(declare-const null-var383 var383)
(declare-const null-var1974 var1974)
(declare-const var3613-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var2430 var383) ; Statement: r20 := @this: com.mysql.cj.protocol.a.BooleanValueEncoder 
(assert (not (= var2430 null-var383)))
(declare-const var689 var1974) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var689 null-var1974)))
(define-const var185 var872 (var1974_getValue/1809189437 var689)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var3327 var863 (cast-from-var872-to-var863 var185)) ; Statement: $r2 = (java.lang.Boolean) $r1 
(assert true)
(define-const var347 Bool (booleanValue/-1820462562 var3327)) ; Statement: z0 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>() 
(define-const var3047 (Array Int Int) var3613-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.BooleanValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1505 var3706 (var1974_getMysqlType/-215853011 var689)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var309 Int (ordinal/-291641772 (cast-from-var3706-to-var2718 var1505))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3435 Int (select var3047 var309)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 3: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 4: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 5: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 6: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 7: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 8: goto if z0 == 0 goto $b2 = 0;     case 9: goto if z0 == 0 goto $b2 = 0;     case 10: goto if z0 == 0 goto $b2 = 0;     case 11: goto if z0 == 0 goto $b2 = 0;     case 12: goto if z0 == 0 goto $b2 = 0;     case 13: goto if z0 == 0 goto $b2 = 0;     case 14: goto if z0 == 0 goto $b2 = 0;     case 15: goto if z0 == 0 goto $b2 = 0;     case 16: goto if z0 == 0 goto $b2 = 0;     case 17: goto if z0 == 0 goto $b2 = 0;     case 18: goto if z0 == 0 goto $b2 = 0;     case 19: goto if z0 == 0 goto $l3 = 0L;     case 20: goto if z0 == 0 goto $l3 = 0L;     case 21: goto if z0 == 0 goto $f0 = 0.0F;     case 22: goto if z0 == 0 goto $f0 = 0.0F;     case 23: goto if z0 == 0 goto $d0 = 0.0;     case 24: goto if z0 == 0 goto $d0 = 0.0;     case 25: goto $r5 = new java.math.BigDecimal;     case 26: goto $r5 = new java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3435 2) (and (not (= var3435 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1833 String (String_valueOf/-1973653463 var347)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0) 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var1974_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var872-to-var863=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean), var1974_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3706-to-var2718=([com.mysql.cj.MysqlType], java.lang.Enum), String_valueOf/-1973653463=([boolean], java.lang.String)}
; {var383=com.mysql.cj.protocol.a.BooleanValueEncoder, var2430=r20, var1974=com.mysql.cj.BindValue, var689=r0, var872=java.lang.Object, var185=$r1, var863=java.lang.Boolean, var3327=$r2, var347=z0, var3613=com.mysql.cj.protocol.a.BooleanValueEncoder$1, var3047=$r3, var3706=com.mysql.cj.MysqlType, var1505=$r4, var2718=java.lang.Enum, var309=$i0, var3435=$i1, var1833=$r13}
; {com.mysql.cj.protocol.a.BooleanValueEncoder=var383, r20=var2430, com.mysql.cj.BindValue=var1974, r0=var689, java.lang.Object=var872, $r1=var185, java.lang.Boolean=var863, $r2=var3327, z0=var347, com.mysql.cj.protocol.a.BooleanValueEncoder$1=var3613, $r3=var3047, com.mysql.cj.MysqlType=var3706, $r4=var1505, java.lang.Enum=var2718, $i0=var309, $i1=var3435, $r13=var1833}
;seq <java.lang.String: java.lang.String valueOf(boolean)>
;cnt {"<java.lang.String: java.lang.String valueOf(boolean)>": 1}
;stmts r20 := @this: com.mysql.cj.protocol.a.BooleanValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r2 = (java.lang.Boolean) $r1;	z0 = virtualinvoke $r2.<java.lang.Boolean: boolean booleanValue()>();	$r3 = <com.mysql.cj.protocol.a.BooleanValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 3: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 4: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 5: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 6: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 7: goto $r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);     case 8: goto if z0 == 0 goto $b2 = 0;     case 9: goto if z0 == 0 goto $b2 = 0;     case 10: goto if z0 == 0 goto $b2 = 0;     case 11: goto if z0 == 0 goto $b2 = 0;     case 12: goto if z0 == 0 goto $b2 = 0;     case 13: goto if z0 == 0 goto $b2 = 0;     case 14: goto if z0 == 0 goto $b2 = 0;     case 15: goto if z0 == 0 goto $b2 = 0;     case 16: goto if z0 == 0 goto $b2 = 0;     case 17: goto if z0 == 0 goto $b2 = 0;     case 18: goto if z0 == 0 goto $b2 = 0;     case 19: goto if z0 == 0 goto $l3 = 0L;     case 20: goto if z0 == 0 goto $l3 = 0L;     case 21: goto if z0 == 0 goto $f0 = 0.0F;     case 22: goto if z0 == 0 goto $f0 = 0.0F;     case 23: goto if z0 == 0 goto $d0 = 0.0;     case 24: goto if z0 == 0 goto $d0 = 0.0;     case 25: goto $r5 = new java.math.BigDecimal;     case 26: goto $r5 = new java.math.BigDecimal;     default: goto $r14 = newarray (java.lang.Object)[2]; };	$r13 = staticinvoke <java.lang.String: java.lang.String valueOf(boolean)>(z0);	return $r13
;block_num 2