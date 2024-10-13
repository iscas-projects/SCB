(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var986 0)
(declare-sort var514 0)
(declare-sort var1807 0)
(declare-sort var2916 0)
(declare-sort var3682 0)
(declare-sort var18 0)
(declare-sort var1481 0)
(declare-sort var1574 0)
(declare-sort var537 0)
(declare-sort var3866 0)
(declare-sort var1880 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var514_getValue/1809189437 (var514) var1807)
(declare-fun cast-from-var1807-to-var2916 (var1807) var2916)
(declare-fun clone/-229247619 (var3682) var1807)
(declare-fun cast-from-var2916-to-var3682 (var2916) var3682)
(declare-fun var514_getField/-416441240 (var514) var18)
(declare-fun var514_keepOrigNanos/-1228352316 (var514) Bool)
(declare-fun adjustTimestamp/-1797346727 (var1481 var2916 var18 Bool) var2916)
(declare-fun cast-from-var986-to-var1481 (var986) var1481)
(declare-fun var514_getMysqlType/-215853011 (var514) var537)
(declare-fun ordinal/-291641772 (var3866) Int)
(declare-fun cast-from-var537-to-var3866 (var537) var3866)
(declare-fun var1880_getInstance/1373634036 () var1880)
(declare-fun cast-from-var1807-to-var3682 (var1807) var3682)
(declare-fun setTime/-1821537528 (var1880 var3682) void)
(declare-fun get/335439681 (var1880 Int) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var986 var986)
(declare-const null-var514 var514)
(declare-const var1574-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1572 var986) ; Statement: r0 := @this: com.mysql.cj.protocol.a.SqlTimestampValueEncoder 
(assert (not (= var1572 null-var986)))
(declare-const var1511 var514) ; Statement: r1 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1511 null-var514)))
(define-const var3875 var1807 (var514_getValue/1809189437 var1511)) ; Statement: $r2 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1246 var2916 (cast-from-var1807-to-var2916 var3875)) ; Statement: $r3 = (java.sql.Timestamp) $r2 
(assert true)
(define-const var3437 var1807 (clone/-229247619 (cast-from-var2916-to-var3682 var1246))) ; Statement: $r4 = virtualinvoke $r3.<java.sql.Timestamp: java.lang.Object clone()>() 
(define-const var2219 var2916 (cast-from-var1807-to-var2916 var3437)) ; Statement: $r6 = (java.sql.Timestamp) $r4 
(define-const var3021 var18 (var514_getField/-416441240 var1511)) ; Statement: $r5 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(define-const var2506 Bool (var514_keepOrigNanos/-1228352316 var1511)) ; Statement: $z0 = interfaceinvoke r1.<com.mysql.cj.BindValue: boolean keepOrigNanos()>() 
(assert true)
(define-const var2122 var2916 (adjustTimestamp/-1797346727 (cast-from-var986-to-var1481 var1572) var2219 var3021 var2506)) ; Statement: r7 = virtualinvoke r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: java.sql.Timestamp adjustTimestamp(java.sql.Timestamp,com.mysql.cj.result.Field,boolean)>($r6, $r5, $z0) 
(define-const var1229 (Array Int Int) var1574-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r8 = <com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1585 var537 (var514_getMysqlType/-215853011 var1511)) ; Statement: $r9 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var89 Int (ordinal/-291641772 (cast-from-var537-to-var3866 var1585))) ; Statement: $i0 = virtualinvoke $r9.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2177 Int (select var1229 var89)) ; Statement: $i1 = $r8[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r37 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r24 = new java.lang.StringBuilder;     case 4: goto $r24 = new java.lang.StringBuilder;     case 5: goto $r24 = new java.lang.StringBuilder;     case 6: goto $r24 = new java.lang.StringBuilder;     case 7: goto $r24 = new java.lang.StringBuilder;     case 8: goto $r24 = new java.lang.StringBuilder;     case 9: goto $r24 = new java.lang.StringBuilder;     case 10: goto $r24 = new java.lang.StringBuilder;     case 11: goto r20 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     case 12: goto $r10 = new java.lang.StringBuilder;     default: goto $r49 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2177 11) (and (not (= var2177 10)) (and (not (= var2177 9)) (and (not (= var2177 8)) (and (not (= var2177 7)) (and (not (= var2177 6)) (and (not (= var2177 5)) (and (not (= var2177 4)) (and (not (= var2177 3)) (and (not (= var2177 2)) (and (not (= var2177 1)) true)))))))))))) ; Intersect: Cond: $i1 == 11  and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional           
(define-const var2746 var1880 var1880_getInstance/1373634036) ; Statement: r20 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>() 
(define-const var3402 var1807 (var514_getValue/1809189437 var1511)) ; Statement: $r21 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2402 var3682 (cast-from-var1807-to-var3682 var3402)) ; Statement: $r22 = (java.util.Date) $r21 
(assert true)
;(assert (setTime/-1821537528 var2746 var2402)) ; Statement: virtualinvoke r20.<java.util.Calendar: void setTime(java.util.Date)>($r22) 

