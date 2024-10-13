(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var868 0)
(declare-sort var2839 0)
(declare-sort var3715 0)
(declare-sort var3333 0)
(declare-sort var2755 0)
(declare-sort var3164 0)
(declare-sort var3926 0)
(declare-sort var680 0)
(declare-sort var1408 0)
(declare-sort var2185 0)
(declare-sort var3356 0)
(declare-sort var2000 0)
(declare-sort var2233 0)
(declare-sort var1435 0)
(declare-sort var1318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2839_getMysqlType/-215853011 (var2839) var3333)
(declare-fun ordinal/-291641772 (var2755) Int)
(declare-fun cast-from-var3333-to-var2755 (var3333) var2755)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2839_getValue/1809189437 (var2839) var3164)
(declare-fun cast-from-var3164-to-var3926 (var3164) var3926)
(declare-fun serverSession/-791602078 (var1408) var680)
(declare-fun cast-from-var868-to-var1408 (var868) var1408)
(declare-fun var680_getDefaultTimeZone/769257159 (var680) var2185)
(declare-fun toZoneId/1901803186 (var2185) var3356)
(declare-fun withZoneSameInstant/1924399578 (var3926 var3356) var3926)
(declare-fun toLocalTime/-1508480027 (var3926) var2000)
(declare-fun var2839_getField/-416441240 (var2839) var2233)
(declare-fun adjustLocalTime/-1943683197 (var1408 var2000 var2233) var2000)
(declare-fun format/1282671589 (var2000 var1435) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var868 var868)
(declare-const null-var2839 var2839)
(declare-const var3715-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1318-TIME_FORMATTER_WITH_OPTIONAL_MICROS var1435)
(declare-const var3784 var868) ; Statement: r5 := @this: com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder 
(assert (not (= var3784 null-var868)))
(declare-const var3186 var2839) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3186 null-var2839)))
(define-const var598 (Array Int Int) var3715-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var495 var3333 (var2839_getMysqlType/-215853011 var3186)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var28 Int (ordinal/-291641772 (cast-from-var3333-to-var2755 var495))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2241 Int (select var598 var28)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r50 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2241 3) (and (not (= var2241 2)) (and (not (= var2241 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var360 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var360 "\u0027")) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var360!1 String)
(assert (= var360!1 "\u0027"))
(define-const var2532 var3164 (var2839_getValue/1809189437 var3186)) ; Statement: $r38 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var3215 var3926 (cast-from-var3164-to-var3926 var2532)) ; Statement: $r42 = (java.time.ZonedDateTime) $r38 
(define-const var721 var680 (serverSession/-791602078 (cast-from-var868-to-var1408 var3784))) ; Statement: $r39 = r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var966 var2185 (var680_getDefaultTimeZone/769257159 var721)) ; Statement: $r40 = interfaceinvoke $r39.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var97 var3356 (toZoneId/1901803186 var966)) ; Statement: $r41 = virtualinvoke $r40.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var78 var3926 (withZoneSameInstant/1924399578 var3215 var97)) ; Statement: $r43 = virtualinvoke $r42.<java.time.ZonedDateTime: java.time.ZonedDateTime withZoneSameInstant(java.time.ZoneId)>($r41) 
(assert true)
(define-const var1581 var2000 (toLocalTime/-1508480027 var78)) ; Statement: $r45 = virtualinvoke $r43.<java.time.ZonedDateTime: java.time.LocalTime toLocalTime()>() 
(define-const var984 var2233 (var2839_getField/-416441240 var3186)) ; Statement: $r44 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var3970 var2000 (adjustLocalTime/-1943683197 (cast-from-var868-to-var1408 var3784) var1581 var984)) ; Statement: $r47 = virtualinvoke r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r45, $r44) 
(define-const var2266 var1435 var1318-TIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r46 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var1891 String (format/1282671589 var3970 var2266)) ; Statement: $r48 = virtualinvoke $r47.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r46) 
(assert true)
;(assert (append/672562846 var360!1 var1891)) ; Statement: virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r48) 
(declare-const var360!2 String)
(assert (= var360!2 (str.++ var360!1 var1891)))
(assert true)
;(assert (append/672562846 var360!2 "\u0027")) ; Statement: virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var360!3 String)
(assert (= var360!3 (str.++ var360!2 "\u0027")))
(assert true)
(define-const var593 String (toString/-2075883882 var360!3)) ; Statement: $r49 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r49 
(check-sat)
(get-model)
(get-unsat-core)
; {var2839_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3333-to-var2755=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2839_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var3164-to-var3926=([java.lang.Object], java.time.ZonedDateTime), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var868-to-var1408=([com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var680_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), withZoneSameInstant/1924399578=([java.time.ZonedDateTime, java.time.ZoneId], java.time.ZonedDateTime), toLocalTime/-1508480027=([java.time.ZonedDateTime], java.time.LocalTime), var2839_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustLocalTime/-1943683197=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalTime, com.mysql.cj.result.Field], java.time.LocalTime), format/1282671589=([java.time.LocalTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var868=com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder, var3784=r5, var2839=com.mysql.cj.BindValue, var3186=r0, var3715=com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1, var598=$r1, var3333=com.mysql.cj.MysqlType, var495=$r2, var2755=java.lang.Enum, var28=$i0, var2241=$i1, var360=$r37, var3164=java.lang.Object, var2532=$r38, var3926=java.time.ZonedDateTime, var3215=$r42, var680=com.mysql.cj.protocol.ServerSession, var1408=com.mysql.cj.protocol.a.AbstractValueEncoder, var721=$r39, var2185=java.util.TimeZone, var966=$r40, var3356=java.time.ZoneId, var97=$r41, var78=$r43, var2000=java.time.LocalTime, var1581=$r45, var2233=com.mysql.cj.result.Field, var984=$r44, var3970=$r47, var1435=java.time.format.DateTimeFormatter, var1318=com.mysql.cj.util.TimeUtil, var2266=$r46, var1891=$r48, var593=$r49}
; {com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder=var868, r5=var3784, com.mysql.cj.BindValue=var2839, r0=var3186, com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1=var3715, $r1=var598, com.mysql.cj.MysqlType=var3333, $r2=var495, java.lang.Enum=var2755, $i0=var28, $i1=var2241, $r37=var360, java.lang.Object=var3164, $r38=var2532, java.time.ZonedDateTime=var3926, $r42=var3215, com.mysql.cj.protocol.ServerSession=var680, com.mysql.cj.protocol.a.AbstractValueEncoder=var1408, $r39=var721, java.util.TimeZone=var2185, $r40=var966, java.time.ZoneId=var3356, $r41=var97, $r43=var78, java.time.LocalTime=var2000, $r45=var1581, com.mysql.cj.result.Field=var2233, $r44=var984, $r47=var3970, java.time.format.DateTimeFormatter=var1435, com.mysql.cj.util.TimeUtil=var1318, $r46=var2266, $r48=var1891, $r49=var593}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r50 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; };	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r38 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r42 = (java.time.ZonedDateTime) $r38;	$r39 = r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r40 = interfaceinvoke $r39.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r41 = virtualinvoke $r40.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r43 = virtualinvoke $r42.<java.time.ZonedDateTime: java.time.ZonedDateTime withZoneSameInstant(java.time.ZoneId)>($r41);	$r45 = virtualinvoke $r43.<java.time.ZonedDateTime: java.time.LocalTime toLocalTime()>();	$r44 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r47 = virtualinvoke r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r45, $r44);	$r46 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r48 = virtualinvoke $r47.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r46);	virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r48);	virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r49 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	return $r49
;block_num 2