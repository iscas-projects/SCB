(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2662 0)
(declare-sort var1011 0)
(declare-sort var288 0)
(declare-sort var1843 0)
(declare-sort var950 0)
(declare-sort var1911 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun wasNull/1287024874 (var2662) Bool)
(declare-fun context/1287024874 (var2662) var1011)
(declare-fun dateFormat/-445774891 (var1011) String)
(declare-fun getStringLength/484744461 (var2662) Int)
(declare-fun readLocalDate8/1239524352 (var2662) var950)
(declare-fun var1911-init () var1911)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun readString/1282532359 (var2662) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-2099196170 (var1911 String) void)
(declare-const null-var2662 var2662)
(declare-const null-String String)
(declare-const null-var1843 var1843)
(declare-const null-var950 var950)
(declare-const var699 var2662) ; Statement: r0 := @this: com.alibaba.fastjson2.JSONReader 
(assert (not (= var699 null-var2662)))
(declare-const var699!1 var2662)
(assert (not (= var699!1 null-var2662)))
(assert (= (wasNull/1287024874 var699!1) (ite (= 1 0) true false))) ; Statement: r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 0 
(define-const var3282 var1011 (context/1287024874 var699!1)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context> 
(define-const var1839 String (dateFormat/-445774891 var3282)) ; Statement: r2 = $r1.<com.alibaba.fastjson2.JSONReader$Context: java.lang.String dateFormat> 
 ; Statement: if r2 == null goto $i23 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getStringLength()>() 
(assert (= var1839 null-String)) ; Cond: r2 == null 
(assert true)
(define-const var3205 Int (getStringLength/484744461 var699!1)) ; Statement: $i23 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getStringLength()>() 
(define-const var2006 var1843 null-var1843) ; Statement: r53 = null 
 ; Statement: tableswitch($i23) {     case 8: goto r54 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate8()>();     case 9: goto r55 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate9()>();     case 10: goto r56 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate10()>();     case 11: goto r58 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate11()>();     case 12: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime12()>();     case 13: goto r59 = null;     case 14: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime14()>();     case 15: goto r59 = null;     case 16: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime16()>();     case 17: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime17()>();     case 18: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime18()>();     case 19: goto l24 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readMillis19()>();     case 20: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime20()>();     default: goto r59 = null; } 
(assert (and (= var3205 8) true)) ; Intersect: Cond: $i23 == 8  and Non Conditional 
(assert true)
(define-const var704 var950 (readLocalDate8/1239524352 var699!1)) ; Statement: r54 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate8()>() 
 ; Statement: if r54 != null goto $r32 = <java.time.LocalTime: java.time.LocalTime MIN> 
(assert (not (not (= var704 null-var950)))) ; Negate: Cond: r54 != null  
(define-const var2023 var1911 var1911-init) ; Statement: $r63 = new com.alibaba.fastjson2.JSONException 
(define-const var1708 String String-init) ; Statement: $r62 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1708)) ; Statement: specialinvoke $r62.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1708!1 String)
(assert (= var1708!1 ""))
(assert true)
(define-const var1261 String (append/672562846 var1708!1 "TODO : ")) ; Statement: $r36 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO : ") 
(declare-const var1708!2 String)
(assert (= var1708!2 (str.++ var1708!1 "TODO : ")))
(assert true)
(define-const var2850 String (readString/1282532359 var699!1)) ; Statement: $r35 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
(assert true)
(define-const var174 String (append/672562846 var1261 var2850)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35) 
(declare-const var1261!1 String)
(assert (= var1261!1 (str.++ var1261 var2850)))
(assert true)
(define-const var2950 String (toString/-2075883882 var174)) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-2099196170 var2023 var2950)) ; Statement: specialinvoke $r63.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r38) 

(declare-const var2023!1 var1911)
(declare-const var2950!1 String)
 ; Statement: throw $r63 
(check-sat)
(get-model)
(get-unsat-core)
; {wasNull/1287024874=([com.alibaba.fastjson2.JSONReader], boolean), context/1287024874=([com.alibaba.fastjson2.JSONReader], com.alibaba.fastjson2.JSONReader$Context), dateFormat/-445774891=([com.alibaba.fastjson2.JSONReader$Context], java.lang.String), getStringLength/484744461=([com.alibaba.fastjson2.JSONReader], int), readLocalDate8/1239524352=([com.alibaba.fastjson2.JSONReader], java.time.LocalDate), var1911-init=([], com.alibaba.fastjson2.JSONException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2662=com.alibaba.fastjson2.JSONReader, var699=r0, var1011=com.alibaba.fastjson2.JSONReader$Context, var3282=$r1, var1839=r2, var288=null_type, var3205=$i23, var1843=java.time.LocalDateTime, var2006=r53, var950=java.time.LocalDate, var704=r54, var1911=com.alibaba.fastjson2.JSONException, var2023=$r63, var1708=$r62, var1261=$r36, var2850=$r35, var174=$r37, var2950=$r38}
; {com.alibaba.fastjson2.JSONReader=var2662, r0=var699, com.alibaba.fastjson2.JSONReader$Context=var1011, $r1=var3282, r2=var1839, null_type=var288, $i23=var3205, java.time.LocalDateTime=var1843, r53=var2006, java.time.LocalDate=var950, r54=var704, com.alibaba.fastjson2.JSONException=var1911, $r63=var2023, $r62=var1708, $r36=var1261, $r35=var2850, $r37=var174, $r38=var2950}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.JSONReader;	r0.<com.alibaba.fastjson2.JSONReader: boolean wasNull> = 0;	$r1 = r0.<com.alibaba.fastjson2.JSONReader: com.alibaba.fastjson2.JSONReader$Context context>;	r2 = $r1.<com.alibaba.fastjson2.JSONReader$Context: java.lang.String dateFormat>;	if r2 == null goto $i23 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getStringLength()>();	$i23 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: int getStringLength()>();	r53 = null;	tableswitch($i23) {     case 8: goto r54 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate8()>();     case 9: goto r55 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate9()>();     case 10: goto r56 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate10()>();     case 11: goto r58 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate11()>();     case 12: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime12()>();     case 13: goto r59 = null;     case 14: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime14()>();     case 15: goto r59 = null;     case 16: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime16()>();     case 17: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime17()>();     case 18: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime18()>();     case 19: goto l24 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: long readMillis19()>();     case 20: goto r53 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDateTime readLocalDateTime20()>();     default: goto r59 = null; };	r54 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.time.LocalDate readLocalDate8()>();	if r54 != null goto $r32 = <java.time.LocalTime: java.time.LocalTime MIN>;	$r63 = new com.alibaba.fastjson2.JSONException;	$r62 = new java.lang.StringBuilder;	specialinvoke $r62.<java.lang.StringBuilder: void <init>()>();	$r36 = virtualinvoke $r62.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TODO : ");	$r35 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r35);	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r63.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>($r38);	throw $r63
;block_num 4