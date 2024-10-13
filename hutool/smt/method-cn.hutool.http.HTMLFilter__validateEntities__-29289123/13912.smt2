(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2086 0)
(declare-sort var98 0)
(declare-sort var234 0)
(declare-sort var2494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun matcher/468719934 (var234 String) var2494)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun find/1809080823 (var2494) Bool)
(declare-fun appendTail/804194418 (var2494 String) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun encodeQuotes/-1763429785 (var2086 String) String)
(declare-const null-var2086 var2086)
(declare-const null-String String)
(declare-const var2086-P_VALID_ENTITIES var234)
(declare-const var1537 var2086) ; Statement: r4 := @this: cn.hutool.http.HTMLFilter 
(assert (not (= var1537 null-var2086)))
(declare-const var647 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var647 null-String)))
(define-const var1272 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1272)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1272!1 String)
(define-const var820 var234 var2086-P_VALID_ENTITIES) ; Statement: $r2 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_VALID_ENTITIES> 
(assert true)
(define-const var2962 var2494 (matcher/468719934 var820 (cast-from-String-to-String var647))) ; Statement: r3 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1) 
(assert true) ; Non Conditional
(assert true)
(define-const var2523 Bool (find/1809080823 var2962)) ; Statement: $z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r3.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r0) 
(assert (= (ite var2523 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (appendTail/804194418 var2962 var1272!1)) ; Statement: virtualinvoke r3.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r0) 

(declare-const var2962!1 var2494)
(declare-const var1272!2 String)
(assert true)
(define-const var3949 String (toString/-222306083 var1272!2)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var1598 String (encodeQuotes/-1763429785 var1537 var3949)) ; Statement: $r6 = specialinvoke r4.<cn.hutool.http.HTMLFilter: java.lang.String encodeQuotes(java.lang.String)>($r5) 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), find/1809080823=([java.util.regex.Matcher], boolean), appendTail/804194418=([java.util.regex.Matcher, java.lang.StringBuffer], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), encodeQuotes/-1763429785=([cn.hutool.http.HTMLFilter, java.lang.String], java.lang.String)}
; {var2086=cn.hutool.http.HTMLFilter, var1537=r4, var647=r1, var98=null_type, var1272=$r0, var234=java.util.regex.Pattern, var820=$r2, var2494=java.util.regex.Matcher, var2962=r3, var2523=$z0, var3949=$r5, var1598=$r6}
; {cn.hutool.http.HTMLFilter=var2086, r4=var1537, r1=var647, null_type=var98, $r0=var1272, java.util.regex.Pattern=var234, $r2=var820, java.util.regex.Matcher=var2494, r3=var2962, $z0=var2523, $r5=var3949, $r6=var1598}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r4 := @this: cn.hutool.http.HTMLFilter;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = <cn.hutool.http.HTMLFilter: java.util.regex.Pattern P_VALID_ENTITIES>;	r3 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1);	$z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto virtualinvoke r3.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r0);	virtualinvoke r3.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r0);	$r5 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	$r6 = specialinvoke r4.<cn.hutool.http.HTMLFilter: java.lang.String encodeQuotes(java.lang.String)>($r5);	return $r6
;block_num 3