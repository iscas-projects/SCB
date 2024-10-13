(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1118 0)
(declare-sort var3158 0)
(declare-sort var1552 0)
(declare-sort var3125 0)
(declare-sort var3936 0)
(declare-sort var3358 0)
(declare-sort var1852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAbsoluteFile/-33355006 (var1118) var1118)
(declare-fun getParentFile/-182598033 (var1118) var1118)
(declare-fun getName/1128186653 (var1118) String)
(declare-fun var1118-init () var1118)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var1118 var1118 String) void)
(declare-fun setDirectoryForTemplateLoading/-1185405031 (var3158 var1118) void)
(declare-fun getTemplate/1941873560 (var3158 String) var3125)
(declare-fun var3936-init () var3936)
(declare-fun <init>/1983015236 (var3936 var1118) void)
(declare-fun dump/748187220 (var3125 var1852) void)
(declare-fun cast-from-var3936-to-var1852 (var3936) var1852)
(declare-const null-var1118 var1118)
(declare-const var1552-config var3158)
(declare-const null-var3358 var3358)
(declare-const null-var3936 var3936)
(declare-const var568 var1118) ; Statement: r0 := @parameter0: java.io.File 
(assert (not (= var568 null-var1118)))
(assert true)
(define-const var2972 var1118 (getAbsoluteFile/-33355006 var568)) ; Statement: r1 = virtualinvoke r0.<java.io.File: java.io.File getAbsoluteFile()>() 
(assert true)
(define-const var1962 var1118 (getParentFile/-182598033 var2972)) ; Statement: r2 = virtualinvoke r1.<java.io.File: java.io.File getParentFile()>() 
(assert true)
(define-const var1416 String (getName/1128186653 var2972)) ; Statement: r3 = virtualinvoke r1.<java.io.File: java.lang.String getName()>() 
(define-const var998 var1118 var1118-init) ; Statement: $r4 = new java.io.File 
(define-const var2413 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2413)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2413!1 String)
(assert (= var2413!1 ""))
(assert true)
(define-const var1682 String (append/672562846 var2413!1 var1416)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2413!2 String)
(assert (= var2413!2 (str.++ var2413!1 var1416)))
(assert true)
(define-const var242 String (append/672562846 var1682 ".canonical")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".canonical") 
(declare-const var1682!1 String)
(assert (= var1682!1 (str.++ var1682 ".canonical")))
(assert true)
(define-const var3009 String (toString/-2075883882 var242)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var998 var1962 var3009)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>(r2, $r8) 

(declare-const var998!1 var1118)
(declare-const var1962!1 var1118)
(declare-const var3009!1 String)
(define-const var3184 var3158 var1552-config) ; Statement: $r9 = <freemarker.template.utility.ToCanonical: freemarker.template.Configuration config> 
(assert true)
;(assert (setDirectoryForTemplateLoading/-1185405031 var3184 var1962!1)) ; Statement: virtualinvoke $r9.<freemarker.template.Configuration: void setDirectoryForTemplateLoading(java.io.File)>(r2) 

(declare-const var3184!1 var3158)
(declare-const var1962!2 var1118)
(define-const var3053 var3158 var1552-config) ; Statement: $r10 = <freemarker.template.utility.ToCanonical: freemarker.template.Configuration config> 
(assert true)
(define-const var1093 var3125 (getTemplate/1941873560 var3053 var1416)) ; Statement: r11 = virtualinvoke $r10.<freemarker.template.Configuration: freemarker.template.Template getTemplate(java.lang.String)>(r3) 
(define-const var2709 var3936 var3936-init) ; Statement: $r12 = new java.io.FileWriter 
(assert true)
;(assert (<init>/1983015236 var2709 var998!1)) ; Statement: specialinvoke $r12.<java.io.FileWriter: void <init>(java.io.File)>($r4) 

(declare-const var2709!1 var3936)
(declare-const var998!2 var1118)
(define-const var1173 var3358 null-var3358) ; Statement: r17 = null 
(assert true) ; Non Conditional
(assert true)
;(assert (dump/748187220 var1093 (cast-from-var3936-to-var1852 var2709!1))) ; Statement: virtualinvoke r11.<freemarker.template.Template: void dump(java.io.Writer)>($r12) 

(declare-const var1093!1 var3125)
(declare-const var2709!2 var3936)
(assert true) ; Non Conditional
 ; Statement: if $r12 == null goto return 
(assert (= var2709!2 null-var3936)) ; Cond: $r12 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getAbsoluteFile/-33355006=([java.io.File], java.io.File), getParentFile/-182598033=([java.io.File], java.io.File), getName/1128186653=([java.io.File], java.lang.String), var1118-init=([], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), setDirectoryForTemplateLoading/-1185405031=([freemarker.template.Configuration, java.io.File], void), getTemplate/1941873560=([freemarker.template.Configuration, java.lang.String], freemarker.template.Template), var3936-init=([], java.io.FileWriter), <init>/1983015236=([java.io.FileWriter, java.io.File], void), dump/748187220=([freemarker.template.Template, java.io.Writer], void), cast-from-var3936-to-var1852=([java.io.FileWriter], java.io.Writer)}
; {var1118=java.io.File, var568=r0, var2972=r1, var1962=r2, var1416=r3, var998=$r4, var2413=$r5, var1682=$r6, var242=$r7, var3009=$r8, var3158=freemarker.template.Configuration, var1552=freemarker.template.utility.ToCanonical, var3184=$r9, var3053=$r10, var3125=freemarker.template.Template, var1093=r11, var3936=java.io.FileWriter, var2709=$r12, var3358=java.lang.Throwable, var1173=r17, var1852=java.io.Writer}
; {java.io.File=var1118, r0=var568, r1=var2972, r2=var1962, r3=var1416, $r4=var998, $r5=var2413, $r6=var1682, $r7=var242, $r8=var3009, freemarker.template.Configuration=var3158, freemarker.template.utility.ToCanonical=var1552, $r9=var3184, $r10=var3053, freemarker.template.Template=var3125, r11=var1093, java.io.FileWriter=var3936, $r12=var2709, java.lang.Throwable=var3358, r17=var1173, java.io.Writer=var1852}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.io.File;	r1 = virtualinvoke r0.<java.io.File: java.io.File getAbsoluteFile()>();	r2 = virtualinvoke r1.<java.io.File: java.io.File getParentFile()>();	r3 = virtualinvoke r1.<java.io.File: java.lang.String getName()>();	$r4 = new java.io.File;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".canonical");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>(r2, $r8);	$r9 = <freemarker.template.utility.ToCanonical: freemarker.template.Configuration config>;	virtualinvoke $r9.<freemarker.template.Configuration: void setDirectoryForTemplateLoading(java.io.File)>(r2);	$r10 = <freemarker.template.utility.ToCanonical: freemarker.template.Configuration config>;	r11 = virtualinvoke $r10.<freemarker.template.Configuration: freemarker.template.Template getTemplate(java.lang.String)>(r3);	$r12 = new java.io.FileWriter;	specialinvoke $r12.<java.io.FileWriter: void <init>(java.io.File)>($r4);	r17 = null;	virtualinvoke r11.<freemarker.template.Template: void dump(java.io.Writer)>($r12);	if $r12 == null goto return;	return
;block_num 4