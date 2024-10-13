(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2707 0)
(declare-sort var1789 0)
(declare-sort var2006 0)
(declare-sort var727 0)
(declare-sort var1500 0)
(declare-sort var808 0)
(declare-sort var3938 0)
(declare-sort var2272 0)
(declare-sort var128 0)
(declare-sort var3454 0)
(declare-sort var1817 0)
(declare-sort var1555 0)
(declare-sort var1296 0)
(declare-sort var3874 0)
(declare-sort var1286 0)
(declare-sort var2017 0)
(declare-sort var2478 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1789_getValue/1809189437 (var1789) var2006)
(declare-fun cast-from-var2006-to-var727 (var2006) var727)
(declare-fun var1789_getMysqlType/-215853011 (var1789) var808)
(declare-fun ordinal/-291641772 (var3938) Int)
(declare-fun cast-from-var808-to-var3938 (var808) var3938)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun toInstant/-1784564405 (var727) var2272)
(declare-fun serverSession/-791602078 (var3454) var128)
(declare-fun cast-from-var2707-to-var3454 (var2707) var3454)
(declare-fun var128_getDefaultTimeZone/769257159 (var128) var1817)
(declare-fun toZoneId/1901803186 (var1817) var1555)
(declare-fun atZone/2066824322 (var2272 var1555) var1296)
(declare-fun toLocalTime/-1508480027 (var1296) var3874)
(declare-fun var1789_getField/-416441240 (var1789) var1286)
(declare-fun adjustLocalTime/-1943683197 (var3454 var3874 var1286) var3874)
(declare-fun format/1282671589 (var3874 var2017) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2707 var2707)
(declare-const null-var1789 var1789)
(declare-const var1500-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var2478-TIME_FORMATTER_WITH_OPTIONAL_MICROS var2017)
(declare-const var399 var2707) ; Statement: r6 := @this: com.mysql.cj.protocol.a.UtilCalendarValueEncoder 
(assert (not (= var399 null-var2707)))
(declare-const var749 var1789) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var749 null-var1789)))
(define-const var2711 var2006 (var1789_getValue/1809189437 var749)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1858 var727 (cast-from-var2006-to-var727 var2711)) ; Statement: r2 = (java.util.Calendar) $r1 
(define-const var3106 (Array Int Int) var1500-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var2264 var808 (var1789_getMysqlType/-215853011 var749)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var769 Int (ordinal/-291641772 (cast-from-var808-to-var3938 var2264))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2167 Int (select var3106 var769)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r53 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r35 = new java.sql.Timestamp;     case 4: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 5: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 6: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 7: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 8: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 9: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 10: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 11: goto $i2 = virtualinvoke r2.<java.util.Calendar: int get(int)>(1);     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2167 12) (and (not (= var2167 11)) (and (not (= var2167 10)) (and (not (= var2167 9)) (and (not (= var2167 8)) (and (not (= var2167 7)) (and (not (= var2167 6)) (and (not (= var2167 5)) (and (not (= var2167 4)) (and (not (= var2167 3)) (and (not (= var2167 2)) (and (not (= var2167 1)) true))))))))))))) ; Intersect: Cond: $i1 == 12  and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var615 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var615 "\u0027")) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var615!1 String)
(assert (= var615!1 "\u0027"))
(define-const var3049 var2006 (var1789_getValue/1809189437 var749)) ; Statement: $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var176 var727 (cast-from-var2006-to-var727 var3049)) ; Statement: $r8 = (java.util.Calendar) $r7 
(assert true)
(define-const var1014 var2272 (toInstant/-1784564405 var176)) ; Statement: $r12 = virtualinvoke $r8.<java.util.Calendar: java.time.Instant toInstant()>() 
(define-const var850 var128 (serverSession/-791602078 (cast-from-var2707-to-var3454 var399))) ; Statement: $r9 = r6.<com.mysql.cj.protocol.a.UtilCalendarValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var2668 var1817 (var128_getDefaultTimeZone/769257159 var850)) ; Statement: $r10 = interfaceinvoke $r9.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var412 var1555 (toZoneId/1901803186 var2668)) ; Statement: $r11 = virtualinvoke $r10.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var3621 var1296 (atZone/2066824322 var1014 var412)) ; Statement: $r13 = virtualinvoke $r12.<java.time.Instant: java.time.ZonedDateTime atZone(java.time.ZoneId)>($r11) 
(assert true)
(define-const var2647 var3874 (toLocalTime/-1508480027 var3621)) ; Statement: $r15 = virtualinvoke $r13.<java.time.ZonedDateTime: java.time.LocalTime toLocalTime()>() 
(define-const var947 var1286 (var1789_getField/-416441240 var749)) ; Statement: $r14 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var3957 var3874 (adjustLocalTime/-1943683197 (cast-from-var2707-to-var3454 var399) var2647 var947)) ; Statement: $r17 = virtualinvoke r6.<com.mysql.cj.protocol.a.UtilCalendarValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r15, $r14) 
(define-const var3304 var2017 var2478-TIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r16 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var3020 String (format/1282671589 var3957 var3304)) ; Statement: $r18 = virtualinvoke $r17.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r16) 
(assert true)
;(assert (append/672562846 var615!1 var3020)) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var615!2 String)
(assert (= var615!2 (str.++ var615!1 var3020)))
(assert true)
;(assert (append/672562846 var615!2 "\u0027")) ; Statement: virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var615!3 String)
(assert (= var615!3 (str.++ var615!2 "\u0027")))
(assert true)
(define-const var2175 String (toString/-2075883882 var615!3)) ; Statement: $r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var1789_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2006-to-var727=([java.lang.Object], java.util.Calendar), var1789_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var808-to-var3938=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), toInstant/-1784564405=([java.util.Calendar], java.time.Instant), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var2707-to-var3454=([com.mysql.cj.protocol.a.UtilCalendarValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var128_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), atZone/2066824322=([java.time.Instant, java.time.ZoneId], java.time.ZonedDateTime), toLocalTime/-1508480027=([java.time.ZonedDateTime], java.time.LocalTime), var1789_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustLocalTime/-1943683197=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalTime, com.mysql.cj.result.Field], java.time.LocalTime), format/1282671589=([java.time.LocalTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2707=com.mysql.cj.protocol.a.UtilCalendarValueEncoder, var399=r6, var1789=com.mysql.cj.BindValue, var749=r0, var2006=java.lang.Object, var2711=$r1, var727=java.util.Calendar, var1858=r2, var1500=com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1, var3106=$r3, var808=com.mysql.cj.MysqlType, var2264=$r4, var3938=java.lang.Enum, var769=$i0, var2167=$i1, var615=$r5, var3049=$r7, var176=$r8, var2272=java.time.Instant, var1014=$r12, var128=com.mysql.cj.protocol.ServerSession, var3454=com.mysql.cj.protocol.a.AbstractValueEncoder, var850=$r9, var1817=java.util.TimeZone, var2668=$r10, var1555=java.time.ZoneId, var412=$r11, var1296=java.time.ZonedDateTime, var3621=$r13, var3874=java.time.LocalTime, var2647=$r15, var1286=com.mysql.cj.result.Field, var947=$r14, var3957=$r17, var2017=java.time.format.DateTimeFormatter, var2478=com.mysql.cj.util.TimeUtil, var3304=$r16, var3020=$r18, var2175=$r19}
; {com.mysql.cj.protocol.a.UtilCalendarValueEncoder=var2707, r6=var399, com.mysql.cj.BindValue=var1789, r0=var749, java.lang.Object=var2006, $r1=var2711, java.util.Calendar=var727, r2=var1858, com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1=var1500, $r3=var3106, com.mysql.cj.MysqlType=var808, $r4=var2264, java.lang.Enum=var3938, $i0=var769, $i1=var2167, $r5=var615, $r7=var3049, $r8=var176, java.time.Instant=var2272, $r12=var1014, com.mysql.cj.protocol.ServerSession=var128, com.mysql.cj.protocol.a.AbstractValueEncoder=var3454, $r9=var850, java.util.TimeZone=var1817, $r10=var2668, java.time.ZoneId=var1555, $r11=var412, java.time.ZonedDateTime=var1296, $r13=var3621, java.time.LocalTime=var3874, $r15=var2647, com.mysql.cj.result.Field=var1286, $r14=var947, $r17=var3957, java.time.format.DateTimeFormatter=var2017, com.mysql.cj.util.TimeUtil=var2478, $r16=var3304, $r18=var3020, $r19=var2175}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.mysql.cj.protocol.a.UtilCalendarValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.util.Calendar) $r1;	$r3 = <com.mysql.cj.protocol.a.UtilCalendarValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r53 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r35 = new java.sql.Timestamp;     case 4: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 5: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 6: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 7: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 8: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 9: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 10: goto $r23 = virtualinvoke r2.<java.util.Calendar: java.time.Instant toInstant()>();     case 11: goto $i2 = virtualinvoke r2.<java.util.Calendar: int get(int)>(1);     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; };	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r8 = (java.util.Calendar) $r7;	$r12 = virtualinvoke $r8.<java.util.Calendar: java.time.Instant toInstant()>();	$r9 = r6.<com.mysql.cj.protocol.a.UtilCalendarValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r10 = interfaceinvoke $r9.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r11 = virtualinvoke $r10.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r13 = virtualinvoke $r12.<java.time.Instant: java.time.ZonedDateTime atZone(java.time.ZoneId)>($r11);	$r15 = virtualinvoke $r13.<java.time.ZonedDateTime: java.time.LocalTime toLocalTime()>();	$r14 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r17 = virtualinvoke r6.<com.mysql.cj.protocol.a.UtilCalendarValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r15, $r14);	$r16 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r18 = virtualinvoke $r17.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r16);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r19 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 2