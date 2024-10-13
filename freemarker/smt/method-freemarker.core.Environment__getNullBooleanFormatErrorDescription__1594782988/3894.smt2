(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3643 0)
(declare-sort var232 0)
(declare-sort var3498 0)
(declare-sort var1715 0)
(declare-sort var3521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var232-init () var232)
(declare-fun arr-var3498-init () (Array Int var3498))
(declare-fun cast-from-String-to-var3498 (String) var3498)
(declare-fun var1715-init () var1715)
(declare-fun getBooleanFormat/1682525787 (var3521) String)
(declare-fun cast-from-var3643-to-var3521 (var3643) var3521)
(declare-fun <init>/-828860208 (var1715 var3498) void)
(declare-fun cast-from-var1715-to-var3498 (var1715) var3498)
(declare-fun <init>/2027554597 (var232 (Array Int var3498)) void)
(declare-fun cast-from-__Array__Int__var3498__-to-var3498 ((Array Int var3498)) var3498)
(declare-fun tips/-374365318 (var232 (Array Int var3498)) var232)
(declare-const null-var3643 var3643)
(declare-const null-__Array__Int__var3498__ (Array Int var3498))
(declare-const var3518 var3643) ; Statement: r3 := @this: freemarker.core.Environment 
(assert (not (= var3518 null-var3643)))
(define-const var1409 var232 var232-init) ; Statement: $r0 = new freemarker.core._ErrorDescriptionBuilder 
(define-const var970 (Array Int var3498) arr-var3498-init) ; Statement: $r1 = newarray (java.lang.Object)[5] 
(declare-const var970!1 (Array Int var3498))
(assert (not (= var970!1 null-__Array__Int__var3498__)))
(assert (= (select var970!1 0) (cast-from-String-to-var3498 "Can\u0027t convert boolean to string automatically, because the \u0022"))) ; Statement: $r1[0] = "Can\'t convert boolean to string automatically, because the \"" 
(declare-const var970!2 (Array Int var3498))
(assert (not (= var970!2 null-__Array__Int__var3498__)))
(assert (= (select var970!2 1) (cast-from-String-to-var3498 "boolean_format"))) ; Statement: $r1[1] = "boolean_format" 
(declare-const var970!3 (Array Int var3498))
(assert (not (= var970!3 null-__Array__Int__var3498__)))
(assert (= (select var970!3 2) (cast-from-String-to-var3498 "\u0022 setting was "))) ; Statement: $r1[2] = "\" setting was " 
(define-const var1836 var1715 var1715-init) ; Statement: $r2 = new freemarker.core._DelayedJQuote 
(assert true)
(define-const var3978 String (getBooleanFormat/1682525787 (cast-from-var3643-to-var3521 var3518))) ; Statement: $r4 = virtualinvoke r3.<freemarker.core.Environment: java.lang.String getBooleanFormat()>() 
(assert true)
;(assert (<init>/-828860208 var1836 (cast-from-String-to-var3498 var3978))) ; Statement: specialinvoke $r2.<freemarker.core._DelayedJQuote: void <init>(java.lang.Object)>($r4) 

