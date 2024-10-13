(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1610 0)
(declare-sort var1858 0)
(declare-sort var2206 0)
(declare-sort var2409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun key/-489369572 (var1610) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2409_newMethodArgsInvalidValueException/-874557439 (String (Array Int var1858)) var2206)
(declare-const null-var1610 var1610)
(declare-const null-__Array__Int__var1858__ (Array Int var1858))
(declare-const var314 var1610) ; Statement: r1 := @this: freemarker.core.BuiltIn 
(assert (not (= var314 null-var1610)))
(declare-const var820 (Array Int var1858)) ; Statement: r5 := @parameter0: java.lang.Object[] 
(assert (not (= var820 null-__Array__Int__var1858__)))
(define-const var3680 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3680)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3680!1 String)
(assert (= var3680!1 ""))
(assert true)
(define-const var3496 String (append/672562846 var3680!1 "?")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var3680!2 String)
(assert (= var3680!2 (str.++ var3680!1 "?")))
(define-const var3814 String (key/-489369572 var314)) ; Statement: $r2 = r1.<freemarker.core.BuiltIn: java.lang.String key> 
(assert true)
(define-const var2137 String (append/672562846 var3496 var3814)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3496!1 String)
(assert (= var3496!1 (str.++ var3496 var3814)))
(assert true)
(define-const var2550 String (toString/-2075883882 var2137)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2085 var2206 (var2409_newMethodArgsInvalidValueException/-874557439 var2550 var820)) ; Statement: $r7 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgsInvalidValueException(java.lang.String,java.lang.Object[])>($r6, r5) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2409_newMethodArgsInvalidValueException/-874557439=([java.lang.String, java.lang.Object[]], freemarker.template.TemplateModelException)}
; {var1610=freemarker.core.BuiltIn, var314=r1, var1858=java.lang.Object, var820=r5, var3680=$r0, var3496=$r3, var3814=$r2, var2137=$r4, var2550=$r6, var2206=freemarker.template.TemplateModelException, var2409=freemarker.core._MessageUtil, var2085=$r7}
; {freemarker.core.BuiltIn=var1610, r1=var314, java.lang.Object=var1858, r5=var820, $r0=var3680, $r3=var3496, $r2=var3814, $r4=var2137, $r6=var2550, freemarker.template.TemplateModelException=var2206, freemarker.core._MessageUtil=var2409, $r7=var2085}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.core.BuiltIn;	r5 := @parameter0: java.lang.Object[];	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r2 = r1.<freemarker.core.BuiltIn: java.lang.String key>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newMethodArgsInvalidValueException(java.lang.String,java.lang.Object[])>($r6, r5);	return $r7
;block_num 1