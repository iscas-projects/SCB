(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3717 0)
(declare-sort var3885 0)
(declare-sort var2928 0)
(declare-sort var2182 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formalArguments/1377009226 (var3717) var2928)
(declare-fun name/-597608604 (var3885) String)
(declare-fun var2928_containsKey/1715618542 (var2928 var2182) Bool)
(declare-fun cast-from-String-to-var2182 (String) var2182)
(declare-fun var2928_size/-1594421051 (var2928) Int)
(declare-fun index/-597608604 (var3885) Int)
(declare-fun var2928_put/1464166817 (var2928 var2182 var2182) var2182)
(declare-fun cast-from-var3885-to-var2182 (var3885) var2182)
(declare-const null-var3717 var3717)
(declare-const null-var3885 var3885)
(declare-const null-var2928 var2928)
(declare-const var1595 var3717) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.CompiledST 
(assert (not (= var1595 null-var3717)))
(declare-const var814 var3885) ; Statement: r2 := @parameter0: org.stringtemplate.v4.compiler.FormalArgument 
(assert (not (= var814 null-var3885)))
(define-const var3753 var2928 (formalArguments/1377009226 var1595)) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
 ; Statement: if $r1 != null goto $r4 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(assert (not (= var3753 null-var2928))) ; Cond: $r1 != null 
(define-const var51 var2928 (formalArguments/1377009226 var1595)) ; Statement: $r4 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(define-const var3893 String (name/-597608604 var814)) ; Statement: $r3 = r2.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
(define-const var1720 Bool (var2928_containsKey/1715618542 var51 (cast-from-String-to-var2182 var3893))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(assert (= (ite var1720 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1726 var2928 (formalArguments/1377009226 var1595)) ; Statement: $r5 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(define-const var1618 Int (var2928_size/-1594421051 var1726)) ; Statement: $i0 = interfaceinvoke $r5.<java.util.Map: int size()>() 
(declare-const var814!1 var3885)
(assert (not (= var814!1 null-var3885)))
(assert (= (index/-597608604 var814!1) var1618)) ; Statement: r2.<org.stringtemplate.v4.compiler.FormalArgument: int index> = $i0 
(define-const var3099 var2928 (formalArguments/1377009226 var1595)) ; Statement: $r7 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(define-const var3550 String (name/-597608604 var814!1)) ; Statement: $r6 = r2.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
;(assert (var2928_put/1464166817 var3099 (cast-from-String-to-var2182 var3550) (cast-from-var3885-to-var2182 var814!1))) ; Statement: interfaceinvoke $r7.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r6, r2) 

(declare-const var3099!1 var2928)
(declare-const var3550!1 String)
(declare-const var814!2 var3885)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {formalArguments/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.util.Map), name/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], java.lang.String), var2928_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var2182=([java.lang.String], java.lang.Object), var2928_size/-1594421051=([java.util.Map], int), index/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], int), var2928_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-var3885-to-var2182=([org.stringtemplate.v4.compiler.FormalArgument], java.lang.Object)}
; {var3717=org.stringtemplate.v4.compiler.CompiledST, var1595=r0, var3885=org.stringtemplate.v4.compiler.FormalArgument, var814=r2, var2928=java.util.Map, var3753=$r1, var51=$r4, var3893=$r3, var2182=java.lang.Object, var1720=$z0, var1726=$r5, var1618=$i0, var3099=$r7, var3550=$r6}
; {org.stringtemplate.v4.compiler.CompiledST=var3717, r0=var1595, org.stringtemplate.v4.compiler.FormalArgument=var3885, r2=var814, java.util.Map=var2928, $r1=var3753, $r4=var51, $r3=var3893, java.lang.Object=var2182, $z0=var1720, $r5=var1726, $i0=var1618, $r7=var3099, $r6=var3550}
;seq 
;cnt {}
;stmts r0 := @this: org.stringtemplate.v4.compiler.CompiledST;	r2 := @parameter0: org.stringtemplate.v4.compiler.FormalArgument;	$r1 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	if $r1 != null goto $r4 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r4 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r3 = r2.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	$z0 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r3);	if $z0 == 0 goto $r5 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r5 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$i0 = interfaceinvoke $r5.<java.util.Map: int size()>();	r2.<org.stringtemplate.v4.compiler.FormalArgument: int index> = $i0;	$r7 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r6 = r2.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	interfaceinvoke $r7.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>($r6, r2);	return
;block_num 3