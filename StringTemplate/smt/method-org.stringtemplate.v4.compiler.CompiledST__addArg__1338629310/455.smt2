(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1623 0)
(declare-sort var3147 0)
(declare-sort var3393 0)
(declare-sort var2114 0)
(declare-sort var1256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun formalArguments/1377009226 (var1623) var3393)
(declare-fun name/-597608604 (var3147) String)
(declare-fun var3393_containsKey/1715618542 (var3393 var2114) Bool)
(declare-fun cast-from-String-to-var2114 (String) var2114)
(declare-fun var1256-init () var1256)
(declare-fun arr-var2114-init () (Array Int var2114))
(declare-fun String_format/1339386452 (String (Array Int var2114)) String)
(declare-fun <init>/875830710 (var1256 String) void)
(declare-const null-var1623 var1623)
(declare-const null-var3147 var3147)
(declare-const null-var3393 var3393)
(declare-const null-__Array__Int__var2114__ (Array Int var2114))
(declare-const var3412 var1623) ; Statement: r0 := @this: org.stringtemplate.v4.compiler.CompiledST 
(assert (not (= var3412 null-var1623)))
(declare-const var2226 var3147) ; Statement: r2 := @parameter0: org.stringtemplate.v4.compiler.FormalArgument 
(assert (not (= var2226 null-var3147)))
(define-const var2597 var3393 (formalArguments/1377009226 var3412)) ; Statement: $r1 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
 ; Statement: if $r1 != null goto $r4 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(assert (not (= var2597 null-var3393))) ; Cond: $r1 != null 
(define-const var1156 var3393 (formalArguments/1377009226 var3412)) ; Statement: $r4 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(define-const var816 String (name/-597608604 var2226)) ; Statement: $r3 = r2.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
(define-const var403 Bool (var3393_containsKey/1715618542 var1156 (cast-from-String-to-var2114 var816))) ; Statement: $z0 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto $r5 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments> 
(assert (not (= (ite var403 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1235 var1256 var1256-init) ; Statement: $r8 = new java.lang.IllegalArgumentException 
(define-const var3178 (Array Int var2114) arr-var2114-init) ; Statement: $r9 = newarray (java.lang.Object)[1] 
(define-const var1658 String (name/-597608604 var2226)) ; Statement: $r10 = r2.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name> 
(declare-const var3178!1 (Array Int var2114))
(assert (not (= var3178!1 null-__Array__Int__var2114__)))
(assert (= (select var3178!1 0) (cast-from-String-to-var2114 var1658))) ; Statement: $r9[0] = $r10 
(define-const var3870 String (String_format/1339386452 "Formal argument %s already exists." var3178!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Formal argument %s already exists.", $r9) 
(assert true)
;(assert (<init>/875830710 var1235 var3870)) ; Statement: specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1235!1 var1256)
(declare-const var3870!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {formalArguments/1377009226=([org.stringtemplate.v4.compiler.CompiledST], java.util.Map), name/-597608604=([org.stringtemplate.v4.compiler.FormalArgument], java.lang.String), var3393_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var2114=([java.lang.String], java.lang.Object), var1256-init=([], java.lang.IllegalArgumentException), arr-var2114-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1623=org.stringtemplate.v4.compiler.CompiledST, var3412=r0, var3147=org.stringtemplate.v4.compiler.FormalArgument, var2226=r2, var3393=java.util.Map, var2597=$r1, var1156=$r4, var816=$r3, var2114=java.lang.Object, var403=$z0, var1256=java.lang.IllegalArgumentException, var1235=$r8, var3178=$r9, var1658=$r10, var3870=$r11}
; {org.stringtemplate.v4.compiler.CompiledST=var1623, r0=var3412, org.stringtemplate.v4.compiler.FormalArgument=var3147, r2=var2226, java.util.Map=var3393, $r1=var2597, $r4=var1156, $r3=var816, java.lang.Object=var2114, $z0=var403, java.lang.IllegalArgumentException=var1256, $r8=var1235, $r9=var3178, $r10=var1658, $r11=var3870}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.stringtemplate.v4.compiler.CompiledST;	r2 := @parameter0: org.stringtemplate.v4.compiler.FormalArgument;	$r1 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	if $r1 != null goto $r4 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r4 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r3 = r2.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	$z0 = interfaceinvoke $r4.<java.util.Map: boolean containsKey(java.lang.Object)>($r3);	if $z0 == 0 goto $r5 = r0.<org.stringtemplate.v4.compiler.CompiledST: java.util.Map formalArguments>;	$r8 = new java.lang.IllegalArgumentException;	$r9 = newarray (java.lang.Object)[1];	$r10 = r2.<org.stringtemplate.v4.compiler.FormalArgument: java.lang.String name>;	$r9[0] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Formal argument %s already exists.", $r9);	specialinvoke $r8.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r8
;block_num 3