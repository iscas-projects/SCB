(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1356 0)
(declare-sort var2779 0)
(declare-sort var299 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var299-init () var299)
(declare-fun <init>/1087086210 (var299 String) void)
(declare-const null-var1356 var1356)
(declare-const null-String String)
(declare-const var3151 var1356) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1 
(assert (not (= var3151 null-var1356)))
(declare-const var540 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var540 null-String)))
(assert true)
(define-const var2298 Bool (= var540 "NoPermissionsInvoker")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("NoPermissionsInvoker") 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.ClassNotFoundException 
(assert (= (ite var2298 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3088 var299 var299-init) ; Statement: $r1 = new java.lang.ClassNotFoundException 
(assert true)
;(assert (<init>/1087086210 var3088 var540)) ; Statement: specialinvoke $r1.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r0) 

(declare-const var3088!1 var299)
(declare-const var540!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var299-init=([], java.lang.ClassNotFoundException), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var1356=jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1, var3151=r2, var540=r0, var2779=null_type, var2298=$z0, var299=java.lang.ClassNotFoundException, var3088=$r1}
; {jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1=var1356, r2=var3151, r0=var540, null_type=var2779, $z0=var2298, java.lang.ClassNotFoundException=var299, $r1=var3088}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.linker.JavaAdapterServices$1$1;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("NoPermissionsInvoker");	if $z0 == 0 goto $r1 = new java.lang.ClassNotFoundException;	$r1 = new java.lang.ClassNotFoundException;	specialinvoke $r1.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r0);	throw $r1
;block_num 2