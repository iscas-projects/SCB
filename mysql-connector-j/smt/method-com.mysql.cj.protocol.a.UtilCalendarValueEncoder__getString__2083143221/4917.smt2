(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3478 0)
(declare-sort var413 0)
(declare-sort var1950 0)
(declare-sort var1388 0)
(declare-sort var2398 0)
(declare-sort var3448 0)
(declare-sort var179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var413_getValue/1809189437 (var413) var1950)
(declare-fun cast-from-var1950-to-var1388 (var1950) var1388)
(declare-fun var413_getMysqlType/-215853011 (var413) var3448)
(declare-fun ordinal/-291641772 (var179) Int)
(declare-fun cast-from-var3448-to-var179 (var3448) var179)
(declare-fun get/335439681 (var1388 Int) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var3478 var3478)
(declare-const null-var413 var413)
(declare-const var2398-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1943 var3478) ; Statement: r6 := @this: com.mysql.cj.protocol.a.UtilCalendarValueEncoder 
(assert (not (= var1943 null-var3478)))
(declare-const var3838 var413) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3838 null-var413)))
(define-const var3932 var1950 (var413_getValue/1809189437 var3838)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var219 var1388 (cast-from-var1950-to-var1388 var3932)) ; Statement: r2 = (java.util.Calendar) $r1 
(define-const var394 (Array Int Int) var2398-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1067 var3448 (var413_getMysqlType/-215853011 var3838)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var248 Int (ordinal/-291641772 (cast-from-var3448-to-var179 var1067))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1221 Int (select var394 var248)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r53 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r35 = new java.sql.Timestamp;     case 4: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 5: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 6: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 7: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 8: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 9: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 10: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 11: goto $i2 = virtualinvoke r2.<java.util.Calendar: int get(int)>(1);     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; } 
(assert (and (= var1221 11) (and (not (= var1221 10)) (and (not (= var1221 9)) (and (not (= var1221 8)) (and (not (= var1221 7)) (and (not (= var1221 6)) (and (not (= var1221 5)) (and (not (= var1221 4)) (and (not (= var1221 3)) (and (not (= var1221 2)) (and (not (= var1221 1)) true)))))))))))) ; Intersect: Cond: $i1 == 11  and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(assert true)
(define-const var3978 Int (get/335439681 var219 1)) ; Statement: $i2 = virtualinvoke r2.<java.util.Calendar: int get(int)>(1) 
(define-const var3636 String (String_valueOf/1240665136 var3978)) ; Statement: $r20 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
 ; Statement: return $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var413_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1950-to-var1388=([java.lang.Object], java.util.Calendar), var413_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3448-to-var179=([com.mysql.cj.MysqlType], java.lang.Enum), get/335439681=([java.util.Calendar, int], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var3478=com.mysql.cj.protocol.a.UtilCalendarValueEncoder, var1943=r6, var413=com.mysql.cj.BindValue, var3838=r0, var1950=java.lang.Object, var3932=$r1, var1388=java.util.Calendar, var219=r2, var2398=com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1, var394=$r3, var3448=com.mysql.cj.MysqlType, var1067=$r4, var179=java.lang.Enum, var248=$i0, var1221=$i1, var3978=$i2, var3636=$r20}
; {com.mysql.cj.protocol.a.UtilCalendarValueEncoder=var3478, r6=var1943, com.mysql.cj.BindValue=var413, r0=var3838, java.lang.Object=var1950, $r1=var3932, java.util.Calendar=var1388, r2=var219, com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1=var2398, $r3=var394, com.mysql.cj.MysqlType=var3448, $r4=var1067, java.lang.Enum=var179, $i0=var248, $i1=var1221, $i2=var3978, $r20=var3636}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r6 := @this: com.mysql.cj.protocol.a.UtilCalendarValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.util.Calendar) $r1;	$r3 = <com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r53 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r35 = new java.sql.Timestamp;     case 4: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 5: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 6: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 7: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 8: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 9: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 10: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 11: goto $i2 = virtualinvoke r2.<java.util.Calendar: int get(int)>(1);     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; };	$i2 = virtualinvoke r2.<java.util.Calendar: int get(int)>(1);	$r20 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	return $r20
;block_num 2