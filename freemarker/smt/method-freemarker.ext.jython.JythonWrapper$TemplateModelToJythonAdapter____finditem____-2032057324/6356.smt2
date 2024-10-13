(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var996 0)
(declare-sort var1304 0)
(declare-sort var728 0)
(declare-sort var267 0)
(declare-sort var963 0)
(declare-sort var47 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun model/-1928941395 (var996) var728)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getModelClass/-2025736732 (var996) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var963_TypeError/-1987941177 (String) var267)
(declare-fun cast-from-var267-to-var47 (var267) var47)
(declare-const null-var996 var996)
(declare-const null-String String)
(declare-const var3786 var996) ; Statement: r0 := @this: freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter 
(assert (not (= var3786 null-var996)))
(declare-const var794 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var794 null-String)))
(define-const var1022 var728 (model/-1928941395 var3786)) ; Statement: $r1 = r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: freemarker.template.TemplateModel model> 
(define-const var1432 Bool true) ; Statement: $z0 = $r1 instanceof freemarker.template.TemplateHashModel 
 ; Statement: if $z0 == 0 goto $r17 = new java.lang.StringBuilder 
(assert (= (ite var1432 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2049 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2049)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2049!1 String)
(assert (= var2049!1 ""))
(assert true)
(define-const var357 String (append/672562846 var2049!1 "item lookup on non-hash model (")) ; Statement: $r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("item lookup on non-hash model (") 
(declare-const var2049!2 String)
(assert (= var2049!2 (str.++ var2049!1 "item lookup on non-hash model (")))
(assert true)
(define-const var2354 String (getModelClass/-2025736732 var3786)) ; Statement: $r3 = specialinvoke r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: java.lang.String getModelClass()>() 
(assert true)
(define-const var3265 String (append/672562846 var357 var2354)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var357!1 String)
(assert (= var357!1 (str.++ var357 var2354)))
(assert true)
(define-const var378 String (append/672562846 var3265 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3265!1 String)
(assert (= var3265!1 (str.++ var3265 ")")))
(assert true)
(define-const var3829 String (toString/-2075883882 var378)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var647 var267 (var963_TypeError/-1987941177 var3829)) ; Statement: $r8 = staticinvoke <org.python.core.Py: org.python.core.PyException TypeError(java.lang.String)>($r7) 
(define-const var2582 var47 (cast-from-var267-to-var47 var647)) ; Statement: $r19 = (java.lang.Throwable) $r8 
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {model/-1928941395=([freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter], freemarker.template.TemplateModel), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getModelClass/-2025736732=([freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var963_TypeError/-1987941177=([java.lang.String], org.python.core.PyException), cast-from-var267-to-var47=([org.python.core.PyException], java.lang.Throwable)}
; {var996=freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter, var3786=r0, var794=r10, var1304=null_type, var728=freemarker.template.TemplateModel, var1022=$r1, var1432=$z0, var2049=$r17, var357=$r4, var2354=$r3, var3265=$r5, var378=$r6, var3829=$r7, var267=org.python.core.PyException, var963=org.python.core.Py, var647=$r8, var47=java.lang.Throwable, var2582=$r19}
; {freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter=var996, r0=var3786, r10=var794, null_type=var1304, freemarker.template.TemplateModel=var728, $r1=var1022, $z0=var1432, $r17=var2049, $r4=var357, $r3=var2354, $r5=var3265, $r6=var378, $r7=var3829, org.python.core.PyException=var267, org.python.core.Py=var963, $r8=var647, java.lang.Throwable=var47, $r19=var2582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter;	r10 := @parameter0: java.lang.String;	$r1 = r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: freemarker.template.TemplateModel model>;	$z0 = $r1 instanceof freemarker.template.TemplateHashModel;	if $z0 == 0 goto $r17 = new java.lang.StringBuilder;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("item lookup on non-hash model (");	$r3 = specialinvoke r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: java.lang.String getModelClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.python.core.Py: org.python.core.PyException TypeError(java.lang.String)>($r7);	$r19 = (java.lang.Throwable) $r8;	throw $r19
;block_num 2