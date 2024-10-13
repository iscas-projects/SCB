(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3286 0)
(declare-sort var266 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-1832702666 (var3286) String)
(declare-fun symbolName/-133345059 (var266) String)
(declare-const null-var3286 var3286)
(declare-const var266-__DIR__ var266)
(declare-const var1959 var3286) ; Statement: r0 := @this: jdk.nashorn.internal.ir.IdentNode 
(assert (not (= var1959 null-var3286)))
(define-const var2411 String (name/-1832702666 var1959)) ; Statement: $r2 = r0.<jdk.nashorn.internal.ir.IdentNode: java.lang.String name> 
(define-const var1752 var266 var266-__DIR__) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants __DIR__> 
(assert true)
(define-const var1941 String (symbolName/-133345059 var1752)) ; Statement: $r3 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var3001 Bool (= var2411 var1941)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: if $z0 != 0 goto $z3 = 1 
(assert (not (= (ite var3001 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2054 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= return $z3] 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-1832702666=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String)}
; {var3286=jdk.nashorn.internal.ir.IdentNode, var1959=r0, var2411=$r2, var266=jdk.nashorn.internal.codegen.CompilerConstants, var1752=$r1, var1941=$r3, var3001=$z0, var2054=$z3}
; {jdk.nashorn.internal.ir.IdentNode=var3286, r0=var1959, $r2=var2411, jdk.nashorn.internal.codegen.CompilerConstants=var266, $r1=var1752, $r3=var1941, $z0=var3001, $z3=var2054}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.ir.IdentNode;	$r2 = r0.<jdk.nashorn.internal.ir.IdentNode: java.lang.String name>;	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants __DIR__>;	$r3 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r3);	if $z0 != 0 goto $z3 = 1;	$z3 = 1;	goto [?= return $z3];	return $z3
;block_num 3