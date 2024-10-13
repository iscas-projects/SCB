(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2644 0)
(declare-sort var2183 0)
(declare-sort var2322 0)
(declare-sort var3515 0)
(declare-sort var2006 0)
(declare-sort var626 0)
(declare-sort var3665 0)
(declare-sort var1511 0)
(declare-sort var1062 0)
(declare-sort var2346 0)
(declare-sort var1816 0)
(declare-sort var1890 0)
(declare-sort var3579 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2183_getMysqlType/-215853011 (var2183) var3515)
(declare-fun ordinal/-291641772 (var2006) Int)
(declare-fun cast-from-var3515-to-var2006 (var3515) var2006)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2183_getValue/1809189437 (var2183) var626)
(declare-fun cast-from-var626-to-var3665 (var626) var3665)
(declare-fun toLocalDate/1765820694 (var3665) var1511)
(declare-fun toLocalTime/-1887946600 (var3665) var1062)
(declare-fun var3665_of/1807105097 (var1511 var1062) var3665)
(declare-fun var2183_getField/-416441240 (var2183) var2346)
(declare-fun adjustLocalDateTime/497169005 (var1816 var3665 var2346) var3665)
(declare-fun cast-from-var2644-to-var1816 (var2644) var1816)
(declare-fun format/372879155 (var3665 var1890) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2644 var2644)
(declare-const null-var2183 var2183)
(declare-const var2322-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3579-DATETIME_FORMATTER_WITH_OPTIONAL_MICROS var1890)
(declare-const var2895 var2644) ; Statement: r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder 
(assert (not (= var2895 null-var2644)))
(declare-const var537 var2183) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var537 null-var2183)))
(define-const var603 (Array Int Int) var2322-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var2928 var3515 (var2183_getMysqlType/-215853011 var537)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var3357 Int (ordinal/-291641772 (cast-from-var3515-to-var2006 var2928))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var1464 Int (select var603 var3357)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; } 
(assert (and (= var1464 4) (and (not (= var1464 3)) (and (not (= var1464 2)) (and (not (= var1464 1)) true))))) ; Intersect: Cond: $i1 == 4  and Intersect: Negate: Cond: $i1 == 3   and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional    
(define-const var2571 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2571 "\u0027")) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var2571!1 String)
(assert (= var2571!1 "\u0027"))
(define-const var768 var626 (var2183_getValue/1809189437 var537)) ; Statement: $r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var474 var3665 (cast-from-var626-to-var3665 var768)) ; Statement: $r16 = (java.time.LocalDateTime) $r15 
(assert true)
(define-const var3079 var1511 (toLocalDate/1765820694 var474)) ; Statement: $r20 = virtualinvoke $r16.<java.time.LocalDateTime: java.time.LocalDate toLocalDate()>() 
(define-const var838 var626 (var2183_getValue/1809189437 var537)) ; Statement: $r17 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2534 var3665 (cast-from-var626-to-var3665 var838)) ; Statement: $r18 = (java.time.LocalDateTime) $r17 
(assert true)
(define-const var3009 var1062 (toLocalTime/-1887946600 var2534)) ; Statement: $r19 = virtualinvoke $r18.<java.time.LocalDateTime: java.time.LocalTime toLocalTime()>() 
(define-const var530 var3665 (var3665_of/1807105097 var3079 var3009)) ; Statement: $r22 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime of(java.time.LocalDate,java.time.LocalTime)>($r20, $r19) 
(define-const var861 var2346 (var2183_getField/-416441240 var537)) ; Statement: $r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var548 var3665 (adjustLocalDateTime/497169005 (cast-from-var2644-to-var1816 var2895) var530 var861)) ; Statement: $r24 = virtualinvoke r5.<com.mysql.cj.protocol.a.LocalDateTimeValueEncoder: java.time.LocalDateTime adjustLocalDateTime(java.time.LocalDateTime,com.mysql.cj.result.Field)>($r22, $r21) 
(define-const var3054 var1890 var3579-DATETIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r23 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATETIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var3358 String (format/372879155 var548 var3054)) ; Statement: $r25 = virtualinvoke $r24.<java.time.LocalDateTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r23) 
(assert true)
;(assert (append/672562846 var2571!1 var3358)) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25) 
(declare-const var2571!2 String)
(assert (= var2571!2 (str.++ var2571!1 var3358)))
(assert true)
;(assert (append/672562846 var2571!2 "\u0027")) ; Statement: virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2571!3 String)
(assert (= var2571!3 (str.++ var2571!2 "\u0027")))
(assert true)
(define-const var1342 String (toString/-2075883882 var2571!3)) ; Statement: $r26 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {var2183_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3515-to-var2006=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2183_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var626-to-var3665=([java.lang.Object], java.time.LocalDateTime), toLocalDate/1765820694=([java.time.LocalDateTime], java.time.LocalDate), toLocalTime/-1887946600=([java.time.LocalDateTime], java.time.LocalTime), var3665_of/1807105097=([java.time.LocalDate, java.time.LocalTime], java.time.LocalDateTime), var2183_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustLocalDateTime/497169005=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalDateTime, com.mysql.cj.result.Field], java.time.LocalDateTime), cast-from-var2644-to-var1816=([com.mysql.cj.protocol.a.LocalDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), format/372879155=([java.time.LocalDateTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2644=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder, var2895=r5, var2183=com.mysql.cj.BindValue, var537=r0, var2322=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1, var603=$r1, var3515=com.mysql.cj.MysqlType, var2928=$r2, var2006=java.lang.Enum, var3357=$i0, var1464=$i1, var2571=$r14, var626=java.lang.Object, var768=$r15, var3665=java.time.LocalDateTime, var474=$r16, var1511=java.time.LocalDate, var3079=$r20, var838=$r17, var2534=$r18, var1062=java.time.LocalTime, var3009=$r19, var530=$r22, var2346=com.mysql.cj.result.Field, var861=$r21, var1816=com.mysql.cj.protocol.a.AbstractValueEncoder, var548=$r24, var1890=java.time.format.DateTimeFormatter, var3579=com.mysql.cj.util.TimeUtil, var3054=$r23, var3358=$r25, var1342=$r26}
; {com.mysql.cj.protocol.a.LocalDateTimeValueEncoder=var2644, r5=var2895, com.mysql.cj.BindValue=var2183, r0=var537, com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1=var2322, $r1=var603, com.mysql.cj.MysqlType=var3515, $r2=var2928, java.lang.Enum=var2006, $i0=var3357, $i1=var1464, $r14=var2571, java.lang.Object=var626, $r15=var768, java.time.LocalDateTime=var3665, $r16=var474, java.time.LocalDate=var1511, $r20=var3079, $r17=var838, $r18=var2534, java.time.LocalTime=var1062, $r19=var3009, $r22=var530, com.mysql.cj.result.Field=var2346, $r21=var861, com.mysql.cj.protocol.a.AbstractValueEncoder=var1816, $r24=var548, java.time.format.DateTimeFormatter=var1890, com.mysql.cj.util.TimeUtil=var3579, $r23=var3054, $r25=var3358, $r26=var1342}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; };	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r15 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r16 = (java.time.LocalDateTime) $r15;	$r20 = virtualinvoke $r16.<java.time.LocalDateTime: java.time.LocalDate toLocalDate()>();	$r17 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r18 = (java.time.LocalDateTime) $r17;	$r19 = virtualinvoke $r18.<java.time.LocalDateTime: java.time.LocalTime toLocalTime()>();	$r22 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime of(java.time.LocalDate,java.time.LocalTime)>($r20, $r19);	$r21 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r24 = virtualinvoke r5.<com.mysql.cj.protocol.a.LocalDateTimeValueEncoder: java.time.LocalDateTime adjustLocalDateTime(java.time.LocalDateTime,com.mysql.cj.result.Field)>($r22, $r21);	$r23 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATETIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r25 = virtualinvoke $r24.<java.time.LocalDateTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r23);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r25);	virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r26 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r26
;block_num 2