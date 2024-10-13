(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2473 0)
(declare-sort var1996 0)
(declare-sort var1172 0)
(declare-sort var3712 0)
(declare-sort var607 0)
(declare-sort var376 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun model/-1928941395 (var2473) var1172)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getModelClass/-2025736732 (var2473) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var607_TypeError/-1987941177 (String) var3712)
(declare-fun cast-from-var3712-to-var376 (var3712) var376)
(declare-const null-var2473 var2473)
(declare-const null-__Array__Int__var1996__ (Array Int var1996))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3408 var2473) ; Statement: r0 := @this: freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter 
(assert (not (= var3408 null-var2473)))
(declare-const var3929 (Array Int var1996)) ; Statement: r11 := @parameter0: org.python.core.PyObject[] 
(assert (not (= var3929 null-__Array__Int__var1996__)))
(declare-const var2122 (Array Int String)) ; Statement: r24 := @parameter1: java.lang.String[] 
(assert (not (= var2122 null-__Array__Int__String__)))
(define-const var755 var1172 (model/-1928941395 var3408)) ; Statement: $r1 = r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: freemarker.template.TemplateModel model> 
(define-const var3808 Bool true) ; Statement: $z0 = $r1 instanceof freemarker.template.TemplateMethodModel 
 ; Statement: if $z0 == 0 goto $r27 = new java.lang.StringBuilder 
(assert (= (ite var3808 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3027 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3027)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3027!1 String)
(assert (= var3027!1 ""))
(assert true)
(define-const var994 String (append/672562846 var3027!1 "call of non-method model (")) ; Statement: $r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("call of non-method model (") 
(declare-const var3027!2 String)
(assert (= var3027!2 (str.++ var3027!1 "call of non-method model (")))
(assert true)
(define-const var3014 String (getModelClass/-2025736732 var3408)) ; Statement: $r3 = specialinvoke r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: java.lang.String getModelClass()>() 
(assert true)
(define-const var2004 String (append/672562846 var994 var3014)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var994!1 String)
(assert (= var994!1 (str.++ var994 var3014)))
(assert true)
(define-const var2390 String (append/672562846 var2004 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2004!1 String)
(assert (= var2004!1 (str.++ var2004 ")")))
(assert true)
(define-const var3332 String (toString/-2075883882 var2390)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1526 var3712 (var607_TypeError/-1987941177 var3332)) ; Statement: $r8 = staticinvoke <org.python.core.Py: org.python.core.PyException TypeError(java.lang.String)>($r7) 
(define-const var730 var376 (cast-from-var3712-to-var376 var1526)) ; Statement: $r29 = (java.lang.Throwable) $r8 
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {model/-1928941395=([freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter], freemarker.template.TemplateModel), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getModelClass/-2025736732=([freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var607_TypeError/-1987941177=([java.lang.String], org.python.core.PyException), cast-from-var3712-to-var376=([org.python.core.PyException], java.lang.Throwable)}
; {var2473=freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter, var3408=r0, var1996=org.python.core.PyObject, var3929=r11, var2122=r24, var1172=freemarker.template.TemplateModel, var755=$r1, var3808=$z0, var3027=$r27, var994=$r4, var3014=$r3, var2004=$r5, var2390=$r6, var3332=$r7, var3712=org.python.core.PyException, var607=org.python.core.Py, var1526=$r8, var376=java.lang.Throwable, var730=$r29}
; {freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter=var2473, r0=var3408, org.python.core.PyObject=var1996, r11=var3929, r24=var2122, freemarker.template.TemplateModel=var1172, $r1=var755, $z0=var3808, $r27=var3027, $r4=var994, $r3=var3014, $r5=var2004, $r6=var2390, $r7=var3332, org.python.core.PyException=var3712, org.python.core.Py=var607, $r8=var1526, java.lang.Throwable=var376, $r29=var730}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter;	r11 := @parameter0: org.python.core.PyObject[];	r24 := @parameter1: java.lang.String[];	$r1 = r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: freemarker.template.TemplateModel model>;	$z0 = $r1 instanceof freemarker.template.TemplateMethodModel;	if $z0 == 0 goto $r27 = new java.lang.StringBuilder;	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("call of non-method model (");	$r3 = specialinvoke r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: java.lang.String getModelClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.python.core.Py: org.python.core.PyException TypeError(java.lang.String)>($r7);	$r29 = (java.lang.Throwable) $r8;	throw $r29
;block_num 2