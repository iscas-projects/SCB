(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1146 0)
(declare-sort var997 0)
(declare-sort var1369 0)
(declare-sort var3138 0)
(declare-sort var2891 0)
(declare-sort var2972 0)
(declare-sort var2909 0)
(declare-sort var1510 0)
(declare-sort var2192 0)
(declare-sort var719 0)
(declare-sort var3680 0)
(declare-sort var3094 0)
(declare-sort var3662 0)
(declare-sort var2653 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var997_getMysqlType/-215853011 (var997) var3138)
(declare-fun ordinal/-291641772 (var2891) Int)
(declare-fun cast-from-var3138-to-var2891 (var3138) var2891)
(declare-fun var997_getValue/1809189437 (var997) var2972)
(declare-fun cast-from-var2972-to-var2909 (var2972) var2909)
(declare-fun atOffset/237058948 (var2909 var1510) var2192)
(declare-fun serverSession/-791602078 (var3680) var719)
(declare-fun cast-from-var1146-to-var3680 (var1146) var3680)
(declare-fun var719_getDefaultTimeZone/769257159 (var719) var3094)
(declare-fun toZoneId/1901803186 (var3094) var3662)
(declare-fun atZoneSameInstant/886060260 (var2192 var3662) var2653)
(declare-fun getYear/302658371 (var2653) Int)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-const null-var1146 var1146)
(declare-const null-var997 var997)
(declare-const var1369-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1510-UTC var1510)
(declare-const var3882 var1146) ; Statement: r7 := @this: com.mysql.cj.protocol.a.InstantValueEncoder 
(assert (not (= var3882 null-var1146)))
(declare-const var145 var997) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var145 null-var997)))
(define-const var1204 (Array Int Int) var1369-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.InstantValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var266 var3138 (var997_getMysqlType/-215853011 var145)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3360 Int (ordinal/-291641772 (cast-from-var3138-to-var2891 var266))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var326 Int (select var1204 var3360)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r58 = new java.lang.StringBuilder;     case 3: goto $r43 = new java.lang.StringBuilder;     case 4: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r71 = newarray (java.lang.Object)[2]; } 
(assert (and (= var326 6) (and (not (= var326 5)) (and (not (= var326 4)) (and (not (= var326 3)) (and (not (= var326 2)) (and (not (= var326 1)) true))))))) ; Intersect: Cond: $i1 == 6  and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional      
(define-const var1650 var2972 (var997_getValue/1809189437 var145)) ; Statement: $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2728 var2909 (cast-from-var2972-to-var2909 var1650)) ; Statement: $r15 = (java.time.Instant) $r13 
(define-const var2618 var1510 var1510-UTC) ; Statement: $r14 = <java.time.ZoneOffset: java.time.ZoneOffset UTC> 
(assert true)
(define-const var2356 var2192 (atOffset/237058948 var2728 var2618)) ; Statement: $r19 = virtualinvoke $r15.<java.time.Instant: java.time.OffsetDateTime atOffset(java.time.ZoneOffset)>($r14) 
(define-const var107 var719 (serverSession/-791602078 (cast-from-var1146-to-var3680 var3882))) ; Statement: $r16 = r7.<com.mysql.cj.protocol.a.InstantValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var3076 var3094 (var719_getDefaultTimeZone/769257159 var107)) ; Statement: $r17 = interfaceinvoke $r16.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var3053 var3662 (toZoneId/1901803186 var3076)) ; Statement: $r18 = virtualinvoke $r17.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var432 var2653 (atZoneSameInstant/886060260 var2356 var3053)) ; Statement: $r20 = virtualinvoke $r19.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r18) 
(assert true)
(define-const var2117 Int (getYear/302658371 var432)) ; Statement: $i3 = virtualinvoke $r20.<java.time.ZonedDateTime: int getYear()>() 
(define-const var1885 String (String_valueOf/1240665136 var2117)) ; Statement: $r21 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3) 
 ; Statement: return $r21 
(check-sat)
(get-model)
(get-unsat-core)
; {var997_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3138-to-var2891=([com.mysql.cj.MysqlType], java.lang.Enum), var997_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2972-to-var2909=([java.lang.Object], java.time.Instant), atOffset/237058948=([java.time.Instant, java.time.ZoneOffset], java.time.OffsetDateTime), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var1146-to-var3680=([com.mysql.cj.protocol.a.InstantValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var719_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), atZoneSameInstant/886060260=([java.time.OffsetDateTime, java.time.ZoneId], java.time.ZonedDateTime), getYear/302658371=([java.time.ZonedDateTime], int), String_valueOf/1240665136=([int], java.lang.String)}
; {var1146=com.mysql.cj.protocol.a.InstantValueEncoder, var3882=r7, var997=com.mysql.cj.BindValue, var145=r0, var1369=com.mysql.cj.protocol.a.InstantValueEncoder$1, var1204=$r1, var3138=com.mysql.cj.MysqlType, var266=$r2, var2891=java.lang.Enum, var3360=$i0, var326=$i1, var2972=java.lang.Object, var1650=$r13, var2909=java.time.Instant, var2728=$r15, var1510=java.time.ZoneOffset, var2618=$r14, var2192=java.time.OffsetDateTime, var2356=$r19, var719=com.mysql.cj.protocol.ServerSession, var3680=com.mysql.cj.protocol.a.AbstractValueEncoder, var107=$r16, var3094=java.util.TimeZone, var3076=$r17, var3662=java.time.ZoneId, var3053=$r18, var2653=java.time.ZonedDateTime, var432=$r20, var2117=$i3, var1885=$r21}
; {com.mysql.cj.protocol.a.InstantValueEncoder=var1146, r7=var3882, com.mysql.cj.BindValue=var997, r0=var145, com.mysql.cj.protocol.a.InstantValueEncoder$1=var1369, $r1=var1204, com.mysql.cj.MysqlType=var3138, $r2=var266, java.lang.Enum=var2891, $i0=var3360, $i1=var326, java.lang.Object=var2972, $r13=var1650, java.time.Instant=var2909, $r15=var2728, java.time.ZoneOffset=var1510, $r14=var2618, java.time.OffsetDateTime=var2192, $r19=var2356, com.mysql.cj.protocol.ServerSession=var719, com.mysql.cj.protocol.a.AbstractValueEncoder=var3680, $r16=var107, java.util.TimeZone=var3094, $r17=var3076, java.time.ZoneId=var3662, $r18=var3053, java.time.ZonedDateTime=var2653, $r20=var432, $i3=var2117, $r21=var1885}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r7 := @this: com.mysql.cj.protocol.a.InstantValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.InstantValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r58 = new java.lang.StringBuilder;     case 3: goto $r43 = new java.lang.StringBuilder;     case 4: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r71 = newarray (java.lang.Object)[2]; };	$r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r15 = (java.time.Instant) $r13;	$r14 = <java.time.ZoneOffset: java.time.ZoneOffset UTC>;	$r19 = virtualinvoke $r15.<java.time.Instant: java.time.OffsetDateTime atOffset(java.time.ZoneOffset)>($r14);	$r16 = r7.<com.mysql.cj.protocol.a.InstantValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r17 = interfaceinvoke $r16.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r18 = virtualinvoke $r17.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r20 = virtualinvoke $r19.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r18);	$i3 = virtualinvoke $r20.<java.time.ZonedDateTime: int getYear()>();	$r21 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>($i3);	return $r21
;block_num 2