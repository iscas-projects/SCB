(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var106 0)
(declare-sort var948 0)
(declare-sort var1754 0)
(declare-sort var1985 0)
(declare-sort var474 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var948 String) var1985)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun matches/-149940873 (var1985) Bool)
(declare-fun var1754_parseMatchingTimeZone/-1368277809 (String var474) var474)
(declare-const null-String String)
(declare-const var1754-PATTERN_XS_TIME_ZONE var948)
(declare-const null-var474 var474)
(declare-const var1841 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1841 null-String)))
(define-const var517 var948 var1754-PATTERN_XS_TIME_ZONE) ; Statement: $r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME_ZONE> 
(assert true)
(define-const var3416 var1985 (matcher/468719934 var517 (cast-from-String-to-String var1841))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(assert true)
(define-const var2948 Bool (matches/-149940873 var3416)) ; Statement: $z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>() 
 ; Statement: if $z0 != 0 goto $r3 = staticinvoke <freemarker.template.utility.DateUtil: java.util.TimeZone parseMatchingTimeZone(java.lang.String,java.util.TimeZone)>(r0, null) 
(assert (not (= (ite var2948 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3674 var474 (var1754_parseMatchingTimeZone/-1368277809 var1841 null-var474)) ; Statement: $r3 = staticinvoke <freemarker.template.utility.DateUtil: java.util.TimeZone parseMatchingTimeZone(java.lang.String,java.util.TimeZone)>(r0, null) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), matches/-149940873=([java.util.regex.Matcher], boolean), var1754_parseMatchingTimeZone/-1368277809=([java.lang.String, java.util.TimeZone], java.util.TimeZone)}
; {var1841=r0, var106=null_type, var948=java.util.regex.Pattern, var1754=freemarker.template.utility.DateUtil, var517=$r1, var1985=java.util.regex.Matcher, var3416=r2, var2948=$z0, var474=java.util.TimeZone, var3674=$r3}
; {r0=var1841, null_type=var106, java.util.regex.Pattern=var948, freemarker.template.utility.DateUtil=var1754, $r1=var517, java.util.regex.Matcher=var1985, r2=var3416, $z0=var2948, java.util.TimeZone=var474, $r3=var3674}
;seq 
;cnt {}
;stmts r0 := @parameter0: java.lang.String;	$r1 = <freemarker.template.utility.DateUtil: java.util.regex.Pattern PATTERN_XS_TIME_ZONE>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	$z0 = virtualinvoke r2.<java.util.regex.Matcher: boolean matches()>();	if $z0 != 0 goto $r3 = staticinvoke <freemarker.template.utility.DateUtil: java.util.TimeZone parseMatchingTimeZone(java.lang.String,java.util.TimeZone)>(r0, null);	$r3 = staticinvoke <freemarker.template.utility.DateUtil: java.util.TimeZone parseMatchingTimeZone(java.lang.String,java.util.TimeZone)>(r0, null);	return $r3
;block_num 2