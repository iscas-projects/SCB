(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3007 0)
(declare-sort var1494 0)
(declare-sort var771 0)
(declare-sort var3152 0)
(declare-sort var269 0)
(declare-sort var2624 0)
(declare-sort var1662 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var3152 String) var2624)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var2624) Bool)
(declare-fun var269_parseTime_parseMatcher/153006185 (var2624 var1494 var771) var1662)
(declare-const null-String String)
(declare-const null-var1494 var1494)
(declare-const null-var771 var771)
(declare-const var269-PATTERN_XS_TIME var3152)
(declare-const var1750 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1750 null-String)))
(declare-const var99 var1494) ; Statement: r3 := @parameter1: java.util.TimeZone 
(assert (not (= var99 null-var1494)))
(declare-const var2542 var771) ; Statement: r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter 
(assert (not (= var2542 null-var771)))
(define-const var1177 var3152 var269-PATTERN_XS_TIME) ; Statement: $r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME> 
(assert true)
(define-const var249 var2624 (matcher/468719934 var1177 (cast-from-String-to-String var1750))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var371 Bool (matches/-149940873 var249)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, r4) 
(assert (not (= (ite var371 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2506 var1662 (var269_parseTime_parseMatcher/153006185 var249 var99 var2542)) ; Statement: $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var269_parseTime_parseMatcher/153006185=([java.util.regex.Matcher, java.util.TimeZone, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter], java.util.Date)}
; {var1750=r0, var3007=null_type, var1494=java.util.TimeZone, var99=r3, var771=freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter, var2542=r4, var3152=java.util.regex.Pattern, var269=freemarker.template.utility.DateUtil, var1177=$r1, var2624=java.util.regex.Matcher, var249=r2, var371=$z0, var1662=java.util.Date, var2506=$r5}
; {r0=var1750, null_type=var3007, java.util.TimeZone=var1494, r3=var99, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter=var771, r4=var2542, java.util.regex.Pattern=var3152, freemarker.template.utility.DateUtil=var269, $r1=var1177, java.util.regex.Matcher=var2624, r2=var249, $z0=var371, java.util.Date=var1662, $r5=var2506}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.TimeZone;	r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter;	$r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, r4);	$r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, r4);	return $r5
;block_num 2