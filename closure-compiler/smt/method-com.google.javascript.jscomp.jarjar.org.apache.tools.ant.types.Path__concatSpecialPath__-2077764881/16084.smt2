(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2805 0)
(declare-sort var1866 0)
(declare-sort var2019 0)
(declare-sort var1041 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2805-init () var2805)
(declare-fun getProject/416672769 (var1041) var2019)
(declare-fun cast-from-var2805-to-var1041 (var2805) var1041)
(declare-fun <init>/-1939937668 (var2805 var2019) void)
(declare-fun getProperty/-1126216426 (var2019 String) String)
(declare-fun addExisting/1525581285 (var2805 var2805 Bool) void)
(declare-const null-var2805 var2805)
(declare-const null-String String)
(declare-const null-var2019 var2019)
(declare-const var15 var2805) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var15 null-var2805)))
(declare-const var2939 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2939 null-String)))
(declare-const var725 var2805) ; Statement: r9 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var725 null-var2805)))
(define-const var3910 var2805 var2805-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert true)
(define-const var3406 var2019 (getProject/416672769 (cast-from-var2805-to-var1041 var15))) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
;(assert (<init>/-1939937668 var3910 var3406)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r2) 

(declare-const var3910!1 var2805)
(declare-const var3406!1 var2019)
(define-const var2425 String var2939) ; Statement: r15 = r3 
(assert true)
(define-const var485 var2019 (getProject/416672769 (cast-from-var2805-to-var1041 var15))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
 ; Statement: if $r4 == null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("build.sysclasspath") 
(assert (not (= var485 null-var2019))) ; Negate: Cond: $r4 == null  
(assert true)
(define-const var632 var2019 (getProject/416672769 (cast-from-var2805-to-var1041 var15))) ; Statement: $r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var1912 String (getProperty/-1126216426 var632 "build.sysclasspath")) ; Statement: $r16 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("build.sysclasspath") 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r16 == null goto $r5 = "only" 
(assert (= var1912 null-String)) ; Cond: $r16 == null 
(define-const var1710 String "only") ; Statement: $r5 = "only" 
(assert true)
(define-const var666 Bool (= var1710 var2425)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r15) 
 ; Statement: if $z0 == 0 goto $r6 = "first" 
(assert (not (= (ite var666 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (addExisting/1525581285 var3910!1 var725 (ite (= 1 1) true false))) ; Statement: virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void addExisting(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,boolean)>(r9, 1) 

(declare-const var3910!2 var2805)
(declare-const var725!1 var2805)
(declare-const var191 Int)
 ; Statement: goto [?= return $r0] 
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2805-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var2805-to-var1041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-1939937668=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], void), getProperty/-1126216426=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), addExisting/1525581285=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, boolean], void)}
; {var2805=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var15=r1, var2939=r3, var1866=null_type, var725=r9, var3910=$r0, var2019=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1041=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3406=$r2, var2425=r15, var485=$r4, var632=$r14, var1912=$r16, var1710=$r5, var666=$z0, var191=1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var2805, r1=var15, r3=var2939, null_type=var1866, r9=var725, $r0=var3910, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2019, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1041, $r2=var3406, r15=var2425, $r4=var485, $r14=var632, $r16=var1912, $r5=var1710, $z0=var666, 1=var191}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	r3 := @parameter0: java.lang.String;	r9 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r0 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project)>($r2);	r15 = r3;	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	if $r4 == null goto $r16 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("build.sysclasspath");	$r14 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r16 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String getProperty(java.lang.String)>("build.sysclasspath");	goto [?= (branch)];	if $r16 == null goto $r5 = "only";	$r5 = "only";	$z0 = virtualinvoke $r5.<java.lang.String: boolean equals(java.lang.Object)>(r15);	if $z0 == 0 goto $r6 = "first";	virtualinvoke $r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path: void addExisting(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path,boolean)>(r9, 1);	goto [?= return $r0];	return $r0
;block_num 6