(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1548 0)
(declare-sort var1144 0)
(declare-sort var1886 0)
(declare-sort var443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var443!class ClassObject)
(declare-fun var1886-init () var1886)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1842631856 (var1886 String String) void)
(declare-const null-var1548 var1548)
(declare-const null-var1144 var1144)
(declare-const var959 var1548) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var959 null-var1548)))
(declare-const var134 var1144) ; Statement: r0 := @parameter0: freemarker.core.OutputFormat 
(assert (not (= var134 null-var1144)))
 ; Statement: if r0 != null goto r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>() 
(assert (not (not (= var134 null-var1144)))) ; Negate: Cond: r0 != null  
(define-const var1916 var1886 var1886-init) ; Statement: $r3 = new freemarker.template.utility.NullArgumentException 
(define-const var1193 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1193)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1193!1 String)
(assert (= var1193!1 ""))
(assert true)
(define-const var2878 String (append/672562846 var1193!1 "You may meant: ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("You may meant: ") 
(declare-const var1193!2 String)
(assert (= var1193!2 (str.++ var1193!1 "You may meant: ")))
(define-const var2443 ClassObject var443!class) ; Statement: $r5 = class "Lfreemarker/core/UndefinedOutputFormat;" 
(assert true)
(define-const var1336 String (getSimpleName/-390194377 var2443)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3519 String (append/672562846 var2878 var1336)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2878!1 String)
(assert (= var2878!1 (str.++ var2878 var1336)))
(assert true)
(define-const var3011 String (append/672562846 var3519 ".INSTANCE")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".INSTANCE") 
(declare-const var3519!1 String)
(assert (= var3519!1 (str.++ var3519 ".INSTANCE")))
(assert true)
(define-const var2686 String (toString/-2075883882 var3011)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1842631856 var1916 "outputFormat" var2686)) ; Statement: specialinvoke $r3.<freemarker.template.utility.NullArgumentException: void <init>(java.lang.String,java.lang.String)>("outputFormat", $r10) 

(declare-const var1916!1 var1886)
(declare-const var3494 String)
(declare-const var2686!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1886-init=([], freemarker.template.utility.NullArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1842631856=([freemarker.template.utility.NullArgumentException, java.lang.String, java.lang.String], void)}
; {var1548=freemarker.template.Configuration, var959=r1, var1144=freemarker.core.OutputFormat, var134=r0, var1886=freemarker.template.utility.NullArgumentException, var1916=$r3, var1193=$r4, var2878=$r7, var443=freemarker.core.UndefinedOutputFormat, var2443=$r5, var1336=$r6, var3519=$r8, var3011=$r9, var2686=$r10, var3494="outputFormat"}
; {freemarker.template.Configuration=var1548, r1=var959, freemarker.core.OutputFormat=var1144, r0=var134, freemarker.template.utility.NullArgumentException=var1886, $r3=var1916, $r4=var1193, $r7=var2878, freemarker.core.UndefinedOutputFormat=var443, $r5=var2443, $r6=var1336, $r8=var3519, $r9=var3011, $r10=var2686, "outputFormat"=var3494}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: freemarker.core.OutputFormat;	if r0 != null goto r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>();	$r3 = new freemarker.template.utility.NullArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("You may meant: ");	$r5 = class "Lfreemarker/core/UndefinedOutputFormat;";	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getSimpleName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".INSTANCE");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<freemarker.template.utility.NullArgumentException: void <init>(java.lang.String,java.lang.String)>("outputFormat", $r10);	throw $r3
;block_num 2