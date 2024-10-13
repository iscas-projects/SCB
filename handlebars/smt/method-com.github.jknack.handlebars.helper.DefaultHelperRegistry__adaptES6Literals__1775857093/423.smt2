(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var87 0)
(declare-sort var2029 0)
(declare-sort var959 0)
(declare-sort var3392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun es6VarPattern/-1344677250 (var87) var959)
(declare-fun matcher/468719934 (var959 String) var3392)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun find/1809080823 (var3392) Bool)
(declare-fun appendTail/804194418 (var3392 String) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var87 var87)
(declare-const null-String String)
(declare-const var1477 var87) ; Statement: r0 := @this: com.github.jknack.handlebars.helper.DefaultHelperRegistry 
(assert (not (= var1477 null-var87)))
(declare-const var1131 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1131 null-String)))
(define-const var3004 var959 (es6VarPattern/-1344677250 var1477)) ; Statement: $r2 = r0.<com.github.jknack.handlebars.helper.DefaultHelperRegistry: java.util.regex.Pattern es6VarPattern> 
(assert true)
(define-const var3514 var3392 (matcher/468719934 var3004 (cast-from-String-to-String var1131))) ; Statement: r3 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1) 
(define-const var1250 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1250)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1250!1 String)
(assert true) ; Non Conditional
(assert true)
(define-const var2647 Bool (find/1809080823 var3514)) ; Statement: $z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean find()>() 
 ; Statement: if $z0 == 0 goto $r5 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r4) 
(assert (= (ite var2647 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var803 String (appendTail/804194418 var3514 var1250!1)) ; Statement: $r5 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r4) 
(assert true)
(define-const var1426 String (toString/-222306083 var803)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {es6VarPattern/-1344677250=([com.github.jknack.handlebars.helper.DefaultHelperRegistry], java.util.regex.Pattern), matcher/468719934=([java.util.regex.Pattern, java.lang.CharSequence], java.util.regex.Matcher), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), find/1809080823=([java.util.regex.Matcher], boolean), appendTail/804194418=([java.util.regex.Matcher, java.lang.StringBuffer], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var87=com.github.jknack.handlebars.helper.DefaultHelperRegistry, var1477=r0, var1131=r1, var2029=null_type, var959=java.util.regex.Pattern, var3004=$r2, var3392=java.util.regex.Matcher, var3514=r3, var1250=$r4, var2647=$z0, var803=$r5, var1426=$r6}
; {com.github.jknack.handlebars.helper.DefaultHelperRegistry=var87, r0=var1477, r1=var1131, null_type=var2029, java.util.regex.Pattern=var959, $r2=var3004, java.util.regex.Matcher=var3392, r3=var3514, $r4=var1250, $z0=var2647, $r5=var803, $r6=var1426}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.helper.DefaultHelperRegistry;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.github.jknack.handlebars.helper.DefaultHelperRegistry: java.util.regex.Pattern es6VarPattern>;	r3 = virtualinvoke $r2.<java.util.regex.Pattern: java.util.regex.Matcher matcher(java.lang.CharSequence)>(r1);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$z0 = virtualinvoke r3.<java.util.regex.Matcher: boolean find()>();	if $z0 == 0 goto $r5 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r4);	$r5 = virtualinvoke r3.<java.util.regex.Matcher: java.lang.StringBuffer appendTail(java.lang.StringBuffer)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	return $r6
;block_num 3