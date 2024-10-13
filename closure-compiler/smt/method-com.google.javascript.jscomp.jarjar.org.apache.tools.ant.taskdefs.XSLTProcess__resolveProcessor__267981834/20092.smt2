(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3466 0)
(declare-sort var1115 0)
(declare-sort var2626 0)
(declare-sort var1878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2626-init () var2626)
(declare-fun <init>/205744583 (var2626) void)
(declare-fun cast-from-var2626-to-var1878 (var2626) var1878)
(declare-fun liaison/1286477936 (var3466) var1878)
(declare-const null-var3466 var3466)
(declare-const null-String String)
(declare-const var868 var3466) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess 
(assert (not (= var868 null-var3466)))
(declare-const var665 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var665 null-String)))
(define-const var3902 String "trax") ; Statement: $r1 = "trax" 
(assert true)
(define-const var909 Bool (= var3902 var665)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.Class loadClass(java.lang.String)>(r0) 
(assert (not (= (ite var909 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var189 var2626 var2626-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison 
(assert true)
;(assert (<init>/205744583 var189)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison: void <init>()>() 

(declare-const var189!1 var2626)
(declare-const var868!1 var3466)
(assert (not (= var868!1 null-var3466)))
(assert (= (liaison/1286477936 var868!1) (cast-from-var2626-to-var1878 var189!1))) ; Statement: r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison liaison> = $r10 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2626-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison), <init>/205744583=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison], void), cast-from-var2626-to-var1878=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison), liaison/1286477936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison)}
; {var3466=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var868=r2, var665=r0, var1115=null_type, var3902=$r1, var909=$z0, var2626=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison, var189=$r10, var1878=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var3466, r2=var868, r0=var665, null_type=var1115, $r1=var3902, $z0=var909, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison=var2626, $r10=var189, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison=var1878}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess;	r0 := @parameter0: java.lang.String;	$r1 = "trax";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.Class loadClass(java.lang.String)>(r0);	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.TraXLiaison: void <init>()>();	r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTLiaison liaison> = $r10;	goto [?= return];	return
;block_num 3