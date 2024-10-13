(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3688 0)
(declare-sort var1902 0)
(declare-sort var1217 0)
(declare-sort var1938 0)
(declare-sort var2551 0)
(declare-sort var1771 0)
(declare-sort var407 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var1938 String) var1771)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var1771) Bool)
(declare-fun var2551_parseDateTime_parseMatcher/1576495583 (var1771 var1902 Bool var1217) var407)
(declare-const null-String String)
(declare-const null-var1902 var1902)
(declare-const null-var1217 var1217)
(declare-const var2551-PATTERN_XS_DATE_TIME var1938)
(declare-const var556 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var556 null-String)))
(declare-const var1605 var1902) ; Statement: r3 := @parameter1: java.util.TimeZone 
(assert (not (= var1605 null-var1902)))
(declare-const var1362 var1217) ; Statement: r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter 
(assert (not (= var1362 null-var1217)))
(define-const var221 var1938 var2551-PATTERN_XS_DATE_TIME) ; Statement: $r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE_TIME> 
(assert true)
(define-const var2185 var1771 (matcher/468719934 var221 (cast-from-String-to-String var556))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var2462 Bool (matches/-149940873 var2185)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDateTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4) 
(assert (not (= (ite var2462 1 0) 0))) ; Cond: $z0 != 0 
(define-const var72 var407 (var2551_parseDateTime_parseMatcher/1576495583 var2185 var1605 (ite (= 1 1) true false) var1362)) ; Statement: $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDateTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4) 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var2551_parseDateTime_parseMatcher/1576495583=([java.util.regex.Matcher, java.util.TimeZone, boolean, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter], java.util.Date)}
; {var556=r0, var3688=null_type, var1902=java.util.TimeZone, var1605=r3, var1217=freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter, var1362=r4, var1938=java.util.regex.Pattern, var2551=freemarker.template.utility.DateUtil, var221=$r1, var1771=java.util.regex.Matcher, var2185=r2, var2462=$z0, var407=java.util.Date, var72=$r5}
; {r0=var556, null_type=var3688, java.util.TimeZone=var1902, r3=var1605, freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter=var1217, r4=var1362, java.util.regex.Pattern=var1938, freemarker.template.utility.DateUtil=var2551, $r1=var221, java.util.regex.Matcher=var1771, r2=var2185, $z0=var2462, java.util.Date=var407, $r5=var72}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.util.TimeZone;	r4 := @parameter2: freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter;	$r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_DATE_TIME>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDateTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4);	$r5 = staticinvoke <freemarker.template.utility.DateUtil: java.util.Date parseDateTime_parseMatcher(java.util.regex.Matcher,java.util.TimeZone,boolean,freemarker.template.utility.DateUtil$CalendarFieldsToDateConverter)>(r2, r3, 1, r4);	return $r5
;block_num 2