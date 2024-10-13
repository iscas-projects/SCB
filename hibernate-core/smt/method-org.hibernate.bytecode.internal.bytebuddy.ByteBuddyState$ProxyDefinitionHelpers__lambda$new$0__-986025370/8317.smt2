(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1736 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1736_getName/901289460 (var1736) String)
(declare-const null-var1736 var1736)
(declare-const var1949 var1736) ; Statement: r0 := @parameter0: net.bytebuddy.description.type.TypeDescription 
(assert (not (= var1949 null-var1736)))
(define-const var3002 String "groovy.lang.MetaClass") ; Statement: $r2 = "groovy.lang.MetaClass" 
(define-const var2161 String (var1736_getName/901289460 var1949)) ; Statement: $r1 = interfaceinvoke r0.<net.bytebuddy.description.type.TypeDescription: java.lang.String getName()>() 
(assert true)
(define-const var170 Bool (= var3002 var2161)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1736_getName/901289460=([net.bytebuddy.description.type.TypeDescription], java.lang.String)}
; {var1736=net.bytebuddy.description.type.TypeDescription, var1949=r0, var3002=$r2, var2161=$r1, var170=$z0}
; {net.bytebuddy.description.type.TypeDescription=var1736, r0=var1949, $r2=var3002, $r1=var2161, $z0=var170}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: net.bytebuddy.description.type.TypeDescription;	$r2 = "groovy.lang.MetaClass";	$r1 = interfaceinvoke r0.<net.bytebuddy.description.type.TypeDescription: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1