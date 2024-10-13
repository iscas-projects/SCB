(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3894 0)
(declare-sort var3751 0)
(declare-sort var967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun handleTarget/1519711447 (var3894 String var967) void)
(declare-const null-var3894 var3894)
(declare-const null-String String)
(declare-const null-var967 var967)
(declare-const var133 var3894) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler 
(assert (not (= var133 null-var3894)))
(declare-const var2761 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2761 null-String)))
(declare-const var595 var967) ; Statement: r5 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var595 null-var967)))
(define-const var3953 String "target") ; Statement: $r1 = "target" 
(assert true)
(define-const var2366 Bool (= var3953 var2761)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(assert (not (= (ite var2366 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (handleTarget/1519711447 var133 var2761 var595)) ; Statement: specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: void handleTarget(java.lang.String,org.xml.sax.AttributeList)>(r0, r5) 

(declare-const var133!1 var3894)
(declare-const var2761!1 String)
(declare-const var595!1 var967)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {handleTarget/1519711447=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler, java.lang.String, org.xml.sax.AttributeList], void)}
; {var3894=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler, var133=r2, var2761=r0, var3751=null_type, var967=org.xml.sax.AttributeList, var595=r5, var3953=$r1, var2366=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler=var3894, r2=var133, r0=var2761, null_type=var3751, org.xml.sax.AttributeList=var967, r5=var595, $r1=var3953, $z0=var2366}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: org.xml.sax.AttributeList;	$r1 = "target";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	specialinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: void handleTarget(java.lang.String,org.xml.sax.AttributeList)>(r0, r5);	goto [?= return];	return
;block_num 3