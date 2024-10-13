(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3715 0)
(declare-sort var1698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3715_getProperty/258823597 (String) String)
(declare-fun var1698-init () var1698)
(declare-fun <init>/377428 (var1698) void)
(define-const var1994 String "true") ; Statement: $r1 = "true" 
(define-const var2686 String (var3715_getProperty/258823597 "ant.argument-processor-repo.debug")) ; Statement: $r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.argument-processor-repo.debug") 
(assert true)
(define-const var2055 Bool (= var1994 var2686)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>($r0) 
(define-const var2410 Bool var2055) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: boolean DEBUG> = $z0 
(define-const var1410 var1698 var1698-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry 
(assert true)
;(assert (<init>/377428 var1410)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: void <init>()>() 

(declare-const var1410!1 var1698)
(define-const var3722 var1698 var1410!1) ; Statement: <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry instance> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3715_getProperty/258823597=([java.lang.String], java.lang.String), var1698-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry), <init>/377428=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry], void)}
; {var1994=$r1, var3715=java.lang.System, var2686=$r0, var2055=$z0, var2410=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: boolean DEBUG>, var1698=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry, var1410=$r2, var3722=<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry instance>}
; {$r1=var1994, java.lang.System=var3715, $r0=var2686, $z0=var2055, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: boolean DEBUG>=var2410, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry=var1698, $r2=var1410, <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry instance>=var3722}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r1 = "true";	$r0 = staticinvoke <java.lang.System: java.lang.String getProperty(java.lang.String)>("ant.argument-processor-repo.debug");	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>($r0);	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: boolean DEBUG> = $z0;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: void <init>()>();	<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ArgumentProcessorRegistry instance> = $r2;	return
;block_num 1