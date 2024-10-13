(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3436 0)
(declare-sort var1669 0)
(declare-sort var1966 0)
(declare-sort var1578 0)
(declare-sort var3510 0)
(declare-sort var3481 0)
(declare-sort var1564 0)
(declare-sort var2227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var1578 String) var3481)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var3481) Bool)
(declare-fun var1564-init () var1564)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2227) String)
(declare-fun cast-from-var1578-to-var2227 (var1578) var2227)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-66299138 (var1564 String) void)
(declare-const null-String String)
(declare-const null-var1669 var1669)
(declare-const null-var1966 var1966)
(declare-const var3510-PATTERN_XS_TIME var1578)
(declare-const var3660 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3660 null-String)))
(declare-const var914 var1669) ; Statement: r3 := @parameter1: java.util.TimeZone 
(assert (not (= var914 null-var1669)))
(declare-const var1700 var1966) ; Statement: r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter 
(assert (not (= var1700 null-var1966)))
(define-const var2924 var1578 var3510-PATTERN_XS_TIME) ; Statement: $r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME> 
(assert true)
(define-const var3005 var3481 (matcher/468719934 var2924 (cast-from-String-to-String var3660))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var3971 Bool (matches/-149940873 var3005)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, r4) 
(assert (not (not (= (ite var3971 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var879 var1564 var1564-init) ; Statement: $r6 = new freemarker.template.utility.DateUtil$DateParseException 
(define-const var2504 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2504)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2504!1 String)
(assert (= var2504!1 ""))
(assert true)
(define-const var2133 String (append/672562846 var2504!1 "The value didn\u0027t match the expected pattern: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value didn\'t match the expected pattern: ") 
(declare-const var2504!2 String)
(assert (= var2504!2 (str.++ var2504!1 "The value didn\u0027t match the expected pattern: ")))
(define-const var0 var1578 var3510-PATTERN_XS_TIME) ; Statement: $r8 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME> 
(assert true)
(define-const var986 String (append/-1031950772 var2133 (cast-from-var1578-to-var2227 var0))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var2133!1 String)
(assert (str.prefixof var2133 var2133!1))
(assert true)
(define-const var1995 String (toString/-2075883882 var986)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-66299138 var879 var1995)) ; Statement: specialinvoke $r6.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r11) 

(declare-const var879!1 var1564)
(declare-const var1995!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var1564-init=([], freemarker.template.utility.DateUtil$DateParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1578-to-var2227=([java.util.regex.Pattern], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-66299138=([freemarker.template.utility.DateUtil$DateParseException, java.lang.String], void)}
; {var3660=r0, var3436=null_type, var1669=java.util.TimeZone, var914=r3, var1966=freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter, var1700=r4, var1578=java.util.regex.Pattern, var3510=freemarker.template.utility.DateUtil, var2924=$r1, var3481=java.util.regex.Matcher, var3005=r2, var3971=$z0, var1564=freemarker.template.utility.DateUtil$DateParseException, var879=$r6, var2504=$r7, var2133=$r9, var0=$r8, var2227=java.lang.Object, var986=$r10, var1995=$r11}
; {r0=var3660, null_type=var3436, java.util.TimeZone=var1669, r3=var914, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter=var1966, r4=var1700, java.util.regex.Pattern=var1578, freemarker.template.utility.DateUtil=var3510, $r1=var2924, java.util.regex.Matcher=var3481, r2=var3005, $z0=var3971, freemarker.template.utility.DateUtil$DateParseException=var1564, $r6=var879, $r7=var2504, $r9=var2133, $r8=var0, java.lang.Object=var2227, $r10=var986, $r11=var1995}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.TimeZone;	r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter;	$r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, r4);	$r6 = new freemarker.template.utility.DateUtil$DateParseException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value didn\'t match the expected pattern: ");	$r8 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2