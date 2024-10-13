(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2362 0)
(declare-sort var1119 0)
(declare-sort var1973 0)
(declare-sort var33 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun facade/594480788 (var2362) var1973)
(declare-fun var33_getDefault/1734316640 () String)
(declare-fun setImplementation/1643654972 (var1973 String) void)
(declare-const null-var2362 var2362)
(declare-const null-String String)
(declare-const var1690 var2362) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah 
(assert (not (= var1690 null-var2362)))
(declare-const var2395 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2395 null-String)))
(define-const var1367 String "default") ; Statement: $r1 = "default" 
(assert true)
(define-const var2449 Bool (= var1367 var2395)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade> 
(assert (not (= (ite var2449 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2896 var1973 (facade/594480788 var1690)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade> 
(define-const var3652 String var33_getDefault/1734316640) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.JavahAdapterFactory: java.lang.String getDefault()>() 
(assert true)
;(assert (setImplementation/1643654972 var2896 var3652)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper: void setImplementation(java.lang.String)>($r5) 

(declare-const var2896!1 var1973)
(declare-const var3652!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {facade/594480788=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper), var33_getDefault/1734316640=([], java.lang.String), setImplementation/1643654972=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper, java.lang.String], void)}
; {var2362=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah, var1690=r2, var2395=r0, var1119=null_type, var1367=$r1, var2449=$z0, var1973=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper, var2896=$r4, var33=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.JavahAdapterFactory, var3652=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah=var2362, r2=var1690, r0=var2395, null_type=var1119, $r1=var1367, $z0=var2449, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper=var1973, $r4=var2896, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.JavahAdapterFactory=var33, $r5=var3652}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah;	r0 := @parameter0: java.lang.String;	$r1 = "default";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade>;	$r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.javah.JavahAdapterFactory: java.lang.String getDefault()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper: void setImplementation(java.lang.String)>($r5);	goto [?= return];	return
;block_num 3