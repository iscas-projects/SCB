(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3773 0)
(declare-sort var3886 0)
(declare-sort var554 0)
(declare-sort var3750 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun value/843938677 (var554) var3886)
(declare-fun cast-from-var3773-to-var554 (var3773) var554)
(declare-fun cast-from-var3886-to-__Array__Int__var3750__ (var3886) (Array Int var3750))
(declare-fun getLength-Arr-var3750-1 ((Array Int var3750)) Int)
(declare-const null-var3773 var3773)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var544 var3773) ; Statement: r1 := @this: jdk.nashorn.internal.ir.LiteralNode$ArrayLiteralNode 
(assert (not (= var544 null-var3773)))
(declare-const var1556 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1556 null-String)))
(declare-const var899 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var899 null-Bool)))
(assert true)
;(assert (append/-1166366385 var1556 91)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1556!1 String)
(assert (str.prefixof var1556 var1556!1))
(define-const var203 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var1736 var3886 (value/843938677 (cast-from-var3773-to-var554 var544))) ; Statement: $r2 = r1.<jdk.nashorn.internal.ir.LiteralNode$ArrayLiteralNode: java.lang.Object value> 
(define-const var1057 (Array Int var3750) (cast-from-var3886-to-__Array__Int__var3750__ var1736)) ; Statement: r3 = (jdk.nashorn.internal.ir.Expression[]) $r2 
(define-const var3196 Int (getLength-Arr-var3750-1 var1057)) ; Statement: i0 = lengthof r3 
(define-const var1687 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(assert (>= var1687 var3196)) ; Cond: i1 >= i0 
(assert true)
;(assert (append/-1166366385 var1556!1 93)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1556!2 String)
(assert (str.prefixof var1556!1 var1556!2))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), value/843938677=([jdk.nashorn.internal.ir.LiteralNode], java.lang.Object), cast-from-var3773-to-var554=([jdk.nashorn.internal.ir.LiteralNode$ArrayLiteralNode], jdk.nashorn.internal.ir.LiteralNode), cast-from-var3886-to-__Array__Int__var3750__=([java.lang.Object], jdk.nashorn.internal.ir.Expression[]), getLength-Arr-var3750-1=([jdk.nashorn.internal.ir.Expression[]], int)}
; {var3773=jdk.nashorn.internal.ir.LiteralNode$ArrayLiteralNode, var544=r1, var1556=r0, var899=z0, var203=z1, var3886=java.lang.Object, var554=jdk.nashorn.internal.ir.LiteralNode, var1736=$r2, var3750=jdk.nashorn.internal.ir.Expression, var1057=r3, var3196=i0, var1687=i1}
; {jdk.nashorn.internal.ir.LiteralNode$ArrayLiteralNode=var3773, r1=var544, r0=var1556, z0=var899, z1=var203, java.lang.Object=var3886, jdk.nashorn.internal.ir.LiteralNode=var554, $r2=var1736, jdk.nashorn.internal.ir.Expression=var3750, r3=var1057, i0=var3196, i1=var1687}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts r1 := @this: jdk.nashorn.internal.ir.LiteralNode$ArrayLiteralNode;	r0 := @parameter0: java.lang.StringBuilder;	z0 := @parameter1: boolean;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	z1 = 1;	$r2 = r1.<jdk.nashorn.internal.ir.LiteralNode$ArrayLiteralNode: java.lang.Object value>;	r3 = (jdk.nashorn.internal.ir.Expression[]) $r2;	i0 = lengthof r3;	i1 = 0;	if i1 >= i0 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	return
;block_num 3