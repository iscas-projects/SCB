(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2826 0)
(declare-sort var3594 0)
(declare-sort var104 0)
(declare-sort var3304 0)
(declare-sort var1961 0)
(declare-sort var3698 0)
(declare-sort var1527 0)
(declare-sort var1068 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3594_getMysqlType/-215853011 (var3594) var3304)
(declare-fun ordinal/-291641772 (var1961) Int)
(declare-fun cast-from-var3304-to-var1961 (var3304) var1961)
(declare-fun var3698_getInstance/1373634036 () var3698)
(declare-fun var3594_getValue/1809189437 (var3594) var1527)
(declare-fun cast-from-var1527-to-var1068 (var1527) var1068)
(declare-fun setTime/-1821537528 (var3698 var1068) void)
(declare-fun get/335439681 (var3698 Int) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var2826 var2826)
(declare-const null-var3594 var3594)
(declare-const var104-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3973 var2826) ; Statement: r13 := @this: com.mysql.cj.protocol.a.SqlDateValueEncoder 
(assert (not (= var3973 null-var2826)))
(declare-const var3045 var3594) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3045 null-var3594)))
(define-const var377 (Array Int Int) var104-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.SqlDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var544 var3304 (var3594_getMysqlType/-215853011 var3045)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2404 Int (ordinal/-291641772 (cast-from-var3304-to-var1961 var544))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2973 Int (select var377 var2404)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 4: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 5: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 6: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 7: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 8: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 9: goto $r7 = new java.sql.Timestamp;     case 10: goto $r7 = new java.sql.Timestamp;     case 11: goto r3 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     default: goto $r31 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2973 11) (and (not (= var2973 10)) (and (not (= var2973 9)) (and (not (= var2973 8)) (and (not (= var2973 7)) (and (not (= var2973 6)) (and (not (= var2973 5)) (and (not (= var2973 4)) (and (not (= var2973 3)) (and (not (= var2973 2)) (and (not (= var2973 1)) true)))))))))))) ; Intersect: Cond: $i1 == 11  and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(define-const var2729 var3698 var3698_getInstance/1373634036) ; Statement: r3 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>() 
(define-const var1950 var1527 (var3594_getValue/1809189437 var3045)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var386 var1068 (cast-from-var1527-to-var1068 var1950)) ; Statement: $r5 = (java.util.Date) $r4 
(assert true)
;(assert (setTime/-1821537528 var2729 var386)) ; Statement: virtualinvoke r3.<java.util.Calendar: void setTime(java.util.Date)>($r5) 

(declare-const var2729!1 var3698)
(declare-const var386!1 var1068)
(assert true)
(define-const var2854 Int (get/335439681 var2729!1 1)) ; Statement: $i2 = virtualinvoke r3.<java.util.Calendar: int get(int)>(1) 
(define-const var3381 String (String_valueOf/1240665136 var2854)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {var3594_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3304-to-var1961=([com.mysql.cj.MysqlType], java.lang.Enum), var3698_getInstance/1373634036=([], java.util.Calendar), var3594_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1527-to-var1068=([java.lang.Object], java.util.Date), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), get/335439681=([java.util.Calendar, int], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var2826=com.mysql.cj.protocol.a.SqlDateValueEncoder, var3973=r13, var3594=com.mysql.cj.BindValue, var3045=r0, var104=com.mysql.cj.protocol.a.SqlDateValueEncoder$1, var377=$r1, var3304=com.mysql.cj.MysqlType, var544=$r2, var1961=java.lang.Enum, var2404=$i0, var2973=$i1, var3698=java.util.Calendar, var2729=r3, var1527=java.lang.Object, var1950=$r4, var1068=java.util.Date, var386=$r5, var2854=$i2, var3381=$r6}
; {com.mysql.cj.protocol.a.SqlDateValueEncoder=var2826, r13=var3973, com.mysql.cj.BindValue=var3594, r0=var3045, com.mysql.cj.protocol.a.SqlDateValueEncoder$1=var104, $r1=var377, com.mysql.cj.MysqlType=var3304, $r2=var544, java.lang.Enum=var1961, $i0=var2404, $i1=var2973, java.util.Calendar=var3698, r3=var2729, java.lang.Object=var1527, $r4=var1950, java.util.Date=var1068, $r5=var386, $i2=var2854, $r6=var3381}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r13 := @this: com.mysql.cj.protocol.a.SqlDateValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.SqlDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 4: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 5: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 6: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 7: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 8: goto $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 9: goto $r7 = new java.sql.Timestamp;     case 10: goto $r7 = new java.sql.Timestamp;     case 11: goto r3 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     default: goto $r31 = newarray (java.lang.Object)[2]; };	r3 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r5 = (java.util.Date) $r4;	virtualinvoke r3.<java.util.Calendar: void setTime(java.util.Date)>($r5);	$i2 = virtualinvoke r3.<java.util.Calendar: int get(int)>(1);	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	return $r6
;block_num 2