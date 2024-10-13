(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1824 0)
(declare-sort var2551 0)
(declare-sort var2021 0)
(declare-sort var2436 0)
(declare-sort var2812 0)
(declare-sort var3890 0)
(declare-sort var3887 0)
(declare-sort var2369 0)
(declare-sort var2565 0)
(declare-sort var3878 0)
(declare-sort var3509 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2551_getMysqlType/-215853011 (var2551) var2436)
(declare-fun ordinal/-291641772 (var2812) Int)
(declare-fun cast-from-var2436-to-var2812 (var2436) var2812)
(declare-fun var2551_getValue/1809189437 (var2551) var3890)
(declare-fun cast-from-var3890-to-var3887 (var3890) var3887)
(declare-fun serverSession/-791602078 (var2565) var2369)
(declare-fun cast-from-var1824-to-var2565 (var1824) var2565)
(declare-fun var2369_getDefaultTimeZone/769257159 (var2369) var3878)
(declare-fun toZoneId/1901803186 (var3878) var3509)
(declare-fun withZoneSameInstant/1924399578 (var3887 var3509) var3887)
(declare-fun getYear/302658371 (var3887) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1824 var1824)
(declare-const null-var2551 var2551)
(declare-const var2021-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var2688 var1824) ; Statement: r5 := @this: com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder 
(assert (not (= var2688 null-var1824)))
(declare-const var2634 var2551) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var2634 null-var2551)))
(define-const var1019 (Array Int Int) var2021-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3847 var2436 (var2551_getMysqlType/-215853011 var2634)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2493 Int (ordinal/-291641772 (cast-from-var2436-to-var2812 var3847))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2927 Int (select var1019 var2493)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r50 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2927 6) (and (not (= var2927 5)) (and (not (= var2927 4)) (and (not (= var2927 3)) (and (not (= var2927 2)) (and (not (= var2927 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var117 var3890 (var2551_getValue/1809189437 var2634)) ; Statement: $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var319 var3887 (cast-from-var3890-to-var3887 var117)) ; Statement: $r15 = (java.time.ZonedDateTime) $r11 
(define-const var290 var2369 (serverSession/-791602078 (cast-from-var1824-to-var2565 var2688))) ; Statement: $r12 = r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var1567 var3878 (var2369_getDefaultTimeZone/769257159 var290)) ; Statement: $r13 = interfaceinvoke $r12.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var1644 var3509 (toZoneId/1901803186 var1567)) ; Statement: $r14 = virtualinvoke $r13.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var1140 var3887 (withZoneSameInstant/1924399578 var319 var1644)) ; Statement: $r16 = virtualinvoke $r15.<java.time.ZonedDateTime: java.time.ZonedDateTime withZoneSameInstant(java.time.ZoneId)>($r14) 
(assert true)
(define-const var562 Int (getYear/302658371 var1140)) ; Statement: $i3 = virtualinvoke $r16.<java.time.ZonedDateTime: int getYear()>() 
(define-const var2316 String (String_valueOf/1240665136 var562)) ; Statement: $r17 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var2551_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2436-to-var2812=([com.mysql.cj.MysqlType], java.lang.Enum), var2551_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var3890-to-var3887=([java.lang.Object], java.time.ZonedDateTime), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var1824-to-var2565=([com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var2369_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), withZoneSameInstant/1924399578=([java.time.ZonedDateTime, java.time.ZoneId], java.time.ZonedDateTime), getYear/302658371=([java.time.ZonedDateTime], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var1824=com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder, var2688=r5, var2551=com.mysql.cj.BindValue, var2634=r0, var2021=com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1, var1019=$r1, var2436=com.mysql.cj.MysqlType, var3847=$r2, var2812=java.lang.Enum, var2493=$i0, var2927=$i1, var3890=java.lang.Object, var117=$r11, var3887=java.time.ZonedDateTime, var319=$r15, var2369=com.mysql.cj.protocol.ServerSession, var2565=com.mysql.cj.protocol.a.AbstractValueEncoder, var290=$r12, var3878=java.util.TimeZone, var1567=$r13, var3509=java.time.ZoneId, var1644=$r14, var1140=$r16, var562=$i3, var2316=$r17}
; {com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder=var1824, r5=var2688, com.mysql.cj.BindValue=var2551, r0=var2634, com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1=var2021, $r1=var1019, com.mysql.cj.MysqlType=var2436, $r2=var3847, java.lang.Enum=var2812, $i0=var2493, $i1=var2927, java.lang.Object=var3890, $r11=var117, java.time.ZonedDateTime=var3887, $r15=var319, com.mysql.cj.protocol.ServerSession=var2369, com.mysql.cj.protocol.a.AbstractValueEncoder=var2565, $r12=var290, java.util.TimeZone=var3878, $r13=var1567, java.time.ZoneId=var3509, $r14=var1644, $r16=var1140, $i3=var562, $r17=var2316}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r50 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; };	$r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r15 = (java.time.ZonedDateTime) $r11;	$r12 = r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r13 = interfaceinvoke $r12.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r14 = virtualinvoke $r13.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r16 = virtualinvoke $r15.<java.time.ZonedDateTime: java.time.ZonedDateTime withZoneSameInstant(java.time.ZoneId)>($r14);	$i3 = virtualinvoke $r16.<java.time.ZonedDateTime: int getYear()>();	$r17 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	return $r17
;block_num 2