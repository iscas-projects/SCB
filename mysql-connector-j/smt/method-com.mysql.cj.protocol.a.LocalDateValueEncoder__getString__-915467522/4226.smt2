(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3185 0)
(declare-sort var3073 0)
(declare-sort var1048 0)
(declare-sort var2728 0)
(declare-sort var970 0)
(declare-sort var2370 0)
(declare-sort var1211 0)
(declare-sort var3793 0)
(declare-sort var1209 0)
(declare-sort var3103 0)
(declare-sort var3602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3073_getMysqlType/-215853011 (var3073) var2728)
(declare-fun ordinal/-291641772 (var970) Int)
(declare-fun cast-from-var2728-to-var970 (var2728) var970)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var3073_getValue/1809189437 (var3073) var2370)
(declare-fun cast-from-var2370-to-var1211 (var2370) var1211)
(declare-fun var3103_of/1807105097 (var1211 var3793) var3103)
(declare-fun format/372879155 (var3103 var3602) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3185 var3185)
(declare-const null-var3073 var3073)
(declare-const var1048-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var1209-DEFAULT_TIME var3793)
(declare-const var1209-DATETIME_FORMATTER_WITH_OPTIONAL_MICROS var3602)
(declare-const var1538 var3185) ; Statement: r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder 
(assert (not (= var1538 null-var3185)))
(declare-const var791 var3073) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var791 null-var3073)))
(define-const var1089 (Array Int Int) var1048-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var135 var2728 (var3073_getMysqlType/-215853011 var791)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1710 Int (ordinal/-291641772 (cast-from-var2728-to-var970 var135))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3932 Int (select var1089 var1710)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3932 3) (and (not (= var3932 2)) (and (not (= var3932 1)) true)))) ; Intersect: Cond: $i1 == 3  and Intersect: Negate: Cond: $i1 == 2   and Intersect: Negate: Cond: $i1 == 1   and Non Conditional   
(define-const var3619 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var3619 "\u0027")) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var3619!1 String)
(assert (= var3619!1 "\u0027"))
(define-const var2139 var2370 (var3073_getValue/1809189437 var791)) ; Statement: $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var1288 var1211 (cast-from-var2370-to-var1211 var2139)) ; Statement: $r13 = (java.time.LocalDate) $r11 
(define-const var1119 var3793 var1209-DEFAULT_TIME) ; Statement: $r12 = <com.mysql.cj.util.TimeUtil: java.time.LocalTime DEFAULT_TIME> 
(define-const var837 var3103 (var3103_of/1807105097 var1288 var1119)) ; Statement: $r15 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime of(java.time.LocalDate,java.time.LocalTime)>($r13, $r12) 
(define-const var1226 var3602 var1209-DATETIME_FORMATTER_WITH_OPTIONAL_MICROS) ; Statement: $r14 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATETIME_FORMATTER_WITH_OPTIONAL_MICROS> 
(assert true)
(define-const var2032 String (format/372879155 var837 var1226)) ; Statement: $r16 = virtualinvoke $r15.<java.time.LocalDateTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r14) 
(assert true)
;(assert (append/672562846 var3619!1 var2032)) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3619!2 String)
(assert (= var3619!2 (str.++ var3619!1 var2032)))
(assert true)
;(assert (append/672562846 var3619!2 "\u0027")) ; Statement: virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var3619!3 String)
(assert (= var3619!3 (str.++ var3619!2 "\u0027")))
(assert true)
(define-const var3692 String (toString/-2075883882 var3619!3)) ; Statement: $r17 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {var3073_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2728-to-var970=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var3073_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2370-to-var1211=([java.lang.Object], java.time.LocalDate), var3103_of/1807105097=([java.time.LocalDate, java.time.LocalTime], java.time.LocalDateTime), format/372879155=([java.time.LocalDateTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3185=com.mysql.cj.protocol.a.LocalDateValueEncoder, var1538=r30, var3073=com.mysql.cj.BindValue, var791=r0, var1048=com.mysql.cj.protocol.a.LocalDateValueEncoder$1, var1089=$r1, var2728=com.mysql.cj.MysqlType, var135=$r2, var970=java.lang.Enum, var1710=$i0, var3932=$i1, var3619=$r10, var2370=java.lang.Object, var2139=$r11, var1211=java.time.LocalDate, var1288=$r13, var3793=java.time.LocalTime, var1209=com.mysql.cj.util.TimeUtil, var1119=$r12, var3103=java.time.LocalDateTime, var837=$r15, var3602=java.time.format.DateTimeFormatter, var1226=$r14, var2032=$r16, var3692=$r17}
; {com.mysql.cj.protocol.a.LocalDateValueEncoder=var3185, r30=var1538, com.mysql.cj.BindValue=var3073, r0=var791, com.mysql.cj.protocol.a.LocalDateValueEncoder$1=var1048, $r1=var1089, com.mysql.cj.MysqlType=var2728, $r2=var135, java.lang.Enum=var970, $i0=var1710, $i1=var3932, $r10=var3619, java.lang.Object=var2370, $r11=var2139, java.time.LocalDate=var1211, $r13=var1288, java.time.LocalTime=var3793, com.mysql.cj.util.TimeUtil=var1209, $r12=var1119, java.time.LocalDateTime=var3103, $r15=var837, java.time.format.DateTimeFormatter=var3602, $r14=var1226, $r16=var2032, $r17=var3692}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; };	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r13 = (java.time.LocalDate) $r11;	$r12 = <com.mysql.cj.util.TimeUtil: java.time.LocalTime DEFAULT_TIME>;	$r15 = staticinvoke <java.time.LocalDateTime: java.time.LocalDateTime of(java.time.LocalDate,java.time.LocalTime)>($r13, $r12);	$r14 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATETIME_FORMATTER_WITH_OPTIONAL_MICROS>;	$r16 = virtualinvoke $r15.<java.time.LocalDateTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r14);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r17 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 2