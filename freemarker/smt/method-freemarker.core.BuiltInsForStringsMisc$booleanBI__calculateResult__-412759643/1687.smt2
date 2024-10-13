(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2310 0)
(declare-sort var417 0)
(declare-sort var3983 0)
(declare-sort var2978 0)
(declare-sort var3087 0)
(declare-sort var572 0)
(declare-sort var24 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTrueStringValue/-590001796 (var3983) String)
(declare-fun getFalseStringValue/437601487 (var3983) String)
(declare-fun var2978-init () var2978)
(declare-fun arr-var3087-init () (Array Int var3087))
(declare-fun cast-from-String-to-var3087 (String) var3087)
(declare-fun var572-init () var572)
(declare-fun <init>/-828860208 (var572 var3087) void)
(declare-fun cast-from-var572-to-var3087 (var572) var3087)
(declare-fun <init>/732525818 (var2978 var24 var3983 (Array Int var3087)) void)
(declare-fun cast-from-var2310-to-var24 (var2310) var24)
(declare-const null-var2310 var2310)
(declare-const null-String String)
(declare-const null-var3983 var3983)
(declare-const null-__Array__Int__var3087__ (Array Int var3087))
(declare-const var2648 var2310) ; Statement: r5 := @this: freemarker.core.BuiltInsForStringsMisc$booleanBI 
(assert (not (= var2648 null-var2310)))
(declare-const var1414 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1414 null-String)))
(declare-const var1322 var3983) ; Statement: r1 := @parameter1: freemarker.core.Environment 
(assert (not (= var1322 null-var3983)))
(assert true)
(define-const var2892 Bool (= var1414 "true")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false") 
(assert (= (ite var2892 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1777 Bool (= var1414 "false")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false") 
 ; Statement: if $z1 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Environment: java.lang.String getTrueStringValue()>() 
(assert (= (ite var1777 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2223 String (getTrueStringValue/-590001796 var1322)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.Environment: java.lang.String getTrueStringValue()>() 
(assert true)
(define-const var1591 Bool (= var1414 var2223)) ; Statement: $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z2 == 0 goto $r3 = virtualinvoke r1.<freemarker.core.Environment: java.lang.String getFalseStringValue()>() 
(assert (= (ite var1591 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var334 String (getFalseStringValue/437601487 var1322)) ; Statement: $r3 = virtualinvoke r1.<freemarker.core.Environment: java.lang.String getFalseStringValue()>() 
(assert true)
(define-const var1499 Bool (= var1414 var334)) ; Statement: $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z3 == 0 goto $r4 = new freemarker.core._MiscTemplateException 
(assert (= (ite var1499 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3542 var2978 var2978-init) ; Statement: $r4 = new freemarker.core._MiscTemplateException 
(define-const var986 (Array Int var3087) arr-var3087-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(declare-const var986!1 (Array Int var3087))
(assert (not (= var986!1 null-__Array__Int__var3087__)))
(assert (= (select var986!1 0) (cast-from-String-to-var3087 "Can\u0027t convert this string to boolean: "))) ; Statement: $r6[0] = "Can\'t convert this string to boolean: " 
(define-const var1543 var572 var572-init) ; Statement: $r7 = new freemarker.core._DelayedJQuote 
(assert true)
;(assert (<init>/-828860208 var1543 (cast-from-String-to-var3087 var1414))) ; Statement: specialinvoke $r7.<freemarker.core._DelayedJQuote: void <init>(java.lang.Object)>(r0) 

(declare-const var1543!1 var572)
(declare-const var1414!1 String)
(declare-const var986!2 (Array Int var3087))
(assert (not (= var986!2 null-__Array__Int__var3087__)))
(assert (= (select var986!2 1) (cast-from-var572-to-var3087 var1543!1))) ; Statement: $r6[1] = $r7 
(assert true)
;(assert (<init>/732525818 var3542 (cast-from-var2310-to-var24 var2648) var1322 var986!2)) ; Statement: specialinvoke $r4.<freemarker.core._MiscTemplateException: void <init>(freemarker.core.Expression,freemarker.core.Environment,java.lang.Object[])>(r5, r1, $r6) 

(declare-const var3542!1 var2978)
(declare-const var2648!1 var2310)
(declare-const var1322!1 var3983)
(declare-const var986!3 (Array Int var3087))
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getTrueStringValue/-590001796=([freemarker.core.Environment], java.lang.String), getFalseStringValue/437601487=([freemarker.core.Environment], java.lang.String), var2978-init=([], freemarker.core._MiscTemplateException), arr-var3087-init=([], java.lang.Object[]), cast-from-String-to-var3087=([java.lang.String], java.lang.Object), var572-init=([], freemarker.core._DelayedJQuote), <init>/-828860208=([freemarker.core._DelayedJQuote, java.lang.Object], void), cast-from-var572-to-var3087=([freemarker.core._DelayedJQuote], java.lang.Object), <init>/732525818=([freemarker.core._MiscTemplateException, freemarker.core.Expression, freemarker.core.Environment, java.lang.Object[]], void), cast-from-var2310-to-var24=([freemarker.core.BuiltInsForStringsMisc$booleanBI], freemarker.core.Expression)}
; {var2310=freemarker.core.BuiltInsForStringsMisc$booleanBI, var2648=r5, var1414=r0, var417=null_type, var3983=freemarker.core.Environment, var1322=r1, var2892=$z0, var1777=$z1, var2223=$r2, var1591=$z2, var334=$r3, var1499=$z3, var2978=freemarker.core._MiscTemplateException, var3542=$r4, var3087=java.lang.Object, var986=$r6, var572=freemarker.core._DelayedJQuote, var1543=$r7, var24=freemarker.core.Expression}
; {freemarker.core.BuiltInsForStringsMisc$booleanBI=var2310, r5=var2648, r0=var1414, null_type=var417, freemarker.core.Environment=var3983, r1=var1322, $z0=var2892, $z1=var1777, $r2=var2223, $z2=var1591, $r3=var334, $z3=var1499, freemarker.core._MiscTemplateException=var2978, $r4=var3542, java.lang.Object=var3087, $r6=var986, freemarker.core._DelayedJQuote=var572, $r7=var1543, freemarker.core.Expression=var24}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 4}
;stmts r5 := @this: freemarker.core.BuiltInsForStringsMisc$booleanBI;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: freemarker.core.Environment;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false");	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false");	if $z1 == 0 goto $r2 = virtualinvoke r1.<freemarker.core.Environment: java.lang.String getTrueStringValue()>();	$r2 = virtualinvoke r1.<freemarker.core.Environment: java.lang.String getTrueStringValue()>();	$z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z2 == 0 goto $r3 = virtualinvoke r1.<freemarker.core.Environment: java.lang.String getFalseStringValue()>();	$r3 = virtualinvoke r1.<freemarker.core.Environment: java.lang.String getFalseStringValue()>();	$z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z3 == 0 goto $r4 = new freemarker.core._MiscTemplateException;	$r4 = new freemarker.core._MiscTemplateException;	$r6 = newarray (java.lang.Object)[2];	$r6[0] = "Can\'t convert this string to boolean: ";	$r7 = new freemarker.core._DelayedJQuote;	specialinvoke $r7.<freemarker.core._DelayedJQuote: void <init>(java.lang.Object)>(r0);	$r6[1] = $r7;	specialinvoke $r4.<freemarker.core._MiscTemplateException: void <init>(freemarker.core.Expression,freemarker.core.Environment,java.lang.Object[])>(r5, r1, $r6);	throw $r4
;block_num 5