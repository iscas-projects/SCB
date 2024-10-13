(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3711 0)
(declare-sort var1074 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun processElement/1983446942 (var3711) void)
(declare-fun currentText/960128408 (var3711) String)
(declare-fun currentElement/960128408 (var3711) String)
(declare-fun inEJBRef/960128408 (var3711) Bool)
(declare-const null-var3711 var3711)
(declare-const null-String String)
(declare-const var2066 var3711) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler 
(assert (not (= var2066 null-var3711)))
(declare-const var2595 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2595 null-String)))
(assert true)
;(assert (processElement/1983446942 var2066)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void processElement()>() 

(declare-const var2066!1 var3711)
(declare-const var2066!2 var3711)
(assert (not (= var2066!2 null-var3711)))
(assert (= (currentText/960128408 var2066!2) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentText> = "" 
(declare-const var2066!3 var3711)
(assert (not (= var2066!3 null-var3711)))
(assert (= (currentElement/960128408 var2066!3) "")) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentElement> = "" 
(assert true)
(define-const var3110 Bool (= var2595 "ejb-ref")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("ejb-ref") 
 ; Statement: if $z0 != 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: boolean inEJBRef> = 0 
(assert (not (= (ite var3110 1 0) 0))) ; Cond: $z0 != 0 
(declare-const var2066!4 var3711)
(assert (not (= var2066!4 null-var3711)))
(assert (= (inEJBRef/960128408 var2066!4) (ite (= 1 0) true false))) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: boolean inEJBRef> = 0 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {processElement/1983446942=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], void), currentText/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.String), currentElement/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.String), inEJBRef/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], boolean)}
; {var3711=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler, var2066=r0, var2595=r1, var1074=null_type, var3110=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler=var3711, r0=var2066, r1=var2595, null_type=var1074, $z0=var3110}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler;	r1 := @parameter0: java.lang.String;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: void processElement()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentText> = "";	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: java.lang.String currentElement> = "";	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("ejb-ref");	if $z0 != 0 goto r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: boolean inEJBRef> = 0;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler: boolean inEJBRef> = 0;	goto [?= return];	return
;block_num 3