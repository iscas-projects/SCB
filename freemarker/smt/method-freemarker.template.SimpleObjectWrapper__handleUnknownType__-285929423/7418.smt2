(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var526 0)
(declare-sort var1105 0)
(declare-sort var1084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1084-init () var1084)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var1105) ClassObject)
(declare-fun cast-from-var526-to-var1105 (var526) var1105)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-286431950 (var1084 String) void)
(declare-const null-var526 var526)
(declare-const null-var1105 var1105)
(declare-const var2237 var526) ; Statement: r2 := @this: freemarker.template.SimpleObjectWrapper 
(assert (not (= var2237 null-var526)))
(declare-const var2992 var1105) ; Statement: r6 := @parameter0: java.lang.Object 
(assert (not (= var2992 null-var1105)))
(define-const var3294 var1084 var1084-init) ; Statement: $r0 = new freemarker.template.TemplateModelException 
(define-const var1101 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1101)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1101!1 String)
(assert (= var1101!1 ""))
(assert true)
(define-const var3023 ClassObject (getClass/1258963082 (cast-from-var526-to-var1105 var2237))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var428 String (getName/-1958580599 var3023)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3672 String (append/672562846 var1101!1 var428)) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1101!2 String)
(assert (= var1101!2 (str.++ var1101!1 var428)))
(assert true)
(define-const var144 String (append/672562846 var3672 " deliberately won\u0027t wrap this type: ")) ; Statement: $r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" deliberately won\'t wrap this type: ") 
(declare-const var3672!1 String)
(assert (= var3672!1 (str.++ var3672 " deliberately won\u0027t wrap this type: ")))
(assert true)
(define-const var1769 ClassObject (getClass/1258963082 var2992)) ; Statement: $r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2850 String (getName/-1958580599 var1769)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3208 String (append/672562846 var144 var2850)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var144!1 String)
(assert (= var144!1 (str.++ var144 var2850)))
(assert true)
(define-const var1727 String (toString/-2075883882 var3208)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-286431950 var3294 var1727)) ; Statement: specialinvoke $r0.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r11) 

(declare-const var3294!1 var1084)
(declare-const var1727!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1084-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var526-to-var1105=([freemarker.template.SimpleObjectWrapper], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-286431950=([freemarker.template.TemplateModelException, java.lang.String], void)}
; {var526=freemarker.template.SimpleObjectWrapper, var2237=r2, var1105=java.lang.Object, var2992=r6, var1084=freemarker.template.TemplateModelException, var3294=$r0, var1101=$r1, var3023=$r3, var428=$r4, var3672=$r5, var144=$r9, var1769=$r7, var2850=$r8, var3208=$r10, var1727=$r11}
; {freemarker.template.SimpleObjectWrapper=var526, r2=var2237, java.lang.Object=var1105, r6=var2992, freemarker.template.TemplateModelException=var1084, $r0=var3294, $r1=var1101, $r3=var3023, $r4=var428, $r5=var3672, $r9=var144, $r7=var1769, $r8=var2850, $r10=var3208, $r11=var1727}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.template.SimpleObjectWrapper;	r6 := @parameter0: java.lang.Object;	$r0 = new freemarker.template.TemplateModelException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" deliberately won\'t wrap this type: ");	$r7 = virtualinvoke r6.<java.lang.Object: java.lang.Class getClass()>();	$r8 = virtualinvoke $r7.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<freemarker.template.TemplateModelException: void <init>(java.lang.String)>($r11);	throw $r0
;block_num 1