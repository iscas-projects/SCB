(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3063 0)
(declare-sort var955 0)
(declare-sort var3516 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var955_keySet/-712633290 (var955) var3516)
(declare-fun var3516_iterator/1911472585 (var3516) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var3063 var3063)
(declare-const null-var955 var955)
(declare-const null-String String)
(declare-const var3830 var3063) ; Statement: r9 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager 
(assert (not (= var3830 null-var3063)))
(declare-const var3815 var955) ; Statement: r1 := @parameter0: java.util.Map 
(assert (not (= var3815 null-var955)))
(declare-const var148 var955) ; Statement: r6 := @parameter1: java.util.Map 
(assert (not (= var148 null-var955)))
(declare-const var3895 String) ; Statement: r0 := @parameter2: java.lang.StringBuffer 
(assert (not (= var3895 null-String)))
(assert true)
;(assert (append/1560614132 var3895 "\t<loglevelcolors>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t<loglevelcolors>\r\n") 
(declare-const var3895!1 String)
(assert (str.prefixof var3895 var3895!1))
(define-const var1626 var3516 (var955_keySet/-712633290 var3815)) ; Statement: $r2 = interfaceinvoke r1.<java.util.Map: java.util.Set keySet()>() 
(define-const var1345 Iterator (var3516_iterator/1911472585 var1626)) ; Statement: r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var3682 Bool (Iterator_hasNext/-1669924200 var1345)) ; Statement: $z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</loglevelcolors>\r\n") 
(assert (= (ite var3682 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (append/1560614132 var3895!1 "\t</loglevelcolors>\r\n")) ; Statement: virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</loglevelcolors>\r\n") 
(declare-const var3895!2 String)
(assert (str.prefixof var3895!1 var3895!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), var955_keySet/-712633290=([java.util.Map], java.util.Set), var3516_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var3063=org.apache.log4j.lf5.viewer.configure.ConfigurationManager, var3830=r9, var955=java.util.Map, var3815=r1, var148=r6, var3895=r0, var3516=java.util.Set, var1626=$r2, var1345=r3, var3682=$z0}
; {org.apache.log4j.lf5.viewer.configure.ConfigurationManager=var3063, r9=var3830, java.util.Map=var955, r1=var3815, r6=var148, r0=var3895, java.util.Set=var3516, $r2=var1626, r3=var1345, $z0=var3682}
;seq <java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2}
;stmts r9 := @this: org.apache.log4j.lf5.viewer.configure.ConfigurationManager;	r1 := @parameter0: java.util.Map;	r6 := @parameter1: java.util.Map;	r0 := @parameter2: java.lang.StringBuffer;	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t<loglevelcolors>\r\n");	$r2 = interfaceinvoke r1.<java.util.Map: java.util.Set keySet()>();	r3 = interfaceinvoke $r2.<java.util.Set: java.util.Iterator iterator()>();	$z0 = interfaceinvoke r3.<java.util.Iterator: boolean hasNext()>();	if $z0 == 0 goto virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</loglevelcolors>\r\n");	virtualinvoke r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\t</loglevelcolors>\r\n");	return
;block_num 3