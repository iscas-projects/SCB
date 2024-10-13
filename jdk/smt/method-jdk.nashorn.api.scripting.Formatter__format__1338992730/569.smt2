(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3646 0)
(declare-sort var3713 0)
(declare-sort var2476 0)
(declare-sort var1300 0)
(declare-sort var1926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun matcher/468719934 (var2476 String) var1926)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var1926) Bool)
(declare-fun String_format/1339386452 (String (Array Int var3713)) String)
(declare-const null-String String)
(declare-const null-__Array__Int__var3713__ (Array Int var3713))
(declare-const var1300-FS_PATTERN var2476)
(declare-const var3862 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3862 null-String)))
(declare-const var1781 (Array Int var3713)) ; Statement: r3 := @parameter1: java.lang.Object[] 
(assert (not (= var1781 null-__Array__Int__var3713__)))
(define-const var600 var2476 var1300-FS_PATTERN) ; Statement: $r1 = <jdk.nashorn.api.scripting.Formatter: java.util.regex.Pattern FS_PATTERN> 
(assert true)
(define-const var1625 var1926 (matcher/468719934 var600 (cast-from-String-to-String var3862))) ; Statement: r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0) 
(define-const var3306 Int 1) ; Statement: i17 = 1 
(assert true) ; Non Conditional
(assert true)
(define-const var1739 Bool (find/1809080823 var1625)) ; Statement: $z7 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z7 == 0 goto $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r3) 
(assert (= (ite var1739 1 0) 0)) ; Cond: $z7 == 0 
(define-const var208 String (String_format/1339386452 var3862 var1781)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String)}
; {var3862=r0, var3646=null_type, var3713=java.lang.Object, var1781=r3, var2476=java.util.regex.Pattern, var1300=jdk.nashorn.api.scripting.Formatter, var600=$r1, var1926=java.util.regex.Matcher, var1625=r2, var3306=i17, var1739=$z7, var208=$r4}
; {r0=var3862, null_type=var3646, java.lang.Object=var3713, r3=var1781, java.util.regex.Pattern=var2476, jdk.nashorn.api.scripting.Formatter=var1300, $r1=var600, java.util.regex.Matcher=var1926, r2=var1625, i17=var3306, $z7=var1739, $r4=var208}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.Object[];	$r1 = <jdk.nashorn.api.scripting.Formatter: java.util.regex.Pattern FS_PATTERN>;	r2 = virtualinvoke $r1.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r0);	i17 = 1;	$z7 = virtualinvoke r2.<java.util.regex.Matcher: boolean find()>();	if $z7 == 0 goto $r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r3);	$r4 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r0, r3);	return $r4
;block_num 3