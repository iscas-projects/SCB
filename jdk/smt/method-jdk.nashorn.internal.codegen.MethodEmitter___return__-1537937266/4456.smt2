(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var894 0)
(declare-sort var133 0)
(declare-sort var1504 0)
(declare-sort var62 0)
(declare-sort var2955 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun debug/-301969445 (var894 var1504 var1504) void)
(declare-fun cast-from-String-to-var1504 (String) var1504)
(declare-fun cast-from-var133-to-var1504 (var133) var1504)
(declare-fun peekType/1910281360 (var894) var133)
(declare-fun var133_areEquivalent/1548371520 (var133 var133) Bool)
(declare-fun popType/794176643 (var894 var133) var133)
(declare-fun method/656530713 (var894) var62)
(declare-fun _return/46418599 (var2955 var62) void)
(declare-fun cast-from-var133-to-var2955 (var133) var2955)
(declare-fun doesNotContinueSequentially/-1275430815 (var894) void)
(declare-const null-var894 var894)
(declare-const null-var133 var133)
(declare-const var894-$assertionsDisabled Bool)
(declare-const var1209 var894) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var1209 null-var894)))
(declare-const var515 var133) ; Statement: r1 := @parameter0: jdk.nashorn.internal.codegen.types.Type 
(assert (not (= var515 null-var133)))
(assert true)
;(assert (debug/-301969445 var1209 (cast-from-String-to-var1504 "return") (cast-from-var133-to-var1504 var515))) ; Statement: specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object)>("return", r1) 

(declare-const var1209!1 var894)
(declare-const var3310 String)
(declare-const var515!1 var133)
(define-const var186 Bool var894-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.MethodEmitter: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type peekType()>() 
(assert (not (= (ite var186 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1275 var133 (peekType/1910281360 var1209!1)) ; Statement: $r5 = virtualinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type peekType()>() 
(define-const var3196 Bool (var133_areEquivalent/1548371520 var515!1 var1275)) ; Statement: $z1 = staticinvoke <jdk.nashorn.internal.codegen.types.Type: boolean areEquivalent(jdk.nashorn.internal.codegen.types.Type,jdk.nashorn.internal.codegen.types.Type)>(r1, $r5) 
 ; Statement: if $z1 != 0 goto $r3 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type popType(jdk.nashorn.internal.codegen.types.Type)>(r1) 
(assert (not (= (ite var3196 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
(define-const var1729 var133 (popType/794176643 var1209!1 var515!1)) ; Statement: $r3 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type popType(jdk.nashorn.internal.codegen.types.Type)>(r1) 
(define-const var2072 var62 (method/656530713 var1209!1)) ; Statement: $r2 = r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.internal.org.objectweb.asm.MethodVisitor method> 
(assert true)
;(assert (_return/46418599 (cast-from-var133-to-var2955 var1729) var2072)) ; Statement: virtualinvoke $r3.<jdk.nashorn.internal.codegen.types.Type: void _return(jdk.internal.org.objectweb.asm.MethodVisitor)>($r2) 

(declare-const var1729!1 var133)
(declare-const var2072!1 var62)
(assert true)
;(assert (doesNotContinueSequentially/-1275430815 var1209!1)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: void doesNotContinueSequentially()>() 

(declare-const var1209!2 var894)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {debug/-301969445=([jdk.nashorn.internal.codegen.MethodEmitter, java.lang.Object, java.lang.Object], void), cast-from-String-to-var1504=([java.lang.String], java.lang.Object), cast-from-var133-to-var1504=([jdk.nashorn.internal.codegen.types.Type], java.lang.Object), peekType/1910281360=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.nashorn.internal.codegen.types.Type), var133_areEquivalent/1548371520=([jdk.nashorn.internal.codegen.types.Type, jdk.nashorn.internal.codegen.types.Type], boolean), popType/794176643=([jdk.nashorn.internal.codegen.MethodEmitter, jdk.nashorn.internal.codegen.types.Type], jdk.nashorn.internal.codegen.types.Type), method/656530713=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.internal.org.objectweb.asm.MethodVisitor), _return/46418599=([jdk.nashorn.internal.codegen.types.BytecodeOps, jdk.internal.org.objectweb.asm.MethodVisitor], void), cast-from-var133-to-var2955=([jdk.nashorn.internal.codegen.types.Type], jdk.nashorn.internal.codegen.types.BytecodeOps), doesNotContinueSequentially/-1275430815=([jdk.nashorn.internal.codegen.MethodEmitter], void)}
; {var894=jdk.nashorn.internal.codegen.MethodEmitter, var1209=r0, var133=jdk.nashorn.internal.codegen.types.Type, var515=r1, var1504=java.lang.Object, var3310="return", var186=$z0, var1275=$r5, var3196=$z1, var1729=$r3, var62=jdk.internal.org.objectweb.asm.MethodVisitor, var2072=$r2, var2955=jdk.nashorn.internal.codegen.types.BytecodeOps}
; {jdk.nashorn.internal.codegen.MethodEmitter=var894, r0=var1209, jdk.nashorn.internal.codegen.types.Type=var133, r1=var515, java.lang.Object=var1504, "return"=var3310, $z0=var186, $r5=var1275, $z1=var3196, $r3=var1729, jdk.internal.org.objectweb.asm.MethodVisitor=var62, $r2=var2072, jdk.nashorn.internal.codegen.types.BytecodeOps=var2955}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	r1 := @parameter0: jdk.nashorn.internal.codegen.types.Type;	specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: void debug(java.lang.Object,java.lang.Object)>("return", r1);	$z0 = <jdk.nashorn.internal.codegen.MethodEmitter: boolean $assertionsDisabled>;	if $z0 != 0 goto $r5 = virtualinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type peekType()>();	$r5 = virtualinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type peekType()>();	$z1 = staticinvoke <jdk.nashorn.internal.codegen.types.Type: boolean areEquivalent(jdk.nashorn.internal.codegen.types.Type,jdk.nashorn.internal.codegen.types.Type)>(r1, $r5);	if $z1 != 0 goto $r3 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type popType(jdk.nashorn.internal.codegen.types.Type)>(r1);	$r3 = specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.codegen.types.Type popType(jdk.nashorn.internal.codegen.types.Type)>(r1);	$r2 = r0.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.internal.org.objectweb.asm.MethodVisitor method>;	virtualinvoke $r3.<jdk.nashorn.internal.codegen.types.Type: void _return(jdk.internal.org.objectweb.asm.MethodVisitor)>($r2);	specialinvoke r0.<jdk.nashorn.internal.codegen.MethodEmitter: void doesNotContinueSequentially()>();	return
;block_num 3