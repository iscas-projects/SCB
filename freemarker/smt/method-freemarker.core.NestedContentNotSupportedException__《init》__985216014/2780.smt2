(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3139 0)
(declare-sort var3819 0)
(declare-sort var1337 0)
(declare-sort var3145 0)
(declare-sort var95 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-330439642 (var95 String var1337 var3145) void)
(declare-fun cast-from-var3139-to-var95 (var3139) var95)
(declare-const null-var3139 var3139)
(declare-const null-String String)
(declare-const null-var1337 var1337)
(declare-const null-var3145 var3145)
(declare-const var2643 var3139) ; Statement: r0 := @this: freemarker.core.NestedContentNotSupportedException 
(assert (not (= var2643 null-var3139)))
(declare-const var852 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var852 null-String)))
(declare-const var3293 var1337) ; Statement: r5 := @parameter1: java.lang.Exception 
(assert (not (= var3293 null-var1337)))
(declare-const var3686 var3145) ; Statement: r6 := @parameter2: freemarker.core.Environment 
(assert (not (= var3686 null-var3145)))
(define-const var493 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var493)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var493!1 String)
(assert (= var493!1 ""))
(assert true)
(define-const var3444 String (append/672562846 var493!1 "Nested content (body) not supported.")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Nested content (body) not supported.") 
(declare-const var493!2 String)
(assert (= var493!2 (str.++ var493!1 "Nested content (body) not supported.")))
 ; Statement: if r2 == null goto $r12 = "" 
(assert (= var852 null-String)) ; Cond: r2 == null 
(define-const var2531 String "") ; Statement: $r12 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var2706 String (append/672562846 var3444 var2531)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var3444!1 String)
(assert (= var3444!1 (str.++ var3444 var2531)))
(assert true)
(define-const var2695 String (toString/-2075883882 var2706)) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-330439642 (cast-from-var3139-to-var95 var2643) var2695 var3293 var3686)) ; Statement: specialinvoke r0.<freemarker.template.TemplateException: void <init>(java.lang.String,java.lang.Exception,freemarker.core.Environment)>($r7, r5, r6) 

(declare-const var2643!1 var3139)
(declare-const var2695!1 String)
(declare-const var3293!1 var1337)
(declare-const var3686!1 var3145)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-330439642=([freemarker.template.TemplateException, java.lang.String, java.lang.Exception, freemarker.core.Environment], void), cast-from-var3139-to-var95=([freemarker.core.NestedContentNotSupportedException], freemarker.template.TemplateException)}
; {var3139=freemarker.core.NestedContentNotSupportedException, var2643=r0, var852=r2, var3819=null_type, var1337=java.lang.Exception, var3293=r5, var3145=freemarker.core.Environment, var3686=r6, var493=$r1, var3444=$r3, var2531=$r12, var2706=$r4, var2695=$r7, var95=freemarker.template.TemplateException}
; {freemarker.core.NestedContentNotSupportedException=var3139, r0=var2643, r2=var852, null_type=var3819, java.lang.Exception=var1337, r5=var3293, freemarker.core.Environment=var3145, r6=var3686, $r1=var493, $r3=var3444, $r12=var2531, $r4=var2706, $r7=var2695, freemarker.template.TemplateException=var95}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.NestedContentNotSupportedException;	r2 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.Exception;	r6 := @parameter2: freemarker.core.Environment;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Nested content (body) not supported.");	if r2 == null goto $r12 = "";	$r12 = "";	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<freemarker.template.TemplateException: void <init>(java.lang.String,java.lang.Exception,freemarker.core.Environment)>($r7, r5, r6);	return
;block_num 3