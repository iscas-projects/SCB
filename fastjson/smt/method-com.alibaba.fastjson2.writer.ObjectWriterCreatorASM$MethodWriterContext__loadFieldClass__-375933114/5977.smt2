(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var922 0)
(declare-sort var2349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun mw/1968396404 (var922) var2349)
(declare-fun visitLdcInsn/1951126586 (var2349 ClassObject) void)
(declare-const null-var922 var922)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const var1297 var922) ; Statement: r2 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1297 null-var922)))
(declare-const var3996 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3996 null-Int)))
(declare-const var1998 ClassObject) ; Statement: r0 := @parameter1: java.lang.Class 
(assert (not (= var1998 null-ClassObject)))
(assert true)
(define-const var57 String (getName/-1958580599 var1998)) ; Statement: $r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var895 Bool (startsWith/-1785782452 var57 "java")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("java") 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(assert (not (= (ite var895 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2509 var2349 (mw/1968396404 var1297)) ; Statement: $r10 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(assert true)
;(assert (visitLdcInsn/1951126586 var2509 var1998)) ; Statement: virtualinvoke $r10.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.Class)>(r0) 

(declare-const var2509!1 var2349)
(declare-const var1998!1 ClassObject)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), visitLdcInsn/1951126586=([com.alibaba.fastjson2.internal.asm.MethodWriter, java.lang.Class], void)}
; {var922=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1297=r2, var3996=i0, var1998=r0, var57=$r1, var895=$z0, var2349=com.alibaba.fastjson2.internal.asm.MethodWriter, var2509=$r10}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var922, r2=var1297, i0=var3996, r0=var1998, $r1=var57, $z0=var895, com.alibaba.fastjson2.internal.asm.MethodWriter=var2349, $r10=var2509}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r2 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	i0 := @parameter0: int;	r0 := @parameter1: java.lang.Class;	$r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("java");	if $z0 == 0 goto $r3 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	$r10 = r2.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	virtualinvoke $r10.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitLdcInsn(java.lang.Class)>(r0);	return
;block_num 2