(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1068 0)
(declare-sort var979 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun descriptorName/760687125 (var1068) String)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1068 var1068)
(declare-const var979-separatorChar Int)
(declare-const var2174 var1068) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool 
(assert (not (= var2174 null-var1068)))
(define-const var2421 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1017 String (descriptorName/760687125 var2174)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> 
(define-const var161 Int var979-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(define-const var2318 Int (cast-from-Int-to-Int var161)) ; Statement: $i10 = (int) $c0 
(assert true)
(define-const var3976 Int (lastIndexOf/-1292097097 var1017 var2318)) ; Statement: i1 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>($i10) 
(define-const var241 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i12 = (int) -1 
 ; Statement: if i1 == $i12 goto r32 = "" 
(assert (not (= var3976 var241))) ; Negate: Cond: i1 == $i12  
(define-const var888 String (descriptorName/760687125 var2174)) ; Statement: $r30 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> 
(define-const var1712 Int (+ var3976 1)) ; Statement: $i4 = i1 + 1 
(assert (and true (and (>= 0 0) (>= (str.len var888) var1712) (>= var1712 0))))
(define-const var1116 String (substring/-1240304868 var888 0 var1712)) ; Statement: r32 = virtualinvoke $r30.<java.lang.String: java.lang.String substring(int,int)>(0, $i4) 
(define-const var2275 String (descriptorName/760687125 var2174)) ; Statement: $r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> 
(define-const var3664 Int (+ var3976 1)) ; Statement: $i5 = i1 + 1 
(assert (not (and true (and (>= var3664 0) (>= (str.len var2275) var3664)))))
(check-sat)
(get-model)
(get-unsat-core)
; {descriptorName/760687125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], java.lang.String), cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1068=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool, var2174=r0, var2421=z1, var1017=$r1, var979=java.io.File, var161=$c0, var2318=$i10, var3976=i1, var241=$i12, var888=$r30, var1712=$i4, var1116=r32, var2275=$r31, var3664=$i5, var719=r33, var482=$z0, var2511=$r39, var2609=$r27, var3915=$r28, var2631=$r29}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool=var1068, r0=var2174, z1=var2421, $r1=var1017, java.io.File=var979, $c0=var161, $i10=var2318, i1=var3976, $i12=var241, $r30=var888, $i4=var1712, r32=var1116, $r31=var2275, $i5=var3664, r33=var719, $z0=var482, $r39=var2511, $r27=var2609, $r28=var3915, $r29=var2631}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool;	z1 = 0;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	$c0 = <java.io.File: char separatorChar>;	$i10 = (int) $c0;	i1 = virtualinvoke $r1.<java.lang.String: int lastIndexOf(int)>($i10);	$i12 = (int) -1;	if i1 == $i12 goto r32 = "";	$r30 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	$i4 = i1 + 1;	r32 = virtualinvoke $r30.<java.lang.String: java.lang.String substring(int,int)>(0, $i4);	$r31 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	$i5 = i1 + 1;	r33 = virtualinvoke $r31.<java.lang.String: java.lang.String substring(int)>($i5);	goto [?= $z0 = virtualinvoke r33.<java.lang.String: boolean startsWith(java.lang.String)>("ejb-jar.xml")];	$z0 = virtualinvoke r33.<java.lang.String: boolean startsWith(java.lang.String)>("ejb-jar.xml");	if $z0 == 0 goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	$r39 = new java.lang.StringBuilder;	specialinvoke $r39.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r32);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("jonas-ejb-jar.xml");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	return $r29
;block_num 4