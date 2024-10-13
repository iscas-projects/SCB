(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3047 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3047 var3047)
(declare-const null-String String)
(declare-const var1504 var3047) ; Statement: r1 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var1504 null-var3047)))
(declare-const var1609 String) ; Statement: r0 := @parameter0: java.lang.StringBuffer 
(assert (not (= var1609 null-String)))
(assert true)
;(assert (append/1560614132 var1609 "<?xml version=\u00221.0\u0022 encoding=\u0022UTF-8\u0022 ?>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n") 
(declare-const var1609!1 String)
(assert (str.prefixof var1609 var1609!1))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer)}
; {var3047=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var1504=r1, var1609=r0}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var3047, r1=var1504, r0=var1609}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1}
;stmts r1 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r0 := @parameter0: java.lang.StringBuffer;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n");	return
;block_num 1