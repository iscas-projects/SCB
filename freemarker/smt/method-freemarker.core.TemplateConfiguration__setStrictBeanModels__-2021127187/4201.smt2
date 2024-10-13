(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var25 0)
(declare-sort var3494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var25!class ClassObject)
(declare-fun var3494-init () var3494)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var3494 String) void)
(declare-const null-var25 var25)
(declare-const null-Bool Bool)
(declare-const var1399 var25) ; Statement: r8 := @this: freemarker.core.TemplateConfiguration 
(assert (not (= var1399 null-var25)))
(declare-const var2810 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var2810 null-Bool)))
(define-const var2405 var3494 var3494-init) ; Statement: $r0 = new java.lang.UnsupportedOperationException 
(define-const var2342 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2342)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2342!1 String)
(assert (= var2342!1 ""))
(assert true)
(define-const var1565 String (append/672562846 var2342!1 "Setting strictBeanModels on ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting strictBeanModels on ") 
(declare-const var2342!2 String)
(assert (= var2342!2 (str.++ var2342!1 "Setting strictBeanModels on ")))
(define-const var3532 ClassObject var25!class) ; Statement: $r2 = class "Lfreemarker/core/TemplateConfiguration;" 
(assert true)
(define-const var2557 String (getSimpleName/-390194377 var3532)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3384 String (append/672562846 var1565 var2557)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1565!1 String)
(assert (= var1565!1 (str.++ var1565 var2557)))
(assert true)
(define-const var1635 String (append/672562846 var3384 " level isn\u0027t supported.")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" level isn\'t supported.") 
(declare-const var3384!1 String)
(assert (= var3384!1 (str.++ var3384 " level isn\u0027t supported.")))
(assert true)
(define-const var1917 String (toString/-2075883882 var1635)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2405 var1917)) ; Statement: specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7) 

(declare-const var2405!1 var3494)
(declare-const var1917!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3494-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var25=freemarker.core.TemplateConfiguration, var1399=r8, var2810=z0, var3494=java.lang.UnsupportedOperationException, var2405=$r0, var2342=$r1, var1565=$r4, var3532=$r2, var2557=$r3, var3384=$r5, var1635=$r6, var1917=$r7}
; {freemarker.core.TemplateConfiguration=var25, r8=var1399, z0=var2810, java.lang.UnsupportedOperationException=var3494, $r0=var2405, $r1=var2342, $r4=var1565, $r2=var3532, $r3=var2557, $r5=var3384, $r6=var1635, $r7=var1917}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: freemarker.core.TemplateConfiguration;	z0 := @parameter0: boolean;	$r0 = new java.lang.UnsupportedOperationException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Setting strictBeanModels on ");	$r2 = class "Lfreemarker/core/TemplateConfiguration;";	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getSimpleName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" level isn\'t supported.");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1