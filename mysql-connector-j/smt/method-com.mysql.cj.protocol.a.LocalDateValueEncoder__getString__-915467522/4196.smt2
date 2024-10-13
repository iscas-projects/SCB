(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1001 0)
(declare-sort var249 0)
(declare-sort var2923 0)
(declare-sort var3441 0)
(declare-sort var2240 0)
(declare-sort var803 0)
(declare-sort var3212 0)
(declare-sort var2245 0)
(declare-sort var3981 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var249_getMysqlType/-215853011 (var249) var3441)
(declare-fun ordinal/-291641772 (var2240) Int)
(declare-fun cast-from-var3441-to-var2240 (var3441) var2240)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun var249_getValue/1809189437 (var249) var803)
(declare-fun cast-from-var803-to-var3212 (var803) var3212)
(declare-fun format/-1339630330 (var3212 var2245) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1001 var1001)
(declare-const null-var249 var249)
(declare-const var2923-$SwitchMap$com$mysql$cj$MysqlType (Array Int Int))
(declare-const var3981-DATE_FORMATTER var2245)
(declare-const var3973 var1001) ; Statement: r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder 
(assert (not (= var3973 null-var1001)))
(declare-const var3135 var249) ; Statement: r0 := @parameter0: com.mysql.cj.BindValue 
(assert (not (= var3135 null-var249)))
(define-const var436 (Array Int Int) var2923-$SwitchMap$com$mysql$cj$MysqlType) ; Statement: $r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType> 
(define-const var3818 var3441 (var249_getMysqlType/-215853011 var3135)) ; Statement: $r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>() 
(assert true)
(define-const var669 Int (ordinal/-291641772 (cast-from-var3441-to-var2240 var3818))) ; Statement: $i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>() 
(define-const var3012 Int (select var436 var669)) ; Statement: $i1 = $r1[$i0] 
 ; Statement: tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; } 
(assert (and (= var3012 2) (and (not (= var3012 1)) true))) ; Intersect: Cond: $i1 == 2  and Intersect: Negate: Cond: $i1 == 1   and Non Conditional  
(define-const var416 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var416 "\u0027")) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'") 
(declare-const var416!1 String)
(assert (= var416!1 "\u0027"))
(define-const var173 var803 (var249_getValue/1809189437 var3135)) ; Statement: $r19 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>() 
(define-const var2620 var3212 (cast-from-var803-to-var3212 var173)) ; Statement: $r21 = (java.time.LocalDate) $r19 
(define-const var706 var2245 var3981-DATE_FORMATTER) ; Statement: $r20 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER> 
(assert true)
(define-const var3769 String (format/-1339630330 var2620 var706)) ; Statement: $r22 = virtualinvoke $r21.<java.time.LocalDate: java.lang.String format(java.time.format.DateTimeFormatter)>($r20) 
(assert true)
;(assert (append/672562846 var416!1 var3769)) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var416!2 String)
(assert (= var416!2 (str.++ var416!1 var3769)))
(assert true)
;(assert (append/672562846 var416!2 "\u0027")) ; Statement: virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var416!3 String)
(assert (= var416!3 (str.++ var416!2 "\u0027")))
(assert true)
(define-const var1996 String (toString/-2075883882 var416!3)) ; Statement: $r23 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {var249_getMysqlType/-215853011=([com.mysql.cj.BindValue], com.mysql.cj.MysqlType), ordinal/-291641772=([java.lang.Enum], int), cast-from-var3441-to-var2240=([com.mysql.cj.MysqlType], java.lang.Enum), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), var249_getValue/1809189437=([com.mysql.cj.BindValue], java.lang.Object), cast-from-var803-to-var3212=([java.lang.Object], java.time.LocalDate), format/-1339630330=([java.time.LocalDate, java.time.format.DateTimeFormatter], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1001=com.mysql.cj.protocol.a.LocalDateValueEncoder, var3973=r30, var249=com.mysql.cj.BindValue, var3135=r0, var2923=com.mysql.cj.protocol.a.LocalDateValueEncoder$1, var436=$r1, var3441=com.mysql.cj.MysqlType, var3818=$r2, var2240=java.lang.Enum, var669=$i0, var3012=$i1, var416=$r18, var803=java.lang.Object, var173=$r19, var3212=java.time.LocalDate, var2620=$r21, var2245=java.time.format.DateTimeFormatter, var3981=com.mysql.cj.util.TimeUtil, var706=$r20, var3769=$r22, var1996=$r23}
; {com.mysql.cj.protocol.a.LocalDateValueEncoder=var1001, r30=var3973, com.mysql.cj.BindValue=var249, r0=var3135, com.mysql.cj.protocol.a.LocalDateValueEncoder$1=var2923, $r1=var436, com.mysql.cj.MysqlType=var3441, $r2=var3818, java.lang.Enum=var2240, $i0=var669, $i1=var3012, $r18=var416, java.lang.Object=var803, $r19=var173, java.time.LocalDate=var3212, $r21=var2620, java.time.format.DateTimeFormatter=var2245, com.mysql.cj.util.TimeUtil=var3981, $r20=var706, $r22=var3769, $r23=var1996}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r30 := @this: com.mysql.cj.protocol.a.LocalDateValueEncoder;	r0 := @parameter0: com.mysql.cj.BindValue;	$r1 = <com.mysql.cj.protocol.a.LocalDateValueEncoder$1: int[] $SwitchMap$com$mysql$cj$MysqlType>;	$r2 = interfaceinvoke r0.<com.mysql.cj.BindValue: com.mysql.cj.MysqlType getMysqlType()>();	$i0 = virtualinvoke $r2.<com.mysql.cj.MysqlType: int ordinal()>();	$i1 = $r1[$i0];	tableswitch($i1) {     case 1: goto return "null";     case 2: goto $r18 = new java.lang.StringBuilder;     case 3: goto $r10 = new java.lang.StringBuilder;     case 4: goto $r10 = new java.lang.StringBuilder;     case 5: goto $r7 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();     case 6: goto $r3 = new java.lang.StringBuilder;     case 7: goto $r3 = new java.lang.StringBuilder;     case 8: goto $r3 = new java.lang.StringBuilder;     case 9: goto $r3 = new java.lang.StringBuilder;     case 10: goto $r3 = new java.lang.StringBuilder;     case 11: goto $r3 = new java.lang.StringBuilder;     default: goto $r24 = newarray (java.lang.Object)[2]; };	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>(java.lang.String)>("\'");	$r19 = interfaceinvoke r0.<com.mysql.cj.BindValue: java.lang.Object getValue()>();	$r21 = (java.time.LocalDate) $r19;	$r20 = <com.mysql.cj.util.TimeUtil: java.time.format.DateTimeFormatter DATE_FORMATTER>;	$r22 = virtualinvoke $r21.<java.time.LocalDate: java.lang.String format(java.time.format.DateTimeFormatter)>($r20);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r23 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	return $r23
;block_num 2