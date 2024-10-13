(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1472 0)
(declare-sort var1423 0)
(declare-sort var1275 0)
(declare-sort var1151 0)
(declare-sort var1051 0)
(declare-sort var2633 0)
(declare-sort var106 0)
(declare-sort var3645 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var1151 String) var2633)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var2633) Bool)
(declare-fun var106-init () var106)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3645) String)
(declare-fun cast-from-var1151-to-var3645 (var1151) var3645)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-66299138 (var106 String) void)
(declare-const null-String String)
(declare-const null-var1423 var1423)
(declare-const null-var1275 var1275)
(declare-const var1051-PATTERN_XS_DATE_TIME var1151)
(declare-const var1321 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1321 null-String)))
(declare-const var2063 var1423) ; Statement: r3 := @parameter1: java.util.TimeZone 
(assert (not (= var2063 null-var1423)))
(declare-const var3872 var1275) ; Statement: r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter 
(assert (not (= var3872 null-var1275)))
(define-const var849 var1151 var1051-PATTERN_XS_DATE_TIME) ; Statement: $r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE_TIME> 
(assert true)
(define-const var2445 var2633 (matcher/468719934 var849 (cast-from-String-to-String var1321))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var1888 Bool (matches/-149940873 var2445)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDateTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4) 
(assert (not (not (= (ite var1888 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var653 var106 var106-init) ; Statement: $r6 = new freemarker.template.utility.DateUtil$DateParseException 
(define-const var3392 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3392)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3392!1 String)
(assert (= var3392!1 ""))
(assert true)
(define-const var754 String (append/672562846 var3392!1 "The value didn\u0027t match the expected pattern: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value didn\'t match the expected pattern: ") 
(declare-const var3392!2 String)
(assert (= var3392!2 (str.++ var3392!1 "The value didn\u0027t match the expected pattern: ")))
(define-const var1148 var1151 var1051-PATTERN_XS_DATE_TIME) ; Statement: $r8 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE_TIME> 
(assert true)
(define-const var2145 String (append/-1031950772 var754 (cast-from-var1151-to-var3645 var1148))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var754!1 String)
(assert (str.prefixof var754 var754!1))
(assert true)
(define-const var3536 String (toString/-2075883882 var2145)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-66299138 var653 var3536)) ; Statement: specialinvoke $r6.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r11) 

(declare-const var653!1 var106)
(declare-const var3536!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var106-init=([], freemarker.template.utility.DateUtil$DateParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1151-to-var3645=([java.util.regex.Pattern], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-66299138=([freemarker.template.utility.DateUtil$DateParseException, java.lang.String], void)}
; {var1321=r0, var1472=null_type, var1423=java.util.TimeZone, var2063=r3, var1275=freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter, var3872=r4, var1151=java.util.regex.Pattern, var1051=freemarker.template.utility.DateUtil, var849=$r1, var2633=java.util.regex.Matcher, var2445=r2, var1888=$z0, var106=freemarker.template.utility.DateUtil$DateParseException, var653=$r6, var3392=$r7, var754=$r9, var1148=$r8, var3645=java.lang.Object, var2145=$r10, var3536=$r11}
; {r0=var1321, null_type=var1472, java.util.TimeZone=var1423, r3=var2063, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter=var1275, r4=var3872, java.util.regex.Pattern=var1151, freemarker.template.utility.DateUtil=var1051, $r1=var849, java.util.regex.Matcher=var2633, r2=var2445, $z0=var1888, freemarker.template.utility.DateUtil$DateParseException=var106, $r6=var653, $r7=var3392, $r9=var754, $r8=var1148, java.lang.Object=var3645, $r10=var2145, $r11=var3536}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.TimeZone;	r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter;	$r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE_TIME>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDateTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4);	$r6 = new freemarker.template.utility.DateUtil$DateParseException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value didn\'t match the expected pattern: ");	$r8 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE_TIME>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2