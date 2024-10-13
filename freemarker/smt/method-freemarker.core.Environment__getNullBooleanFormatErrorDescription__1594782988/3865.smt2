(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1043 0)
(declare-sort var1125 0)
(declare-sort var2660 0)
(declare-sort var670 0)
(declare-sort var666 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1125-init () var1125)
(declare-fun arr-var2660-init () (Array Int var2660))
(declare-fun cast-from-String-to-var2660 (String) var2660)
(declare-fun var670-init () var670)
(declare-fun getBooleanFormat/1682525787 (var666) String)
(declare-fun cast-from-var1043-to-var666 (var1043) var666)
(declare-fun <init>/-828860208 (var670 var2660) void)
(declare-fun cast-from-var670-to-var2660 (var670) var2660)
(declare-fun <init>/2027554597 (var1125 (Array Int var2660)) void)
(declare-fun cast-from-__Array__Int__var2660__-to-var2660 ((Array Int var2660)) var2660)
(declare-fun tips/-374365318 (var1125 (Array Int var2660)) var1125)
(declare-const null-var1043 var1043)
(declare-const null-__Array__Int__var2660__ (Array Int var2660))
(declare-const var563 var1043) ; Statement: r3 := @this: freemarker.core.Environment 
(assert (not (= var563 null-var1043)))
(define-const var1545 var1125 var1125-init) ; Statement: $r0 = new freemarker.core._ErrorDescriptionBuilder 
(define-const var2420 (Array Int var2660) arr-var2660-init) ; Statement: $r1 = newarray (java.lang.Object)[5] 
(declare-const var2420!1 (Array Int var2660))
(assert (not (= var2420!1 null-__Array__Int__var2660__)))
(assert (= (select var2420!1 0) (cast-from-String-to-var2660 "Can\u0027t convert boolean to string automatically, because the \u0022"))) ; Statement: $r1[0] = "Can\'t convert boolean to string automatically, because the \"" 
(declare-const var2420!2 (Array Int var2660))
(assert (not (= var2420!2 null-__Array__Int__var2660__)))
(assert (= (select var2420!2 1) (cast-from-String-to-var2660 "boolean_format"))) ; Statement: $r1[1] = "boolean_format" 
(declare-const var2420!3 (Array Int var2660))
(assert (not (= var2420!3 null-__Array__Int__var2660__)))
(assert (= (select var2420!3 2) (cast-from-String-to-var2660 "\u0022 setting was "))) ; Statement: $r1[2] = "\" setting was " 
(define-const var2641 var670 var670-init) ; Statement: $r2 = new freemarker.core._DelayedJQuote 
(assert true)
(define-const var3168 String (getBooleanFormat/1682525787 (cast-from-var1043-to-var666 var563))) ; Statement: $r4 = virtualinvoke r3.<freemarker.core.Environment: java.lang.String getBooleanFormat()>() 
(assert true)
;(assert (<init>/-828860208 var2641 (cast-from-String-to-var2660 var3168))) ; Statement: specialinvoke $r2.<freemarker.core._DelayedJQuote: void <init>(java.lang.Object)>($r4) 

(declare-const var2641!1 var670)
(declare-const var3168!1 String)
(declare-const var2420!4 (Array Int var2660))
(assert (not (= var2420!4 null-__Array__Int__var2660__)))
(assert (= (select var2420!4 3) (cast-from-var670-to-var2660 var2641!1))) ; Statement: $r1[3] = $r2 
(assert true)
(define-const var310 String (getBooleanFormat/1682525787 (cast-from-var1043-to-var666 var563))) ; Statement: $r5 = virtualinvoke r3.<freemarker.core.Environment: java.lang.String getBooleanFormat()>() 
(assert true)
(define-const var2647 Bool (= var310 "true,false")) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>("true,false") 
 ; Statement: if $z0 == 0 goto $r10 = "." 
