(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2026 0)
(declare-sort var1885 0)
(declare-sort var845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1885_keySet/-712633290 (var1885) var845)
(declare-fun var845_iterator/1911472585 (var845) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2026 var2026)
(declare-const null-var1885 var1885)
(declare-const null-String String)
(declare-const var1859 var2026) ; Statement: r8 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var1859 null-var2026)))
(declare-const var2282 var1885) ; Statement: r1 := @parameter0: java.util.Map 
(assert (not (= var2282 null-var1885)))
(declare-const var1783 String) ; Statement: r0 := @parameter1: java.lang.StringBuffer 
(assert (not (= var1783 null-String)))
(assert true)
;(assert (append/1560614132 var1783 "\t<loglevels>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t<loglevels>\r\n") 
(declare-const var1783!1 String)
(assert (str.prefixof var1783 var1783!1))
(define-const var1349 var845 (var1885_keySet/-712633290 var2282)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map: java.util.Set keySet()>() 
(define-const var1459 Iterator (var845_iterator/1911472585 var1349)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3149 Bool (Iterator_hasNext/-1669924200 var1459)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</loglevels>\r\n") 
(assert (= (ite var3149 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/1560614132 var1783!1 "\t</loglevels>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</loglevels>\r\n") 
(declare-const var1783!2 String)
(assert (str.prefixof var1783!1 var1783!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var1885_keySet/-712633290=([java.util.Map], java.util.Set), var845_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2026=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var1859=r8, var1885=java.util.Map, var2282=r1, var1783=r0, var845=java.util.Set, var1349=$r2, var1459=r3, var3149=$z0}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var2026, r8=var1859, java.util.Map=var1885, r1=var2282, r0=var1783, java.util.Set=var845, $r2=var1349, r3=var1459, $z0=var3149}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r8 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r1 := @parameter0: java.util.Map;	r0 := @parameter1: java.lang.StringBuffer;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t<loglevels>\r\n");	$r2 = interfaceinvoke r1.<java.util.Map: java.util.Set keySet()>();	r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</loglevels>\r\n");	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</loglevels>\r\n");	return
;block_num 3