(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1739 0)
(declare-sort var3829 0)
(declare-sort var2699 0)
(declare-sort var2033 0)
(declare-sort var3644 0)
(declare-sort var2929 0)
(declare-sort var1615 0)
(declare-sort var794 0)
(declare-sort var2058 0)
(declare-sort var76 0)
(declare-sort var3617 0)
(declare-sort var3306 0)
(declare-sort var1358 0)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3829_getMysqlType/-215853011 (var3829) var2033)
(declare-fun ordinal/-291641772 (var3644) Int)
(declare-fun cast-from-var2033-to-var3644 (var2033) var3644)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var3829_getValue/1809189437 (var3829) var2929)
(declare-fun cast-from-var2929-to-var1615 (var2929) var1615)
(declare-fun serverSession/-791602078 (var2058) var794)
(declare-fun cast-from-var1739-to-var2058 (var1739) var2058)
(declare-fun var794_getDefaultTimeZone/769257159 (var794) var76)
(declare-fun toZoneId/1901803186 (var76) var3617)
(declare-fun withZoneSameInstant/1924399578 (var1615 var3617) var1615)
(declare-fun toLocalDate/2145287267 (var1615) var3306)
(declare-fun format/-1339630330 (var3306 var1358) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1739 var1739)
(declare-const null-var3829 var3829)
(declare-const var2699-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var251-DATE_FORMATTER var1358)
(declare-const var2270 var1739) ; Statement: r5 := @this: com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder 
(assert (not (= var2270 null-var1739)))
(declare-const var448 var3829) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var448 null-var3829)))
(define-const var1985 (Array Int Int) var2699-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var1627 var2033 (var3829_getMysqlType/-215853011 var448)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var337 Int (ordinal/-291641772 (cast-from-var2033-to-var3644 var1627))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var519 Int (select var1985 var337)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r50 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; } 
(assert (and (= var519 2) (and (not (= var519 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var591 String String-init) ; Statement: $r50 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var591 "\u0027")) ; Statement: specialinvoke $r50.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var591!1 String)
(assert (= var591!1 "\u0027"))
(define-const var1200 var2929 (var3829_getValue/1809189437 var448)) ; Statement: $r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2861 var1615 (cast-from-var2929-to-var1615 var1200)) ; Statement: $r55 = (java.time.ZonedDateTime) $r51 
(define-const var3295 var794 (serverSession/-791602078 (cast-from-var1739-to-var2058 var2270))) ; Statement: $r52 = r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var224 var76 (var794_getDefaultTimeZone/769257159 var3295)) ; Statement: $r53 = interfaceinvoke $r52.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var2025 var3617 (toZoneId/1901803186 var224)) ; Statement: $r54 = virtualinvoke $r53.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var1853 var1615 (withZoneSameInstant/1924399578 var2861 var2025)) ; Statement: $r56 = virtualinvoke $r55.<java.time.ZonedDateTime: java.time.ZonedDateTime withZoneSameInstant(java.time.ZoneId)>($r54) 
(assert true)
(define-const var3420 var3306 (toLocalDate/2145287267 var1853)) ; Statement: $r58 = virtualinvoke $r56.<java.time.ZonedDateTime: java.time.LocalDate toLocalDate()>() 
(define-const var1789 var1358 var251-DATE_FORMATTER) ; Statement: $r57 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER> 
(assert true)
(define-const var2968 String (format/-1339630330 var3420 var1789)) ; Statement: $r59 = virtualinvoke $r58.<java.time.LocalDate: java.lang.String format(java.time.format.DateTimeFormatter)>($r57) 
(assert true)
;(assert (append/672562846 var591!1 var2968)) ; Statement: virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r59) 
(declare-const var591!2 String)
(assert (= var591!2 (str.++ var591!1 var2968)))
(assert true)
;(assert (append/672562846 var591!2 "\u0027")) ; Statement: virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var591!3 String)
(assert (= var591!3 (str.++ var591!2 "\u0027")))
(assert true)
(define-const var112 String (toString/-2075883882 var591!3)) ; Statement: $r60 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r60 
(check-sat)
(get-model)
(get-unsat-core)
; {var3829_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2033-to-var3644=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var3829_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2929-to-var1615=([java.lang.Object], java.time.ZonedDateTime), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var1739-to-var2058=([com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var794_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), withZoneSameInstant/1924399578=([java.time.ZonedDateTime, java.time.ZoneId], java.time.ZonedDateTime), toLocalDate/2145287267=([java.time.ZonedDateTime], java.time.LocalDate), format/-1339630330=([java.time.LocalDate, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1739=com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder, var2270=r5, var3829=com.mysql.cj.BindValue, var448=r0, var2699=com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1, var1985=$r1, var2033=com.mysql.cj.MysqlType, var1627=$r2, var3644=java.lang.Enum, var337=$i0, var519=$i1, var591=$r50, var2929=java.lang.Object, var1200=$r51, var1615=java.time.ZonedDateTime, var2861=$r55, var794=com.mysql.cj.protocol.ServerSession, var2058=com.mysql.cj.protocol.a.AbstractValueEncoder, var3295=$r52, var76=java.util.TimeZone, var224=$r53, var3617=java.time.ZoneId, var2025=$r54, var1853=$r56, var3306=java.time.LocalDate, var3420=$r58, var1358=java.time.format.DateTimeFormatter, var251=com.mysql.cj.util.TimeUtil, var1789=$r57, var2968=$r59, var112=$r60}
; {com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder=var1739, r5=var2270, com.mysql.cj.BindValue=var3829, r0=var448, com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1=var2699, $r1=var1985, com.mysql.cj.MysqlType=var2033, $r2=var1627, java.lang.Enum=var3644, $i0=var337, $i1=var519, $r50=var591, java.lang.Object=var2929, $r51=var1200, java.time.ZonedDateTime=var1615, $r55=var2861, com.mysql.cj.protocol.ServerSession=var794, com.mysql.cj.protocol.a.AbstractValueEncoder=var2058, $r52=var3295, java.util.TimeZone=var76, $r53=var224, java.time.ZoneId=var3617, $r54=var2025, $r56=var1853, java.time.LocalDate=var3306, $r58=var3420, java.time.format.DateTimeFormatter=var1358, com.mysql.cj.util.TimeUtil=var251, $r57=var1789, $r59=var2968, $r60=var112}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r50 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r18 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r61 = newarray (java.lang.Object)[2]; };	$r50 = new java.lang.StringBuilder;	specialinvoke $r50.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r51 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r55 = (java.time.ZonedDateTime) $r51;	$r52 = r5.<com.mysql.cj.protocol.a.ZonedDateTimeValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r53 = interfaceinvoke $r52.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r54 = virtualinvoke $r53.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r56 = virtualinvoke $r55.<java.time.ZonedDateTime: java.time.ZonedDateTime withZoneSameInstant(java.time.ZoneId)>($r54);	$r58 = virtualinvoke $r56.<java.time.ZonedDateTime: java.time.LocalDate toLocalDate()>();	$r57 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER>;	$r59 = virtualinvoke $r58.<java.time.LocalDate: java.lang.String format(java.time.format.DateTimeFormatter)>($r57);	virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r59);	virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r60 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.String toString()>();	return $r60
;block_num 2