(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2529 0)
(declare-sort var534 0)
(declare-sort var2316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2316-init () var2316)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var534) ClassObject)
(declare-fun cast-from-var2529-to-var534 (var2529) var534)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var2316 String) void)
(declare-const null-var2529 var2529)
(declare-const null-var534 var534)
(declare-const var127 var2529) ; Statement: r2 := @this: freemarker.template.SimpleObjectWrapper 
(assert (not (= var127 null-var2529)))
(declare-const var1305 var534) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var1305 null-var534)))
(define-const var2312 var2316 var2316-init) ; Statement: $r0 = new freemarker.template.TemplateModelException 
(define-const var3275 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3275)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3275!1 String)
(assert (= var3275!1 ""))
(assert true)
(define-const var3834 ClassObject (getClass/1258963082 (cast-from-var2529-to-var534 var127))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2189 String (getName/-1958580599 var3834)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1986 String (append/672562846 var3275!1 var2189)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3275!2 String)
(assert (= var3275!2 (str.++ var3275!1 var2189)))
(assert true)
(define-const var3491 String (append/672562846 var1986 " deliberately doesn\u0027t allow ?api.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" deliberately doesn\'t allow ?api.") 
(declare-const var1986!1 String)
(assert (= var1986!1 (str.++ var1986 " deliberately doesn\u0027t allow ?api.")))
(assert true)
(define-const var3155 String (toString/-2075883882 var3491)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var2312 var3155)) ; Statement: specialinvoke $r0.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r7) 

(declare-const var2312!1 var2316)
(declare-const var3155!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2316-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2529-to-var534=([freemarker.template.SimpleObjectWrapper], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var2529=freemarker.template.SimpleObjectWrapper, var127=r2, var534=java.lang.Object, var1305=r8, var2316=freemarker.template.TemplateModelException, var2312=$r0, var3275=$r1, var3834=$r3, var2189=$r4, var1986=$r5, var3491=$r6, var3155=$r7}
; {freemarker.template.SimpleObjectWrapper=var2529, r2=var127, java.lang.Object=var534, r8=var1305, freemarker.template.TemplateModelException=var2316, $r0=var2312, $r1=var3275, $r3=var3834, $r4=var2189, $r5=var1986, $r6=var3491, $r7=var3155}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.template.SimpleObjectWrapper;	r8 := @parameter0: java.lang.Object;	$r0 = new freemarker.template.TemplateModelException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" deliberately doesn\'t allow ?api.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1