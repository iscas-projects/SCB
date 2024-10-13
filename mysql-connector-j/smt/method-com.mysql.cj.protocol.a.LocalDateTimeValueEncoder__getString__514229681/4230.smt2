(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var648 0)
(declare-sort var3507 0)
(declare-sort var3329 0)
(declare-sort var3798 0)
(declare-sort var2517 0)
(declare-sort var1482 0)
(declare-sort var833 0)
(declare-sort var120 0)
(declare-sort var2480 0)
(declare-sort var148 0)
(declare-sort var782 0)
(declare-sort var1136 0)
(declare-sort var98 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3507_getMysqlType/-215853011 (var3507) var3798)
(declare-fun ordinal/-291641772 (var2517) Int)
(declare-fun cast-from-var3798-to-var2517 (var3798) var2517)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var3507_getValue/1809189437 (var3507) var1482)
(declare-fun cast-from-var1482-to-var833 (var1482) var833)
(declare-fun toLocalDate/1765820694 (var833) var120)
(declare-fun toLocalTime/-1887946600 (var833) var2480)
(declare-fun var833_of/1807105097 (var120 var2480) var833)
(declare-fun var3507_getField/-416441240 (var3507) var148)
(declare-fun adjustLocalDateTime/497169005 (var782 var833 var148) var833)
(declare-fun cast-from-var648-to-var782 (var648) var782)
(declare-fun format/1282671589 (var2480 var1136) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var648 var648)
(declare-const null-var3507 var3507)
(declare-const var3329-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var98-TIME_FORMATTER_WITH_OPTIONAL_MICROS var1136)
(declare-const var1191 var648) ; Statement: r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder 
(assert (not (= var1191 null-var648)))
(declare-const var1555 var3507) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var1555 null-var3507)))
(define-const var2545 (Array Int Int) var3329-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3529 var3798 (var3507_getMysqlType/-215853011 var1555)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var2889 Int (ordinal/-291641772 (cast-from-var3798-to-var2517 var3529))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var479 Int (select var2545 var2889)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; } 
(assert (and (= var479 3) (and (not (= var479 2)) (and (not (= var479 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var3248 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3248 "\u0027")) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var3248!1 String)
(assert (= var3248!1 "\u0027"))
(define-const var2954 var1482 (var3507_getValue/1809189437 var1555)) ; Statement: $r28 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1532 var833 (cast-from-var1482-to-var833 var2954)) ; Statement: $r29 = (java.time.LocalDateTime) $r28 
(assert true)
(define-const var2002 var120 (toLocalDate/1765820694 var1532)) ; Statement: $r33 = virtualinvoke $r29.<java.time.LocalDateTime: java.time.LocalDate toLocalDate()>() 
(define-const var2882 var1482 (var3507_getValue/1809189437 var1555)) ; Statement: $r30 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2695 var833 (cast-from-var1482-to-var833 var2882)) ; Statement: $r31 = (java.time.LocalDateTime) $r30 
(assert true)
(define-const var1275 var2480 (toLocalTime/-1887946600 var2695)) ; Statement: $r32 = virtualinvoke $r31.<java.time.LocalDateTime: java.time.LocalTime toLocalTime()>() 
(define-const var2371 var833 (var833_of/1807105097 var2002 var1275)) ; Statement: $r35 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime of(java.time.LocalDate,java.time.LocalTime)>($r33, $r32) 
(define-const var2032 var148 (var3507_getField/-416441240 var1555)) ; Statement: $r34 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>() 
(assert true)
(define-const var3183 var833 (adjustLocalDateTime/497169005 (cast-from-var648-to-var782 var1191) var2371 var2032)) ; Statement: $r36 = virtualinvoke r5.<com.mysql.cj.protocol.a.LocalDateTimeValueEncoder: java.time.LocalDateTime adjustLocalDateTime(java.time.LocalDateTime,com.mysql.cj.result.Field)>($r35, $r34) 
(assert true)
(define-const var2252 var2480 (toLocalTime/-1887946600 var3183)) ; Statement: $r38 = virtualinvoke $r36.<java.time.LocalDateTime: java.time.LocalTime toLocalTime()>() 
(define-const var3343 var1136 var98-TIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r37 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var1090 String (format/1282671589 var2252 var3343)) ; Statement: $r39 = virtualinvoke $r38.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r37) 
(assert true)
;(assert (append/672562846 var3248!1 var1090)) ; Statement: virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var3248!2 String)
(assert (= var3248!2 (str.++ var3248!1 var1090)))
(assert true)
;(assert (append/672562846 var3248!2 "\u0027")) ; Statement: virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3248!3 String)
(assert (= var3248!3 (str.++ var3248!2 "\u0027")))
(assert true)
(define-const var777 String (toString/-2075883882 var3248!3)) ; Statement: $r40 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r40 
(check-sat)
(get-model)
(get-unsat-core)
; {var3507_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3798-to-var2517=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var3507_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var1482-to-var833=([java.lang.Object], java.time.LocalDateTime), toLocalDate/1765820694=([java.time.LocalDateTime], java.time.LocalDate), toLocalTime/-1887946600=([java.time.LocalDateTime], java.time.LocalTime), var833_of/1807105097=([java.time.LocalDate, java.time.LocalTime], java.time.LocalDateTime), var3507_getField/-416441240=([com.mysql.cj.BindValue], com.mysql.cj.result.Field), adjustLocalDateTime/497169005=([com.mysql.cj.protocol.a.AbstractValueEncoder, java.time.LocalDateTime, com.mysql.cj.result.Field], java.time.LocalDateTime), cast-from-var648-to-var782=([com.mysql.cj.protocol.a.LocalDateTimeValueEncoder], com.mysql.cj.protocol.a.AbstractValueEncoder), format/1282671589=([java.time.LocalTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var648=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder, var1191=r5, var3507=com.mysql.cj.BindValue, var1555=r0, var3329=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1, var2545=$r1, var3798=com.mysql.cj.MysqlType, var3529=$r2, var2517=java.lang.Enum, var2889=$i0, var479=$i1, var3248=$r27, var1482=java.lang.Object, var2954=$r28, var833=java.time.LocalDateTime, var1532=$r29, var120=java.time.LocalDate, var2002=$r33, var2882=$r30, var2695=$r31, var2480=java.time.LocalTime, var1275=$r32, var2371=$r35, var148=com.mysql.cj.result.Field, var2032=$r34, var782=com.mysql.cj.protocol.a.AbstractValueEncoder, var3183=$r36, var2252=$r38, var1136=java.time.format.DateTimeFormatter, var98=com.mysql.cj.util.TimeUtil, var3343=$r37, var1090=$r39, var777=$r40}
; {com.mysql.cj.protocol.a.LocalDateTimeValueEncoder=var648, r5=var1191, com.mysql.cj.BindValue=var3507, r0=var1555, com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1=var3329, $r1=var2545, com.mysql.cj.MysqlType=var3798, $r2=var3529, java.lang.Enum=var2517, $i0=var2889, $i1=var479, $r27=var3248, java.lang.Object=var1482, $r28=var2954, java.time.LocalDateTime=var833, $r29=var1532, java.time.LocalDate=var120, $r33=var2002, $r30=var2882, $r31=var2695, java.time.LocalTime=var2480, $r32=var1275, $r35=var2371, com.mysql.cj.result.Field=var148, $r34=var2032, com.mysql.cj.protocol.a.AbstractValueEncoder=var782, $r36=var3183, $r38=var2252, java.time.format.DateTimeFormatter=var1136, com.mysql.cj.util.TimeUtil=var98, $r37=var3343, $r39=var1090, $r40=var777}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; };	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r28 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r29 = (java.time.LocalDateTime) $r28;	$r33 = virtualinvoke $r29.<java.time.LocalDateTime: java.time.LocalDate toLocalDate()>();	$r30 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r31 = (java.time.LocalDateTime) $r30;	$r32 = virtualinvoke $r31.<java.time.LocalDateTime: java.time.LocalTime toLocalTime()>();	$r35 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime of(java.time.LocalDate,java.time.LocalTime)>($r33, $r32);	$r34 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.result.Field getField()>();	$r36 = virtualinvoke r5.<com.mysql.cj.protocol.a.LocalDateTimeValueEncoder: java.time.LocalDateTime adjustLocalDateTime(java.time.LocalDateTime,com.mysql.cj.result.Field)>($r35, $r34);	$r38 = virtualinvoke $r36.<java.time.LocalDateTime: java.time.LocalTime toLocalTime()>();	$r37 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter TIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r39 = virtualinvoke $r38.<java.time.LocalTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r37);	virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r40 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.String toString()>();	return $r40
;block_num 2