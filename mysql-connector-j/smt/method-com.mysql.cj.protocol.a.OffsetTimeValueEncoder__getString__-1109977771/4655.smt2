(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2355 0)
(declare-sort var18 0)
(declare-sort var98 0)
(declare-sort var3464 0)
(declare-sort var2127 0)
(declare-sort var1783 0)
(declare-sort var1922 0)
(declare-sort var1739 0)
(declare-sort var2977 0)
(declare-sort var3971 0)
(declare-sort var3280 0)
(declare-sort var1310 0)
(declare-sort var1288 0)
(declare-sort var2182 0)
(declare-sort var1148 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var18_getMysqlType/-215853011 (var18) var3464)
(declare-fun ordinal/-291641772 (var2127) Int)
(declare-fun cast-from-var3464-to-var2127 (var3464) var2127)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var18_getValue/1809189437 (var18) var1783)
(declare-fun cast-from-var1783-to-var1922 (var1783) var1922)
(declare-fun serverSession/-791602078 (var2977) var1739)
(declare-fun cast-from-var2355-to-var2977 (var2355) var2977)
(declare-fun var1739_getDefaultTimeZone/769257159 (var1739) var3971)
(declare-fun getRawOffset/793408012 (var3971) Int)
(declare-fun var3280_ofTotalSeconds/679785444 (Int) var3280)
(declare-fun withOffsetSameInstant/-257556093 (var1922 var3280) var1922)
(declare-fun toLocalTime/1153934004 (var1922) var1310)
(declare-fun var18_getField/-416441240 (var18) var1288)
(declare-fun adjustLocalTime/-1943683197 (var2977 var1310 var1288) var1310)
(declare-fun format/1282671589 (var1310 var2182) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2355 var2355)
(declare-const null-var18 var18)
(declare-const var98-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1148-TIME_FORMATTER_WITH_OPTIONAL_MICROS var2182)
(declare-const var1159 var2355) ; Statement: r5 := @this: com.mysql.cj.protocol.a.OffsetTimeValueEncoder 
(assert (not (= var1159 null-var2355)))
(declare-const var2590 var18) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var2590 null-var18)))
(define-const var1138 (Array Int Int) var98-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.OffsetTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1168 var3464 (var18_getMysqlType/-215853011 var2590)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var667 Int (ordinal/-291641772 (cast-from-var3464-to-var2127 var1168))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3678 Int (select var1138 var667)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r11 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3678 2) (and (not (= var3678 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2439 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2439 "\u0027")) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var2439!1 String)
(assert (= var2439!1 "\u0027"))
(define-const var3027 var1783 (var18_getValue/1809189437 var2590)) ; Statement: $r12 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1675 var1922 (cast-from-var1783-to-var1922 var3027)) ; Statement: $r16 = (java.time.OffsetTime) $r12 
(define-const var2981 var1739 (serverSession/-791602078 (cast-from-var2355-to-var2977 var1159))) ; Statement: $r13 = r5.<com.mysql.cj.protocol.a.OffsetTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var3890 var3971 (var1739_getDefaultTimeZone/769257159 var2981)) ; Statement: $r14 = interfaceinvoke $r13.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var2174 Int (getRawOffset/793408012 var3890)) ; Statement: $i3 = virtualinvoke $r14.<java.util.TimeZone: int getRawOffset()>() 
(define-const var3883 Int (div var2174 1000)) ; Statement: $i4 = $i3 / 1000 
(define-const var2348 var3280 (var3280_ofTotalSeconds/679785444 var3883)) ; Statement: $r15 = staticinvoke <java.time.ZoneOffset: java.time.ZoneOffset ofTotalSeconds(int)>($i4) 
(assert true)
(define-const var1764 var1922 (withOffsetSameInstant/-257556093 var1675 var2348)) ; Statement: $r17 = virtualinvoke $r16.<java.time.OffsetTime: java.time.OffsetTime withOffsetSameInstant(java.time.ZoneOffset)>($r15) 
(assert true)
(define-const var1215 var1310 (toLocalTime/1153934004 var1764)) ; Statement: $r19 = virtualinvoke $r17.<java.time.OffsetTime: java.time.LocalTime toLocalTime()>() 
(define-const var2756 var1288 (var18_getField/-416441240 var2590)) ; Statement: $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var832 var1310 (adjustLocalTime/-1943683197 (cast-from-var2355-to-var2977 var1159) var1215 var2756)) ; Statement: $r21 = virtualinvoke r5.<com.mysql.cj.protocol.a.OffsetTimeValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r19, $r18) 
(define-const var1493 var2182 var1148-TIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r20 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var3720 String (format/1282671589 var832 var1493)) ; Statement: $r22 = virtualinvoke $r21.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r20) 
(assert true)
;(assert (append/672562846 var2439!1 var3720)) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2439!2 String)
(assert (= var2439!2 (str.++ var2439!1 var3720)))
(assert true)
;(assert (append/672562846 var2439!2 "\u0027")) ; Statement: virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2439!3 String)
(assert (= var2439!3 (str.++ var2439!2 "\u0027")))
(assert true)
(define-const var3245 String (toString/-2075883882 var2439!3)) ; Statement: $r23 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var18_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3464-to-var2127=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var18_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1783-to-var1922=([java.lang.Object], java.time.OffsetTime), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var2355-to-var2977=([com.mysql.cj.protocol.a.OffsetTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var1739_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), getRawOffset/793408012=([java.util.TimeZone], int), var3280_ofTotalSeconds/679785444=([int], java.time.ZoneOffset), withOffsetSameInstant/-257556093=([java.time.OffsetTime, java.time.ZoneOffset], java.time.OffsetTime), toLocalTime/1153934004=([java.time.OffsetTime], java.time.LocalTime), var18_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustLocalTime/-1943683197=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalTime, com.mysql.cj.result.Field], java.time.LocalTime), format/1282671589=([java.time.LocalTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2355=com.mysql.cj.protocol.a.OffsetTimeValueEncoder, var1159=r5, var18=com.mysql.cj.BindValue, var2590=r0, var98=com.mysql.cj.protocol.a.OffsetTimeValueEncoder$1, var1138=$r1, var3464=com.mysql.cj.MysqlType, var1168=$r2, var2127=java.lang.Enum, var667=$i0, var3678=$i1, var2439=$r11, var1783=java.lang.Object, var3027=$r12, var1922=java.time.OffsetTime, var1675=$r16, var1739=com.mysql.cj.protocol.ServerSession, var2977=com.mysql.cj.protocol.a.AbstractValueEncoder, var2981=$r13, var3971=java.util.TimeZone, var3890=$r14, var2174=$i3, var3883=$i4, var3280=java.time.ZoneOffset, var2348=$r15, var1764=$r17, var1310=java.time.LocalTime, var1215=$r19, var1288=com.mysql.cj.result.Field, var2756=$r18, var832=$r21, var2182=java.time.format.DateTimeFormatter, var1148=com.mysql.cj.util.TimeUtil, var1493=$r20, var3720=$r22, var3245=$r23}
; {com.mysql.cj.protocol.a.OffsetTimeValueEncoder=var2355, r5=var1159, com.mysql.cj.BindValue=var18, r0=var2590, com.mysql.cj.protocol.a.OffsetTimeValueEncoder$1=var98, $r1=var1138, com.mysql.cj.MysqlType=var3464, $r2=var1168, java.lang.Enum=var2127, $i0=var667, $i1=var3678, $r11=var2439, java.lang.Object=var1783, $r12=var3027, java.time.OffsetTime=var1922, $r16=var1675, com.mysql.cj.protocol.ServerSession=var1739, com.mysql.cj.protocol.a.AbstractValueEncoder=var2977, $r13=var2981, java.util.TimeZone=var3971, $r14=var3890, $i3=var2174, $i4=var3883, java.time.ZoneOffset=var3280, $r15=var2348, $r17=var1764, java.time.LocalTime=var1310, $r19=var1215, com.mysql.cj.result.Field=var1288, $r18=var2756, $r21=var832, java.time.format.DateTimeFormatter=var2182, com.mysql.cj.util.TimeUtil=var1148, $r20=var1493, $r22=var3720, $r23=var3245}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.OffsetTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.OffsetTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r11 = new java.lang.StringBuilder;     case 3: goto $r3 = new java.lang.StringBuilder;     case 4: goto $r3 = new java.lang.StringBuilder;     case 5: goto $r3 = new java.lang.StringBuilder;     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; };	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r12 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r16 = (java.time.OffsetTime) $r12;	$r13 = r5.<com.mysql.cj.protocol.a.OffsetTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r14 = interfaceinvoke $r13.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$i3 = virtualinvoke $r14.<java.util.TimeZone: int getRawOffset()>();	$i4 = $i3 / 1000;	$r15 = staticinvoke <java.time.ZoneOffset: java.time.ZoneOffset ofTotalSeconds(int)>($i4);	$r17 = virtualinvoke $r16.<java.time.OffsetTime: java.time.OffsetTime withOffsetSameInstant(java.time.ZoneOffset)>($r15);	$r19 = virtualinvoke $r17.<java.time.OffsetTime: java.time.LocalTime toLocalTime()>();	$r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r21 = virtualinvoke r5.<com.mysql.cj.protocol.a.OffsetTimeValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r19, $r18);	$r20 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r22 = virtualinvoke $r21.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r20);	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r23 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r23
;block_num 2