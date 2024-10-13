(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var747 0)
(declare-sort var905 0)
(declare-sort var333 0)
(declare-sort var61 0)
(declare-sort var2253 0)
(declare-sort var1548 0)
(declare-sort var2693 0)
(declare-sort var517 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var61 String) var1548)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var1548) Bool)
(declare-fun var2693-init () var2693)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var517) String)
(declare-fun cast-from-var61-to-var517 (var61) var517)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-66299138 (var2693 String) void)
(declare-const null-String String)
(declare-const null-var905 var905)
(declare-const null-var333 var333)
(declare-const var2253-PATTERN_XS_DATE var61)
(declare-const var2987 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2987 null-String)))
(declare-const var752 var905) ; Statement: r3 := @parameter1: java.util.TimeZone 
(assert (not (= var752 null-var905)))
(declare-const var2349 var333) ; Statement: r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter 
(assert (not (= var2349 null-var333)))
(define-const var2906 var61 var2253-PATTERN_XS_DATE) ; Statement: $r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE> 
(assert true)
(define-const var2789 var1548 (matcher/468719934 var2906 (cast-from-String-to-String var2987))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var547 Bool (matches/-149940873 var2789)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDate_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4) 
(assert (not (not (= (ite var547 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3577 var2693 var2693-init) ; Statement: $r6 = new freemarker.template.utility.DateUtil$DateParseException 
(define-const var271 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var271)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var271!1 String)
(assert (= var271!1 ""))
(assert true)
(define-const var157 String (append/672562846 var271!1 "The value didn\u0027t match the expected pattern: ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value didn\'t match the expected pattern: ") 
(declare-const var271!2 String)
(assert (= var271!2 (str.++ var271!1 "The value didn\u0027t match the expected pattern: ")))
(define-const var1910 var61 var2253-PATTERN_XS_DATE) ; Statement: $r8 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE> 
(assert true)
(define-const var290 String (append/-1031950772 var157 (cast-from-var61-to-var517 var1910))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var157!1 String)
(assert (str.prefixof var157 var157!1))
(assert true)
(define-const var2999 String (toString/-2075883882 var290)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-66299138 var3577 var2999)) ; Statement: specialinvoke $r6.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r11) 

(declare-const var3577!1 var2693)
(declare-const var2999!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var2693-init=([], freemarker.template.utility.DateUtil$DateParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var61-to-var517=([java.util.regex.Pattern], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-66299138=([freemarker.template.utility.DateUtil$DateParseException, java.lang.String], void)}
; {var2987=r0, var747=null_type, var905=java.util.TimeZone, var752=r3, var333=freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter, var2349=r4, var61=java.util.regex.Pattern, var2253=freemarker.template.utility.DateUtil, var2906=$r1, var1548=java.util.regex.Matcher, var2789=r2, var547=$z0, var2693=freemarker.template.utility.DateUtil$DateParseException, var3577=$r6, var271=$r7, var157=$r9, var1910=$r8, var517=java.lang.Object, var290=$r10, var2999=$r11}
; {r0=var2987, null_type=var747, java.util.TimeZone=var905, r3=var752, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter=var333, r4=var2349, java.util.regex.Pattern=var61, freemarker.template.utility.DateUtil=var2253, $r1=var2906, java.util.regex.Matcher=var1548, r2=var2789, $z0=var547, freemarker.template.utility.DateUtil$DateParseException=var2693, $r6=var3577, $r7=var271, $r9=var157, $r8=var1910, java.lang.Object=var517, $r10=var290, $r11=var2999}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.TimeZone;	r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter;	$r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDate_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4);	$r6 = new freemarker.template.utility.DateUtil$DateParseException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value didn\'t match the expected pattern: ");	$r8 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r6.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r11);	throw $r6
;block_num 2