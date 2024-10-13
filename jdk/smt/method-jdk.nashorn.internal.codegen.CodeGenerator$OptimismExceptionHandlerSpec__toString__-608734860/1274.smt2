(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var774 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lvarSpec/-1096810284 (var774) String)
(declare-fun catchTarget/-1096810284 (var774) Bool)
(declare-fun delegationTarget/-1096810284 (var774) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var774 var774)
(declare-const var445 var774) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec 
(assert (not (= var445 null-var774)))
(define-const var573 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var573 64)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64) 

(declare-const var573!1 String)
(declare-const var1690 Int)
(assert true)
(define-const var2246 String (append/672562846 var573!1 "[HandlerSpec ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[HandlerSpec ") 
(declare-const var573!2 String)
(assert (= var573!2 (str.++ var573!1 "[HandlerSpec ")))
(define-const var1861 String (lvarSpec/-1096810284 var445)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: java.lang.String lvarSpec> 
(assert true)
(define-const var1864 String (append/672562846 var2246 var1861)) ; Statement: r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2246!1 String)
(assert (= var2246!1 (str.++ var2246 var1861)))
(define-const var3168 Bool (catchTarget/-1096810284 var445)) ; Statement: $z0 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: boolean catchTarget> 
 ; Statement: if $z0 == 0 goto $z1 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: boolean delegationTarget> 
(assert (= (ite var3168 1 0) 0)) ; Cond: $z0 == 0 
(define-const var335 Bool (delegationTarget/-1096810284 var445)) ; Statement: $z1 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: boolean delegationTarget> 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= (ite var335 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var2065 String (append/672562846 var1864 "]")) ; Statement: $r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1864!1 String)
(assert (= var1864!1 (str.++ var1864 "]")))
(assert true)
(define-const var410 String (toString/-2075883882 var2065)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lvarSpec/-1096810284=([jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec], java.lang.String), catchTarget/-1096810284=([jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec], boolean), delegationTarget/-1096810284=([jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var774=jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec, var445=r1, var573=$r0, var1690=64, var2246=$r3, var1861=$r2, var1864=r4, var3168=$z0, var335=$z1, var2065=$r5, var410=$r6}
; {jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec=var774, r1=var445, $r0=var573, 64=var1690, $r3=var2246, $r2=var1861, r4=var1864, $z0=var3168, $z1=var335, $r5=var2065, $r6=var410}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(64);	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[HandlerSpec ");	$r2 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: java.lang.String lvarSpec>;	r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$z0 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: boolean catchTarget>;	if $z0 == 0 goto $z1 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: boolean delegationTarget>;	$z1 = r1.<jdk.nashorn.internal.codegen.CodeGenerator$OptimismExceptionHandlerSpec: boolean delegationTarget>;	if $z1 == 0 goto $r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3