(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1543 0)
(declare-sort var2227 0)
(declare-sort var3366 0)
(declare-sort var156 0)
(declare-sort var2720 0)
(declare-sort var3820 0)
(declare-sort var2210 0)
(declare-sort var2225 0)
(declare-sort var667 0)
(declare-sort var3815 0)
(declare-sort var3943 0)
(declare-sort var393 0)
(declare-sort var3721 0)
(declare-sort var3355 0)
(declare-sort var3864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2227_getValue/1809189437 (var2227) var3366)
(declare-fun cast-from-var3366-to-var156 (var3366) var156)
(declare-fun var2227_getMysqlType/-215853011 (var2227) var3820)
(declare-fun ordinal/-291641772 (var2210) Int)
(declare-fun cast-from-var3820-to-var2210 (var3820) var2210)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun serverSession/-791602078 (var667) var2225)
(declare-fun cast-from-var1543-to-var667 (var1543) var667)
(declare-fun var2225_getDefaultTimeZone/769257159 (var2225) var3815)
(declare-fun toZoneId/1901803186 (var3815) var3943)
(declare-fun atZoneSameInstant/886060260 (var156 var3943) var393)
(declare-fun toLocalDate/2145287267 (var393) var3721)
(declare-fun format/-1339630330 (var3721 var3355) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1543 var1543)
(declare-const null-var2227 var2227)
(declare-const var2720-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3864-DATE_FORMATTER var3355)
(declare-const var1096 var1543) ; Statement: r6 := @this: com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder 
(assert (not (= var1096 null-var1543)))
(declare-const var919 var2227) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var919 null-var2227)))
(define-const var747 var3366 (var2227_getValue/1809189437 var919)) ; Statement: $r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var3700 var156 (cast-from-var3366-to-var156 var747)) ; Statement: r2 = (java.time.OffsetDateTime) $r1 
(define-const var3952 (Array Int Int) var2720-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r3 = <com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1748 var3820 (var2227_getMysqlType/-215853011 var919)) ; Statement: $r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var415 Int (ordinal/-291641772 (cast-from-var3820-to-var2210 var1748))) ; Statement: $i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1192 Int (select var3952 var415)) ; Statement: $i1 = $r3[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r47 = new java.lang.StringBuilder;     case 3: goto $r34 = new java.lang.StringBuilder;     case 4: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;     case 7: goto $r5 = new java.lang.StringBuilder;     case 8: goto $r5 = new java.lang.StringBuilder;     case 9: goto $r5 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r5 = new java.lang.StringBuilder;     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r56 = newarray (java.lang.Object)[2]; } 
(assert (and (= var1192 2) (and (not (= var1192 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2387 String String-init) ; Statement: $r47 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2387 "\u0027")) ; Statement: specialinvoke $r47.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var2387!1 String)
(assert (= var2387!1 "\u0027"))
(define-const var3660 var2225 (serverSession/-791602078 (cast-from-var1543-to-var667 var1096))) ; Statement: $r48 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var948 var3815 (var2225_getDefaultTimeZone/769257159 var3660)) ; Statement: $r49 = interfaceinvoke $r48.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var3424 var3943 (toZoneId/1901803186 var948)) ; Statement: $r50 = virtualinvoke $r49.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var2130 var393 (atZoneSameInstant/886060260 var3700 var3424)) ; Statement: $r51 = virtualinvoke r2.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r50) 
(assert true)
(define-const var846 var3721 (toLocalDate/2145287267 var2130)) ; Statement: $r53 = virtualinvoke $r51.<java.time.ZonedDateTime: java.time.LocalDate toLocalDate()>() 
(define-const var3925 var3355 var3864-DATE_FORMATTER) ; Statement: $r52 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER> 
(assert true)
(define-const var3164 String (format/-1339630330 var846 var3925)) ; Statement: $r54 = virtualinvoke $r53.<java.time.LocalDate: java.lang.String format(java.time.format.DateTimeFormatter)>($r52) 
(assert true)
;(assert (append/672562846 var2387!1 var3164)) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54) 
(declare-const var2387!2 String)
(assert (= var2387!2 (str.++ var2387!1 var3164)))
(assert true)
;(assert (append/672562846 var2387!2 "\u0027")) ; Statement: virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2387!3 String)
(assert (= var2387!3 (str.++ var2387!2 "\u0027")))
(assert true)
(define-const var3268 String (toString/-2075883882 var2387!3)) ; Statement: $r55 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r55 
(check-sat)
(get-model)
(get-unsat-core)
; {var2227_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var3366-to-var156=([java.lang.Object], java.time.OffsetDateTime), var2227_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3820-to-var2210=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var1543-to-var667=([com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var2225_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), atZoneSameInstant/886060260=([java.time.OffsetDateTime, java.time.ZoneId], java.time.ZonedDateTime), toLocalDate/2145287267=([java.time.ZonedDateTime], java.time.LocalDate), format/-1339630330=([java.time.LocalDate, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1543=com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder, var1096=r6, var2227=com.mysql.cj.BindValue, var919=r0, var3366=java.lang.Object, var747=$r1, var156=java.time.OffsetDateTime, var3700=r2, var2720=com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1, var3952=$r3, var3820=com.mysql.cj.MysqlType, var1748=$r4, var2210=java.lang.Enum, var415=$i0, var1192=$i1, var2387=$r47, var2225=com.mysql.cj.protocol.ServerSession, var667=com.mysql.cj.protocol.a.AbstractValueEncoder, var3660=$r48, var3815=java.util.TimeZone, var948=$r49, var3943=java.time.ZoneId, var3424=$r50, var393=java.time.ZonedDateTime, var2130=$r51, var3721=java.time.LocalDate, var846=$r53, var3355=java.time.format.DateTimeFormatter, var3864=com.mysql.cj.util.TimeUtil, var3925=$r52, var3164=$r54, var3268=$r55}
; {com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder=var1543, r6=var1096, com.mysql.cj.BindValue=var2227, r0=var919, java.lang.Object=var3366, $r1=var747, java.time.OffsetDateTime=var156, r2=var3700, com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1=var2720, $r3=var3952, com.mysql.cj.MysqlType=var3820, $r4=var1748, java.lang.Enum=var2210, $i0=var415, $i1=var1192, $r47=var2387, com.mysql.cj.protocol.ServerSession=var2225, com.mysql.cj.protocol.a.AbstractValueEncoder=var667, $r48=var3660, java.util.TimeZone=var3815, $r49=var948, java.time.ZoneId=var3943, $r50=var3424, java.time.ZonedDateTime=var393, $r51=var2130, java.time.LocalDate=var3721, $r53=var846, java.time.format.DateTimeFormatter=var3355, com.mysql.cj.util.TimeUtil=var3864, $r52=var3925, $r54=var3164, $r55=var3268}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	r2 = (java.time.OffsetDateTime) $r1;	$r3 = <com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r4 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r4.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r3[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r47 = new java.lang.StringBuilder;     case 3: goto $r34 = new java.lang.StringBuilder;     case 4: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r10 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;     case 7: goto $r5 = new java.lang.StringBuilder;     case 8: goto $r5 = new java.lang.StringBuilder;     case 9: goto $r5 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r5 = new java.lang.StringBuilder;     case 12: goto $r5 = new java.lang.StringBuilder;     default: goto $r56 = newarray (java.lang.Object)[2]; };	$r47 = new java.lang.StringBuilder;	specialinvoke $r47.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r48 = r6.<com.mysql.cj.protocol.a.OffsetDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r49 = interfaceinvoke $r48.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r50 = virtualinvoke $r49.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r51 = virtualinvoke r2.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r50);	$r53 = virtualinvoke $r51.<java.time.ZonedDateTime: java.time.LocalDate toLocalDate()>();	$r52 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER>;	$r54 = virtualinvoke $r53.<java.time.LocalDate: java.lang.String format(java.time.format.DateTimeFormatter)>($r52);	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r54);	virtualinvoke $r47.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r55 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	return $r55
;block_num 2