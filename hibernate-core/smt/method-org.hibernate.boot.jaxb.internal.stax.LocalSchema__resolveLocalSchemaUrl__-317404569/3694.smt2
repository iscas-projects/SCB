(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3429 0)
(declare-sort var2855 0)
(declare-sort var282 0)
(declare-sort var2051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2855!class ClassObject)
(declare-fun getClassLoader/-563698447 (ClassObject) var282)
(declare-fun getResource/282459787 (var282 String) var2051)
(declare-const null-String String)
(declare-const null-var2051 var2051)
(declare-const var3377 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3377 null-String)))
(define-const var2863 ClassObject var2855!class) ; Statement: $r0 = class "Lorg/hibernate/boot/jaxb/internal/stax/LocalSchema;" 
(assert true)
(define-const var2701 var282 (getClassLoader/-563698447 var2863)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
(assert true)
(define-const var1670 var2051 (getResource/282459787 var2701 var3377)) ; Statement: r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var1670 null-var2051))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader), getResource/282459787=([java.lang.ClassLoader, java.lang.String], java.net.URL)}
; {var3377=r1, var3429=null_type, var2855=org.hibernate.boot.jaxb.internal.stax.LocalSchema, var2863=$r0, var282=java.lang.ClassLoader, var2701=$r2, var2051=java.net.URL, var1670=r3}
; {r1=var3377, null_type=var3429, org.hibernate.boot.jaxb.internal.stax.LocalSchema=var2855, $r0=var2863, java.lang.ClassLoader=var282, $r2=var2701, java.net.URL=var2051, r3=var1670}
;seq 
;cnt {}
;stmts r1 := @parameter0: java.lang.String;	$r0 = class "Lorg/hibernate/boot/jaxb/internal/stax/LocalSchema;";	$r2 = virtualinvoke $r0.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	r3 = virtualinvoke $r2.<java.lang.ClassLoader: java.net.URL getResource(java.lang.String)>(r1);	if r3 != null goto return r3;	return r3
;block_num 2