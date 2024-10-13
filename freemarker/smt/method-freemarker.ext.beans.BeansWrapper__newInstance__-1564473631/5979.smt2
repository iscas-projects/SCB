(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var122 0)
(declare-sort var1317 0)
(declare-sort var1901 0)
(declare-sort var712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var712-init () var712)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-800092479 (var712 String var1901) void)
(declare-const null-var122 var122)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1317 var1317)
(declare-const null-var1901 var1901)
(declare-const var362 var122) ; Statement: r0 := @this: freemarker.ext.beans.BeansWrapper 
(assert (not (= var362 null-var122)))
(declare-const var1466 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var1466 null-ClassObject)))
(declare-const var2267 var1317) ; Statement: r6 := @parameter1: java.util.List 
(assert (not (= var2267 null-var1317)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var563 var1901) ; Statement: $r19 := @caughtexception 
(assert (not (= var563 null-var1901)))
(define-const var76 var712 var712-init) ; Statement: $r20 = new freemarker.template.TemplateModelException 
(define-const var3390 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3390)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3390!1 String)
(assert (= var3390!1 ""))
(assert true)
(define-const var857 String (append/672562846 var3390!1 "Error while creating new instance of class ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while creating new instance of class ") 
(declare-const var3390!2 String)
(assert (= var3390!2 (str.++ var3390!1 "Error while creating new instance of class ")))
(assert true)
(define-const var3609 String (getName/-1958580599 var1466)) ; Statement: $r22 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2183 String (append/672562846 var857 var3609)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var857!1 String)
(assert (= var857!1 (str.++ var857 var3609)))
(assert true)
(define-const var1461 String (append/672562846 var2183 "; see cause exception")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; see cause exception") 
(declare-const var2183!1 String)
(assert (= var2183!1 (str.++ var2183 "; see cause exception")))
(assert true)
(define-const var1561 String (toString/-2075883882 var1461)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-800092479 var76 var1561 var563)) ; Statement: specialinvoke $r20.<freemarker.template.TemplateModelException: void <init>(java.lang.String,java.lang.Exception)>($r26, $r19) 

(declare-const var76!1 var712)
(declare-const var1561!1 String)
(declare-const var563!1 var1901)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {var712-init=([], freemarker.template.TemplateModelException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-800092479=([freemarker.template.TemplateModelException, java.lang.String, java.lang.Exception], void)}
; {var122=freemarker.ext.beans.BeansWrapper, var362=r0, var1466=r1, var1317=java.util.List, var2267=r6, var1901=java.lang.Exception, var563=$r19, var712=freemarker.template.TemplateModelException, var76=$r20, var3390=$r21, var857=$r23, var3609=$r22, var2183=$r24, var1461=$r25, var1561=$r26}
; {freemarker.ext.beans.BeansWrapper=var122, r0=var362, r1=var1466, java.util.List=var1317, r6=var2267, java.lang.Exception=var1901, $r19=var563, freemarker.template.TemplateModelException=var712, $r20=var76, $r21=var3390, $r23=var857, $r22=var3609, $r24=var2183, $r25=var1461, $r26=var1561}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.beans.BeansWrapper;	r1 := @parameter0: java.lang.Class;	r6 := @parameter1: java.util.List;	$r19 := @caughtexception;	$r20 = new freemarker.template.TemplateModelException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while creating new instance of class ");	$r22 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; see cause exception");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<freemarker.template.TemplateModelException: void <init>(java.lang.String,java.lang.Exception)>($r26, $r19);	throw $r20
;block_num 2