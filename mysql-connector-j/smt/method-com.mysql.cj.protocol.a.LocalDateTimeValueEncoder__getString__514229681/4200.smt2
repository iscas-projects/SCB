(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var535 0)
(declare-sort var2895 0)
(declare-sort var1299 0)
(declare-sort var2104 0)
(declare-sort var1872 0)
(declare-sort var2576 0)
(declare-sort var2906 0)
(declare-sort var2165 0)
(declare-sort var309 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2895_getMysqlType/-215853011 (var2895) var2104)
(declare-fun ordinal/-291641772 (var1872) Int)
(declare-fun cast-from-var2104-to-var1872 (var2104) var1872)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var2895_getValue/1809189437 (var2895) var2576)
(declare-fun cast-from-var2576-to-var2906 (var2576) var2906)
(declare-fun format/372879155 (var2906 var2165) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var535 var535)
(declare-const null-var2895 var2895)
(declare-const var1299-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var309-DATE_FORMATTER var2165)
(declare-const var1452 var535) ; Statement: r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder 
(assert (not (= var1452 null-var535)))
(declare-const var3841 var2895) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3841 null-var2895)))
(define-const var1583 (Array Int Int) var1299-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3708 var2104 (var2895_getMysqlType/-215853011 var3841)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var1377 Int (ordinal/-291641772 (cast-from-var2104-to-var1872 var3708))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3776 Int (select var1583 var1377)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3776 2) (and (not (= var3776 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var2396 String String-init) ; Statement: $r41 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2396 "\u0027")) ; Statement: specialinvoke $r41.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var2396!1 String)
(assert (= var2396!1 "\u0027"))
(define-const var1399 var2576 (var2895_getValue/1809189437 var3841)) ; Statement: $r42 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var3588 var2906 (cast-from-var2576-to-var2906 var1399)) ; Statement: $r44 = (java.time.LocalDateTime) $r42 
(define-const var2314 var2165 var309-DATE_FORMATTER) ; Statement: $r43 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER> 
(assert true)
(define-const var2886 String (format/372879155 var3588 var2314)) ; Statement: $r45 = virtualinvoke $r44.<java.time.LocalDateTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r43) 
(assert true)
;(assert (append/672562846 var2396!1 var2886)) ; Statement: virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45) 
(declare-const var2396!2 String)
(assert (= var2396!2 (str.++ var2396!1 var2886)))
(assert true)
;(assert (append/672562846 var2396!2 "\u0027")) ; Statement: virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2396!3 String)
(assert (= var2396!3 (str.++ var2396!2 "\u0027")))
(assert true)
(define-const var2611 String (toString/-2075883882 var2396!3)) ; Statement: $r46 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r46 
(check-sat)
(get-model)
(get-unsat-core)
; {var2895_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var2104-to-var1872=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var2895_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var2576-to-var2906=([java.lang.Object], java.time.LocalDateTime), format/372879155=([java.time.LocalDateTime, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var535=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder, var1452=r5, var2895=com.mysql.cj.BindValue, var3841=r0, var1299=com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1, var1583=$r1, var2104=com.mysql.cj.MysqlType, var3708=$r2, var1872=java.lang.Enum, var1377=$i0, var3776=$i1, var2396=$r41, var2576=java.lang.Object, var1399=$r42, var2906=java.time.LocalDateTime, var3588=$r44, var2165=java.time.format.DateTimeFormatter, var309=com.mysql.cj.util.TimeUtil, var2314=$r43, var2886=$r45, var2611=$r46}
; {com.mysql.cj.protocol.a.LocalDateTimeValueEncoder=var535, r5=var1452, com.mysql.cj.BindValue=var2895, r0=var3841, com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1=var1299, $r1=var1583, com.mysql.cj.MysqlType=var2104, $r2=var3708, java.lang.Enum=var1872, $i0=var1377, $i1=var3776, $r41=var2396, java.lang.Object=var2576, $r42=var1399, java.time.LocalDateTime=var2906, $r44=var3588, java.time.format.DateTimeFormatter=var2165, com.mysql.cj.util.TimeUtil=var309, $r43=var2314, $r45=var2886, $r46=var2611}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.mysql.cj.protocol.a.LocalDateTimeValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateTimeValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r41 = new java.lang.StringBuilder;     case 3: goto $r27 = new java.lang.StringBuilder;     case 4: goto $r14 = new java.lang.StringBuilder;     case 5: goto $r14 = new java.lang.StringBuilder;     case 6: goto $r11 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     case 12: goto $r3 = new java.lang.StringBuilder;     default: goto $r47 = newarray (java.lang.Object)[2]; };	$r41 = new java.lang.StringBuilder;	specialinvoke $r41.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r42 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r44 = (java.time.LocalDateTime) $r42;	$r43 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER>;	$r45 = virtualinvoke $r44.<java.time.LocalDateTime: java.lang.String format(java.time.format.DateTimeFormatter)>($r43);	virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r45);	virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r46 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	return $r46
;block_num 2