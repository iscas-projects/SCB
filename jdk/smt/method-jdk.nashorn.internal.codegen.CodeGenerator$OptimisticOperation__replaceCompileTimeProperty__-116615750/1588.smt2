(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3049 0)
(declare-sort var2500 0)
(declare-sort var2716 0)
(declare-sort var1653 0)
(declare-sort var1090 0)
(declare-sort var3796 0)
(declare-sort var3566 0)
(declare-sort var2467 0)
(declare-sort var2994 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun expression/-2127664408 (var3049) var2500)
(declare-fun cast-from-var2500-to-var2716 (var2500) var2716)
(declare-fun getSymbol/-94593893 (var2716) var1653)
(declare-fun getName/-601631167 (var1653) String)
(declare-fun name/1633728430 (var3796) String)
(declare-fun cast-from-var1090-to-var3796 (var1090) var3796)
(declare-fun this$0/-2127664408 (var3049) var3566)
(declare-fun var3566_access$9800/-2026215254 (var3566) var2467)
(declare-fun getName/-243293101 (var2467) String)
(declare-fun replaceCompileTimeProperty/-518108019 (var3049 var2994) void)
(declare-fun cast-from-String-to-var2994 (String) var2994)
(declare-const null-var3049 var3049)
(declare-const var1090-__FILE__ var1090)
(declare-const var1733 var3049) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation 
(assert (not (= var1733 null-var3049)))
(define-const var713 var2500 (expression/-2127664408 var1733)) ; Statement: $r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation: jdk.nashorn.internal.ir.Expression expression> 
(define-const var293 var2716 (cast-from-var2500-to-var2716 var713)) ; Statement: r2 = (jdk.nashorn.internal.ir.IdentNode) $r1 
(assert true)
(define-const var592 var1653 (getSymbol/-94593893 var293)) ; Statement: $r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.IdentNode: jdk.nashorn.internal.ir.Symbol getSymbol()>() 
(assert true)
(define-const var2188 String (getName/-601631167 var592)) ; Statement: r4 = virtualinvoke $r3.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>() 
(define-const var3317 var1090 var1090-__FILE__) ; Statement: $r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants __FILE__> 
(assert true)
(define-const var2507 String (name/1633728430 (cast-from-var1090-to-var3796 var3317))) ; Statement: $r6 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String name()>() 
(assert true)
(define-const var1545 Bool (= var2507 var2188)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 == 0 goto $r7 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants __DIR__> 
(assert (not (= (ite var1545 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2558 var3566 (this$0/-2127664408 var1733)) ; Statement: $r17 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation: jdk.nashorn.internal.codegen.CodeGenerator this$0> 
(define-const var715 var2467 (var3566_access$9800/-2026215254 var2558)) ; Statement: $r18 = staticinvoke <jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.runtime.Source access$9800(jdk.nashorn.internal.codegen.CodeGenerator)>($r17) 
(assert true)
(define-const var1762 String (getName/-243293101 var715)) ; Statement: $r19 = virtualinvoke $r18.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>() 
(assert true)
;(assert (replaceCompileTimeProperty/-518108019 var1733 (cast-from-String-to-var2994 var1762))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation: void replaceCompileTimeProperty(java.lang.Object)>($r19) 

(declare-const var1733!1 var3049)
(declare-const var1762!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {expression/-2127664408=([jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation], jdk.nashorn.internal.ir.Expression), cast-from-var2500-to-var2716=([jdk.nashorn.internal.ir.Expression], jdk.nashorn.internal.ir.IdentNode), getSymbol/-94593893=([jdk.nashorn.internal.ir.IdentNode], jdk.nashorn.internal.ir.Symbol), getName/-601631167=([jdk.nashorn.internal.ir.Symbol], java.lang.String), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var1090-to-var3796=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.Enum), this$0/-2127664408=([jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation], jdk.nashorn.internal.codegen.CodeGenerator), var3566_access$9800/-2026215254=([jdk.nashorn.internal.codegen.CodeGenerator], jdk.nashorn.internal.runtime.Source), getName/-243293101=([jdk.nashorn.internal.runtime.Source], java.lang.String), replaceCompileTimeProperty/-518108019=([jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation, java.lang.Object], void), cast-from-String-to-var2994=([java.lang.String], java.lang.Object)}
; {var3049=jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation, var1733=r0, var2500=jdk.nashorn.internal.ir.Expression, var713=$r1, var2716=jdk.nashorn.internal.ir.IdentNode, var293=r2, var1653=jdk.nashorn.internal.ir.Symbol, var592=$r3, var2188=r4, var1090=jdk.nashorn.internal.codegen.CompilerConstants, var3317=$r5, var3796=java.lang.Enum, var2507=$r6, var1545=$z0, var3566=jdk.nashorn.internal.codegen.CodeGenerator, var2558=$r17, var2467=jdk.nashorn.internal.runtime.Source, var715=$r18, var1762=$r19, var2994=java.lang.Object}
; {jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation=var3049, r0=var1733, jdk.nashorn.internal.ir.Expression=var2500, $r1=var713, jdk.nashorn.internal.ir.IdentNode=var2716, r2=var293, jdk.nashorn.internal.ir.Symbol=var1653, $r3=var592, r4=var2188, jdk.nashorn.internal.codegen.CompilerConstants=var1090, $r5=var3317, java.lang.Enum=var3796, $r6=var2507, $z0=var1545, jdk.nashorn.internal.codegen.CodeGenerator=var3566, $r17=var2558, jdk.nashorn.internal.runtime.Source=var2467, $r18=var715, $r19=var1762, java.lang.Object=var2994}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation;	$r1 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation: jdk.nashorn.internal.ir.Expression expression>;	r2 = (jdk.nashorn.internal.ir.IdentNode) $r1;	$r3 = virtualinvoke r2.<jdk.nashorn.internal.ir.IdentNode: jdk.nashorn.internal.ir.Symbol getSymbol()>();	r4 = virtualinvoke $r3.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>();	$r5 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants __FILE__>;	$r6 = virtualinvoke $r5.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String name()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 == 0 goto $r7 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants __DIR__>;	$r17 = r0.<jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation: jdk.nashorn.internal.codegen.CodeGenerator this$0>;	$r18 = staticinvoke <jdk.nashorn.internal.codegen.CodeGenerator: jdk.nashorn.internal.runtime.Source access$9800(jdk.nashorn.internal.codegen.CodeGenerator)>($r17);	$r19 = virtualinvoke $r18.<jdk.nashorn.internal.runtime.Source: java.lang.String getName()>();	specialinvoke r0.<jdk.nashorn.internal.codegen.CodeGenerator$OptimisticOperation: void replaceCompileTimeProperty(java.lang.Object)>($r19);	goto [?= return];	return
;block_num 3