(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1674 0)
(declare-sort var2917 0)
(declare-sort var3787 0)
(declare-sort var1843 0)
(declare-sort var1747 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1674-init () var1674)
(declare-fun getProject/416672769 (var1843) var3787)
(declare-fun cast-from-var1674-to-var1843 (var1674) var1843)
(declare-fun <init>/-1939937668 (var1674 var3787) void)
(declare-fun var1747_getProperty/258823597 (String) String)
(declare-fun addExisting/1525581285 (var1674 var1674 Bool) void)
(declare-const null-var1674 var1674)
(declare-const null-String String)
(declare-const null-var3787 var3787)
(declare-const var2182 var1674) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var2182 null-var1674)))
(declare-const var3650 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3650 null-String)))
(declare-const var3147 var1674) ; Statement: r9 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var3147 null-var1674)))
(define-const var3527 var1674 var1674-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert true)
(define-const var1644 var3787 (getProject/416672769 (cast-from-var1674-to-var1843 var2182))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (<init>/-1939937668 var3527 var1644)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r2) 

(declare-const var3527!1 var1674)
(declare-const var1644!1 var3787)
(define-const var2308 String var3650) ; Statement: r15 = r3 
(assert true)
(define-const var923 var3787 (getProject/416672769 (cast-from-var1674-to-var1843 var2182))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
 ; Statement: if $r4 == null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("build.sysclasspath") 
(assert (= var923 null-var3787)) ; Cond: $r4 == null 
(define-const var2926 String (var1747_getProperty/258823597 "build.sysclasspath")) ; Statement: $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("build.sysclasspath") 
(assert true) ; Non Conditional
 ; Statement: if $r16 == null goto $r5 = "only" 
(assert (= var2926 null-String)) ; Cond: $r16 == null 
(define-const var1497 String "only") ; Statement: $r5 = "only" 
(assert true)
(define-const var3758 Bool (= var1497 var2308)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r15) 
 ; Statement: if $z0 == 0 goto $r6 = "first" 
(assert (not (= (ite var3758 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (addExisting/1525581285 var3527!1 var3147 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void addExisting(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,boolean)>(r9, 1) 

(declare-const var3527!2 var1674)
(declare-const var3147!1 var1674)
(declare-const var2908 Int)
 ; Statement: goto [?= return $r0] 
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1674-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var1674-to-var1843=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-1939937668=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), var1747_getProperty/258823597=([java.lang.String], java.lang.String), addExisting/1525581285=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, boolean], void)}
; {var1674=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var2182=r1, var3650=r3, var2917=null_type, var3147=r9, var3527=$r0, var3787=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1843=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1644=$r2, var2308=r15, var923=$r4, var1747=java.lang.System, var2926=$r16, var1497=$r5, var3758=$z0, var2908=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var1674, r1=var2182, r3=var3650, null_type=var2917, r9=var3147, $r0=var3527, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3787, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1843, $r2=var1644, r15=var2308, $r4=var923, java.lang.System=var1747, $r16=var2926, $r5=var1497, $z0=var3758, 1=var2908}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	r3 := @parameter0: java.lang.String;	r9 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r2);	r15 = r3;	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	if $r4 == null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("build.sysclasspath");	$r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("build.sysclasspath");	if $r16 == null goto $r5 = "only";	$r5 = "only";	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r15);	if $z0 == 0 goto $r6 = "first";	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void addExisting(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,boolean)>(r9, 1);	goto [?= return $r0];	return $r0
;block_num 6