(declare-const var1836!1 var1715)
(declare-const var3978!1 String)
(declare-const var970!4 (Array Int var3498))
(assert (not (= var970!4 null-__Array__Int__var3498__)))
(assert (= (select var970!4 3) (cast-from-var1715-to-var3498 var1836!1))) ; Statement: $r1[3] = $r2 
(assert true)
(define-const var241 String (getBooleanFormat/1682525787 (cast-from-var3643-to-var3521 var3518))) ; Statement: $r5 = virtualinvoke r3.<freemarker.core.Environment: java.lang.String getBooleanFormat()>() 
(assert true)
(define-const var848 Bool (= var241 "true,false")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>("true,false") 
 ; Statement: if $z0 == 0 goto $r10 = "." 
(assert (= (ite var848 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1344 String ".") ; Statement: $r10 = "." 
(assert true) ; Non Conditional
(declare-const var970!5 (Array Int var3498))
(assert (not (= var970!5 null-__Array__Int__var3498__)))
(assert (= (select var970!5 4) (cast-from-String-to-var3498 var1344))) ; Statement: $r1[4] = $r10 
(assert true)
;(assert (<init>/2027554597 var1409 var970!5)) ; Statement: specialinvoke $r0.<freemarker.core._ErrorDescriptionBuilder: void <init>(java.lang.Object[])>($r1) 

(declare-const var1409!1 var232)
(declare-const var970!6 (Array Int var3498))
(define-const var3906 (Array Int var3498) arr-var3498-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var3906!1 (Array Int var3498))
(assert (not (= var3906!1 null-__Array__Int__var3498__)))
(assert (= (select var3906!1 0) (cast-from-String-to-var3498 "Write something like myBool?string(\u0027yes\u0027, \u0027no\u0027) to specify boolean formatting in place."))) ; Statement: $r6[0] = "Write something like myBool?string(\'yes\', \'no\') to specify boolean formatting in place." 
(define-const var3802 (Array Int var3498) arr-var3498-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(declare-const var3802!1 (Array Int var3498))
(assert (not (= var3802!1 null-__Array__Int__var3498__)))
(assert (= (select var3802!1 0) (cast-from-String-to-var3498 "If you want \u0022true\u0022/\u0022false\u0022 result as you are generating computer-language output (not for direct human consumption), then use \u0022?c\u0022, like ${myBool?c}. (If you always generate computer-language output, then it\u0027s might be reasonable to set the \u0022"))) ; Statement: $r7[0] = "If you want \"true\"/\"false\" result as you are generating computer-language output (not for direct human consumption), then use \"?c\", like ${myBool?c}. (If you always generate computer-language output, then it\'s might be reasonable to set the \"" 
(declare-const var3802!2 (Array Int var3498))
(assert (not (= var3802!2 null-__Array__Int__var3498__)))
(assert (= (select var3802!2 1) (cast-from-String-to-var3498 "boolean_format"))) ; Statement: $r7[1] = "boolean_format" 
(declare-const var3802!3 (Array Int var3498))
(assert (not (= var3802!3 null-__Array__Int__var3498__)))
(assert (= (select var3802!3 2) (cast-from-String-to-var3498 "\u0022 setting to \u0022c\u0022 instead.)"))) ; Statement: $r7[2] = "\" setting to \"c\" instead.)" 
(declare-const var3906!2 (Array Int var3498))
(assert (not (= var3906!2 null-__Array__Int__var3498__)))
(assert (= (select var3906!2 1) (cast-from-__Array__Int__var3498__-to-var3498 var3802!3))) ; Statement: $r6[1] = $r7 
(define-const var2240 (Array Int var3498) arr-var3498-init) ; Statement: $r8 = newarray (java.lang.Object)[3] 
(declare-const var2240!1 (Array Int var3498))
(assert (not (= var2240!1 null-__Array__Int__var3498__)))
(assert (= (select var2240!1 0) (cast-from-String-to-var3498 "If you need the same two values on most places, the programmers can set the \u0022"))) ; Statement: $r8[0] = "If you need the same two values on most places, the programmers can set the \"" 
(declare-const var2240!2 (Array Int var3498))
(assert (not (= var2240!2 null-__Array__Int__var3498__)))
(assert (= (select var2240!2 1) (cast-from-String-to-var3498 "boolean_format"))) ; Statement: $r8[1] = "boolean_format" 
(declare-const var2240!3 (Array Int var3498))
(assert (not (= var2240!3 null-__Array__Int__var3498__)))
(assert (= (select var2240!3 2) (cast-from-String-to-var3498 "\u0022 setting to something like \u0022yes,no\u0022. However, then it will be easy to unwillingly format booleans like that."))) ; Statement: $r8[2] = "\" setting to something like \"yes,no\". However, then it will be easy to unwillingly format booleans like that." 
(declare-const var3906!3 (Array Int var3498))
(assert (not (= var3906!3 null-__Array__Int__var3498__)))
(assert (= (select var3906!3 2) (cast-from-__Array__Int__var3498__-to-var3498 var2240!3))) ; Statement: $r6[2] = $r8 
(assert true)
(define-const var1834 var232 (tips/-374365318 var1409!1 var3906!3)) ; Statement: $r9 = virtualinvoke $r0.<freemarker.core._ErrorDescriptionBuilder: freemarker.core._ErrorDescriptionBuilder tips(java.lang.Object[])>($r6) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var232-init=([], freemarker.core._ErrorDescriptionBuilder), arr-var3498-init=([], java.lang.Object[]), cast-from-String-to-var3498=([java.lang.String], java.lang.Object), var1715-init=([], freemarker.core._DelayedJQuote), getBooleanFormat/1682525787=([freemarker.core.Configurable], java.lang.String), cast-from-var3643-to-var3521=([freemarker.core.Environment], freemarker.core.Configurable), <init>/-828860208=([freemarker.core._DelayedJQuote, java.lang.Object], void), cast-from-var1715-to-var3498=([freemarker.core._DelayedJQuote], java.lang.Object), <init>/2027554597=([freemarker.core._ErrorDescriptionBuilder, java.lang.Object[]], void), cast-from-__Array__Int__var3498__-to-var3498=([java.lang.Object[]], java.lang.Object), tips/-374365318=([freemarker.core._ErrorDescriptionBuilder, java.lang.Object[]], freemarker.core._ErrorDescriptionBuilder)}
; {var3643=freemarker.core.Environment, var3518=r3, var232=freemarker.core._ErrorDescriptionBuilder, var1409=$r0, var3498=java.lang.Object, var970=$r1, var1715=freemarker.core._DelayedJQuote, var1836=$r2, var3521=freemarker.core.Configurable, var3978=$r4, var241=$r5, var848=$z0, var1344=$r10, var3906=$r6, var3802=$r7, var2240=$r8, var1834=$r9}
; {freemarker.core.Environment=var3643, r3=var3518, freemarker.core._ErrorDescriptionBuilder=var232, $r0=var1409, java.lang.Object=var3498, $r1=var970, freemarker.core._DelayedJQuote=var1715, $r2=var1836, freemarker.core.Configurable=var3521, $r4=var3978, $r5=var241, $z0=var848, $r10=var1344, $r6=var3906, $r7=var3802, $r8=var2240, $r9=var1834}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: freemarker.core.Environment;	$r0 = new freemarker.core._ErrorDescriptionBuilder;	$r1 = newarray (java.lang.Object)[5];	$r1[0] = "Can\'t convert boolean to string automatically, because the \"";	$r1[1] = "boolean_format";	$r1[2] = "\" setting was ";	$r2 = new freemarker.core._DelayedJQuote;	$r4 = virtualinvoke r3.<freemarker.core.Environment: java.lang.String getBooleanFormat()>();	specialinvoke $r2.<freemarker.core._DelayedJQuote: void <init>(java.lang.Object)>($r4);	$r1[3] = $r2;	$r5 = virtualinvoke r3.<freemarker.core.Environment: java.lang.String getBooleanFormat()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>("true,false");	if $z0 == 0 goto $r10 = ".";	$r10 = ".";	$r1[4] = $r10;	specialinvoke $r0.<freemarker.core._ErrorDescriptionBuilder: void <init>(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[3];	$r6[0] = "Write something like myBool?string(\'yes\', \'no\') to specify boolean formatting in place.";	$r7 = newarray (java.lang.Object)[3];	$r7[0] = "If you want \"true\"/\"false\" result as you are generating computer-language output (not for direct human consumption), then use \"?c\", like ${myBool?c}. (If you always generate computer-language output, then it\'s might be reasonable to set the \"";	$r7[1] = "boolean_format";	$r7[2] = "\" setting to \"c\" instead.)";	$r6[1] = $r7;	$r8 = newarray (java.lang.Object)[3];	$r8[0] = "If you need the same two values on most places, the programmers can set the \"";	$r8[1] = "boolean_format";	$r8[2] = "\" setting to something like \"yes,no\". However, then it will be easy to unwillingly format booleans like that.";	$r6[2] = $r8;	$r9 = virtualinvoke $r0.<freemarker.core._ErrorDescriptionBuilder: freemarker.core._ErrorDescriptionBuilder tips(java.lang.Object[])>($r6);	return $r9
;block_num 3