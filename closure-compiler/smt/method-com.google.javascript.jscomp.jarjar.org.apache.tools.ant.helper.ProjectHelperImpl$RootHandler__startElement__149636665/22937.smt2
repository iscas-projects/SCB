(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var538 0)
(declare-sort var297 0)
(declare-sort var3332 0)
(declare-sort var3800 0)
(declare-sort var1158 0)
(declare-sort var530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3800-init () var3800)
(declare-fun helperImpl/-2078893078 (var538) var1158)
(declare-fun var1158_access$100/-2046293021 (var1158) var530)
(declare-fun <init>/723551348 (var3800 String var530) void)
(declare-const null-var538 var538)
(declare-const null-String String)
(declare-const null-var3332 var3332)
(declare-const var3221 var538) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler 
(assert (not (= var3221 null-var538)))
(declare-const var3541 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3541 null-String)))
(declare-const var2375 var3332) ; Statement: r8 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var2375 null-var3332)))
(define-const var1787 String "project") ; Statement: $r1 = "project" 
(assert true)
(define-const var694 Bool (= var1787 var3541)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new org.xml.sax.SAXParseException 
(assert (= (ite var694 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2408 var3800 var3800-init) ; Statement: $r2 = new org.xml.sax.SAXParseException 
(define-const var3415 var1158 (helperImpl/-2078893078 var3221)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl> 
(define-const var198 var530 (var1158_access$100/-2046293021 var3415)) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: org.xml.sax.Locator access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r4) 
(assert true)
;(assert (<init>/723551348 var2408 "Config file is not of expected XML type" var198)) ; Statement: specialinvoke $r2.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>("Config file is not of expected XML type", $r5) 

(declare-const var2408!1 var3800)
(declare-const var3678 String)
(declare-const var198!1 var530)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3800-init=([], org.xml.sax.SAXParseException), helperImpl/-2078893078=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl), var1158_access$100/-2046293021=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl], org.xml.sax.Locator), <init>/723551348=([org.xml.sax.SAXParseException, java.lang.String, org.xml.sax.Locator], void)}
; {var538=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler, var3221=r3, var3541=r0, var297=null_type, var3332=org.xml.sax.AttributeList, var2375=r8, var1787=$r1, var694=$z0, var3800=org.xml.sax.SAXParseException, var2408=$r2, var1158=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl, var3415=$r4, var530=org.xml.sax.Locator, var198=$r5, var3678="Config file is not of expected XML type"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler=var538, r3=var3221, r0=var3541, null_type=var297, org.xml.sax.AttributeList=var3332, r8=var2375, $r1=var1787, $z0=var694, org.xml.sax.SAXParseException=var3800, $r2=var2408, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl=var1158, $r4=var3415, org.xml.sax.Locator=var530, $r5=var198, "Config file is not of expected XML type"=var3678}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler;	r0 := @parameter0: java.lang.String;	r8 := @parameter1: org.xml.sax.AttributeList;	$r1 = "project";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new org.xml.sax.SAXParseException;	$r2 = new org.xml.sax.SAXParseException;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl$RootHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl helperImpl>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl: org.xml.sax.Locator access$100(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelperImpl)>($r4);	specialinvoke $r2.<org.xml.sax.SAXParseException: void <init>(java.lang.String,org.xml.sax.Locator)>("Config file is not of expected XML type", $r5);	throw $r2
;block_num 2