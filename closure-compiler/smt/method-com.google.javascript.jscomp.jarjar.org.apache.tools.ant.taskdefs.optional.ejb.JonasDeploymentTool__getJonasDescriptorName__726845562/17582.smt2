(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2763 0)
(declare-sort var361 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun descriptorName/760687125 (var2763) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2763 var2763)
(declare-const var361-separatorChar Int)
(declare-const var541 var2763) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool 
(assert (not (= var541 null-var2763)))
(define-const var3676 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3506 String (descriptorName/760687125 var541)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> 
(define-const var1702 Int var361-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(define-const var142 Int (cast-from-Int-to-Int var1702)) ; Statement: $i10 = (int) $c0 
(assert true)
(define-const var2777 Int (lastIndexOf/-1292097097 var3506 var142)) ; Statement: i1 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>($i10) 
(define-const var1372 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i1 == $i12 goto r32 = "" 
(assert (= var2777 var1372)) ; Cond: i1 == $i12 
(define-const var519 String "") ; Statement: r32 = "" 
(define-const var1341 String (descriptorName/760687125 var541)) ; Statement: r33 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> 
(assert true) ; Non Conditional
(assert true)
(define-const var1038 Bool (startsWith/-1785782452 var1341 "ejb-jar.xml")) ; Statement: $z0 = virtualinvoke r33.<java.lang.String: boolean startsWith(java.lang.String)>("ejb-jar.xml") 
 ; Statement: if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> 
(assert (not (= (ite var1038 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2187 String String-init) ; Statement: $r39 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2187)) ; Statement: specialinvoke $r39.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2187!1 String)
(assert (= var2187!1 ""))
(assert true)
(define-const var2052 String (append/672562846 var2187!1 var519)) ; Statement: $r27 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32) 
(declare-const var2187!2 String)
(assert (= var2187!2 (str.++ var2187!1 var519)))
(assert true)
(define-const var3824 String (append/672562846 var2052 "jonas-ejb-jar.xml")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jonas-ejb-jar.xml") 
(declare-const var2052!1 String)
(assert (= var2052!1 (str.++ var2052 "jonas-ejb-jar.xml")))
(assert true)
(define-const var3486 String (toString/-2075883882 var3824)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {descriptorName/760687125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], java.lang.String), cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2763=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool, var541=r0, var3676=z1, var3506=$r1, var361=java.io.File, var1702=$c0, var142=$i10, var2777=i1, var1372=$i12, var519=r32, var1341=r33, var1038=$z0, var2187=$r39, var2052=$r27, var3824=$r28, var3486=$r29}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool=var2763, r0=var541, z1=var3676, $r1=var3506, java.io.File=var361, $c0=var1702, $i10=var142, i1=var2777, $i12=var1372, r32=var519, r33=var1341, $z0=var1038, $r39=var2187, $r27=var2052, $r28=var3824, $r29=var3486}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool;	z1 = 0;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	$c0 = <java.io.File: char separatorChar>;	$i10 = (int) $c0;	i1 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>($i10);	$i12 = (int) -1;	if i1 == $i12 goto r32 = "";	r32 = "";	r33 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	$z0 = virtualinvoke r33.<java.lang.String: boolean startsWith(java.lang.String)>("ejb-jar.xml");	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jonas-ejb-jar.xml");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 4