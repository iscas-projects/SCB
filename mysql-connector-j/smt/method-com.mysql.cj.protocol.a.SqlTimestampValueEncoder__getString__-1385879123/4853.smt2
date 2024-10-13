(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1651 0)
(declare-sort var480 0)
(declare-sort var3463 0)
(declare-sort var1187 0)
(declare-sort var1186 0)
(declare-sort var156 0)
(declare-sort var3259 0)
(declare-sort var433 0)
(declare-sort var1775 0)
(declare-sort var841 0)
(declare-sort var224 0)
(declare-sort var3721 0)
(declare-sort var1690 0)
(declare-sort var665 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var480_getValue/1809189437 (var480) var3463)
(declare-fun cast-from-var3463-to-var1187 (var3463) var1187)
(declare-fun clone/-229247619 (var1186) var3463)
(declare-fun cast-from-var1187-to-var1186 (var1187) var1186)
(declare-fun var480_getField/-416441240 (var480) var156)
(declare-fun var480_keepOrigNanos/-1228352316 (var480) Bool)
(declare-fun adjustTimestamp/-1797346727 (var3259 var1187 var156 Bool) var1187)
(declare-fun cast-from-var1651-to-var3259 (var1651) var3259)
(declare-fun var480_getMysqlType/-215853011 (var480) var1775)
(declare-fun ordinal/-291641772 (var841) Int)
(declare-fun cast-from-var1775-to-var841 (var1775) var841)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun toLocalDateTime/214165133 (var1187) var224)
(declare-fun toLocalTime/-1887946600 (var224) var3721)
(declare-fun adjustLocalTime/-1943683197 (var3259 var3721 var156) var3721)
(declare-fun format/1282671589 (var3721 var1690) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1651 var1651)
(declare-const null-var480 var480)
(declare-const var433-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var665-TIME_FORMATTER_WITH_OPTIONAL_MICROS var1690)
(declare-const var3685 var1651) ; Statement: r0 := @this: com.mysql.cj.protocol.a.SqlTimestampValueEncoder 
(assert (not (= var3685 null-var1651)))
(declare-const var1093 var480) ; Statement: r1 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1093 null-var480)))
(define-const var850 var3463 (var480_getValue/1809189437 var1093)) ; Statement: $r2 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var3075 var1187 (cast-from-var3463-to-var1187 var850)) ; Statement: $r3 = (java.sql.Timestamp) $r2 
(assert true)
(define-const var992 var3463 (clone/-229247619 (cast-from-var1187-to-var1186 var3075))) ; Statement: $r4 = virtualinvoke $r3.<java.sql.Timestamp: java.lang.Object clone()>() 
(define-const var247 var1187 (cast-from-var3463-to-var1187 var992)) ; Statement: $r6 = (java.sql.Timestamp) $r4 
(define-const var3315 var156 (var480_getField/-416441240 var1093)) ; Statement: $r5 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(define-const var3817 Bool (var480_keepOrigNanos/-1228352316 var1093)) ; Statement: $z0 = interfaceinvoke r1.<com.mysql.cj.BindValue: boolean keepOrigNanos()>() 
(assert true)
(define-const var467 var1187 (adjustTimestamp/-1797346727 (cast-from-var1651-to-var3259 var3685) var247 var3315 var3817)) ; Statement: r7 = virtualinvoke r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: java.sql.Timestamp adjustTimestamp(java.sql.Timestamp,com.mysql.cj.result.Field,boolean)>($r6, $r5, $z0) 
(define-const var2826 (Array Int Int) var433-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r8 = <com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3248 var1775 (var480_getMysqlType/-215853011 var1093)) ; Statement: $r9 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2990 Int (ordinal/-291641772 (cast-from-var1775-to-var841 var3248))) ; Statement: $i0 = virtualinvoke $r9.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var2708 Int (select var2826 var2990)) ; Statement: $i1 = $r8[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r37 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r24 = new java.lang.StringBuilder;     case 4: goto $r24 = new java.lang.StringBuilder;     case 5: goto $r24 = new java.lang.StringBuilder;     case 6: goto $r24 = new java.lang.StringBuilder;     case 7: goto $r24 = new java.lang.StringBuilder;     case 8: goto $r24 = new java.lang.StringBuilder;     case 9: goto $r24 = new java.lang.StringBuilder;     case 10: goto $r24 = new java.lang.StringBuilder;     case 11: goto r20 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     case 12: goto $r10 = new java.lang.StringBuilder;     default: goto $r49 = newarray (java.lang.Object)[2]; } 
(assert (and (= var2708 12) (and (not (= var2708 11)) (and (not (= var2708 10)) (and (not (= var2708 9)) (and (not (= var2708 8)) (and (not (= var2708 7)) (and (not (= var2708 6)) (and (not (= var2708 5)) (and (not (= var2708 4)) (and (not (= var2708 3)) (and (not (= var2708 2)) (and (not (= var2708 1)) true))))))))))))) ; Intersect: Cond: $i1 == 12  and Intersect: Negate: Cond: $i1 == 11   and Intersect: Negate: Cond: $i1 == 10   and Intersect: Negate: Cond: $i1 == 9   and Intersect: Negate: Cond: $i1 == 8   and Intersect: Negate: Cond: $i1 == 7   and Intersect: Negate: Cond: $i1 == 6   and Intersect: Negate: Cond: $i1 == 5   and Intersect: Negate: Cond: $i1 == 4   and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional            
(define-const var2155 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2155 "\u0027")) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var2155!1 String)
(assert (= var2155!1 "\u0027"))
(define-const var1761 var3463 (var480_getValue/1809189437 var1093)) ; Statement: $r11 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2836 var1187 (cast-from-var3463-to-var1187 var1761)) ; Statement: $r12 = (java.sql.Timestamp) $r11 
(assert true)
(define-const var3278 var224 (toLocalDateTime/214165133 var2836)) ; Statement: $r13 = virtualinvoke $r12.<java.sql.Timestamp: java.time.LocalDateTime toLocalDateTime()>() 
(assert true)
(define-const var2355 var3721 (toLocalTime/-1887946600 var3278)) ; Statement: $r15 = virtualinvoke $r13.<java.time.LocalDateTime: java.time.LocalTime toLocalTime()>() 
(define-const var3449 var156 (var480_getField/-416441240 var1093)) ; Statement: $r14 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var1650 var3721 (adjustLocalTime/-1943683197 (cast-from-var1651-to-var3259 var3685) var2355 var3449)) ; Statement: $r17 = virtualinvoke r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r15, $r14) 
(define-const var797 var1690 var665-TIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r16 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var2651 String (format/1282671589 var1650 var797)) ; Statement: $r18 = virtualinvoke $r17.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r16) 
(assert true)
;(assert (append/672562846 var2155!1 var2651)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2155!2 String)
(assert (= var2155!2 (str.++ var2155!1 var2651)))
(assert true)
;(assert (append/672562846 var2155!2 "\u0027")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2155!3 String)
(assert (= var2155!3 (str.++ var2155!2 "\u0027")))
(assert true)
(define-const var535 String (toString/-2075883882 var2155!3)) ; Statement: $r19 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var480_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var3463-to-var1187=([java.lang.Object], java.sql.Timestamp), clone/-229247619=([java.util.Date], java.lang.Object), cast-from-var1187-to-var1186=([java.sql.Timestamp], java.util.Date), var480_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), var480_keepOrigNanos/-1228352316=([com.mysql.cj.BindValue], boolean), adjustTimestamp/-1797346727=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.sql.Timestamp, com.mysql.cj.result.Field, boolean], java.sql.Timestamp), cast-from-var1651-to-var3259=([com.mysql.cj.protocol.a.SqlTimestampValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), var480_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var1775-to-var841=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), toLocalDateTime/214165133=([java.sql.Timestamp], java.time.LocalDateTime), toLocalTime/-1887946600=([java.time.LocalDateTime], java.time.LocalTime), adjustLocalTime/-1943683197=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalTime, com.mysql.cj.result.Field], java.time.LocalTime), format/1282671589=([java.time.LocalTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1651=com.mysql.cj.protocol.a.SqlTimestampValueEncoder, var3685=r0, var480=com.mysql.cj.BindValue, var1093=r1, var3463=java.lang.Object, var850=$r2, var1187=java.sql.Timestamp, var3075=$r3, var1186=java.util.Date, var992=$r4, var247=$r6, var156=com.mysql.cj.result.Field, var3315=$r5, var3817=$z0, var3259=com.mysql.cj.protocol.a.AbstractValueEncoder, var467=r7, var433=com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1, var2826=$r8, var1775=com.mysql.cj.MysqlType, var3248=$r9, var841=java.lang.Enum, var2990=$i0, var2708=$i1, var2155=$r10, var1761=$r11, var2836=$r12, var224=java.time.LocalDateTime, var3278=$r13, var3721=java.time.LocalTime, var2355=$r15, var3449=$r14, var1650=$r17, var1690=java.time.format.DateTimeFormatter, var665=com.mysql.cj.util.TimeUtil, var797=$r16, var2651=$r18, var535=$r19}
; {com.mysql.cj.protocol.a.SqlTimestampValueEncoder=var1651, r0=var3685, com.mysql.cj.BindValue=var480, r1=var1093, java.lang.Object=var3463, $r2=var850, java.sql.Timestamp=var1187, $r3=var3075, java.util.Date=var1186, $r4=var992, $r6=var247, com.mysql.cj.result.Field=var156, $r5=var3315, $z0=var3817, com.mysql.cj.protocol.a.AbstractValueEncoder=var3259, r7=var467, com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1=var433, $r8=var2826, com.mysql.cj.MysqlType=var1775, $r9=var3248, java.lang.Enum=var841, $i0=var2990, $i1=var2708, $r10=var2155, $r11=var1761, $r12=var2836, java.time.LocalDateTime=var224, $r13=var3278, java.time.LocalTime=var3721, $r15=var2355, $r14=var3449, $r17=var1650, java.time.format.DateTimeFormatter=var1690, com.mysql.cj.util.TimeUtil=var665, $r16=var797, $r18=var2651, $r19=var535}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.mysql.cj.protocol.a.SqlTimestampValueEncoder;	r1 := @parameter0: com.mysql.cj.BindValue;	$r2 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r3 = (java.sql.Timestamp) $r2;	$r4 = virtualinvoke $r3.<java.sql.Timestamp: java.lang.Object clone()>();	$r6 = (java.sql.Timestamp) $r4;	$r5 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$z0 = interfaceinvoke r1.<com.mysql.cj.BindValue: boolean keepOrigNanos()>();	r7 = virtualinvoke r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: java.sql.Timestamp adjustTimestamp(java.sql.Timestamp,com.mysql.cj.result.Field,boolean)>($r6, $r5, $z0);	$r8 = <com.mysql.cj.protocol.a.SqlTimestampValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r9 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r9.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r8[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r37 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.util.Calendar getCalendar()>();     case 3: goto $r24 = new java.lang.StringBuilder;     case 4: goto $r24 = new java.lang.StringBuilder;     case 5: goto $r24 = new java.lang.StringBuilder;     case 6: goto $r24 = new java.lang.StringBuilder;     case 7: goto $r24 = new java.lang.StringBuilder;     case 8: goto $r24 = new java.lang.StringBuilder;     case 9: goto $r24 = new java.lang.StringBuilder;     case 10: goto $r24 = new java.lang.StringBuilder;     case 11: goto r20 = staticinvoke <java.util.Calendar: java.util.Calendar getInstance()>();     case 12: goto $r10 = new java.lang.StringBuilder;     default: goto $r49 = newarray (java.lang.Object)[2]; };	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r11 = interfaceinvoke r1.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r12 = (java.sql.Timestamp) $r11;	$r13 = virtualinvoke $r12.<java.sql.Timestamp: java.time.LocalDateTime toLocalDateTime()>();	$r15 = virtualinvoke $r13.<java.time.LocalDateTime: java.time.LocalTime toLocalTime()>();	$r14 = interfaceinvoke r1.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r17 = virtualinvoke r0.<com.mysql.cj.protocol.a.SqlTimestampValueEncoder: java.time.LocalTime adjustLocalTime(java.time.LocalTime,com.mysql.cj.result.Field)>($r15, $r14);	$r16 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r18 = virtualinvoke $r17.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r16);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r19 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r19
;block_num 2