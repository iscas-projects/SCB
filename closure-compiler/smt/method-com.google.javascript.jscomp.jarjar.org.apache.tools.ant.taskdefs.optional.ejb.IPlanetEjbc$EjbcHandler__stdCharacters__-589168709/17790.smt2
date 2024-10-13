(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3001 0)
(declare-sort var3078 0)
(declare-sort var1396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentLoc/-1370994396 (var3001) String)
(declare-fun this$0/-1370994396 (var3001) var1396)
(declare-fun var1396_access$102/604346562 (var1396 String) String)
(declare-const null-var3001 var3001)
(declare-const null-String String)
(declare-const var1234 var3001) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var1234 null-var3001)))
(declare-const var3850 String) ; Statement: r43 := @parameter0: java.lang.String 
(assert (not (= var3850 null-String)))
(define-const var2220 String "\u005cejb-jar\u005cdisplay-name") ; Statement: $r2 = "\\ejb-jar\\display-name" 
(define-const var2723 String (currentLoc/-1370994396 var1234)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var3056 Bool (= var2220 var2723)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r3 = new java.lang.StringBuilder 
(assert (not (= (ite var3056 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1890 var1396 (this$0/-1370994396 var1234)) ; Statement: $r54 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc this$0> 
;(assert (var1396_access$102/604346562 var1890 var3850)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String access$102(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc,java.lang.String)>($r54, r43) 

(declare-const var1890!1 var1396)
(declare-const var3850!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentLoc/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), this$0/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc), var1396_access$102/604346562=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String], java.lang.String)}
; {var3001=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var1234=r0, var3850=r43, var3078=null_type, var2220=$r2, var2723=$r1, var3056=$z0, var1396=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var1890=$r54}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var3001, r0=var1234, r43=var3850, null_type=var3078, $r2=var2220, $r1=var2723, $z0=var3056, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var1396, $r54=var1890}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r43 := @parameter0: java.lang.String;	$r2 = "\\ejb-jar\\display-name";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r3 = new java.lang.StringBuilder;	$r54 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc this$0>;	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String access$102(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc,java.lang.String)>($r54, r43);	return
;block_num 2