(declare-const var2746!1 var1880)
(declare-const var2402!1 var3682)
(assert true)
(define-const var3587 Int (get/335439681 var2746!1 1)) ; Statement: $i2 = virtualinvoke r20.<java.util.Calendar: int get(int)>(1) 
(define-const var314 String (String_valueOf/1240665136 var3587)) ; Statement: $r23 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2) 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var514_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1807-to-var2916=([java.lang.Object], java.sql.Timestamp), clone/-229247619=([java.util.Date], java.lang.Object), cast-from-var2916-to-var3682=([java.sql.Timestamp], java.util.Date), var514_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), var514_keepOrigNanos/-1228352316=([com.mysql.cj.BindValue], boolean), adjustTimestamp/-1797346727=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.sql.Timestamp, com.mysql.cj.result.Field, boolean], java.sql.Timestamp), cast-from-var986-to-var1481=([com.mysql.cj.protocol.a.SqlTimestampValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var514_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var537-to-var3866=([com.mysql.cj.MysqlType], java.lang.Enum), var1880_getInstance/1373634036=([], java.util.Calendar), cast-from-var1807-to-var3682=([java.lang.Object], java.util.Date), setTime/-1821537528=([java.util.Calendar, java.util.Date], void), get/335439681=([java.util.Calendar, int], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var986=com.mysql.cj.protocol.a.SqlTimestampValueEncoder, var1572=r0, var514=com.mysql.cj.BindValue, var1511=r1, var1807=java.lang.Object, var3875=$r2, var2916=java.sql.Timestamp, var1246=$r3, var3682=java.util.Date, var3437=$r4, var2219=$r6, var18=com.mysql.cj.result.Field, var3021=$r5, var2506=$z0, var1481=com.mysql.cj.protocol.a.AbstractValueEncoder, var2122=r7, var1574=com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1, var1229=$r8, var537=com.mysql.cj.MysqlType, var1585=$r9, var3866=java.lang.Enum, var89=$i0, var2177=$i1, var1880=java.util.Calendar, var2746=r20, var3402=$r21, var2402=$r22, var3587=$i2, var314=$r23}
; {com.mysql.cj.protocol.a.SqlTimestampValueEncoder=var986, r0=var1572, com.mysql.cj.BindValue=var514, r1=var1511, java.lang.Object=var1807, $r2=var3875, java.sql.Timestamp=var2916, $r3=var1246, java.util.Date=var3682, $r4=var3437, $r6=var2219, com.mysql.cj.result.Field=var18, $r5=var3021, $z0=var2506, com.mysql.cj.protocol.a.AbstractValueEncoder=var1481, r7=var2122, com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1=var1574, $r8=var1229, com.mysql.cj.MysqlType=var537, $r9=var1585, java.lang.Enum=var3866, $i0=var89, $i1=var2177, java.util.Calendar=var1880, r20=var2746, $r21=var3402, $r22=var2402, $i2=var3587, $r23=var314}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.SqlTimestampValueEncoder;	r1 := @parameter0: com.mysql.cj.BindValue;	$r2 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r3 = (java.sql.Timestamp) $r2;	$r4 = virtualinvoke $r3.<java.sql.Timestamp: java.lang.Object clone()>();	$r6 = (java.sql.Timestamp) $r4;	$r5 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$z0 = interfaceinvoke r1.<com.mysql.cj.BindValue: boolean keepOrigNanos()>();	r7 = virtualinvoke r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: java.sql.Timestamp adjustTimestamp(java.sql.Timestamp,com.mysql.cj.result.Field,boolean)>($r6, $r5, $z0);	$r8 = <com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r9 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r9.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r8[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r37 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r24 = new java.lang.StringBuilder;     case 4: goto $r24 = new java.lang.StringBuilder;     case 5: goto $r24 = new java.lang.StringBuilder;     case 6: goto $r24 = new java.lang.StringBuilder;     case 7: goto $r24 = new java.lang.StringBuilder;     case 8: goto $r24 = new java.lang.StringBuilder;     case 9: goto $r24 = new java.lang.StringBuilder;     case 10: goto $r24 = new java.lang.StringBuilder;     case 11: goto r20 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     case 12: goto $r10 = new java.lang.StringBuilder;     default: goto $r49 = newarray (java.lang.Object)[2]; };	r20 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();	$r21 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r22 = (java.util.Date) $r21;	virtualinvoke r20.<java.util.Calendar: void setTime(java.util.Date)>($r22);	$i2 = virtualinvoke r20.<java.util.Calendar: int get(int)>(1);	$r23 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i2);	return $r23
;block_num 2