(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2350 0)
(declare-sort var2479 0)
(declare-sort var3899 0)
(declare-sort var179 0)
(declare-sort var740 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-208040463 (var2350) var3899)
(declare-fun namingScheme/2019956101 (var3899) var179)
(declare-fun getValue/-1445752687 (var740) String)
(declare-fun cast-from-var179-to-var740 (var179) var740)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun baseJarName/2019956101 (var3899) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2350 var2350)
(declare-const null-String String)
(declare-const var192 var2350) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var192 null-var2350)))
(declare-const var2817 String) ; Statement: r20 := @parameter0: java.lang.String 
(assert (not (= var2817 null-String)))
(define-const var2192 String "") ; Statement: r37 = "" 
(define-const var813 String "basejarname") ; Statement: $r4 = "basejarname" 
(define-const var355 var3899 (config/-208040463 var192)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var1102 var179 (namingScheme/2019956101 var355)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
(assert true)
(define-const var1768 String (getValue/-1445752687 (cast-from-var179-to-var740 var1102))) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>() 
(assert true)
(define-const var2616 Bool (= var813 var1768)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r8 = "descriptor" 
(assert (not (= (ite var2616 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2912 String (replace/1524665721 var2817 92 47)) ; Statement: r38 = virtualinvoke r20.<java.lang.String: java.lang.String replace(char,char)>(92, 47) 
(assert true)
(define-const var2272 Int (lastIndexOf/-1292097097 var2912 47)) ; Statement: i4 = virtualinvoke r38.<java.lang.String: int lastIndexOf(int)>(47) 
(define-const var3441 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i8 = (int) -1 
 ; Statement: if i4 == $i8 goto $r41 = new java.lang.StringBuilder 
(assert (= var2272 var3441)) ; Cond: i4 == $i8 
(define-const var477 String String-init) ; Statement: $r41 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var477)) ; Statement: specialinvoke $r41.<java.lang.StringBuilder: void <init>()>() 
(declare-const var477!1 String)
(assert (= var477!1 ""))
(assert true)
(define-const var1362 String (append/672562846 var477!1 var2192)) ; Statement: $r35 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r37) 
(declare-const var477!2 String)
(assert (= var477!2 (str.++ var477!1 var2192)))
(define-const var983 var3899 (config/-208040463 var192)) ; Statement: $r33 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var2053 String (baseJarName/2019956101 var983)) ; Statement: $r34 = $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseJarName> 
(assert true)
(define-const var1659 String (append/672562846 var1362 var2053)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var1362!1 String)
(assert (= var1362!1 (str.++ var1362 var2053)))
(assert true)
(define-const var2192!1 String (toString/-2075883882 var1659)) ; Statement: r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r37] 
(assert true) ; Non Conditional
 ; Statement: return r37 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), namingScheme/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var179-to-var740=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), replace/1524665721=([java.lang.String, char, char], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), baseJarName/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2350=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var192=r0, var2817=r20, var2479=null_type, var2192=r37, var813=$r4, var3899=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var355=$r1, var179=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme, var1102=$r2, var740=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var1768=$r3, var2616=$z0, var2912=r38, var2272=i4, var3441=$i8, var477=$r41, var1362=$r35, var983=$r33, var2053=$r34, var1659=$r36}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2350, r0=var192, r20=var2817, null_type=var2479, r37=var2192, $r4=var813, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var3899, $r1=var355, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme=var179, $r2=var1102, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var740, $r3=var1768, $z0=var2616, r38=var2912, i4=var2272, $i8=var3441, $r41=var477, $r35=var1362, $r33=var983, $r34=var2053, $r36=var1659}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: java.lang.String replace(char,char)>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: java.lang.String replace(char,char)>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	r20 := @parameter0: java.lang.String;	r37 = "";	$r4 = "basejarname";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r2 = $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>();	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 == 0 goto $r8 = "descriptor";	r38 = virtualinvoke r20.<java.lang.String: java.lang.String replace(char,char)>(92, 47);	i4 = virtualinvoke r38.<java.lang.String: int lastIndexOf(int)>(47);	$i8 = (int) -1;	if i4 == $i8 goto $r41 = new java.lang.StringBuilder;	$r41 = new java.lang.StringBuilder;	specialinvoke $r41.<java.lang.StringBuilder: void <init>()>();	$r35 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r37);	$r33 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r34 = $r33.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseJarName>;	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r37];	return r37
;block_num 4