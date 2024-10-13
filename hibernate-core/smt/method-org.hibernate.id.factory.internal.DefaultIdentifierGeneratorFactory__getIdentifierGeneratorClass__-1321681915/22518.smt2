(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2332 0)
(declare-sort var2772 0)
(declare-sort var413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var413-init () var413)
(declare-fun <init>/-630064361 (var413 String) void)
(declare-const null-var2332 var2332)
(declare-const null-String String)
(declare-const var3194 var2332) ; Statement: r3 := @this: org.hibernate.id.factory.internal.DefaultIdentifierGeneratorFactory 
(assert (not (= var3194 null-var2332)))
(declare-const var2234 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2234 null-String)))
(define-const var3067 String "hilo") ; Statement: $r1 = "hilo" 
(assert true)
(define-const var3057 Bool (= var3067 var2234)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "native" 
(assert (not (= (ite var3057 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2566 var413 var413-init) ; Statement: $r11 = new java.lang.UnsupportedOperationException 
(assert true)
;(assert (<init>/-630064361 var2566 "Support for \u0027hilo\u0027 generator has been removed")) ; Statement: specialinvoke $r11.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>("Support for \'hilo\' generator has been removed") 

(declare-const var2566!1 var413)
(declare-const var2 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var413-init=([], java.lang.UnsupportedOperationException), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2332=org.hibernate.id.factory.internal.DefaultIdentifierGeneratorFactory, var3194=r3, var2234=r0, var2772=null_type, var3067=$r1, var3057=$z0, var413=java.lang.UnsupportedOperationException, var2566=$r11, var2="Support for \'hilo\' generator has been removed"}
; {org.hibernate.id.factory.internal.DefaultIdentifierGeneratorFactory=var2332, r3=var3194, r0=var2234, null_type=var2772, $r1=var3067, $z0=var3057, java.lang.UnsupportedOperationException=var413, $r11=var2566, "Support for \'hilo\' generator has been removed"=var2}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: org.hibernate.id.factory.internal.DefaultIdentifierGeneratorFactory;	r0 := @parameter0: java.lang.String;	$r1 = "hilo";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "native";	$r11 = new java.lang.UnsupportedOperationException;	specialinvoke $r11.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>("Support for \'hilo\' generator has been removed");	throw $r11
;block_num 2