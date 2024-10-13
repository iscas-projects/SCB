(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1938 0)
(declare-sort var3252 0)
(declare-sort var374 0)
(declare-sort var2646 0)
(declare-sort var1146 0)
(declare-sort var3175 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2646-init () var2646)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getMessage/849299655 (var1146) String)
(declare-fun cast-from-var374-to-var1146 (var374) var1146)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getCanonicalForm/-1714059646 (var3175) String)
(declare-fun cast-from-var3252-to-var3175 (var3252) var3175)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/21255981 (var2646 String var3175 var1146) void)
(declare-const null-var1938 var1938)
(declare-const null-var3252 var3252)
(declare-const null-Bool Bool)
(declare-const null-var374 var374)
(declare-const var2910 var1938) ; Statement: r24 := @this: freemarker.core.FMParser 
(assert (not (= var2910 null-var1938)))
(declare-const var1008 var3252) ; Statement: r0 := @parameter0: freemarker.core.Expression 
(assert (not (= var1008 null-var3252)))
(declare-const var1380 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1380 null-Bool)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3881 var374) ; Statement: $r15 := @caughtexception 
(assert (not (= var3881 null-var374)))
(define-const var2906 var2646 var2646-init) ; Statement: $r16 = new freemarker.core.ParseException 
(define-const var2024 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2024)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2024!1 String)
(assert (= var2024!1 ""))
(assert true)
(define-const var189 String (getMessage/849299655 (cast-from-var374-to-var1146 var3881))) ; Statement: $r18 = virtualinvoke $r15.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var1094 String (append/672562846 var2024!1 var189)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var2024!2 String)
(assert (= var2024!2 (str.++ var2024!1 var189)))
(assert true)
(define-const var2094 String (append/672562846 var1094 "\nCould not evaluate expression: ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nCould not evaluate expression: ") 
(declare-const var1094!1 String)
(assert (= var1094!1 (str.++ var1094 "\nCould not evaluate expression: ")))
(assert true)
(define-const var723 String (getCanonicalForm/-1714059646 (cast-from-var3252-to-var3175 var1008))) ; Statement: $r20 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>() 
(assert true)
(define-const var1914 String (append/672562846 var2094 var723)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2094!1 String)
(assert (= var2094!1 (str.++ var2094 var723)))
(assert true)
(define-const var1667 String (toString/-2075883882 var1914)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/21255981 var2906 var1667 (cast-from-var3252-to-var3175 var1008) (cast-from-var374-to-var1146 var3881))) ; Statement: specialinvoke $r16.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject,java.lang.Throwable)>($r23, r0, $r15) 

(declare-const var2906!1 var2646)
(declare-const var1667!1 String)
(declare-const var1008!1 var3252)
(declare-const var3881!1 var374)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var2646-init=([], freemarker.core.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var374-to-var1146=([java.lang.Exception], java.lang.Throwable), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getCanonicalForm/-1714059646=([freemarker.core.TemplateObject], java.lang.String), cast-from-var3252-to-var3175=([freemarker.core.Expression], freemarker.core.TemplateObject), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/21255981=([freemarker.core.ParseException, java.lang.String, freemarker.core.TemplateObject, java.lang.Throwable], void)}
; {var1938=freemarker.core.FMParser, var2910=r24, var3252=freemarker.core.Expression, var1008=r0, var1380=z1, var374=java.lang.Exception, var3881=$r15, var2646=freemarker.core.ParseException, var2906=$r16, var2024=$r17, var1146=java.lang.Throwable, var189=$r18, var1094=$r19, var2094=$r21, var3175=freemarker.core.TemplateObject, var723=$r20, var1914=$r22, var1667=$r23}
; {freemarker.core.FMParser=var1938, r24=var2910, freemarker.core.Expression=var3252, r0=var1008, z1=var1380, java.lang.Exception=var374, $r15=var3881, freemarker.core.ParseException=var2646, $r16=var2906, $r17=var2024, java.lang.Throwable=var1146, $r18=var189, $r19=var1094, $r21=var2094, freemarker.core.TemplateObject=var3175, $r20=var723, $r22=var1914, $r23=var1667}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r24 := @this: freemarker.core.FMParser;	r0 := @parameter0: freemarker.core.Expression;	z1 := @parameter1: boolean;	$r15 := @caughtexception;	$r16 = new freemarker.core.ParseException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r15.<java.lang.Exception: java.lang.String getMessage()>();	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\nCould not evaluate expression: ");	$r20 = virtualinvoke r0.<freemarker.core.Expression: java.lang.String getCanonicalForm()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<freemarker.core.ParseException: void <init>(java.lang.String,freemarker.core.TemplateObject,java.lang.Throwable)>($r23, r0, $r15);	throw $r16
;block_num 2