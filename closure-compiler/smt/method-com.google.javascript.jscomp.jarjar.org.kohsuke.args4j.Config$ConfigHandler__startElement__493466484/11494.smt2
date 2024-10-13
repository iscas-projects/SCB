(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3781 0)
(declare-sort var3344 0)
(declare-sort var1966 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3781 var3781)
(declare-const null-String String)
(declare-const null-var1966 var1966)
(declare-const var245 var3781) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Config$ConfigHandler 
(assert (not (= var245 null-var3781)))
(declare-const var1103 String) ; Statement: r29 := @parameter0: java.lang.String 
(assert (not (= var1103 null-String)))
(declare-const var838 String) ; Statement: r30 := @parameter1: java.lang.String 
(assert (not (= var838 null-String)))
(declare-const var2390 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var2390 null-String)))
(declare-const var2083 var1966) ; Statement: r3 := @parameter3: org.xml.sax.Attributes 
(assert (not (= var2083 null-var1966)))
(assert true)
(define-const var1591 Bool (= var2390 "option")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("option") 
 ; Statement: if $z0 != 0 goto $r2 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement 
(assert (not (not (= (ite var1591 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1728 Bool (= var2390 "argument")) ; Statement: $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("argument") 
 ; Statement: if $z4 == 0 goto return 
(assert (= (ite var1728 1 0) 0)) ; Cond: $z4 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3781=com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Config$ConfigHandler, var245=r1, var1103=r29, var3344=null_type, var838=r30, var2390=r0, var1966=org.xml.sax.Attributes, var2083=r3, var1591=$z0, var1728=$z4}
; {com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Config$ConfigHandler=var3781, r1=var245, r29=var1103, null_type=var3344, r30=var838, r0=var2390, org.xml.sax.Attributes=var1966, r3=var2083, $z0=var1591, $z4=var1728}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.Config$ConfigHandler;	r29 := @parameter0: java.lang.String;	r30 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r3 := @parameter3: org.xml.sax.Attributes;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("option");	if $z0 != 0 goto $r2 = new com.google.javascript.jscomp.jarjar.org.kohsuke.args4j.spi.ConfigElement;	$z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("argument");	if $z4 == 0 goto return;	return
;block_num 3