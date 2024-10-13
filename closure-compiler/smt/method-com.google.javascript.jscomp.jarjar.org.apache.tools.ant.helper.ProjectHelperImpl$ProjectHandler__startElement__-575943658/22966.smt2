(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2124 0)
(declare-sort var3616 0)
(declare-sort var1926 0)
(declare-sort var2103 0)
(declare-sort var2351 0)
(declare-sort var3634 0)
(declare-sort var1415 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun helperImpl/2111030186 (var2351) var2103)
(declare-fun cast-from-var2124-to-var2351 (var2124) var2351)
(declare-fun var2103_access$600/-1515651127 (var2103) var3634)
(declare-fun var2103_access$700/580088700 (var2103 var1415 var3634 String var1926) void)
(declare-fun cast-from-var2124-to-var1415 (var2124) var1415)
(declare-const null-var2124 var2124)
(declare-const null-String String)
(declare-const null-var1926 var1926)
(declare-const var1366 var2124) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler 
(assert (not (= var1366 null-var2124)))
(declare-const var2965 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2965 null-String)))
(declare-const var1386 var1926) ; Statement: r5 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var1386 null-var1926)))
(define-const var2144 String "target") ; Statement: $r1 = "target" 
(assert true)
(define-const var532 Bool (= var2144 var2965)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(assert (= (ite var532 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2911 var2103 (helperImpl/2111030186 (cast-from-var2124-to-var2351 var1366))) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var3695 var2103 (helperImpl/2111030186 (cast-from-var2124-to-var2351 var1366))) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var2502 var3634 (var2103_access$600/-1515651127 var3695)) ; Statement: $r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target access$600(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r3) 
;(assert (var2103_access$700/580088700 var2911 (cast-from-var2124-to-var1415 var1366) var2502 var2965 var1386)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: void access$700(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl,org.xml.sax.DocumentHandler,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target,java.lang.String,org.xml.sax.AttributeList)>($r4, r2, $r6, r0, r5) 

(declare-const var2911!1 var2103)
(declare-const var1366!1 var2124)
(declare-const var2502!1 var3634)
(declare-const var2965!1 String)
(declare-const var1386!1 var1926)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {helperImpl/2111030186=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl), cast-from-var2124-to-var2351=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler), var2103_access$600/-1515651127=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), var2103_access$700/580088700=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, org.xml.sax.DocumentHandler, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, java.lang.String, org.xml.sax.AttributeList], void), cast-from-var2124-to-var1415=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler], org.xml.sax.DocumentHandler)}
; {var2124=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler, var1366=r2, var2965=r0, var3616=null_type, var1926=org.xml.sax.AttributeList, var1386=r5, var2144=$r1, var532=$z0, var2103=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, var2351=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler, var2911=$r4, var3695=$r3, var3634=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var2502=$r6, var1415=org.xml.sax.DocumentHandler}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler=var2124, r2=var1366, r0=var2965, null_type=var3616, org.xml.sax.AttributeList=var1926, r5=var1386, $r1=var2144, $z0=var532, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl=var2103, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$AbstractHandler=var2351, $r4=var2911, $r3=var3695, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var3634, $r6=var2502, org.xml.sax.DocumentHandler=var1415}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler;	r0 := @parameter0: java.lang.String;	r5 := @parameter1: org.xml.sax.AttributeList;	$r1 = "target";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$ProjectHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r6 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target access$600(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r3);	staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: void access$700(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl,org.xml.sax.DocumentHandler,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target,java.lang.String,org.xml.sax.AttributeList)>($r4, r2, $r6, r0, r5);	return
;block_num 3