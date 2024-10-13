(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2218 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2218 var2218)
(declare-const null-String String)
(declare-const var2266 var2218) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var2266 null-var2218)))
(declare-const var3530 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var3530 null-String)))
(assert true)
;(assert (append/1560614132 var3530 "</configuration>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</configuration>\r\n") 
(declare-const var3530!1 String)
(assert (str.prefixof var3530 var3530!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var2218=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var2266=r1, var3530=r0}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var2218, r1=var2266, r0=var3530}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r0 := @parameter0: java.lang.StringBuffer;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("</configuration>\r\n");	return
;block_num 1