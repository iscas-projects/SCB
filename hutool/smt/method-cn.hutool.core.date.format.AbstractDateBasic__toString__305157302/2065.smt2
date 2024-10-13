(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1661 0)
(declare-sort var1022 0)
(declare-sort var1573 0)
(declare-sort var2651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pattern/63795614 (var1661) String)
(declare-fun locale/63795614 (var1661) var1022)
(declare-fun append/-1031950772 (String var1573) String)
(declare-fun cast-from-var1022-to-var1573 (var1022) var1573)
(declare-fun timeZone/63795614 (var1661) var2651)
(declare-fun getID/-1323510388 (var2651) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1661 var1661)
(declare-const var3903 var1661) ; Statement: r1 := @this: cn.hutool.core.date.format.AbstractDateBasic 
(assert (not (= var3903 null-var1661)))
(define-const var1839 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1839)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1839!1 String)
(assert (= var1839!1 ""))
(assert true)
(define-const var2273 String (append/672562846 var1839!1 "FastDatePrinter[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FastDatePrinter[") 
(declare-const var1839!2 String)
(assert (= var1839!2 (str.++ var1839!1 "FastDatePrinter[")))
(define-const var3385 String (pattern/63795614 var3903)) ; Statement: $r2 = r1.<cn.hutool.core.date.format.AbstractDateBasic: java.lang.String pattern> 
(assert true)
(define-const var301 String (append/672562846 var2273 var3385)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2273!1 String)
(assert (= var2273!1 (str.++ var2273 var3385)))
(assert true)
(define-const var231 String (append/672562846 var301 ",")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var301!1 String)
(assert (= var301!1 (str.++ var301 ",")))
(define-const var3684 var1022 (locale/63795614 var3903)) ; Statement: $r5 = r1.<cn.hutool.core.date.format.AbstractDateBasic: java.util.Locale locale> 
(assert true)
(define-const var1165 String (append/-1031950772 var231 (cast-from-var1022-to-var1573 var3684))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var231!1 String)
(assert (str.prefixof var231 var231!1))
(assert true)
(define-const var2229 String (append/672562846 var1165 ",")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1165!1 String)
(assert (= var1165!1 (str.++ var1165 ",")))
(define-const var439 var2651 (timeZone/63795614 var3903)) ; Statement: $r8 = r1.<cn.hutool.core.date.format.AbstractDateBasic: java.util.TimeZone timeZone> 
(assert true)
(define-const var2324 String (getID/-1323510388 var439)) ; Statement: $r9 = virtualinvoke $r8.<java.util.TimeZone: java.lang.String getID()>() 
(assert true)
(define-const var3847 String (append/672562846 var2229 var2324)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2229!1 String)
(assert (= var2229!1 (str.++ var2229 var2324)))
(assert true)
(define-const var79 String (append/672562846 var3847 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3847!1 String)
(assert (= var3847!1 (str.++ var3847 "]")))
(assert true)
(define-const var960 String (toString/-2075883882 var79)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pattern/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.lang.String), locale/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.util.Locale), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1022-to-var1573=([java.util.Locale], java.lang.Object), timeZone/63795614=([cn.hutool.core.date.format.AbstractDateBasic], java.util.TimeZone), getID/-1323510388=([java.util.TimeZone], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1661=cn.hutool.core.date.format.AbstractDateBasic, var3903=r1, var1839=$r0, var2273=$r3, var3385=$r2, var301=$r4, var231=$r6, var1022=java.util.Locale, var3684=$r5, var1573=java.lang.Object, var1165=$r7, var2229=$r10, var2651=java.util.TimeZone, var439=$r8, var2324=$r9, var3847=$r11, var79=$r12, var960=$r13}
; {cn.hutool.core.date.format.AbstractDateBasic=var1661, r1=var3903, $r0=var1839, $r3=var2273, $r2=var3385, $r4=var301, $r6=var231, java.util.Locale=var1022, $r5=var3684, java.lang.Object=var1573, $r7=var1165, $r10=var2229, java.util.TimeZone=var2651, $r8=var439, $r9=var2324, $r11=var3847, $r12=var79, $r13=var960}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: cn.hutool.core.date.format.AbstractDateBasic;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FastDatePrinter[");	$r2 = r1.<cn.hutool.core.date.format.AbstractDateBasic: java.lang.String pattern>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r5 = r1.<cn.hutool.core.date.format.AbstractDateBasic: java.util.Locale locale>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r8 = r1.<cn.hutool.core.date.format.AbstractDateBasic: java.util.TimeZone timeZone>;	$r9 = virtualinvoke $r8.<java.util.TimeZone: java.lang.String getID()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1