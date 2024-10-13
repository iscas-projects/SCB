(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2292 0)
(declare-sort var2099 0)
(declare-sort var2141 0)
(declare-sort var1363 0)
(declare-sort var730 0)
(declare-sort var306 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var306_access$200/898562616 () var730)
(declare-const null-var2292 var2292)
(declare-const null-String String)
(declare-const null-var2141 var2141)
(declare-const null-var1363 var1363)
(declare-const var3841 var2292) ; Statement: r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler 
(assert (not (= var3841 null-var2292)))
(declare-const var1614 String) ; Statement: r14 := @parameter0: java.lang.String 
(assert (not (= var1614 null-String)))
(declare-const var1584 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1584 null-String)))
(declare-const var1546 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var1546 null-String)))
(declare-const var2393 var2141) ; Statement: r27 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var2393 null-var2141)))
(declare-const var3079 var1363) ; Statement: r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext 
(assert (not (= var3079 null-var1363)))
(define-const var1779 String "project") ; Statement: $r1 = "project" 
(assert true)
(define-const var1033 Bool (= var1779 var1584)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
(assert (not (= (ite var1033 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3380 Bool (isEmpty/-1285796103 var1614)) ; Statement: $z2 = virtualinvoke r14.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 != 0 goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$200()>() 
(assert (not (= (ite var3380 1 0) 0))) ; Cond: $z2 != 0 
(define-const var3729 var730 var306_access$200/898562616) ; Statement: $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$200()>() 
 ; Statement: return $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var306_access$200/898562616=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler)}
; {var2292=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler, var3841=r26, var1614=r14, var2099=null_type, var1584=r0, var1546=r2, var2141=org.xml.sax.Attributes, var2393=r27, var1363=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext, var3079=r9, var1779=$r1, var1033=$z0, var3380=$z2, var730=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler, var306=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2, var3729=$r25}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler=var2292, r26=var3841, r14=var1614, null_type=var2099, r0=var1584, r2=var1546, org.xml.sax.Attributes=var2141, r27=var2393, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext=var1363, r9=var3079, $r1=var1779, $z0=var1033, $z2=var3380, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler=var730, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2=var306, $r25=var3729}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r26 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$MainHandler;	r14 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r27 := @parameter3: org.xml.sax.Attributes;	r9 := @parameter4: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.AntXMLContext;	$r1 = "project";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>(r2);	$z2 = virtualinvoke r14.<java.lang.String: boolean isEmpty()>();	if $z2 != 0 goto $r25 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$200()>();	$r25 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.helper.ProjectHelper2$AntHandler access$200()>();	return $r25
;block_num 3