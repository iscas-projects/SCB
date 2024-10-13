(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var138 0)
(declare-sort var1307 0)
(declare-sort var3400 0)
(declare-sort var2335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun pattern/-1073810043 (var138) String)
(declare-fun locale/-1073810043 (var138) var1307)
(declare-fun append/-1031950772 (String var3400) String)
(declare-fun cast-from-var1307-to-var3400 (var1307) var3400)
(declare-fun timeZone/-1073810043 (var138) var2335)
(declare-fun getID/-1323510388 (var2335) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var138 var138)
(declare-const var1520 var138) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser 
(assert (not (= var1520 null-var138)))
(define-const var863 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var863)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var863!1 String)
(assert (= var863!1 ""))
(assert true)
(define-const var1553 String (append/672562846 var863!1 "FastDateParser[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FastDateParser[") 
(declare-const var863!2 String)
(assert (= var863!2 (str.++ var863!1 "FastDateParser[")))
(define-const var2170 String (pattern/-1073810043 var1520)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.FastDateParser: java.lang.String pattern> 
(assert true)
(define-const var3048 String (append/672562846 var1553 var2170)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1553!1 String)
(assert (= var1553!1 (str.++ var1553 var2170)))
(assert true)
(define-const var3340 String (append/672562846 var3048 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3048!1 String)
(assert (= var3048!1 (str.++ var3048 ", ")))
(define-const var672 var1307 (locale/-1073810043 var1520)) ; Statement: $r5 = r1.<org.apache.commons.lang3.time.FastDateParser: java.util.Locale locale> 
(assert true)
(define-const var2230 String (append/-1031950772 var3340 (cast-from-var1307-to-var3400 var672))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3340!1 String)
(assert (str.prefixof var3340 var3340!1))
(assert true)
(define-const var3142 String (append/672562846 var2230 ", ")) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var2230!1 String)
(assert (= var2230!1 (str.++ var2230 ", ")))
(define-const var431 var2335 (timeZone/-1073810043 var1520)) ; Statement: $r8 = r1.<org.apache.commons.lang3.time.FastDateParser: java.util.TimeZone timeZone> 
(assert true)
(define-const var3523 String (getID/-1323510388 var431)) ; Statement: $r9 = virtualinvoke $r8.<java.util.TimeZone: java.lang.String getID()>() 
(assert true)
(define-const var921 String (append/672562846 var3142 var3523)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var3142!1 String)
(assert (= var3142!1 (str.++ var3142 var3523)))
(assert true)
(define-const var1986 String (append/672562846 var921 "]")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var921!1 String)
(assert (= var921!1 (str.++ var921 "]")))
(assert true)
(define-const var360 String (toString/-2075883882 var1986)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), pattern/-1073810043=([org.apache.commons.lang3.time.FastDateParser], java.lang.String), locale/-1073810043=([org.apache.commons.lang3.time.FastDateParser], java.util.Locale), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1307-to-var3400=([java.util.Locale], java.lang.Object), timeZone/-1073810043=([org.apache.commons.lang3.time.FastDateParser], java.util.TimeZone), getID/-1323510388=([java.util.TimeZone], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var138=org.apache.commons.lang3.time.FastDateParser, var1520=r1, var863=$r0, var1553=$r3, var2170=$r2, var3048=$r4, var3340=$r6, var1307=java.util.Locale, var672=$r5, var3400=java.lang.Object, var2230=$r7, var3142=$r10, var2335=java.util.TimeZone, var431=$r8, var3523=$r9, var921=$r11, var1986=$r12, var360=$r13}
; {org.apache.commons.lang3.time.FastDateParser=var138, r1=var1520, $r0=var863, $r3=var1553, $r2=var2170, $r4=var3048, $r6=var3340, java.util.Locale=var1307, $r5=var672, java.lang.Object=var3400, $r7=var2230, $r10=var3142, java.util.TimeZone=var2335, $r8=var431, $r9=var3523, $r11=var921, $r12=var1986, $r13=var360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FastDateParser[");	$r2 = r1.<org.apache.commons.lang3.time.FastDateParser: java.lang.String pattern>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<org.apache.commons.lang3.time.FastDateParser: java.util.Locale locale>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r8 = r1.<org.apache.commons.lang3.time.FastDateParser: java.util.TimeZone timeZone>;	$r9 = virtualinvoke $r8.<java.util.TimeZone: java.lang.String getID()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	return $r13
;block_num 1