(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2447 0)
(declare-sort var482 0)
(declare-sort var3356 0)
(declare-sort var787 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pattern/1549876084 (var2447) String)
(declare-fun locale/1549876084 (var2447) var482)
(declare-fun append/-1031950772 (String var3356) String)
(declare-fun cast-from-var482-to-var3356 (var482) var3356)
(declare-fun timeZone/1549876084 (var2447) var787)
(declare-fun getID/-1323510388 (var787) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2447 var2447)
(declare-const var2329 var2447) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDatePrinter 
(assert (not (= var2329 null-var2447)))
(define-const var1360 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1360)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1360!1 String)
(assert (= var1360!1 ""))
(assert true)
(define-const var2426 String (append/672562846 var1360!1 "FastDatePrinter[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FastDatePrinter[") 
(declare-const var1360!2 String)
(assert (= var1360!2 (str.++ var1360!1 "FastDatePrinter[")))
(define-const var1050 String (pattern/1549876084 var2329)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.String pattern> 
(assert true)
(define-const var3157 String (append/672562846 var2426 var1050)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2426!1 String)
(assert (= var2426!1 (str.++ var2426 var1050)))
(assert true)
(define-const var3377 String (append/672562846 var3157 ",")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3157!1 String)
(assert (= var3157!1 (str.++ var3157 ",")))
(define-const var1760 var482 (locale/1549876084 var2329)) ; Statement: $r5 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.util.Locale locale> 
(assert true)
(define-const var3324 String (append/-1031950772 var3377 (cast-from-var482-to-var3356 var1760))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3377!1 String)
(assert (str.prefixof var3377 var3377!1))
(assert true)
(define-const var1028 String (append/672562846 var3324 ",")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var3324!1 String)
(assert (= var3324!1 (str.++ var3324 ",")))
(define-const var1436 var787 (timeZone/1549876084 var2329)) ; Statement: $r8 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.util.TimeZone timeZone> 
(assert true)
(define-const var3406 String (getID/-1323510388 var1436)) ; Statement: $r9 = virtualinvoke $r8.<java.util.TimeZone: java.lang.String getID()>() 
(assert true)
(define-const var298 String (append/672562846 var1028 var3406)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1028!1 String)
(assert (= var1028!1 (str.++ var1028 var3406)))
(assert true)
(define-const var675 String (append/672562846 var298 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var298!1 String)
(assert (= var298!1 (str.++ var298 "]")))
(assert true)
(define-const var1678 String (toString/-2075883882 var675)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pattern/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], java.lang.String), locale/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], java.util.Locale), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var482-to-var3356=([java.util.Locale], java.lang.Object), timeZone/1549876084=([org.apache.commons.lang3.time.FastDatePrinter], java.util.TimeZone), getID/-1323510388=([java.util.TimeZone], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2447=org.apache.commons.lang3.time.FastDatePrinter, var2329=r1, var1360=$r0, var2426=$r3, var1050=$r2, var3157=$r4, var3377=$r6, var482=java.util.Locale, var1760=$r5, var3356=java.lang.Object, var3324=$r7, var1028=$r10, var787=java.util.TimeZone, var1436=$r8, var3406=$r9, var298=$r11, var675=$r12, var1678=$r13}
; {org.apache.commons.lang3.time.FastDatePrinter=var2447, r1=var2329, $r0=var1360, $r3=var2426, $r2=var1050, $r4=var3157, $r6=var3377, java.util.Locale=var482, $r5=var1760, java.lang.Object=var3356, $r7=var3324, $r10=var1028, java.util.TimeZone=var787, $r8=var1436, $r9=var3406, $r11=var298, $r12=var675, $r13=var1678}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDatePrinter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FastDatePrinter[");	$r2 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.lang.String pattern>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r5 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.util.Locale locale>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r8 = r1.<org.apache.commons.lang3.time.FastDatePrinter: java.util.TimeZone timeZone>;	$r9 = virtualinvoke $r8.<java.util.TimeZone: java.lang.String getID()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1