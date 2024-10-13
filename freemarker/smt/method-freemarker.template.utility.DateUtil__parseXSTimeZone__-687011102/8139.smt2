(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var667 0)
(declare-sort var780 0)
(declare-sort var812 0)
(declare-sort var932 0)
(declare-sort var502 0)
(declare-sort var2061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var780 String) var932)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var932) Bool)
(declare-fun var502-init () var502)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2061) String)
(declare-fun cast-from-var780-to-var2061 (var780) var2061)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-66299138 (var502 String) void)
(declare-const null-String String)
(declare-const var812-PATTERN_XS_TIME_ZONE var780)
(declare-const var2379 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2379 null-String)))
(define-const var2258 var780 var812-PATTERN_XS_TIME_ZONE) ; Statement: $r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME_ZONE> 
(assert true)
(define-const var3279 var932 (matcher/468719934 var2258 (cast-from-String-to-String var2379))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var1512 Bool (matches/-149940873 var3279)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $r3 = staticinvoke <freemarker.template.utility.DateUtil: java.util.TimeZone parseMatchingTimeZone(java.lang.String,java.util.TimeZone)>(r0, null) 
(assert (not (not (= (ite var1512 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var727 var502 var502-init) ; Statement: $r4 = new freemarker.template.utility.DateUtil$DateParseException 
(define-const var2559 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2559)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2559!1 String)
(assert (= var2559!1 ""))
(assert true)
(define-const var1369 String (append/672562846 var2559!1 "The time zone offset didn\u0027t match the expected pattern: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The time zone offset didn\'t match the expected pattern: ") 
(declare-const var2559!2 String)
(assert (= var2559!2 (str.++ var2559!1 "The time zone offset didn\u0027t match the expected pattern: ")))
(define-const var1716 var780 var812-PATTERN_XS_TIME_ZONE) ; Statement: $r6 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME_ZONE> 
(assert true)
(define-const var2363 String (append/-1031950772 var1369 (cast-from-var780-to-var2061 var1716))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var1369!1 String)
(assert (str.prefixof var1369 var1369!1))
(assert true)
(define-const var702 String (toString/-2075883882 var2363)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-66299138 var727 var702)) ; Statement: specialinvoke $r4.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r9) 

(declare-const var727!1 var502)
(declare-const var702!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var502-init=([], freemarker.template.utility.DateUtil$DateParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var780-to-var2061=([java.util.regex.Pattern], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-66299138=([freemarker.template.utility.DateUtil$DateParseException, java.lang.String], void)}
; {var2379=r0, var667=null_type, var780=java.util.regex.Pattern, var812=freemarker.template.utility.DateUtil, var2258=$r1, var932=java.util.regex.Matcher, var3279=r2, var1512=$z0, var502=freemarker.template.utility.DateUtil$DateParseException, var727=$r4, var2559=$r5, var1369=$r7, var1716=$r6, var2061=java.lang.Object, var2363=$r8, var702=$r9}
; {r0=var2379, null_type=var667, java.util.regex.Pattern=var780, freemarker.template.utility.DateUtil=var812, $r1=var2258, java.util.regex.Matcher=var932, r2=var3279, $z0=var1512, freemarker.template.utility.DateUtil$DateParseException=var502, $r4=var727, $r5=var2559, $r7=var1369, $r6=var1716, java.lang.Object=var2061, $r8=var2363, $r9=var702}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME_ZONE>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $r3 = staticinvoke <freemarker.template.utility.DateUtil: java.util.TimeZone parseMatchingTimeZone(java.lang.String,java.util.TimeZone)>(r0, null);	$r4 = new freemarker.template.utility.DateUtil$DateParseException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The time zone offset didn\'t match the expected pattern: ");	$r6 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME_ZONE>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<freemarker.template.utility.DateUtil$DateParseException: void <init>(java.lang.String)>($r9);	throw $r4
;block_num 2