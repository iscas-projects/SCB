(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var335 0)
(declare-sort var196 0)
(declare-sort var2118 0)
(declare-sort var2388 0)
(declare-sort var2467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_join/1594745010 (String var2118) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var196-to-var2118 (var196) var2118)
(declare-fun setUserProperty/-1892470165 (var335 String String) void)
(declare-fun getExecutor/1893159966 (var335) var2388)
(declare-fun size/-1825798970 (var196) Int)
(declare-fun arr-String-init () (Array Int String))
(declare-fun toArray/-464067270 (var196 (Array Int var2467)) (Array Int var2467))
(declare-fun cast-from-__Array__Int__String__-to-__Array__Int__var2467__ ((Array Int String)) (Array Int var2467))
(declare-fun cast-from-__Array__Int__var2467__-to-__Array__Int__String__ ((Array Int var2467)) (Array Int String))
(declare-fun var2388_executeTargets/1460867299 (var2388 var335 (Array Int String)) void)
(declare-const null-var335 var335)
(declare-const null-var196 var196)
(declare-const var2583 var335) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2583 null-var335)))
(declare-const var726 var196) ; Statement: r1 := @parameter0: java.util.Vector 
(assert (not (= var726 null-var196)))
(define-const var467 String (String_join/1594745010 (cast-from-String-to-String ",") (cast-from-var196-to-var2118 var726))) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(",", r1) 
(assert true)
;(assert (setUserProperty/-1892470165 var2583 "ant.project.invoked-targets" var467)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>("ant.project.invoked-targets", $r2) 

(declare-const var2583!1 var335)
(declare-const var152 String)
(declare-const var467!1 String)
(assert true)
(define-const var171 var2388 (getExecutor/1893159966 var2583!1)) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Executor getExecutor()>() 
(assert true)
(define-const var1088 Int (size/-1825798970 var726)) ; Statement: $i0 = virtualinvoke r1.<java.util.Vector: int size()>() 
(define-const var194 (Array Int String) arr-String-init) ; Statement: $r3 = newarray (java.lang.String)[$i0] 
(assert true)
(define-const var1134 (Array Int var2467) (toArray/-464067270 var726 (cast-from-__Array__Int__String__-to-__Array__Int__var2467__ var194))) ; Statement: $r4 = virtualinvoke r1.<java.util.Vector: java.lang.Object[] toArray(java.lang.Object[])>($r3) 
(define-const var72 (Array Int String) (cast-from-__Array__Int__var2467__-to-__Array__Int__String__ var1134)) ; Statement: $r5 = (java.lang.String[]) $r4 
;(assert (var2388_executeTargets/1460867299 var171 var2583!1 var72)) ; Statement: interfaceinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Executor: void executeTargets(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String[])>(r0, $r5) 

(declare-const var171!1 var2388)
(declare-const var2583!2 var335)
(declare-const var72!1 (Array Int String))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var196-to-var2118=([java.util.Vector], java.lang.Iterable), setUserProperty/-1892470165=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String, java.lang.String], void), getExecutor/1893159966=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Executor), size/-1825798970=([java.util.Vector], int), arr-String-init=([], java.lang.String[]), toArray/-464067270=([java.util.Vector, java.lang.Object[]], java.lang.Object[]), cast-from-__Array__Int__String__-to-__Array__Int__var2467__=([java.lang.String[]], java.lang.Object[]), cast-from-__Array__Int__var2467__-to-__Array__Int__String__=([java.lang.Object[]], java.lang.String[]), var2388_executeTargets/1460867299=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Executor, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String[]], void)}
; {var335=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2583=r0, var196=java.util.Vector, var726=r1, var2118=java.lang.Iterable, var467=$r2, var152="ant.project.invoked-targets", var2388=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Executor, var171=$r6, var1088=$i0, var194=$r3, var2467=java.lang.Object, var1134=$r4, var72=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var335, r0=var2583, java.util.Vector=var196, r1=var726, java.lang.Iterable=var2118, $r2=var467, "ant.project.invoked-targets"=var152, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Executor=var2388, $r6=var171, $i0=var1088, $r3=var194, java.lang.Object=var2467, $r4=var1134, $r5=var72}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter0: java.util.Vector;	$r2 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(",", r1);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: void setUserProperty(java.lang.String,java.lang.String)>("ant.project.invoked-targets", $r2);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Executor getExecutor()>();	$i0 = virtualinvoke r1.<java.util.Vector: int size()>();	$r3 = newarray (java.lang.String)[$i0];	$r4 = virtualinvoke r1.<java.util.Vector: java.lang.Object[] toArray(java.lang.Object[])>($r3);	$r5 = (java.lang.String[]) $r4;	interfaceinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Executor: void executeTargets(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String[])>(r0, $r5);	return
;block_num 1