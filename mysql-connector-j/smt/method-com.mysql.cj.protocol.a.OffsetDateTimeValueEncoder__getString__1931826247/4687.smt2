(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2617 0)
(declare-sort var627 0)
(declare-sort var3457 0)
(declare-sort var3263 0)
(declare-sort var3613 0)
(declare-sort var3118 0)
(declare-sort var1774 0)
(declare-sort var3004 0)
(declare-sort var2746 0)
(declare-sort var1686 0)
(declare-sort var1331 0)
(declare-sort var2969 0)
(declare-sort var29 0)
(declare-sort var717 0)
(declare-sort var2226 0)
(declare-sort var3935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var627_getValue/1809189437 (var627) var3457)
(declare-fun cast-from-var3457-to-var3263 (var3457) var3263)
(declare-fun var627_getMysqlType/-215853011 (var627) var3118)
(declare-fun ordinal/-291641772 (var1774) Int)
(declare-fun cast-from-var3118-to-var1774 (var3118) var1774)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun serverSession/-791602078 (var2746) var3004)
(declare-fun cast-from-var2617-to-var2746 (var2617) var2746)
(declare-fun var3004_getDefaultTimeZone/769257159 (var3004) var1686)
(declare-fun toZoneId/1901803186 (var1686) var1331)
(declare-fun atZoneSameInstant/886060260 (var3263 var1331) var2969)
(declare-fun toLocalTime/-1508480027 (var2969) var29)
(declare-fun var627_getField/-416441240 (var627) var717)
(declare-fun adjustLocalTime/-1943683197 (var2746 var29 var717) var29)
(declare-fun format/1282671589 (var29 var2226) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2617 var2617)
(declare-const null-var627 var627)
(declare-const var3613-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3935-TIME_FORMATTER_WITH_OPTIONAL_MICROS var2226)
(declare-const var3826 var2617) ; Statement: r6 := @this: com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder 
(assert (not (= var3826 null-var2617)))
(declare-const var302 var627) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var302 null-var627)))
(define-const var2522 var3457 (var627_getValue/1809189437 var302)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2426 var3263 (cast-from-var3457-to-var3263 var2522)) ; Statement: r2 = (java.time.OffsetDateTime) $r1 
(define-const var2971 (Array Int Int) var3613-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1977 var3118 (var627_getMysqlType/-215853011 var302)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3245 Int (ordinal/-291641772 (cast-from-var3118-to-var1774 var1977))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2577 Int (select var2971 var3245)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r47 = new java.lang.StringBuilder;     case 3: goto $r34 = new java.lang.StringBuilder;     case 4: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;     case 7: goto $r5 = new java.lang.StringBuilder;     case 8: goto $r5 = new java.lang.StringBuilder;     case 9: goto $r5 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r5 = new java.lang.StringBuilder;     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r56 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2577 3) (and (not (= var2577 2)) (and (not (= var2577 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var875 String String-init) ; Statement: $r34 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var875 "\u0027")) ; Statement: specialinvoke $r34.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var875!1 String)
(assert (= var875!1 "\u0027"))
(define-const var3787 var3457 (var627_getValue/1809189437 var302)) ; Statement: $r35 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1243 var3263 (cast-from-var3457-to-var3263 var3787)) ; Statement: $r39 = (java.time.OffsetDateTime) $r35 
(define-const var1263 var3004 (serverSession/-791602078 (cast-from-var2617-to-var2746 var3826))) ; Statement: $r36 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var1899 var1686 (var3004_getDefaultTimeZone/769257159 var1263)) ; Statement: $r37 = interfaceinvoke $r36.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var2946 var1331 (toZoneId/1901803186 var1899)) ; Statement: $r38 = virtualinvoke $r37.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var321 var2969 (atZoneSameInstant/886060260 var1243 var2946)) ; Statement: $r40 = virtualinvoke $r39.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r38) 
(assert true)
(define-const var1716 var29 (toLocalTime/-1508480027 var321)) ; Statement: $r42 = virtualinvoke $r40.<java.time.ZonedDateTime: java.time.LocalTime toLocalTime()>() 
(define-const var718 var717 (var627_getField/-416441240 var302)) ; Statement: $r41 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var827 var29 (adjustLocalTime/-1943683197 (cast-from-var2617-to-var2746 var3826) var1716 var718)) ; Statement: $r44 = virtualinvoke r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r42, $r41) 
(define-const var1221 var2226 var3935-TIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r43 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var678 String (format/1282671589 var827 var1221)) ; Statement: $r45 = virtualinvoke $r44.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r43) 
(assert true)
;(assert (append/672562846 var875!1 var678)) ; Statement: virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45) 
(declare-const var875!2 String)
(assert (= var875!2 (str.++ var875!1 var678)))
(assert true)
;(assert (append/672562846 var875!2 "\u0027")) ; Statement: virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var875!3 String)
(assert (= var875!3 (str.++ var875!2 "\u0027")))
(assert true)
(define-const var824 String (toString/-2075883882 var875!3)) ; Statement: $r46 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {var627_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var3457-to-var3263=([java.lang.Object], java.time.OffsetDateTime), var627_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3118-to-var1774=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var2617-to-var2746=([com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var3004_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), atZoneSameInstant/886060260=([java.time.OffsetDateTime, java.time.ZoneId], java.time.ZonedDateTime), toLocalTime/-1508480027=([java.time.ZonedDateTime], java.time.LocalTime), var627_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustLocalTime/-1943683197=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalTime, com.mysql.cj.result.Field], java.time.LocalTime), format/1282671589=([java.time.LocalTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2617=com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder, var3826=r6, var627=com.mysql.cj.BindValue, var302=r0, var3457=java.lang.Object, var2522=$r1, var3263=java.time.OffsetDateTime, var2426=r2, var3613=com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1, var2971=$r3, var3118=com.mysql.cj.MysqlType, var1977=$r4, var1774=java.lang.Enum, var3245=$i0, var2577=$i1, var875=$r34, var3787=$r35, var1243=$r39, var3004=com.mysql.cj.protocol.ServerSession, var2746=com.mysql.cj.protocol.a.AbstractValueEncoder, var1263=$r36, var1686=java.util.TimeZone, var1899=$r37, var1331=java.time.ZoneId, var2946=$r38, var2969=java.time.ZonedDateTime, var321=$r40, var29=java.time.LocalTime, var1716=$r42, var717=com.mysql.cj.result.Field, var718=$r41, var827=$r44, var2226=java.time.format.DateTimeFormatter, var3935=com.mysql.cj.util.TimeUtil, var1221=$r43, var678=$r45, var824=$r46}
; {com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder=var2617, r6=var3826, com.mysql.cj.BindValue=var627, r0=var302, java.lang.Object=var3457, $r1=var2522, java.time.OffsetDateTime=var3263, r2=var2426, com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1=var3613, $r3=var2971, com.mysql.cj.MysqlType=var3118, $r4=var1977, java.lang.Enum=var1774, $i0=var3245, $i1=var2577, $r34=var875, $r35=var3787, $r39=var1243, com.mysql.cj.protocol.ServerSession=var3004, com.mysql.cj.protocol.a.AbstractValueEncoder=var2746, $r36=var1263, java.util.TimeZone=var1686, $r37=var1899, java.time.ZoneId=var1331, $r38=var2946, java.time.ZonedDateTime=var2969, $r40=var321, java.time.LocalTime=var29, $r42=var1716, com.mysql.cj.result.Field=var717, $r41=var718, $r44=var827, java.time.format.DateTimeFormatter=var2226, com.mysql.cj.util.TimeUtil=var3935, $r43=var1221, $r45=var678, $r46=var824}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.time.OffsetDateTime) $r1;	$r3 = <com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r47 = new java.lang.StringBuilder;     case 3: goto $r34 = new java.lang.StringBuilder;     case 4: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;     case 7: goto $r5 = new java.lang.StringBuilder;     case 8: goto $r5 = new java.lang.StringBuilder;     case 9: goto $r5 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r5 = new java.lang.StringBuilder;     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r56 = newarray (java.lang.Object)[2]; };	$r34 = new java.lang.StringBuilder;	specialinvoke $r34.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r35 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r39 = (java.time.OffsetDateTime) $r35;	$r36 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r37 = interfaceinvoke $r36.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r38 = virtualinvoke $r37.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r40 = virtualinvoke $r39.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r38);	$r42 = virtualinvoke $r40.<java.time.ZonedDateTime: java.time.LocalTime toLocalTime()>();	$r41 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r44 = virtualinvoke r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r42, $r41);	$r43 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r45 = virtualinvoke $r44.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r43);	virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45);	virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r46 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	return $r46
;block_num 2