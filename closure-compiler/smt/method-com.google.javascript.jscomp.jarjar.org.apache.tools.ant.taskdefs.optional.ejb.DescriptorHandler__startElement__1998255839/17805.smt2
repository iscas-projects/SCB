(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3189 0)
(declare-sort var976 0)
(declare-sort var3704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentElement/960128408 (var3189) String)
(declare-fun currentText/960128408 (var3189) String)
(declare-fun inEJBRef/960128408 (var3189) Bool)
(declare-const null-var3189 var3189)
(declare-const null-String String)
(declare-const null-var3704 var3704)
(declare-const var1628 var3189) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler 
(assert (not (= var1628 null-var3189)))
(declare-const var998 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var998 null-String)))
(declare-const var1794 var3704) ; Statement: r9 := @parameter1: org.xml.sax.AttributeList 
(assert (not (= var1794 null-var3704)))
(declare-const var1628!1 var3189)
(assert (not (= var1628!1 null-var3189)))
(assert (= (currentElement/960128408 var1628!1) var998)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentElement> = r1 
(declare-const var1628!2 var3189)
(assert (not (= var1628!2 null-var3189)))
(assert (= (currentText/960128408 var1628!2) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentText> = "" 
(define-const var1689 String "ejb-ref") ; Statement: $r2 = "ejb-ref" 
(assert true)
(define-const var3363 Bool (= var1689 var998)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: boolean inEJBRef> = 1 
(assert (not (= (ite var3363 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var1628!3 var3189)
(assert (not (= var1628!3 null-var3189)))
(assert (= (inEJBRef/960128408 var1628!3) (ite (= 1 1) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: boolean inEJBRef> = 1 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentElement/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.String), currentText/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.String), inEJBRef/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], boolean)}
; {var3189=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler, var1628=r0, var998=r1, var976=null_type, var3704=org.xml.sax.AttributeList, var1794=r9, var1689=$r2, var3363=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler=var3189, r0=var1628, r1=var998, null_type=var976, org.xml.sax.AttributeList=var3704, r9=var1794, $r2=var1689, $z0=var3363}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler;	r1 := @parameter0: java.lang.String;	r9 := @parameter1: org.xml.sax.AttributeList;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentElement> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentText> = "";	$r2 = "ejb-ref";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: boolean inEJBRef> = 1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: boolean inEJBRef> = 1;	goto [?= return];	return
;block_num 3