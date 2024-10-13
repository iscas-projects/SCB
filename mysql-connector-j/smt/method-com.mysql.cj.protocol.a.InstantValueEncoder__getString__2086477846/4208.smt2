(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1844 0)
(declare-sort var1769 0)
(declare-sort var549 0)
(declare-sort var3598 0)
(declare-sort var885 0)
(declare-sort var921 0)
(declare-sort var1940 0)
(declare-sort var1420 0)
(declare-sort var1604 0)
(declare-sort var1194 0)
(declare-sort var2286 0)
(declare-sort var114 0)
(declare-sort var3042 0)
(declare-sort var3661 0)
(declare-sort var1015 0)
(declare-sort var111 0)
(declare-sort var1701 0)
(declare-sort var2025 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1769_getMysqlType/-215853011 (var1769) var3598)
(declare-fun ordinal/-291641772 (var885) Int)
(declare-fun cast-from-var3598-to-var885 (var3598) var885)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var1769_getValue/1809189437 (var1769) var921)
(declare-fun cast-from-var921-to-var1940 (var921) var1940)
(declare-fun atOffset/237058948 (var1940 var1420) var1604)
(declare-fun serverSession/-791602078 (var2286) var1194)
(declare-fun cast-from-var1844-to-var2286 (var1844) var2286)
(declare-fun var1194_getDefaultTimeZone/769257159 (var1194) var114)
(declare-fun toZoneId/1901803186 (var114) var3042)
(declare-fun atZoneSameInstant/886060260 (var1604 var3042) var3661)
(declare-fun toLocalTime/-1508480027 (var3661) var1015)
(declare-fun var1769_getField/-416441240 (var1769) var111)
(declare-fun adjustLocalTime/-1943683197 (var2286 var1015 var111) var1015)
(declare-fun format/1282671589 (var1015 var1701) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1844 var1844)
(declare-const null-var1769 var1769)
(declare-const var549-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1420-UTC var1420)
(declare-const var2025-TIME_FORMATTER_WITH_OPTIONAL_MICROS var1701)
(declare-const var3501 var1844) ; Statement: r7 := @this: com.mysql.cj.protocol.a.InstantValueEncoder 
(assert (not (= var3501 null-var1844)))
(declare-const var3869 var1769) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3869 null-var1769)))
(define-const var3579 (Array Int Int) var549-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.InstantValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3545 var3598 (var1769_getMysqlType/-215853011 var3869)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3536 Int (ordinal/-291641772 (cast-from-var3598-to-var885 var3545))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var632 Int (select var3579 var3536)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r58 = new java.lang.StringBuilder;     case 3: goto $r43 = new java.lang.StringBuilder;     case 4: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r71 = newarray (java.lang.Object)[2]; } 
(assert (and (= var632 3) (and (not (= var632 2)) (and (not (= var632 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var3311 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3311 "\u0027")) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var3311!1 String)
(assert (= var3311!1 "\u0027"))
(define-const var2244 var921 (var1769_getValue/1809189437 var3869)) ; Statement: $r44 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2779 var1940 (cast-from-var921-to-var1940 var2244)) ; Statement: $r46 = (java.time.Instant) $r44 
(define-const var645 var1420 var1420-UTC) ; Statement: $r45 = <java.time.ZoneOffset: java.time.ZoneOffset UTC> 
(assert true)
(define-const var3503 var1604 (atOffset/237058948 var2779 var645)) ; Statement: $r50 = virtualinvoke $r46.<java.time.Instant: java.time.OffsetDateTime atOffset(java.time.ZoneOffset)>($r45) 
(define-const var759 var1194 (serverSession/-791602078 (cast-from-var1844-to-var2286 var3501))) ; Statement: $r47 = r7.<com.mysql.cj.protocol.a.InstantValueEncoder: com.mysql.cj.protocol.ServerSession serverSession> 
(define-const var1133 var114 (var1194_getDefaultTimeZone/769257159 var759)) ; Statement: $r48 = interfaceinvoke $r47.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>() 
(assert true)
(define-const var2366 var3042 (toZoneId/1901803186 var1133)) ; Statement: $r49 = virtualinvoke $r48.<java.util.TimeZone: java.time.ZoneId toZoneId()>() 
(assert true)
(define-const var3064 var3661 (atZoneSameInstant/886060260 var3503 var2366)) ; Statement: $r51 = virtualinvoke $r50.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r49) 
(assert true)
(define-const var3733 var1015 (toLocalTime/-1508480027 var3064)) ; Statement: $r53 = virtualinvoke $r51.<java.time.ZonedDateTime: java.time.LocalTime toLocalTime()>() 
(define-const var740 var111 (var1769_getField/-416441240 var3869)) ; Statement: $r52 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var1858 var1015 (adjustLocalTime/-1943683197 (cast-from-var1844-to-var2286 var3501) var3733 var740)) ; Statement: $r55 = virtualinvoke r7.<com.mysql.cj.protocol.a.InstantValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r53, $r52) 
(define-const var2641 var1701 var2025-TIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r54 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var2309 String (format/1282671589 var1858 var2641)) ; Statement: $r56 = virtualinvoke $r55.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r54) 
(assert true)
;(assert (append/672562846 var3311!1 var2309)) ; Statement: virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56) 
(declare-const var3311!2 String)
(assert (= var3311!2 (str.++ var3311!1 var2309)))
(assert true)
;(assert (append/672562846 var3311!2 "\u0027")) ; Statement: virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3311!3 String)
(assert (= var3311!3 (str.++ var3311!2 "\u0027")))
(assert true)
(define-const var2925 String (toString/-2075883882 var3311!3)) ; Statement: $r57 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r57 
(check-sat)
(get-model)
(get-unsat-core)
; {var1769_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3598-to-var885=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var1769_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var921-to-var1940=([java.lang.Object], java.time.Instant), atOffset/237058948=([java.time.Instant, java.time.ZoneOffset], java.time.OffsetDateTime), serverSession/-791602078=([com.mysql.cj.protocol.a.AbstractValueEncoder], com.mysql.cj.protocol.ServerSession), cast-from-var1844-to-var2286=([com.mysql.cj.protocol.a.InstantValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var1194_getDefaultTimeZone/769257159=([com.mysql.cj.protocol.ServerSession], java.util.TimeZone), toZoneId/1901803186=([java.util.TimeZone], java.time.ZoneId), atZoneSameInstant/886060260=([java.time.OffsetDateTime, java.time.ZoneId], java.time.ZonedDateTime), toLocalTime/-1508480027=([java.time.ZonedDateTime], java.time.LocalTime), var1769_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustLocalTime/-1943683197=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalTime, com.mysql.cj.result.Field], java.time.LocalTime), format/1282671589=([java.time.LocalTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1844=com.mysql.cj.protocol.a.InstantValueEncoder, var3501=r7, var1769=com.mysql.cj.BindValue, var3869=r0, var549=com.mysql.cj.protocol.a.InstantValueEncoder$1, var3579=$r1, var3598=com.mysql.cj.MysqlType, var3545=$r2, var885=java.lang.Enum, var3536=$i0, var632=$i1, var3311=$r43, var921=java.lang.Object, var2244=$r44, var1940=java.time.Instant, var2779=$r46, var1420=java.time.ZoneOffset, var645=$r45, var1604=java.time.OffsetDateTime, var3503=$r50, var1194=com.mysql.cj.protocol.ServerSession, var2286=com.mysql.cj.protocol.a.AbstractValueEncoder, var759=$r47, var114=java.util.TimeZone, var1133=$r48, var3042=java.time.ZoneId, var2366=$r49, var3661=java.time.ZonedDateTime, var3064=$r51, var1015=java.time.LocalTime, var3733=$r53, var111=com.mysql.cj.result.Field, var740=$r52, var1858=$r55, var1701=java.time.format.DateTimeFormatter, var2025=com.mysql.cj.util.TimeUtil, var2641=$r54, var2309=$r56, var2925=$r57}
; {com.mysql.cj.protocol.a.InstantValueEncoder=var1844, r7=var3501, com.mysql.cj.BindValue=var1769, r0=var3869, com.mysql.cj.protocol.a.InstantValueEncoder$1=var549, $r1=var3579, com.mysql.cj.MysqlType=var3598, $r2=var3545, java.lang.Enum=var885, $i0=var3536, $i1=var632, $r43=var3311, java.lang.Object=var921, $r44=var2244, java.time.Instant=var1940, $r46=var2779, java.time.ZoneOffset=var1420, $r45=var645, java.time.OffsetDateTime=var1604, $r50=var3503, com.mysql.cj.protocol.ServerSession=var1194, com.mysql.cj.protocol.a.AbstractValueEncoder=var2286, $r47=var759, java.util.TimeZone=var114, $r48=var1133, java.time.ZoneId=var3042, $r49=var2366, java.time.ZonedDateTime=var3661, $r51=var3064, java.time.LocalTime=var1015, $r53=var3733, com.mysql.cj.result.Field=var111, $r52=var740, $r55=var1858, java.time.format.DateTimeFormatter=var1701, com.mysql.cj.util.TimeUtil=var2025, $r54=var2641, $r56=var2309, $r57=var2925}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.mysql.cj.protocol.a.InstantValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.InstantValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r58 = new java.lang.StringBuilder;     case 3: goto $r43 = new java.lang.StringBuilder;     case 4: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 5: goto $r22 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r13 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r71 = newarray (java.lang.Object)[2]; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r44 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r46 = (java.time.Instant) $r44;	$r45 = <java.time.ZoneOffset: java.time.ZoneOffset UTC>;	$r50 = virtualinvoke $r46.<java.time.Instant: java.time.OffsetDateTime atOffset(java.time.ZoneOffset)>($r45);	$r47 = r7.<com.mysql.cj.protocol.a.InstantValueEncoder: com.mysql.cj.protocol.ServerSession serverSession>;	$r48 = interfaceinvoke $r47.<com.mysql.cj.protocol.ServerSession: java.util.TimeZone getDefaultTimeZone()>();	$r49 = virtualinvoke $r48.<java.util.TimeZone: java.time.ZoneId toZoneId()>();	$r51 = virtualinvoke $r50.<java.time.OffsetDateTime: java.time.ZonedDateTime atZoneSameInstant(java.time.ZoneId)>($r49);	$r53 = virtualinvoke $r51.<java.time.ZonedDateTime: java.time.LocalTime toLocalTime()>();	$r52 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r55 = virtualinvoke r7.<com.mysql.cj.protocol.a.InstantValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r53, $r52);	$r54 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r56 = virtualinvoke $r55.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r54);	virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r56);	virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r57 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.String toString()>();	return $r57
;block_num 2