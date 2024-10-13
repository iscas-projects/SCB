(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1308 0)
(declare-sort var933 0)
(declare-sort var3993 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var3993-init () var3993)
(declare-fun <init>/875830710 (var3993 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1308 var1308)
(declare-const null-var933 var933)
(declare-const var2568 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2568 null-ClassObject)))
(declare-const var592 var1308) ; Statement: r3 := @parameter1: java.lang.ref.ReferenceQueue 
(assert (not (= var592 null-var1308)))
(declare-const var3860 var933) ; Statement: r4 := @parameter2: java.lang.ref.PhantomReference 
(assert (not (= var3860 null-var933)))
(assert true)
(define-const var3673 String (getName/-1958580599 var2568)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3436 Bool (= var3673 "com.google.javascript.jscomp.jarjar.com.google.common.base.FinalizableReference")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("com.google.javascript.jscomp.jarjar.com.google.common.base.FinalizableReference") 
 ; Statement: if $z0 != 0 goto $r2 = new com.google.javascript.jscomp.jarjar.com.google.common.base.internal.Finalizer 
(assert (not (not (= (ite var3436 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1726 var3993 var3993-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1726 "Expected com.google.common.base.FinalizableReference.")) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Expected com.google.common.base.FinalizableReference.") 

(declare-const var1726!1 var3993)
(declare-const var3260 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), var3993-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2568=r0, var1308=java.lang.ref.ReferenceQueue, var592=r3, var933=java.lang.ref.PhantomReference, var3860=r4, var3673=$r1, var3436=$z0, var3993=java.lang.IllegalArgumentException, var1726=$r16, var3260="Expected com.google.common.base.FinalizableReference."}
; {r0=var2568, java.lang.ref.ReferenceQueue=var1308, r3=var592, java.lang.ref.PhantomReference=var933, r4=var3860, $r1=var3673, $z0=var3436, java.lang.IllegalArgumentException=var3993, $r16=var1726, "Expected com.google.common.base.FinalizableReference."=var3260}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r3 := @parameter1: java.lang.ref.ReferenceQueue;	r4 := @parameter2: java.lang.ref.PhantomReference;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>("com.google.javascript.jscomp.jarjar.com.google.common.base.FinalizableReference");	if $z0 != 0 goto $r2 = new com.google.javascript.jscomp.jarjar.com.google.common.base.internal.Finalizer;	$r16 = new java.lang.IllegalArgumentException;	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Expected com.google.common.base.FinalizableReference.");	throw $r16
;block_num 2