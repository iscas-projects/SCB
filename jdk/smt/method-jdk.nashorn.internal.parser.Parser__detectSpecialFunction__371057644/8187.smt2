(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1183 0)
(declare-sort var1363 0)
(declare-sort var3932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1684945865 (var1363) String)
(declare-fun symbolName/-133345059 (var3932) String)
(declare-const null-var1183 var1183)
(declare-const null-var1363 var1363)
(declare-const var3932-EVAL var3932)
(declare-const var2052 var1183) ; Statement: r4 := @this: jdk.nashorn.internal.parser.Parser 
(assert (not (= var2052 null-var1183)))
(declare-const var3780 var1363) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.IdentNode 
(assert (not (= var3780 null-var1363)))
(assert true)
(define-const var1165 String (getName/-1684945865 var3780)) ; Statement: r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>() 
(define-const var380 var3932 var3932-EVAL) ; Statement: $r2 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants EVAL> 
(assert true)
(define-const var433 String (symbolName/-133345059 var380)) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var1897 Bool (= var433 var1165)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var1897 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1684945865=([jdk.nashorn.internal.ir.IdentNode], java.lang.String), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String)}
; {var1183=jdk.nashorn.internal.parser.Parser, var2052=r4, var1363=jdk.nashorn.internal.ir.IdentNode, var3780=r0, var1165=r1, var3932=jdk.nashorn.internal.codegen.CompilerConstants, var380=$r2, var433=$r3, var1897=$z0}
; {jdk.nashorn.internal.parser.Parser=var1183, r4=var2052, jdk.nashorn.internal.ir.IdentNode=var1363, r0=var3780, r1=var1165, jdk.nashorn.internal.codegen.CompilerConstants=var3932, $r2=var380, $r3=var433, $z0=var1897}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: jdk.nashorn.internal.parser.Parser;	r0 := @parameter0: jdk.nashorn.internal.ir.IdentNode;	r1 = virtualinvoke r0.<jdk.nashorn.internal.ir.IdentNode: java.lang.String getName()>();	$r2 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants EVAL>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return;	return
;block_num 2