(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3491 0)
(declare-sort var1701 0)
(declare-sort var1680 0)
(declare-sort var2535 0)
(declare-sort var491 0)
(declare-sort var3964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsoluteFile/-33355006 (var3491) var3491)
(declare-fun getParentFile/-182598033 (var3491) var3491)
(declare-fun getName/1128186653 (var3491) String)
(declare-fun var3491-init () var3491)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3491 var3491 String) void)
(declare-fun setDirectoryForTemplateLoading/-1185405031 (var1701 var3491) void)
(declare-fun getTemplate/1941873560 (var1701 String) var2535)
(declare-fun var491-init () var491)
(declare-fun <init>/1983015236 (var491 var3491) void)
(declare-const null-var3491 var3491)
(declare-const var1680-config var1701)
(declare-const null-var3964 var3964)
(declare-const null-var491 var491)
(declare-const var725 var3491) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var725 null-var3491)))
(assert true)
(define-const var2295 var3491 (getAbsoluteFile/-33355006 var725)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.io.File getAbsoluteFile()>() 
(assert true)
(define-const var2257 var3491 (getParentFile/-182598033 var2295)) ; Statement: r2 = virtualinvoke r1.<java.io.File: java.io.File getParentFile()>() 
(assert true)
(define-const var2046 String (getName/1128186653 var2295)) ; Statement: r3 = virtualinvoke r1.<java.io.File: java.lang.String getName()>() 
(define-const var1454 var3491 var3491-init) ; Statement: $r4 = new java.io.File 
(define-const var2598 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2598)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2598!1 String)
(assert (= var2598!1 ""))
(assert true)
(define-const var82 String (append/672562846 var2598!1 var2046)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2598!2 String)
(assert (= var2598!2 (str.++ var2598!1 var2046)))
(assert true)
(define-const var1922 String (append/672562846 var82 ".canonical")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".canonical") 
(declare-const var82!1 String)
(assert (= var82!1 (str.++ var82 ".canonical")))
(assert true)
(define-const var1643 String (toString/-2075883882 var1922)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1454 var2257 var1643)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>(r2, $r8) 

(declare-const var1454!1 var3491)
(declare-const var2257!1 var3491)
(declare-const var1643!1 String)
(define-const var2317 var1701 var1680-config) ; Statement: $r9 = <freemarker.template.utility.ToCanonical: freemarker.template.Configuration config> 
(assert true)
;(assert (setDirectoryForTemplateLoading/-1185405031 var2317 var2257!1)) ; Statement: virtualinvoke $r9.<freemarker.template.Configuration: void setDirectoryForTemplateLoading(java.io.File)>(r2) 

(declare-const var2317!1 var1701)
(declare-const var2257!2 var3491)
(define-const var2242 var1701 var1680-config) ; Statement: $r10 = <freemarker.template.utility.ToCanonical: freemarker.template.Configuration config> 
(assert true)
(define-const var3624 var2535 (getTemplate/1941873560 var2242 var2046)) ; Statement: r11 = virtualinvoke $r10.<freemarker.template.Configuration: freemarker.template.Template getTemplate(java.lang.String)>(r3) 
(define-const var782 var491 var491-init) ; Statement: $r12 = new java.io.FileWriter 
(assert true)
;(assert (<init>/1983015236 var782 var1454!1)) ; Statement: specialinvoke $r12.<java.io.FileWriter: void <init>(java.io.File)>($r4) 

(declare-const var782!1 var491)
(declare-const var1454!2 var3491)
(define-const var77 var3964 null-var3964) ; Statement: r17 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2360 var3964) ; Statement: $r14 := @caughtexception 
(assert (not (= var2360 null-var3964)))
(assert true) ; Non Conditional
 ; Statement: if $r12 == null goto throw $r14 
(assert (= var782!1 null-var491)) ; Cond: $r12 == null 
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsoluteFile/-33355006=([java.io.File], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), getName/1128186653=([java.io.File], java.lang.String), var3491-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), setDirectoryForTemplateLoading/-1185405031=([freemarker.template.Configuration, java.io.File], void), getTemplate/1941873560=([freemarker.template.Configuration, java.lang.String], freemarker.template.Template), var491-init=([], java.io.FileWriter), <init>/1983015236=([java.io.FileWriter, java.io.File], void)}
; {var3491=java.io.File, var725=r0, var2295=r1, var2257=r2, var2046=r3, var1454=$r4, var2598=$r5, var82=$r6, var1922=$r7, var1643=$r8, var1701=freemarker.template.Configuration, var1680=freemarker.template.utility.ToCanonical, var2317=$r9, var2242=$r10, var2535=freemarker.template.Template, var3624=r11, var491=java.io.FileWriter, var782=$r12, var3964=java.lang.Throwable, var77=r17, var2360=$r14}
; {java.io.File=var3491, r0=var725, r1=var2295, r2=var2257, r3=var2046, $r4=var1454, $r5=var2598, $r6=var82, $r7=var1922, $r8=var1643, freemarker.template.Configuration=var1701, freemarker.template.utility.ToCanonical=var1680, $r9=var2317, $r10=var2242, freemarker.template.Template=var2535, r11=var3624, java.io.FileWriter=var491, $r12=var782, java.lang.Throwable=var3964, r17=var77, $r14=var2360}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.io.File getAbsoluteFile()>();	r2 = virtualinvoke r1.<java.io.File: java.io.File getParentFile()>();	r3 = virtualinvoke r1.<java.io.File: java.lang.String getName()>();	$r4 = new java.io.File;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".canonical");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>(r2, $r8);	$r9 = <freemarker.template.utility.ToCanonical: freemarker.template.Configuration config>;	virtualinvoke $r9.<freemarker.template.Configuration: void setDirectoryForTemplateLoading(java.io.File)>(r2);	$r10 = <freemarker.template.utility.ToCanonical: freemarker.template.Configuration config>;	r11 = virtualinvoke $r10.<freemarker.template.Configuration: freemarker.template.Template getTemplate(java.lang.String)>(r3);	$r12 = new java.io.FileWriter;	specialinvoke $r12.<java.io.FileWriter: void <init>(java.io.File)>($r4);	r17 = null;	$r14 := @caughtexception;	if $r12 == null goto throw $r14;	throw $r14
;block_num 4