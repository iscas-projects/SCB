(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var190 0)
(declare-sort var2958 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var190 var190)
(declare-const null-String String)
(declare-const var3529 var190) ; Statement: r1 := @this: org.apache.log4j.xml.Log4jEntityResolver 
(assert (not (= var3529 null-var190)))
(declare-const var1057 String) ; Statement: r11 := @parameter0: java.lang.String 
(assert (not (= var1057 null-String)))
(declare-const var3763 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3763 null-String)))
(assert true)
(define-const var1115 Bool (endsWith/985337093 var3763 "log4j.dtd")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("log4j.dtd") 
 ; Statement: if $z0 != 0 goto $r13 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert (not (not (= (ite var1115 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2750 String "-//APACHE//DTD LOG4J 1.2//EN") ; Statement: $r12 = "-//APACHE//DTD LOG4J 1.2//EN" 
(assert true)
(define-const var897 Bool (= var2750 var1057)) ; Statement: $z1 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>(r11) 
 ; Statement: if $z1 == 0 goto return null 
(assert (= (ite var897 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var190=org.apache.log4j.xml.Log4jEntityResolver, var3529=r1, var1057=r11, var2958=null_type, var3763=r0, var1115=$z0, var2750=$r12, var897=$z1}
; {org.apache.log4j.xml.Log4jEntityResolver=var190, r1=var3529, r11=var1057, null_type=var2958, r0=var3763, $z0=var1115, $r12=var2750, $z1=var897}
;seq <java.lang.String: boolean endsWith(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.Log4jEntityResolver;	r11 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>("log4j.dtd");	if $z0 != 0 goto $r13 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r12 = "-//APACHE//DTD LOG4J 1.2//EN";	$z1 = virtualinvoke $r12.<java.lang.String: boolean equals(java.lang.Object)>(r11);	if $z1 == 0 goto return null;	return null
;block_num 3