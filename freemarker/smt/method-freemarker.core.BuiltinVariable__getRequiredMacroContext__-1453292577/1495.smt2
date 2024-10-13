(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var125 0)
(declare-sort var2644 0)
(declare-sort var2795 0)
(declare-sort var2524 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCurrentMacroContext/716990097 (var2644) var2795)
(declare-fun var2524-init () var2524)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-485601640 (var125) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1113580649 (var2524 String var2644) void)
(declare-const null-var125 var125)
(declare-const null-var2644 var2644)
(declare-const null-var2795 var2795)
(declare-const var329 var125) ; Statement: r4 := @this: freemarker.core.BuiltinVariable 
(assert (not (= var329 null-var125)))
(declare-const var2149 var2644) ; Statement: r0 := @parameter0: freemarker.core.Environment 
(assert (not (= var2149 null-var2644)))
(assert true)
(define-const var2306 var2795 (getCurrentMacroContext/716990097 var2149)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.Environment: freemarker.core.Macro$Context getCurrentMacroContext()>() 
 ; Statement: if r1 != null goto return r1 
(assert (not (not (= var2306 null-var2795)))) ; Negate: Cond: r1 != null  
(define-const var2754 var2524 var2524-init) ; Statement: $r2 = new freemarker.template.TemplateException 
(define-const var3174 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3174)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3174!1 String)
(assert (= var3174!1 ""))
(assert true)
(define-const var545 String (append/672562846 var3174!1 "Can\u0027t get .")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get .") 
(declare-const var3174!2 String)
(assert (= var3174!2 (str.++ var3174!1 "Can\u0027t get .")))
(define-const var2066 String (name/-485601640 var329)) ; Statement: $r5 = r4.<freemarker.core.BuiltinVariable: java.lang.String name> 
(assert true)
(define-const var2899 String (append/672562846 var545 var2066)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var545!1 String)
(assert (= var545!1 (str.++ var545 var2066)))
(assert true)
(define-const var2998 String (append/672562846 var2899 " here, as there\u0027s no macro or function (that\u0027s implemented in the template) call in context.")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" here, as there\'s no macro or function (that\'s implemented in the template) call in context.") 
(declare-const var2899!1 String)
(assert (= var2899!1 (str.++ var2899 " here, as there\u0027s no macro or function (that\u0027s implemented in the template) call in context.")))
(assert true)
(define-const var3111 String (toString/-2075883882 var2998)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1113580649 var2754 var3111 var2149)) ; Statement: specialinvoke $r2.<freemarker.template.TemplateException: void <init>(java.lang.String,freemarker.core.Environment)>($r9, r0) 

(declare-const var2754!1 var2524)
(declare-const var3111!1 String)
(declare-const var2149!1 var2644)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {getCurrentMacroContext/716990097=([freemarker.core.Environment], freemarker.core.Macro$Context), var2524-init=([], freemarker.template.TemplateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-485601640=([freemarker.core.BuiltinVariable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1113580649=([freemarker.template.TemplateException, java.lang.String, freemarker.core.Environment], void)}
; {var125=freemarker.core.BuiltinVariable, var329=r4, var2644=freemarker.core.Environment, var2149=r0, var2795=freemarker.core.Macro$Context, var2306=r1, var2524=freemarker.template.TemplateException, var2754=$r2, var3174=$r3, var545=$r6, var2066=$r5, var2899=$r7, var2998=$r8, var3111=$r9}
; {freemarker.core.BuiltinVariable=var125, r4=var329, freemarker.core.Environment=var2644, r0=var2149, freemarker.core.Macro$Context=var2795, r1=var2306, freemarker.template.TemplateException=var2524, $r2=var2754, $r3=var3174, $r6=var545, $r5=var2066, $r7=var2899, $r8=var2998, $r9=var3111}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: freemarker.core.BuiltinVariable;	r0 := @parameter0: freemarker.core.Environment;	r1 = virtualinvoke r0.<freemarker.core.Environment: freemarker.core.Macro$Context getCurrentMacroContext()>();	if r1 != null goto return r1;	$r2 = new freemarker.template.TemplateException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can\'t get .");	$r5 = r4.<freemarker.core.BuiltinVariable: java.lang.String name>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" here, as there\'s no macro or function (that\'s implemented in the template) call in context.");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<freemarker.template.TemplateException: void <init>(java.lang.String,freemarker.core.Environment)>($r9, r0);	throw $r2
;block_num 2