(assert (not (= (ite var2647 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var38 String ", which is the legacy deprecated default, and we treat it as if no format was set. This is the default configuration; you should provide the format explicitly for each place where you print a boolean.") ; Statement: $r10 = ", which is the legacy deprecated default, and we treat it as if no format was set. This is the default configuration; you should provide the format explicitly for each place where you print a boolean." 
 ; Statement: goto [?= $r1[4] = $r10] 
(assert true) ; Non Conditional
(declare-const var2420!5 (Array Int var2660))
(assert (not (= var2420!5 null-__Array__Int__var2660__)))
(assert (= (select var2420!5 4) (cast-from-String-to-var2660 var38))) ; Statement: $r1[4] = $r10 
(assert true)
;(assert (<init>/2027554597 var1545 var2420!5)) ; Statement: specialinvoke $r0.<freemarker.core._ErrorDescriptionBuilder: void <init>(java.lang.Object[])>($r1) 

(declare-const var1545!1 var1125)
(declare-const var2420!6 (Array Int var2660))
(define-const var1863 (Array Int var2660) arr-var2660-init) ; Statement: $r6 = newarray (java.lang.Object)[3] 
(declare-const var1863!1 (Array Int var2660))
(assert (not (= var1863!1 null-__Array__Int__var2660__)))
(assert (= (select var1863!1 0) (cast-from-String-to-var2660 "Write something like myBool?string(\u0027yes\u0027, \u0027no\u0027) to specify boolean formatting in place."))) ; Statement: $r6[0] = "Write something like myBool?string(\'yes\', \'no\') to specify boolean formatting in place." 
(define-const var2479 (Array Int var2660) arr-var2660-init) ; Statement: $r7 = newarray (java.lang.Object)[3] 
(declare-const var2479!1 (Array Int var2660))
(assert (not (= var2479!1 null-__Array__Int__var2660__)))
(assert (= (select var2479!1 0) (cast-from-String-to-var2660 "If you want \u0022true\u0022/\u0022false\u0022 result as you are generating computer-language output (not for direct human consumption), then use \u0022?c\u0022, like ${myBool?c}. (If you always generate computer-language output, then it\u0027s might be reasonable to set the \u0022"))) ; Statement: $r7[0] = "If you want \"true\"/\"false\" result as you are generating computer-language output (not for direct human consumption), then use \"?c\", like ${myBool?c}. (If you always generate computer-language output, then it\'s might be reasonable to set the \"" 
(declare-const var2479!2 (Array Int var2660))
(assert (not (= var2479!2 null-__Array__Int__var2660__)))
(assert (= (select var2479!2 1) (cast-from-String-to-var2660 "boolean_format"))) ; Statement: $r7[1] = "boolean_format" 
(declare-const var2479!3 (Array Int var2660))
(assert (not (= var2479!3 null-__Array__Int__var2660__)))
(assert (= (select var2479!3 2) (cast-from-String-to-var2660 "\u0022 setting to \u0022c\u0022 instead.)"))) ; Statement: $r7[2] = "\" setting to \"c\" instead.)" 
(declare-const var1863!2 (Array Int var2660))
(assert (not (= var1863!2 null-__Array__Int__var2660__)))
(assert (= (select var1863!2 1) (cast-from-__Array__Int__var2660__-to-var2660 var2479!3))) ; Statement: $r6[1] = $r7 
(define-const var3448 (Array Int var2660) arr-var2660-init) ; Statement: $r8 = newarray (java.lang.Object)[3] 
(declare-const var3448!1 (Array Int var2660))
(assert (not (= var3448!1 null-__Array__Int__var2660__)))
(assert (= (select var3448!1 0) (cast-from-String-to-var2660 "If you need the same two values on most places, the programmers can set the \u0022"))) ; Statement: $r8[0] = "If you need the same two values on most places, the programmers can set the \"" 
(declare-const var3448!2 (Array Int var2660))
(assert (not (= var3448!2 null-__Array__Int__var2660__)))
(assert (= (select var3448!2 1) (cast-from-String-to-var2660 "boolean_format"))) ; Statement: $r8[1] = "boolean_format" 
(declare-const var3448!3 (Array Int var2660))
(assert (not (= var3448!3 null-__Array__Int__var2660__)))
(assert (= (select var3448!3 2) (cast-from-String-to-var2660 "\u0022 setting to something like \u0022yes,no\u0022. However, then it will be easy to unwillingly format booleans like that."))) ; Statement: $r8[2] = "\" setting to something like \"yes,no\". However, then it will be easy to unwillingly format booleans like that." 
(declare-const var1863!3 (Array Int var2660))
(assert (not (= var1863!3 null-__Array__Int__var2660__)))
(assert (= (select var1863!3 2) (cast-from-__Array__Int__var2660__-to-var2660 var3448!3))) ; Statement: $r6[2] = $r8 
(assert true)
(define-const var1419 var1125 (tips/-374365318 var1545!1 var1863!3)) ; Statement: $r9 = virtualinvoke $r0.<freemarker.core._ErrorDescriptionBuilder: freemarker.core._ErrorDescriptionBuilder tips(java.lang.Object[])>($r6) 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var1125-init=([], freemarker.core._ErrorDescriptionBuilder), arr-var2660-init=([], java.lang.Object[]), cast-from-String-to-var2660=([java.lang.String], java.lang.Object), var670-init=([], freemarker.core._DelayedJQuote), getBooleanFormat/1682525787=([freemarker.core.Configurable], java.lang.String), cast-from-var1043-to-var666=([freemarker.core.Environment], freemarker.core.Configurable), <init>/-828860208=([freemarker.core._DelayedJQuote, java.lang.Object], void), cast-from-var670-to-var2660=([freemarker.core._DelayedJQuote], java.lang.Object), <init>/2027554597=([freemarker.core._ErrorDescriptionBuilder, java.lang.Object[]], void), cast-from-__Array__Int__var2660__-to-var2660=([java.lang.Object[]], java.lang.Object), tips/-374365318=([freemarker.core._ErrorDescriptionBuilder, java.lang.Object[]], freemarker.core._ErrorDescriptionBuilder)}
; {var1043=freemarker.core.Environment, var563=r3, var1125=freemarker.core._ErrorDescriptionBuilder, var1545=$r0, var2660=java.lang.Object, var2420=$r1, var670=freemarker.core._DelayedJQuote, var2641=$r2, var666=freemarker.core.Configurable, var3168=$r4, var310=$r5, var2647=$z0, var38=$r10, var1863=$r6, var2479=$r7, var3448=$r8, var1419=$r9}
; {freemarker.core.Environment=var1043, r3=var563, freemarker.core._ErrorDescriptionBuilder=var1125, $r0=var1545, java.lang.Object=var2660, $r1=var2420, freemarker.core._DelayedJQuote=var670, $r2=var2641, freemarker.core.Configurable=var666, $r4=var3168, $r5=var310, $z0=var2647, $r10=var38, $r6=var1863, $r7=var2479, $r8=var3448, $r9=var1419}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: freemarker.core.Environment;	$r0 = new freemarker.core._ErrorDescriptionBuilder;	$r1 = newarray (java.lang.Object)[5];	$r1[0] = "Can\'t convert boolean to string automatically, because the \"";	$r1[1] = "boolean_format";	$r1[2] = "\" setting was ";	$r2 = new freemarker.core._DelayedJQuote;	$r4 = virtualinvoke r3.<freemarker.core.Environment: java.lang.String getBooleanFormat()>();	specialinvoke $r2.<freemarker.core._DelayedJQuote: void <init>(java.lang.Object)>($r4);	$r1[3] = $r2;	$r5 = virtualinvoke r3.<freemarker.core.Environment: java.lang.String getBooleanFormat()>();	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>("true,false");	if $z0 == 0 goto $r10 = ".";	$r10 = ", which is the legacy deprecated default, and we treat it as if no format was set. This is the default configuration; you should provide the format explicitly for each place where you print a boolean.";	goto [?= $r1[4] = $r10];	$r1[4] = $r10;	specialinvoke $r0.<freemarker.core._ErrorDescriptionBuilder: void <init>(java.lang.Object[])>($r1);	$r6 = newarray (java.lang.Object)[3];	$r6[0] = "Write something like myBool?string(\'yes\', \'no\') to specify boolean formatting in place.";	$r7 = newarray (java.lang.Object)[3];	$r7[0] = "If you want \"true\"/\"false\" result as you are generating computer-language output (not for direct human consumption), then use \"?c\", like ${myBool?c}. (If you always generate computer-language output, then it\'s might be reasonable to set the \"";	$r7[1] = "boolean_format";	$r7[2] = "\" setting to \"c\" instead.)";	$r6[1] = $r7;	$r8 = newarray (java.lang.Object)[3];	$r8[0] = "If you need the same two values on most places, the programmers can set the \"";	$r8[1] = "boolean_format";	$r8[2] = "\" setting to something like \"yes,no\". However, then it will be easy to unwillingly format booleans like that.";	$r6[2] = $r8;	$r9 = virtualinvoke $r0.<freemarker.core._ErrorDescriptionBuilder: freemarker.core._ErrorDescriptionBuilder tips(java.lang.Object[])>($r6);	return $r9
;block_num 3