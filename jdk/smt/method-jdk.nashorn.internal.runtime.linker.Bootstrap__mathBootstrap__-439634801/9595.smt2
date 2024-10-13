(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3408 0)
(declare-sort var1231 0)
(declare-sort var2704 0)
(declare-sort var598 0)
(declare-sort var806 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var598-init () var598)
(declare-fun <init>/582965326 (var598 var806) void)
(declare-fun cast-from-String-to-var806 (String) var806)
(declare-const null-var3408 var3408)
(declare-const null-String String)
(declare-const null-var2704 var2704)
(declare-const null-Int Int)
(declare-const var3817 var3408) ; Statement: r8 := @parameter0: java.lang.invoke.MethodHandles$Lookup 
(assert (not (= var3817 null-var3408)))
(declare-const var284 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var284 null-String)))
(declare-const var538 var2704) ; Statement: r9 := @parameter2: java.lang.invoke.MethodType 
(assert (not (= var538 null-var2704)))
(declare-const var1630 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1630 null-Int)))
(define-const var2320 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3631 Int (hashCode/-467973558 var284)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case 3224472: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("iadd");     case 3227528: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("idiv");     case 3236539: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("imul");     case 3236999: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ineg");     case 3240849: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("irem");     case 3242295: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("isub");     default: goto tableswitch(b2) {     case 0: goto $r6 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call ADD_EXACT>;     case 1: goto $r5 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call SUB_EXACT>;     case 2: goto $r4 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call MUL_EXACT>;     case 3: goto $r3 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call DIV_EXACT>;     case 4: goto $r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call REM_EXACT>;     case 5: goto $r1 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call NEGATE_EXACT>;     default: goto $r7 = new java.lang.AssertionError; }; } 
(assert (and (not (= var3631 3242295)) (and (not (= var3631 3240849)) (and (not (= var3631 3236999)) (and (not (= var3631 3236539)) (and (not (= var3631 3227528)) (and (not (= var3631 3224472)) true))))))) ; Intersect: Negate: Cond: $i0 == 3242295   and Intersect: Negate: Cond: $i0 == 3240849   and Intersect: Negate: Cond: $i0 == 3236999   and Intersect: Negate: Cond: $i0 == 3236539   and Intersect: Negate: Cond: $i0 == 3227528   and Intersect: Negate: Cond: $i0 == 3224472   and Non Conditional      
 ; Statement: tableswitch(b2) {     case 0: goto $r6 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call ADD_EXACT>;     case 1: goto $r5 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call SUB_EXACT>;     case 2: goto $r4 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call MUL_EXACT>;     case 3: goto $r3 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call DIV_EXACT>;     case 4: goto $r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call REM_EXACT>;     case 5: goto $r1 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call NEGATE_EXACT>;     default: goto $r7 = new java.lang.AssertionError; } 
(assert (and (not (= var2320 5)) (and (not (= var2320 4)) (and (not (= var2320 3)) (and (not (= var2320 2)) (and (not (= var2320 1)) (and (not (= var2320 0)) true))))))) ; Intersect: Negate: Cond: b2 == 5   and Intersect: Negate: Cond: b2 == 4   and Intersect: Negate: Cond: b2 == 3   and Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional      
(define-const var1949 var598 var598-init) ; Statement: $r7 = new java.lang.AssertionError 
(assert true)
;(assert (<init>/582965326 var1949 (cast-from-String-to-var806 "unsupported math intrinsic"))) ; Statement: specialinvoke $r7.<java.lang.AssertionError: void <init>(java.lang.Object)>("unsupported math intrinsic") 

(declare-const var1949!1 var598)
(declare-const var1520 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int), var598-init=([], java.lang.AssertionError), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var806=([java.lang.String], java.lang.Object)}
; {var3408=java.lang.invoke.MethodHandles$Lookup, var3817=r8, var284=r0, var1231=null_type, var2704=java.lang.invoke.MethodType, var538=r9, var1630=i1, var2320=b2, var3631=$i0, var598=java.lang.AssertionError, var1949=$r7, var806=java.lang.Object, var1520="unsupported math intrinsic"}
; {java.lang.invoke.MethodHandles$Lookup=var3408, r8=var3817, r0=var284, null_type=var1231, java.lang.invoke.MethodType=var2704, r9=var538, i1=var1630, b2=var2320, $i0=var3631, java.lang.AssertionError=var598, $r7=var1949, java.lang.Object=var806, "unsupported math intrinsic"=var1520}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r8 := @parameter0: java.lang.invoke.MethodHandles$Lookup;	r0 := @parameter1: java.lang.String;	r9 := @parameter2: java.lang.invoke.MethodType;	i1 := @parameter3: int;	b2 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case 3224472: goto $z5 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("iadd");     case 3227528: goto $z4 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("idiv");     case 3236539: goto $z3 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("imul");     case 3236999: goto $z2 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("ineg");     case 3240849: goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("irem");     case 3242295: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("isub");     default: goto tableswitch(b2) {     case 0: goto $r6 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call ADD_EXACT>;     case 1: goto $r5 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call SUB_EXACT>;     case 2: goto $r4 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call MUL_EXACT>;     case 3: goto $r3 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call DIV_EXACT>;     case 4: goto $r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call REM_EXACT>;     case 5: goto $r1 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call NEGATE_EXACT>;     default: goto $r7 = new java.lang.AssertionError; }; };	tableswitch(b2) {     case 0: goto $r6 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call ADD_EXACT>;     case 1: goto $r5 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call SUB_EXACT>;     case 2: goto $r4 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call MUL_EXACT>;     case 3: goto $r3 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call DIV_EXACT>;     case 4: goto $r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call REM_EXACT>;     case 5: goto $r1 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.codegen.CompilerConstants$Call NEGATE_EXACT>;     default: goto $r7 = new java.lang.AssertionError; };	$r7 = new java.lang.AssertionError;	specialinvoke $r7.<java.lang.AssertionError: void <init>(java.lang.Object)>("unsupported math intrinsic");	throw $r7
;block_num 3