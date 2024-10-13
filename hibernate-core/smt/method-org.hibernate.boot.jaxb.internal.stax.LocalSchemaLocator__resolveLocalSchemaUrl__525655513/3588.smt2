(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var434 0)
(declare-sort var3771 0)
(declare-sort var1414 0)
(declare-sort var1746 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3771!class ClassObject)
(declare-fun getClassLoader/-563698447 (ClassObject) var1414)
(declare-fun getResource/282459787 (var1414 String) var1746)
(declare-const null-String String)
(declare-const null-var1746 var1746)
(declare-const var2909 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2909 null-String)))
(define-const var3150 ClassObject var3771!class) ; Statement: $r0 = class "Lorg/hibernate/boot/jaxb/internal/stax/LocalSchemaLocator;" 
(assert true)
(define-const var2156 var1414 (getClassLoader/-563698447 var3150)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
(define-const var2087 var1746 (getResource/282459787 var2156 var2909)) ; Statement: r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var2087 null-var1746))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL)}
; {var2909=r1, var434=null_type, var3771=org.hibernate.boot.jaxb.internal.stax.LocalSchemaLocator, var3150=$r0, var1414=java.lang.ClassLoader, var2156=$r2, var1746=java.net.URL, var2087=r3}
; {r1=var2909, null_type=var434, org.hibernate.boot.jaxb.internal.stax.LocalSchemaLocator=var3771, $r0=var3150, java.lang.ClassLoader=var1414, $r2=var2156, java.net.URL=var1746, r3=var2087}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.String;	$r0 = class "Lorg/hibernate/boot/jaxb/internal/stax/LocalSchemaLocator;";	$r2 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	if r3 != null goto return r3;	return r3
;block_num 2