(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1120 0)
(declare-sort var2328 0)
(declare-sort var811 0)
(declare-sort var2571 0)
(declare-sort var2690 0)
(declare-sort var3919 0)
(declare-sort var1229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var2571 String) var3919)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var3919) Bool)
(declare-fun var2690_parseDate_parseMatcher/1940153644 (var3919 var2328 Bool var811) var1229)
(declare-const null-String String)
(declare-const null-var2328 var2328)
(declare-const null-var811 var811)
(declare-const var2690-PATTERN_XS_DATE var2571)
(declare-const var2164 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2164 null-String)))
(declare-const var1139 var2328) ; Statement: r3 := @parameter1: java.util.TimeZone 
(assert (not (= var1139 null-var2328)))
(declare-const var3380 var811) ; Statement: r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter 
(assert (not (= var3380 null-var811)))
(define-const var3732 var2571 var2690-PATTERN_XS_DATE) ; Statement: $r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE> 
(assert true)
(define-const var2140 var3919 (matcher/468719934 var3732 (cast-from-String-to-String var2164))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var1620 Bool (matches/-149940873 var2140)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDate_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4) 
(assert (not (= (ite var1620 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2178 var1229 (var2690_parseDate_parseMatcher/1940153644 var2140 var1139 (ite (= 1 1) true false) var3380)) ; Statement: $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDate_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var2690_parseDate_parseMatcher/1940153644=([java.util.regex.Matcher, java.util.TimeZone, boolean, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter], java.util.Date)}
; {var2164=r0, var1120=null_type, var2328=java.util.TimeZone, var1139=r3, var811=freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter, var3380=r4, var2571=java.util.regex.Pattern, var2690=freemarker.template.utility.DateUtil, var3732=$r1, var3919=java.util.regex.Matcher, var2140=r2, var1620=$z0, var1229=java.util.Date, var2178=$r5}
; {r0=var2164, null_type=var1120, java.util.TimeZone=var2328, r3=var1139, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter=var811, r4=var3380, java.util.regex.Pattern=var2571, freemarker.template.utility.DateUtil=var2690, $r1=var3732, java.util.regex.Matcher=var3919, r2=var2140, $z0=var1620, java.util.Date=var1229, $r5=var2178}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.TimeZone;	r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter;	$r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDate_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4);	$r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDate_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4);	return $r5
;block_num 2