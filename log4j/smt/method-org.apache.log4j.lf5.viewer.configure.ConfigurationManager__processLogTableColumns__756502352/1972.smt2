(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2583 0)
(declare-sort var3433 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3433_iterator/-912451715 (var3433) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2583 var2583)
(declare-const null-var3433 var3433)
(declare-const null-String String)
(declare-const var1841 var2583) ; Statement: r5 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var1841 null-var2583)))
(declare-const var1014 var3433) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var1014 null-var3433)))
(declare-const var755 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var755 null-String)))
(assert true)
;(assert (append/1560614132 var755 "\t<logtablecolumns>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t<logtablecolumns>\r\n") 
(declare-const var755!1 String)
(assert (str.prefixof var755 var755!1))
(define-const var575 Iterator (var3433_iterator/-912451715 var1014)) ; Statement: r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3309 Bool (Iterator_hasNext/-1669924200 var575)) ; Statement: $z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</logtablecolumns>\r\n") 
(assert (= (ite var3309 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/1560614132 var755!1 "\t</logtablecolumns>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</logtablecolumns>\r\n") 
(declare-const var755!2 String)
(assert (str.prefixof var755!1 var755!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var3433_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2583=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var1841=r5, var3433=java.util.List, var1014=r1, var755=r0, var575=r2, var3309=$z0}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var2583, r5=var1841, java.util.List=var3433, r1=var1014, r0=var755, r2=var575, $z0=var3309}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r5 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r1 := @parameter0: java.util.List;	r0 := @parameter1: java.lang.StringBuffer;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t<logtablecolumns>\r\n");	r2 = interfaceinvoke r1.<java.util.List: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r2.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</logtablecolumns>\r\n");	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</logtablecolumns>\r\n");	return
;block_num 3