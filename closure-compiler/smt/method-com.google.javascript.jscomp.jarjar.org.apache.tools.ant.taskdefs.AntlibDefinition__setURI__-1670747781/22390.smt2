(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var374 0)
(declare-sort var1686 0)
(declare-sort var1467 0)
(declare-sort var155 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var1467-init () var1467)
(declare-fun arr-var155-init () (Array Int var155))
(declare-fun cast-from-String-to-var155 (String) var155)
(declare-fun <init>/1887414589 (var1467 String (Array Int var155)) void)
(declare-const null-var374 var374)
(declare-const null-String String)
(declare-const null-__Array__Int__var155__ (Array Int var155))
(declare-const var1574 var374) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition 
(assert (not (= var1574 null-var374)))
(declare-const var518 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var518 null-String)))
(define-const var1670 String "antlib:org.apache.tools.ant") ; Statement: $r0 = "antlib:org.apache.tools.ant" 
(assert true)
(define-const var3322 Bool (= var1670 var518)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("ant:") 
(assert (= (ite var3322 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var336 Bool (startsWith/-1785782452 var518 "ant:")) ; Statement: $z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("ant:") 
 ; Statement: if $z1 == 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition: java.lang.String uri> = r4 
(assert (not (= (ite var336 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3011 var1467 var1467-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3960 (Array Int var155) arr-var155-init) ; Statement: $r3 = newarray (java.lang.Object)[1] 
(declare-const var3960!1 (Array Int var155))
(assert (not (= var3960!1 null-__Array__Int__var155__)))
(assert (= (select var3960!1 0) (cast-from-String-to-var155 var518))) ; Statement: $r3[0] = r4 
(assert true)
;(assert (<init>/1887414589 var3011 "Attempt to use a reserved URI %s" var3960!1)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Object[])>("Attempt to use a reserved URI %s", $r3) 

(declare-const var3011!1 var1467)
(declare-const var1224 String)
(declare-const var3960!2 (Array Int var155))
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var1467-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), arr-var155-init=([], java.lang.Object[]), cast-from-String-to-var155=([java.lang.String], java.lang.Object), <init>/1887414589=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Object[]], void)}
; {var374=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition, var1574=r1, var518=r4, var1686=null_type, var1670=$r0, var3322=$z0, var336=$z1, var1467=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3011=$r2, var155=java.lang.Object, var3960=$r3, var1224="Attempt to use a reserved URI %s"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition=var374, r1=var1574, r4=var518, null_type=var1686, $r0=var1670, $z0=var3322, $z1=var336, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1467, $r2=var3011, java.lang.Object=var155, $r3=var3960, "Attempt to use a reserved URI %s"=var1224}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition;	r4 := @parameter0: java.lang.String;	$r0 = "antlib:org.apache.tools.ant";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 == 0 goto $z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("ant:");	$z1 = virtualinvoke r4.<java.lang.String: boolean startsWith(java.lang.String)>("ant:");	if $z1 == 0 goto r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AntlibDefinition: java.lang.String uri> = r4;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = newarray (java.lang.Object)[1];	$r3[0] = r4;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Object[])>("Attempt to use a reserved URI %s", $r3);	throw $r2
;block_num 3