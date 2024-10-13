(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2399 0)
(declare-sort var3804 0)
(declare-sort var1237 0)
(declare-sort var2289 0)
(declare-sort var3327 0)
(declare-sort var155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun printer/-2028195775 (var2399) var3804)
(declare-fun getPattern/-1857260600 (var1237) String)
(declare-fun cast-from-var3804-to-var1237 (var3804) var1237)
(declare-fun getLocale/242973139 (var1237) var2289)
(declare-fun append/-1031950772 (String var3327) String)
(declare-fun cast-from-var2289-to-var3327 (var2289) var3327)
(declare-fun getTimeZone/1782171669 (var1237) var155)
(declare-fun getID/-1323510388 (var155) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2399 var2399)
(declare-const var599 var2399) ; Statement: r1 := @this: cn.hutool.core.date.format.FastDateFormat 
(assert (not (= var599 null-var2399)))
(define-const var2105 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2105)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2105!1 String)
(assert (= var2105!1 ""))
(assert true)
(define-const var459 String (append/672562846 var2105!1 "FastDateFormat[")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FastDateFormat[") 
(declare-const var2105!2 String)
(assert (= var2105!2 (str.++ var2105!1 "FastDateFormat[")))
(define-const var3568 var3804 (printer/-2028195775 var599)) ; Statement: $r2 = r1.<cn.hutool.core.date.format.FastDateFormat: cn.hutool.core.date.format.FastDatePrinter printer> 
(assert true)
(define-const var1446 String (getPattern/-1857260600 (cast-from-var3804-to-var1237 var3568))) ; Statement: $r3 = virtualinvoke $r2.<cn.hutool.core.date.format.FastDatePrinter: java.lang.String getPattern()>() 
(assert true)
(define-const var647 String (append/672562846 var459 var1446)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var459!1 String)
(assert (= var459!1 (str.++ var459 var1446)))
(assert true)
(define-const var725 String (append/672562846 var647 ",")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var647!1 String)
(assert (= var647!1 (str.++ var647 ",")))
(define-const var2682 var3804 (printer/-2028195775 var599)) ; Statement: $r6 = r1.<cn.hutool.core.date.format.FastDateFormat: cn.hutool.core.date.format.FastDatePrinter printer> 
(assert true)
(define-const var1509 var2289 (getLocale/242973139 (cast-from-var3804-to-var1237 var2682))) ; Statement: $r7 = virtualinvoke $r6.<cn.hutool.core.date.format.FastDatePrinter: java.util.Locale getLocale()>() 
(assert true)
(define-const var195 String (append/-1031950772 var725 (cast-from-var2289-to-var3327 var1509))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var725!1 String)
(assert (str.prefixof var725 var725!1))
(assert true)
(define-const var224 String (append/672562846 var195 ",")) ; Statement: $r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var195!1 String)
(assert (= var195!1 (str.++ var195 ",")))
(define-const var1413 var3804 (printer/-2028195775 var599)) ; Statement: $r10 = r1.<cn.hutool.core.date.format.FastDateFormat: cn.hutool.core.date.format.FastDatePrinter printer> 
(assert true)
(define-const var731 var155 (getTimeZone/1782171669 (cast-from-var3804-to-var1237 var1413))) ; Statement: $r11 = virtualinvoke $r10.<cn.hutool.core.date.format.FastDatePrinter: java.util.TimeZone getTimeZone()>() 
(assert true)
(define-const var76 String (getID/-1323510388 var731)) ; Statement: $r12 = virtualinvoke $r11.<java.util.TimeZone: java.lang.String getID()>() 
(assert true)
(define-const var3809 String (append/672562846 var224 var76)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var224!1 String)
(assert (= var224!1 (str.++ var224 var76)))
(assert true)
(define-const var371 String (append/672562846 var3809 "]")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3809!1 String)
(assert (= var3809!1 (str.++ var3809 "]")))
(assert true)
(define-const var2742 String (toString/-2075883882 var371)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), printer/-2028195775=([cn.hutool.core.date.format.FastDateFormat], cn.hutool.core.date.format.FastDatePrinter), getPattern/-1857260600=([cn.hutool.core.date.format.AbstractDateBasic], java.lang.String), cast-from-var3804-to-var1237=([cn.hutool.core.date.format.FastDatePrinter], cn.hutool.core.date.format.AbstractDateBasic), getLocale/242973139=([cn.hutool.core.date.format.AbstractDateBasic], java.util.Locale), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2289-to-var3327=([java.util.Locale], java.lang.Object), getTimeZone/1782171669=([cn.hutool.core.date.format.AbstractDateBasic], java.util.TimeZone), getID/-1323510388=([java.util.TimeZone], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2399=cn.hutool.core.date.format.FastDateFormat, var599=r1, var2105=$r0, var459=$r4, var3804=cn.hutool.core.date.format.FastDatePrinter, var3568=$r2, var1237=cn.hutool.core.date.format.AbstractDateBasic, var1446=$r3, var647=$r5, var725=$r8, var2682=$r6, var2289=java.util.Locale, var1509=$r7, var3327=java.lang.Object, var195=$r9, var224=$r13, var1413=$r10, var155=java.util.TimeZone, var731=$r11, var76=$r12, var3809=$r14, var371=$r15, var2742=$r16}
; {cn.hutool.core.date.format.FastDateFormat=var2399, r1=var599, $r0=var2105, $r4=var459, cn.hutool.core.date.format.FastDatePrinter=var3804, $r2=var3568, cn.hutool.core.date.format.AbstractDateBasic=var1237, $r3=var1446, $r5=var647, $r8=var725, $r6=var2682, java.util.Locale=var2289, $r7=var1509, java.lang.Object=var3327, $r9=var195, $r13=var224, $r10=var1413, java.util.TimeZone=var155, $r11=var731, $r12=var76, $r14=var3809, $r15=var371, $r16=var2742}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.date.format.FastDateFormat;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FastDateFormat[");	$r2 = r1.<cn.hutool.core.date.format.FastDateFormat: cn.hutool.core.date.format.FastDatePrinter printer>;	$r3 = virtualinvoke $r2.<cn.hutool.core.date.format.FastDatePrinter: java.lang.String getPattern()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r6 = r1.<cn.hutool.core.date.format.FastDateFormat: cn.hutool.core.date.format.FastDatePrinter printer>;	$r7 = virtualinvoke $r6.<cn.hutool.core.date.format.FastDatePrinter: java.util.Locale getLocale()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r13 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r10 = r1.<cn.hutool.core.date.format.FastDateFormat: cn.hutool.core.date.format.FastDatePrinter printer>;	$r11 = virtualinvoke $r10.<cn.hutool.core.date.format.FastDatePrinter: java.util.TimeZone getTimeZone()>();	$r12 = virtualinvoke $r11.<java.util.TimeZone: java.lang.String getID()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 1