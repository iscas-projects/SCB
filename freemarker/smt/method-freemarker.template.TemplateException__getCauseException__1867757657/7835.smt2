(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2348 0)
(declare-sort var2373 0)
(declare-sort var3243 0)
(declare-sort var683 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCause/-638798464 (var2373) var2373)
(declare-fun cast-from-var2348-to-var2373 (var2348) var2373)
(declare-fun var3243-init () var3243)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var683) String)
(declare-fun cast-from-var2373-to-var683 (var2373) var683)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-167142807 (var3243 String var2373) void)
(declare-const null-var2348 var2348)
(declare-const var2861 var2348) ; Statement: r0 := @this: freemarker.template.TemplateException 
(assert (not (= var2861 null-var2348)))
(assert true)
(define-const var3878 var2373 (getCause/-638798464 (cast-from-var2348-to-var2373 var2861))) ; Statement: $r1 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(define-const var3731 Bool false) ; Statement: $z0 = $r1 instanceof java.lang.Exception 
 ; Statement: if $z0 == 0 goto $r9 = new java.lang.Exception 
(assert (= (ite var3731 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2442 var3243 var3243-init) ; Statement: $r9 = new java.lang.Exception 
(define-const var3748 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3748)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3748!1 String)
(assert (= var3748!1 ""))
(assert true)
(define-const var3740 String (append/672562846 var3748!1 "Wrapped to Exception: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wrapped to Exception: ") 
(declare-const var3748!2 String)
(assert (= var3748!2 (str.++ var3748!1 "Wrapped to Exception: ")))
(assert true)
(define-const var3013 var2373 (getCause/-638798464 (cast-from-var2348-to-var2373 var2861))) ; Statement: $r3 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert true)
(define-const var1792 String (append/-1031950772 var3740 (cast-from-var2373-to-var683 var3013))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3740!1 String)
(assert (str.prefixof var3740 var3740!1))
(assert true)
(define-const var471 String (toString/-2075883882 var1792)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2394 var2373 (getCause/-638798464 (cast-from-var2348-to-var2373 var2861))) ; Statement: $r6 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert true)
;(assert (<init>/-167142807 var2442 var471 var2394)) ; Statement: specialinvoke $r9.<java.lang.Exception: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r6) 

(declare-const var2442!1 var3243)
(declare-const var471!1 String)
(declare-const var2394!1 var2373)
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var2348-to-var2373=([freemarker.template.TemplateException], java.lang.Throwable), var3243-init=([], java.lang.Exception), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2373-to-var683=([java.lang.Throwable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-167142807=([java.lang.Exception, java.lang.String, java.lang.Throwable], void)}
; {var2348=freemarker.template.TemplateException, var2861=r0, var2373=java.lang.Throwable, var3878=$r1, var3731=$z0, var3243=java.lang.Exception, var2442=$r9, var3748=$r2, var3740=$r4, var3013=$r3, var683=java.lang.Object, var1792=$r5, var471=$r7, var2394=$r6}
; {freemarker.template.TemplateException=var2348, r0=var2861, java.lang.Throwable=var2373, $r1=var3878, $z0=var3731, java.lang.Exception=var3243, $r9=var2442, $r2=var3748, $r4=var3740, $r3=var3013, java.lang.Object=var683, $r5=var1792, $r7=var471, $r6=var2394}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.template.TemplateException;	$r1 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$z0 = $r1 instanceof java.lang.Exception;	if $z0 == 0 goto $r9 = new java.lang.Exception;	$r9 = new java.lang.Exception;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Wrapped to Exception: ");	$r3 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	specialinvoke $r9.<java.lang.Exception: void <init>(java.lang.String,java.lang.Throwable)>($r7, $r6);	return $r9
;block_num 3