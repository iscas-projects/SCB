(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3870 0)
(declare-sort var390 0)
(declare-sort var483 0)
(declare-sort var3054 0)
(declare-sort var3850 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun model/-1928941395 (var3870) var390)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getModelClass/-2025736732 (var3870) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3054_TypeError/-1987941177 (String) var483)
(declare-fun cast-from-var483-to-var3850 (var483) var3850)
(declare-const null-var3870 var3870)
(declare-const null-Int Int)
(declare-const var3848 var3870) ; Statement: r0 := @this: freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter 
(assert (not (= var3848 null-var3870)))
(declare-const var1278 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1278 null-Int)))
(define-const var1259 var390 (model/-1928941395 var3848)) ; Statement: $r1 = r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: freemarker.template.TemplateModel model> 
(define-const var3723 Bool true) ; Statement: $z0 = $r1 instanceof freemarker.template.TemplateSequenceModel 
 ; Statement: if $z0 == 0 goto $r16 = new java.lang.StringBuilder 
(assert (= (ite var3723 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1483 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1483)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1483!1 String)
(assert (= var1483!1 ""))
(assert true)
(define-const var2314 String (append/672562846 var1483!1 "item lookup on non-sequence model (")) ; Statement: $r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("item lookup on non-sequence model (") 
(declare-const var1483!2 String)
(assert (= var1483!2 (str.++ var1483!1 "item lookup on non-sequence model (")))
(assert true)
(define-const var594 String (getModelClass/-2025736732 var3848)) ; Statement: $r3 = specialinvoke r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: java.lang.String getModelClass()>() 
(assert true)
(define-const var2867 String (append/672562846 var2314 var594)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2314!1 String)
(assert (= var2314!1 (str.++ var2314 var594)))
(assert true)
(define-const var946 String (append/672562846 var2867 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2867!1 String)
(assert (= var2867!1 (str.++ var2867 ")")))
(assert true)
(define-const var2677 String (toString/-2075883882 var946)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1576 var483 (var3054_TypeError/-1987941177 var2677)) ; Statement: $r8 = staticinvoke <org.python.core.Py: org.python.core.PyException TypeError(java.lang.String)>($r7) 
(define-const var2937 var3850 (cast-from-var483-to-var3850 var1576)) ; Statement: $r18 = (java.lang.Throwable) $r8 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {model/-1928941395=([freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter], freemarker.template.TemplateModel), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getModelClass/-2025736732=([freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3054_TypeError/-1987941177=([java.lang.String], org.python.core.PyException), cast-from-var483-to-var3850=([org.python.core.PyException], java.lang.Throwable)}
; {var3870=freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter, var3848=r0, var1278=i0, var390=freemarker.template.TemplateModel, var1259=$r1, var3723=$z0, var1483=$r16, var2314=$r4, var594=$r3, var2867=$r5, var946=$r6, var2677=$r7, var483=org.python.core.PyException, var3054=org.python.core.Py, var1576=$r8, var3850=java.lang.Throwable, var2937=$r18}
; {freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter=var3870, r0=var3848, i0=var1278, freemarker.template.TemplateModel=var390, $r1=var1259, $z0=var3723, $r16=var1483, $r4=var2314, $r3=var594, $r5=var2867, $r6=var946, $r7=var2677, org.python.core.PyException=var483, org.python.core.Py=var3054, $r8=var1576, java.lang.Throwable=var3850, $r18=var2937}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter;	i0 := @parameter0: int;	$r1 = r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: freemarker.template.TemplateModel model>;	$z0 = $r1 instanceof freemarker.template.TemplateSequenceModel;	if $z0 == 0 goto $r16 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("item lookup on non-sequence model (");	$r3 = specialinvoke r0.<freemarker.ext.jython.JythonWrapper$TemplateModelToJythonAdapter: java.lang.String getModelClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = staticinvoke <org.python.core.Py: org.python.core.PyException TypeError(java.lang.String)>($r7);	$r18 = (java.lang.Throwable) $r8;	throw $r18
;block_num 2