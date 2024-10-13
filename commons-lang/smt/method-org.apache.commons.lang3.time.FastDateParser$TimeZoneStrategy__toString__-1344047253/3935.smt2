(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1308 0)
(declare-sort var46 0)
(declare-sort var1773 0)
(declare-sort var1949 0)
(declare-sort var2098 0)
(declare-sort var762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun locale/-580305909 (var1308) var46)
(declare-fun append/-1031950772 (String var1773) String)
(declare-fun cast-from-var46-to-var1773 (var46) var1773)
(declare-fun tzNames/-580305909 (var1308) var1949)
(declare-fun cast-from-var1949-to-var1773 (var1949) var1773)
(declare-fun pattern/443652580 (var762) var2098)
(declare-fun cast-from-var1308-to-var762 (var1308) var762)
(declare-fun cast-from-var2098-to-var1773 (var2098) var1773)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1308 var1308)
(declare-const var3411 var1308) ; Statement: r1 := @this: org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy 
(assert (not (= var3411 null-var1308)))
(define-const var3789 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3789)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3789!1 String)
(assert (= var3789!1 ""))
(assert true)
(define-const var2268 String (append/672562846 var3789!1 "TimeZoneStrategy [locale=")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TimeZoneStrategy [locale=") 
(declare-const var3789!2 String)
(assert (= var3789!2 (str.++ var3789!1 "TimeZoneStrategy [locale=")))
(define-const var1097 var46 (locale/-580305909 var3411)) ; Statement: $r2 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.Locale locale> 
(assert true)
(define-const var1485 String (append/-1031950772 var2268 (cast-from-var46-to-var1773 var1097))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2268!1 String)
(assert (str.prefixof var2268 var2268!1))
(assert true)
(define-const var666 String (append/672562846 var1485 ", tzNames=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", tzNames=") 
(declare-const var1485!1 String)
(assert (= var1485!1 (str.++ var1485 ", tzNames=")))
(define-const var3635 var1949 (tzNames/-580305909 var3411)) ; Statement: $r5 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.Map tzNames> 
(assert true)
(define-const var1154 String (append/-1031950772 var666 (cast-from-var1949-to-var1773 var3635))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var666!1 String)
(assert (str.prefixof var666 var666!1))
(assert true)
(define-const var1240 String (append/672562846 var1154 ", pattern=")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", pattern=") 
(declare-const var1154!1 String)
(assert (= var1154!1 (str.++ var1154 ", pattern=")))
(define-const var2900 var2098 (pattern/443652580 (cast-from-var1308-to-var762 var3411))) ; Statement: $r8 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.regex.Pattern pattern> 
(assert true)
(define-const var368 String (append/-1031950772 var1240 (cast-from-var2098-to-var1773 var2900))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var1240!1 String)
(assert (str.prefixof var1240 var1240!1))
(assert true)
(define-const var2054 String (append/672562846 var368 "]")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var368!1 String)
(assert (= var368!1 (str.++ var368 "]")))
(assert true)
(define-const var3617 String (toString/-2075883882 var2054)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), locale/-580305909=([org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy], java.util.Locale), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var46-to-var1773=([java.util.Locale], java.lang.Object), tzNames/-580305909=([org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy], java.util.Map), cast-from-var1949-to-var1773=([java.util.Map], java.lang.Object), pattern/443652580=([org.apache.commons.lang3.time.FastDateParser$PatternStrategy], java.util.regex.Pattern), cast-from-var1308-to-var762=([org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy], org.apache.commons.lang3.time.FastDateParser$PatternStrategy), cast-from-var2098-to-var1773=([java.util.regex.Pattern], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1308=org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy, var3411=r1, var3789=$r0, var2268=$r3, var46=java.util.Locale, var1097=$r2, var1773=java.lang.Object, var1485=$r4, var666=$r6, var1949=java.util.Map, var3635=$r5, var1154=$r7, var1240=$r9, var2098=java.util.regex.Pattern, var762=org.apache.commons.lang3.time.FastDateParser$PatternStrategy, var2900=$r8, var368=$r10, var2054=$r11, var3617=$r12}
; {org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy=var1308, r1=var3411, $r0=var3789, $r3=var2268, java.util.Locale=var46, $r2=var1097, java.lang.Object=var1773, $r4=var1485, $r6=var666, java.util.Map=var1949, $r5=var3635, $r7=var1154, $r9=var1240, java.util.regex.Pattern=var2098, org.apache.commons.lang3.time.FastDateParser$PatternStrategy=var762, $r8=var2900, $r10=var368, $r11=var2054, $r12=var3617}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TimeZoneStrategy [locale=");	$r2 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.Locale locale>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", tzNames=");	$r5 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.Map tzNames>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", pattern=");	$r8 = r1.<org.apache.commons.lang3.time.FastDateParser$TimeZoneStrategy: java.util.regex.Pattern pattern>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1