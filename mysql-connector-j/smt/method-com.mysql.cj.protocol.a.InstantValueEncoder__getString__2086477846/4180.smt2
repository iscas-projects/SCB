(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3975 0)
(declare-sort var2170 0)
(declare-sort var2697 0)
(declare-sort var417 0)
(declare-sort var3275 0)
(declare-sort var1881 0)
(declare-sort var1642 0)
(declare-sort var1124 0)
(declare-sort var823 0)
(declare-sort var1594 0)
(declare-sort var1024 0)
(declare-sort var124 0)
(declare-sort var696 0)
(declare-sort var1104 0)
(declare-sort var3042 0)
(declare-sort var561 0)
(declare-sort var1926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2170_getMysqlType/-215853011 (var2170) var417)
(declare-fun ordinal/-291641772 (var3275) Int)
(declare-fun cast-from-var417-to-var3275 (var417) var3275)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2170_getValue/1809189437 (var2170) var1881)
(declare-fun cast-from-var1881-to-var1642 (var1881) var1642)
(declare-fun atOffset/237058948 (var1642 var1124) var823)
(declare-fun serverSession/-791602078 (var1024) var1594)
(declare-fun cast-from-var3975-to-var1024 (var3975) var1024)
(declare-fun var1594_getDefaultTimeZone/769257159 (var1594) var124)
(declare-fun toZoneId/1901803186 (var124) var696)
(declare-fun atZoneSameInstant/886060260 (var823 var696) var1104)
(declare-fun toLocalDate/2145287267 (var1104) var3042)
(declare-fun format/-1339630330 (var3042 var561) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3975 var3975)
(declare-const null-var2170 var2170)
(declare-const var2697-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1124-UTC var1124)
(declare-const var1926-DATE_FORMATTER var561)
(declare-const var2474 var3975) ; Statement: r7 := @this: com.mysql.cj.protocol.a.InstantValueEncoder 
(assert (not (= var2474 null-var3975)))
(declare-const var567 var2170) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var567 null-var2170)))
(define-const var3794 (Array Int Int) var2697-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.InstantValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var706 var417 (var2170_getMysqlType/-215853011 var567)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3662 Int (ordinal/-291641772 (cast-from-var417-to-var3275 var706))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3846 Int (select var3794 var3662)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r58 = new java.lang.StringBuilder;     case 3: goto $r43 = new java.lang.StringBuilder;     case 4: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r71 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3846 2) (and (not (= var3846 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var1717 String String-init) ; Statement: $r58 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1717 "\u0027")) ; Statement: specialinvoke $r58.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var1717!1 String)
(assert (= var1717!1 "\u0027"))
(define-const var1382 var1881 (var2170_getValue/1809189437 var567)) ; Statement: $r59 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2305 var1642 (cast-from-var1881-to-var1642 var1382)) ; Statement: $r61 = (java.time.Instant) $r59 
(define-const var3951 var1124 var1124-UTC) ; Statement: $r60 = <java.time.ZoneOffset: java.time.ZoneOffset UTC> 
(assert true)
(define-const var1789 var823 (atOffset/237058948 var2305 var3951)) ; Statement: $r65 = virtualinvoke $r61.<java.time.Instant: java.time.OffsetDateTime atOffset(java.time.ZoneOffset)>($r60) 
(define-const var863 var1594 (serverSession/-791602078 (cast-from-var3975-to-var1024 var2474))) ; Statement: $r62 = r7.<com.mysql.cj.protocol.a.InstantValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var2830 var124 (var1594_getDefaultTimeZone/769257159 var863)) ; Statement: $r63 = interfaceinvoke $r62.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var2047 var696 (toZoneId/1901803186 var2830)) ; Statement: $r64 = virtualinvoke $r63.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var3749 var1104 (atZoneSameInstant/886060260 var1789 var2047)) ; Statement: $r66 = virtualinvoke $r65.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r64) 
(assert true)
(define-const var485 var3042 (toLocalDate/2145287267 var3749)) ; Statement: $r68 = virtualinvoke $r66.<java.time.ZonedDateTime: java.time.LocalDate toLocalDate()>() 
(define-const var2355 var561 var1926-DATE_FORMATTER) ; Statement: $r67 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER> 
(assert true)
(define-const var131 String (format/-1339630330 var485 var2355)) ; Statement: $r69 = virtualinvoke $r68.<java.time.LocalDate: java.lang.String format(java.time.format.DateTimeFormatter)>($r67) 
(assert true)
;(assert (append/672562846 var1717!1 var131)) ; Statement: virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69) 
(declare-const var1717!2 String)
(assert (= var1717!2 (str.++ var1717!1 var131)))
(assert true)
;(assert (append/672562846 var1717!2 "\u0027")) ; Statement: virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1717!3 String)
(assert (= var1717!3 (str.++ var1717!2 "\u0027")))
(assert true)
(define-const var2185 String (toString/-2075883882 var1717!3)) ; Statement: $r70 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r70 
(check-sat)
(get-model)
(get-unsat-core)
; {var2170_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var417-to-var3275=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2170_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1881-to-var1642=([java.lang.Object], java.time.Instant), atOffset/237058948=([java.time.Instant, java.time.ZoneOffset], java.time.OffsetDateTime), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var3975-to-var1024=([com.mysql.cj.protocol.a.InstantValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var1594_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), atZoneSameInstant/886060260=([java.time.OffsetDateTime, java.time.ZoneId], java.time.ZonedDateTime), toLocalDate/2145287267=([java.time.ZonedDateTime], java.time.LocalDate), format/-1339630330=([java.time.LocalDate, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3975=com.mysql.cj.protocol.a.InstantValueEncoder, var2474=r7, var2170=com.mysql.cj.BindValue, var567=r0, var2697=com.mysql.cj.protocol.a.InstantValueEncoder$1, var3794=$r1, var417=com.mysql.cj.MysqlType, var706=$r2, var3275=java.lang.Enum, var3662=$i0, var3846=$i1, var1717=$r58, var1881=java.lang.Object, var1382=$r59, var1642=java.time.Instant, var2305=$r61, var1124=java.time.ZoneOffset, var3951=$r60, var823=java.time.OffsetDateTime, var1789=$r65, var1594=com.mysql.cj.protocol.ServerSession, var1024=com.mysql.cj.protocol.a.AbstractValueEncoder, var863=$r62, var124=java.util.TimeZone, var2830=$r63, var696=java.time.ZoneId, var2047=$r64, var1104=java.time.ZonedDateTime, var3749=$r66, var3042=java.time.LocalDate, var485=$r68, var561=java.time.format.DateTimeFormatter, var1926=com.mysql.cj.util.TimeUtil, var2355=$r67, var131=$r69, var2185=$r70}
; {com.mysql.cj.protocol.a.InstantValueEncoder=var3975, r7=var2474, com.mysql.cj.BindValue=var2170, r0=var567, com.mysql.cj.protocol.a.InstantValueEncoder$1=var2697, $r1=var3794, com.mysql.cj.MysqlType=var417, $r2=var706, java.lang.Enum=var3275, $i0=var3662, $i1=var3846, $r58=var1717, java.lang.Object=var1881, $r59=var1382, java.time.Instant=var1642, $r61=var2305, java.time.ZoneOffset=var1124, $r60=var3951, java.time.OffsetDateTime=var823, $r65=var1789, com.mysql.cj.protocol.ServerSession=var1594, com.mysql.cj.protocol.a.AbstractValueEncoder=var1024, $r62=var863, java.util.TimeZone=var124, $r63=var2830, java.time.ZoneId=var696, $r64=var2047, java.time.ZonedDateTime=var1104, $r66=var3749, java.time.LocalDate=var3042, $r68=var485, java.time.format.DateTimeFormatter=var561, com.mysql.cj.util.TimeUtil=var1926, $r67=var2355, $r69=var131, $r70=var2185}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.mysql.cj.protocol.a.InstantValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.InstantValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r58 = new java.lang.StringBuilder;     case 3: goto $r43 = new java.lang.StringBuilder;     case 4: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r71 = newarray (java.lang.Object)[2]; };	$r58 = new java.lang.StringBuilder;	specialinvoke $r58.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r59 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r61 = (java.time.Instant) $r59;	$r60 = <java.time.ZoneOffset: java.time.ZoneOffset UTC>;	$r65 = virtualinvoke $r61.<java.time.Instant: java.time.OffsetDateTime atOffset(java.time.ZoneOffset)>($r60);	$r62 = r7.<com.mysql.cj.protocol.a.InstantValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r63 = interfaceinvoke $r62.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r64 = virtualinvoke $r63.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r66 = virtualinvoke $r65.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r64);	$r68 = virtualinvoke $r66.<java.time.ZonedDateTime: java.time.LocalDate toLocalDate()>();	$r67 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER>;	$r69 = virtualinvoke $r68.<java.time.LocalDate: java.lang.String format(java.time.format.DateTimeFormatter)>($r67);	virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r69);	virtualinvoke $r58.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r70 = virtualinvoke $r58.<java.lang.StringBuilder: java.lang.String toString()>();	return $r70
;block_num 2