(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1723 0)
(declare-sort var3384 0)
(declare-sort var805 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString/-522406933 (var805) String)
(declare-const null-var1723 var1723)
(declare-const null-var3384 var3384)
(declare-const null-var805 var805)
(declare-const var1299 var1723) ; Statement: r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant 
(assert (not (= var1299 null-var1723)))
(declare-const var2611 var3384) ; Statement: r6 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$PropertyType 
(assert (not (= var2611 null-var3384)))
(declare-const var3356 var805) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3356 null-var805)))
(declare-const var1067 var805) ; Statement: r4 := @parameter2: java.lang.Object 
(assert (not (= var1067 null-var805)))
(assert true)
(define-const var1017 String (toString/-522406933 var3356)) ; Statement: r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(define-const var2073 String "basedir") ; Statement: $r2 = "basedir" 
(assert true)
(define-const var446 Bool (= var2073 var1017)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var446 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-522406933=([java.lang.Object], java.lang.String)}
; {var1723=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant, var1299=r8, var3384=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$PropertyType, var2611=r6, var805=java.lang.Object, var3356=r0, var1067=r4, var1017=r1, var2073=$r2, var446=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant=var1723, r8=var1299, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$PropertyType=var3384, r6=var2611, java.lang.Object=var805, r0=var3356, r4=var1067, r1=var1017, $r2=var2073, $z0=var446}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r8 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant;	r6 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Ant$PropertyType;	r0 := @parameter1: java.lang.Object;	r4 := @parameter2: java.lang.Object;	r1 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r2 = "basedir";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	return
;block_num 2