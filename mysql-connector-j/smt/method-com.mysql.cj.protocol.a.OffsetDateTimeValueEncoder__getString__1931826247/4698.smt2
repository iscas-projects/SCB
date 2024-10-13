(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3144 0)
(declare-sort var2535 0)
(declare-sort var2319 0)
(declare-sort var1527 0)
(declare-sort var1723 0)
(declare-sort var2018 0)
(declare-sort var883 0)
(declare-sort var1013 0)
(declare-sort var2224 0)
(declare-sort var2800 0)
(declare-sort var667 0)
(declare-sort var469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2535_getValue/1809189437 (var2535) var2319)
(declare-fun cast-from-var2319-to-var1527 (var2319) var1527)
(declare-fun var2535_getMysqlType/-215853011 (var2535) var2018)
(declare-fun ordinal/-291641772 (var883) Int)
(declare-fun cast-from-var2018-to-var883 (var2018) var883)
(declare-fun serverSession/-791602078 (var2224) var1013)
(declare-fun cast-from-var3144-to-var2224 (var3144) var2224)
(declare-fun var1013_getDefaultTimeZone/769257159 (var1013) var2800)
(declare-fun toZoneId/1901803186 (var2800) var667)
(declare-fun atZoneSameInstant/886060260 (var1527 var667) var469)
(declare-fun getYear/302658371 (var469) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var3144 var3144)
(declare-const null-var2535 var2535)
(declare-const var1723-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var134 var3144) ; Statement: r6 := @this: com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder 
(assert (not (= var134 null-var3144)))
(declare-const var258 var2535) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var258 null-var2535)))
(define-const var739 var2319 (var2535_getValue/1809189437 var258)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2865 var1527 (cast-from-var2319-to-var1527 var739)) ; Statement: r2 = (java.time.OffsetDateTime) $r1 
(define-const var975 (Array Int Int) var1723-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1090 var2018 (var2535_getMysqlType/-215853011 var258)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3808 Int (ordinal/-291641772 (cast-from-var2018-to-var883 var1090))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3465 Int (select var975 var3808)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r47 = new java.lang.StringBuilder;     case 3: goto $r34 = new java.lang.StringBuilder;     case 4: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;     case 7: goto $r5 = new java.lang.StringBuilder;     case 8: goto $r5 = new java.lang.StringBuilder;     case 9: goto $r5 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r5 = new java.lang.StringBuilder;     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r56 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3465 6) (and (not (= var3465 5)) (and (not (= var3465 4)) (and (not (= var3465 3)) (and (not (= var3465 2)) (and (not (= var3465 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var3147 var1013 (serverSession/-791602078 (cast-from-var3144-to-var2224 var134))) ; Statement: $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var273 var2800 (var1013_getDefaultTimeZone/769257159 var3147)) ; Statement: $r11 = interfaceinvoke $r10.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var379 var667 (toZoneId/1901803186 var273)) ; Statement: $r12 = virtualinvoke $r11.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var340 var469 (atZoneSameInstant/886060260 var2865 var379)) ; Statement: $r13 = virtualinvoke r2.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r12) 
(assert true)
(define-const var1694 Int (getYear/302658371 var340)) ; Statement: $i3 = virtualinvoke $r13.<java.time.ZonedDateTime: int getYear()>() 
(define-const var2483 String (String_valueOf/1240665136 var1694)) ; Statement: $r14 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2535_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2319-to-var1527=([java.lang.Object], java.time.OffsetDateTime), var2535_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2018-to-var883=([com.mysql.cj.MysqlType], java.lang.Enum), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var3144-to-var2224=([com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var1013_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), atZoneSameInstant/886060260=([java.time.OffsetDateTime, java.time.ZoneId], java.time.ZonedDateTime), getYear/302658371=([java.time.ZonedDateTime], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var3144=com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder, var134=r6, var2535=com.mysql.cj.BindValue, var258=r0, var2319=java.lang.Object, var739=$r1, var1527=java.time.OffsetDateTime, var2865=r2, var1723=com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1, var975=$r3, var2018=com.mysql.cj.MysqlType, var1090=$r4, var883=java.lang.Enum, var3808=$i0, var3465=$i1, var1013=com.mysql.cj.protocol.ServerSession, var2224=com.mysql.cj.protocol.a.AbstractValueEncoder, var3147=$r10, var2800=java.util.TimeZone, var273=$r11, var667=java.time.ZoneId, var379=$r12, var469=java.time.ZonedDateTime, var340=$r13, var1694=$i3, var2483=$r14}
; {com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder=var3144, r6=var134, com.mysql.cj.BindValue=var2535, r0=var258, java.lang.Object=var2319, $r1=var739, java.time.OffsetDateTime=var1527, r2=var2865, com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1=var1723, $r3=var975, com.mysql.cj.MysqlType=var2018, $r4=var1090, java.lang.Enum=var883, $i0=var3808, $i1=var3465, com.mysql.cj.protocol.ServerSession=var1013, com.mysql.cj.protocol.a.AbstractValueEncoder=var2224, $r10=var3147, java.util.TimeZone=var2800, $r11=var273, java.time.ZoneId=var667, $r12=var379, java.time.ZonedDateTime=var469, $r13=var340, $i3=var1694, $r14=var2483}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r6 := @this: com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.time.OffsetDateTime) $r1;	$r3 = <com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r47 = new java.lang.StringBuilder;     case 3: goto $r34 = new java.lang.StringBuilder;     case 4: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;     case 7: goto $r5 = new java.lang.StringBuilder;     case 8: goto $r5 = new java.lang.StringBuilder;     case 9: goto $r5 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r5 = new java.lang.StringBuilder;     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r56 = newarray (java.lang.Object)[2]; };	$r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r11 = interfaceinvoke $r10.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r12 = virtualinvoke $r11.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r13 = virtualinvoke r2.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r12);	$i3 = virtualinvoke $r13.<java.time.ZonedDateTime: int getYear()>();	$r14 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	return $r14
;block_num 2