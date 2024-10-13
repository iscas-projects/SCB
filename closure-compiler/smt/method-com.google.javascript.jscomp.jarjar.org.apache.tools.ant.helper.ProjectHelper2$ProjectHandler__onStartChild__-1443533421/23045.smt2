(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var919 0)
(declare-sort var2691 0)
(declare-sort var578 0)
(declare-sort var2771 0)
(declare-sort var1630 0)
(declare-sort var2264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2264_access$400/955820918 () var1630)
(declare-const null-var919 var919)
(declare-const null-String String)
(declare-const null-var578 var578)
(declare-const null-var2771 var2771)
(declare-const var1790 var919) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler 
(assert (not (= var1790 null-var919)))
(declare-const var2616 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2616 null-String)))
(declare-const var3733 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3733 null-String)))
(declare-const var2795 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var2795 null-String)))
(declare-const var3292 var578) ; Statement: r6 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var3292 null-var578)))
(declare-const var1746 var2771) ; Statement: r7 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var1746 null-var2771)))
(define-const var3207 String "target") ; Statement: $r1 = "target" 
(assert true)
(define-const var3332 Bool (= var3207 var3733)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>() 
(assert (not (not (= (ite var3332 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2407 String "extension-point") ; Statement: $r3 = "extension-point" 
(assert true)
(define-const var1410 Bool (= var2407 var3733)) ; Statement: $z3 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z3 == 0 goto $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$400()>() 
(assert (= (ite var1410 1 0) 0)) ; Cond: $z3 == 0 
(define-const var3163 var1630 var2264_access$400/955820918) ; Statement: $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$400()>() 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2264_access$400/955820918=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler)}
; {var919=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler, var1790=r4, var2616=r2, var2691=null_type, var3733=r0, var2795=r5, var578=org.xml.sax.Attributes, var3292=r6, var2771=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var1746=r7, var3207=$r1, var3332=$z0, var2407=$r3, var1410=$z3, var1630=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler, var2264=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, var3163=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler=var919, r4=var1790, r2=var2616, null_type=var2691, r0=var3733, r5=var2795, org.xml.sax.Attributes=var578, r6=var3292, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var2771, r7=var1746, $r1=var3207, $z0=var3332, $r3=var2407, $z3=var1410, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler=var1630, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2=var2264, $r8=var3163}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$ProjectHandler;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	r6 := @parameter3: org.xml.sax.Attributes;	r7 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	$r1 = "target";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto $z1 = virtualinvoke r2.<java.lang.String: boolean isEmpty()>();	$r3 = "extension-point";	$z3 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z3 == 0 goto $r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$400()>();	$r8 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$400()>();	return $r8
;block_num 4