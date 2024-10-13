(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2744 0)
(declare-sort var3005 0)
(declare-sort var905 0)
(declare-sort var1586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var905!class ClassObject)
(declare-fun getResource/413390302 (ClassObject String) var1586)
(declare-const null-String String)
(declare-const null-var3005 var3005)
(declare-const null-var1586 var1586)
(declare-const var2338 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2338 null-String)))
(declare-const var1774 var3005) ; Statement: r0 := @parameter1: java.lang.ClassLoader 
(assert (not (= var1774 null-var3005)))
 ; Statement: if r0 != null goto $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
(assert (not (not (= var1774 null-var3005)))) ; Negate: Cond: r0 != null  
(define-const var3878 ClassObject var905!class) ; Statement: $r7 = class "Lorg/apache/commons/io/IOUtils;" 
(assert true)
(define-const var2561 var1586 (getResource/413390302 var3878 var2338)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>(r1) 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r8 != null goto return $r8 
(assert (not (= var2561 null-var1586))) ; Cond: $r8 != null 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL)}
; {var2338=r1, var2744=null_type, var3005=java.lang.ClassLoader, var1774=r0, var905=org.apache.commons.io.IOUtils, var3878=$r7, var1586=java.net.URL, var2561=$r8}
; {r1=var2338, null_type=var2744, java.lang.ClassLoader=var3005, r0=var1774, org.apache.commons.io.IOUtils=var905, $r7=var3878, java.net.URL=var1586, $r8=var2561}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.ClassLoader;	if r0 != null goto $r8 = virtualinvoke r0.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	$r7 = class "Lorg/apache/commons/io/IOUtils;";	$r8 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>(r1);	goto [?= (branch)];	if $r8 != null goto return $r8;	return $r8
;block_num 4