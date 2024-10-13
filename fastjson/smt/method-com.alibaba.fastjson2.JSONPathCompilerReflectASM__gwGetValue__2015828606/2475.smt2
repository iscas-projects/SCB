(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1475 0)
(declare-sort var3510 0)
(declare-sort var2440 0)
(declare-sort var3343 0)
(declare-sort var1917 0)
(declare-sort var2682 0)
(declare-sort var865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun method/-2048851183 (var3343) var1917)
(declare-fun field/-2048851183 (var3343) var2682)
(declare-fun fieldClass/-2048851183 (var3343) ClassObject)
(declare-fun var865_desc/1182016152 (ClassObject) String)
(declare-fun getName/1618348824 (var2682) String)
(declare-fun visitFieldInsn/1331737383 (var3510 Int String String String) void)
(declare-const null-var1475 var1475)
(declare-const null-var3510 var3510)
(declare-const null-String String)
(declare-const null-var3343 var3343)
(declare-const null-var1917 var1917)
(declare-const var2151 var1475) ; Statement: r13 := @this: com.alibaba.fastjson2.JSONPathCompilerReflectASM 
(assert (not (= var2151 null-var1475)))
(declare-const var3438 var3510) ; Statement: r5 := @parameter0: com.alibaba.fastjson2.internal.asm.MethodWriter 
(assert (not (= var3438 null-var3510)))
(declare-const var3506 String) ; Statement: r6 := @parameter1: java.lang.String 
(assert (not (= var3506 null-String)))
(declare-const var3505 var3343) ; Statement: r0 := @parameter2: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3505 null-var3343)))
(define-const var2134 var1917 (method/-2048851183 var3505)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
(define-const var1392 var2682 (field/-2048851183 var3505)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(define-const var3609 ClassObject (fieldClass/-2048851183 var3505)) ; Statement: r3 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var3008 String (var865_desc/1182016152 var3609)) ; Statement: r4 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r3) 
 ; Statement: if r1 == null goto $r7 = virtualinvoke r2.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert (= var2134 null-var1917)) ; Cond: r1 == null 
(assert true)
(define-const var3846 String (getName/1618348824 var1392)) ; Statement: $r7 = virtualinvoke r2.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
;(assert (visitFieldInsn/1331737383 var3438 180 var3506 var3846 var3008)) ; Statement: virtualinvoke r5.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r6, $r7, r4) 

(declare-const var3438!1 var3510)
(declare-const var323 Int)
(declare-const var3506!1 String)
(declare-const var3846!1 String)
(declare-const var3008!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), field/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Field), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), var865_desc/1182016152=([java.lang.Class], java.lang.String), getName/1618348824=([java.lang.reflect.Field], java.lang.String), visitFieldInsn/1331737383=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String], void)}
; {var1475=com.alibaba.fastjson2.JSONPathCompilerReflectASM, var2151=r13, var3510=com.alibaba.fastjson2.internal.asm.MethodWriter, var3438=r5, var3506=r6, var2440=null_type, var3343=com.alibaba.fastjson2.writer.FieldWriter, var3505=r0, var1917=java.lang.reflect.Method, var2134=r1, var2682=java.lang.reflect.Field, var1392=r2, var3609=r3, var865=com.alibaba.fastjson2.internal.asm.ASMUtils, var3008=r4, var3846=$r7, var323=180}
; {com.alibaba.fastjson2.JSONPathCompilerReflectASM=var1475, r13=var2151, com.alibaba.fastjson2.internal.asm.MethodWriter=var3510, r5=var3438, r6=var3506, null_type=var2440, com.alibaba.fastjson2.writer.FieldWriter=var3343, r0=var3505, java.lang.reflect.Method=var1917, r1=var2134, java.lang.reflect.Field=var2682, r2=var1392, r3=var3609, com.alibaba.fastjson2.internal.asm.ASMUtils=var865, r4=var3008, $r7=var3846, 180=var323}
;seq 
;cnt {}
;stmts r13 := @this: com.alibaba.fastjson2.JSONPathCompilerReflectASM;	r5 := @parameter0: com.alibaba.fastjson2.internal.asm.MethodWriter;	r6 := @parameter1: java.lang.String;	r0 := @parameter2: com.alibaba.fastjson2.writer.FieldWriter;	r1 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	r2 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	r3 = r0.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	r4 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>(r3);	if r1 == null goto $r7 = virtualinvoke r2.<java.lang.reflect.Field: java.lang.String getName()>();	$r7 = virtualinvoke r2.<java.lang.reflect.Field: java.lang.String getName()>();	virtualinvoke r5.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitFieldInsn(int,java.lang.String,java.lang.String,java.lang.String)>(180, r6, $r7, r4);	return
;block_num 3