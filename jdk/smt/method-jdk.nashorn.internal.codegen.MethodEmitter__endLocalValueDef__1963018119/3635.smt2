(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1704 0)
(declare-sort var980 0)
(declare-sort var2578 0)
(declare-sort var853 0)
(declare-sort var1292 0)
(declare-sort var1567 0)
(declare-sort var1031 0)
(declare-sort var2011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-601631167 (var980) String)
(declare-fun symbolName/-133345059 (var1292) String)
(declare-fun method/656530713 (var1704) var1567)
(declare-fun var2578_access$000/1847688374 (var2578) var1031)
(declare-fun getDescriptor/-605257498 (var1031) String)
(declare-fun var2578_access$100/-1227699574 (var2578) var853)
(declare-fun getSlot/-991666563 (var980 var1031) Int)
(declare-fun visitLocalVariable/-358949278 (var1567 String String String var853 var853 Int) void)
(declare-const null-var1704 var1704)
(declare-const null-var980 var980)
(declare-const null-var2578 var2578)
(declare-const null-var853 var853)
(declare-const var1292-THIS var1292)
(declare-const null-NullType var2011)
(declare-const null-String String)
(declare-const var794 var1704) ; Statement: r3 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var794 null-var1704)))
(declare-const var3778 var980) ; Statement: r0 := @parameter0: jdk.nashorn.internal.ir.Symbol 
(assert (not (= var3778 null-var980)))
(declare-const var395 var2578) ; Statement: r4 := @parameter1: jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef 
(assert (not (= var395 null-var2578)))
(declare-const var3389 var853) ; Statement: r7 := @parameter2: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3389 null-var853)))
(assert true)
(define-const var3658 String (getName/-601631167 var3778)) ; Statement: r12 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>() 
(define-const var3713 var1292 var1292-THIS) ; Statement: $r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants THIS> 
(assert true)
(define-const var2275 String (symbolName/-133345059 var3713)) ; Statement: $r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>() 
(assert true)
(define-const var3030 Bool (= var3658 var2275)) ; Statement: $z0 = virtualinvoke r12.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r5 = r3.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.internal.org.objectweb.asm.MethodVisitor method> 
(assert (= (ite var3030 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1727 var1567 (method/656530713 var794)) ; Statement: $r5 = r3.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.internal.org.objectweb.asm.MethodVisitor method> 
(define-const var2512 var1031 (var2578_access$000/1847688374 var395)) ; Statement: $r6 = staticinvoke <jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef: jdk.nashorn.internal.codegen.types.Type access$000(jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef)>(r4) 
(assert true)
(define-const var337 String (getDescriptor/-605257498 var2512)) ; Statement: $r10 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>() 
(define-const var1445 var853 (var2578_access$100/-1227699574 var395)) ; Statement: $r9 = staticinvoke <jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef: jdk.internal.org.objectweb.asm.Label access$100(jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef)>(r4) 
(define-const var3684 var1031 (var2578_access$000/1847688374 var395)) ; Statement: $r8 = staticinvoke <jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef: jdk.nashorn.internal.codegen.types.Type access$000(jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef)>(r4) 
(assert true)
(define-const var1916 Int (getSlot/-991666563 var3778 var3684)) ; Statement: $i0 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: int getSlot(jdk.nashorn.internal.codegen.types.Type)>($r8) 
(assert true)
;(assert (visitLocalVariable/-358949278 var1727 var3658 var337 null-String var1445 var3389 var1916)) ; Statement: virtualinvoke $r5.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitLocalVariable(java.lang.String,java.lang.String,java.lang.String,jdk.internal.org.objectweb.asm.Label,jdk.internal.org.objectweb.asm.Label,int)>(r12, $r10, null, $r9, r7, $i0) 

(declare-const var1727!1 var1567)
(declare-const var3658!1 String)
(declare-const var337!1 String)
(declare-const var2751 var2011)
(declare-const var1445!1 var853)
(declare-const var3389!1 var853)
(declare-const var1916!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-601631167=([jdk.nashorn.internal.ir.Symbol], java.lang.String), symbolName/-133345059=([jdk.nashorn.internal.codegen.CompilerConstants], java.lang.String), method/656530713=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.internal.org.objectweb.asm.MethodVisitor), var2578_access$000/1847688374=([jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef], jdk.nashorn.internal.codegen.types.Type), getDescriptor/-605257498=([jdk.nashorn.internal.codegen.types.Type], java.lang.String), var2578_access$100/-1227699574=([jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef], jdk.internal.org.objectweb.asm.Label), getSlot/-991666563=([jdk.nashorn.internal.ir.Symbol, jdk.nashorn.internal.codegen.types.Type], int), visitLocalVariable/-358949278=([jdk.internal.org.objectweb.asm.MethodVisitor, java.lang.String, java.lang.String, java.lang.String, jdk.internal.org.objectweb.asm.Label, jdk.internal.org.objectweb.asm.Label, int], void)}
; {var1704=jdk.nashorn.internal.codegen.MethodEmitter, var794=r3, var980=jdk.nashorn.internal.ir.Symbol, var3778=r0, var2578=jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef, var395=r4, var853=jdk.internal.org.objectweb.asm.Label, var3389=r7, var3658=r12, var1292=jdk.nashorn.internal.codegen.CompilerConstants, var3713=$r1, var2275=$r2, var3030=$z0, var1567=jdk.internal.org.objectweb.asm.MethodVisitor, var1727=$r5, var1031=jdk.nashorn.internal.codegen.types.Type, var2512=$r6, var337=$r10, var1445=$r9, var3684=$r8, var1916=$i0, var2011=null_type, var2751=null}
; {jdk.nashorn.internal.codegen.MethodEmitter=var1704, r3=var794, jdk.nashorn.internal.ir.Symbol=var980, r0=var3778, jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef=var2578, r4=var395, jdk.internal.org.objectweb.asm.Label=var853, r7=var3389, r12=var3658, jdk.nashorn.internal.codegen.CompilerConstants=var1292, $r1=var3713, $r2=var2275, $z0=var3030, jdk.internal.org.objectweb.asm.MethodVisitor=var1567, $r5=var1727, jdk.nashorn.internal.codegen.types.Type=var1031, $r6=var2512, $r10=var337, $r9=var1445, $r8=var3684, $i0=var1916, null_type=var2011, null=var2751}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	r0 := @parameter0: jdk.nashorn.internal.ir.Symbol;	r4 := @parameter1: jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef;	r7 := @parameter2: jdk.internal.org.objectweb.asm.Label;	r12 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: java.lang.String getName()>();	$r1 = <jdk.nashorn.internal.codegen.CompilerConstants: jdk.nashorn.internal.codegen.CompilerConstants THIS>;	$r2 = virtualinvoke $r1.<jdk.nashorn.internal.codegen.CompilerConstants: java.lang.String symbolName()>();	$z0 = virtualinvoke r12.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r5 = r3.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.internal.org.objectweb.asm.MethodVisitor method>;	$r5 = r3.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.internal.org.objectweb.asm.MethodVisitor method>;	$r6 = staticinvoke <jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef: jdk.nashorn.internal.codegen.types.Type access$000(jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef)>(r4);	$r10 = virtualinvoke $r6.<jdk.nashorn.internal.codegen.types.Type: java.lang.String getDescriptor()>();	$r9 = staticinvoke <jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef: jdk.internal.org.objectweb.asm.Label access$100(jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef)>(r4);	$r8 = staticinvoke <jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef: jdk.nashorn.internal.codegen.types.Type access$000(jdk.nashorn.internal.codegen.MethodEmitter$LocalVariableDef)>(r4);	$i0 = virtualinvoke r0.<jdk.nashorn.internal.ir.Symbol: int getSlot(jdk.nashorn.internal.codegen.types.Type)>($r8);	virtualinvoke $r5.<jdk.internal.org.objectweb.asm.MethodVisitor: void visitLocalVariable(java.lang.String,java.lang.String,java.lang.String,jdk.internal.org.objectweb.asm.Label,jdk.internal.org.objectweb.asm.Label,int)>(r12, $r10, null, $r9, r7, $i0);	return
;block_num 2