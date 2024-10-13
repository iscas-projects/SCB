(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var679 0)
(declare-sort var704 0)
(declare-sort var324 0)
(declare-sort var1460 0)
(declare-sort var616 0)
(declare-sort var2126 0)
(declare-sort var1066 0)
(declare-sort var3410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var704) var1460)
(declare-fun objectClass/1968396404 (var704) ClassObject)
(declare-fun var616_type/-1892533503 (ClassObject) String)
(declare-fun fieldClass/-2048851183 (var324) ClassObject)
(declare-fun method/-2048851183 (var324) var2126)
(declare-fun cast-from-var2126-to-var1066 (var2126) var1066)
(declare-fun getFunction/604745076 (var324) var3410)
(declare-fun visitVarInsn/-915853820 (var1460 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var1460 Int String) void)
(declare-fun var1066_getName/-545027370 (var1066) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var616_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var1460 Int String String String Bool) void)
(declare-const null-var679 var679)
(declare-const null-var704 var704)
(declare-const null-var324 var324)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2126 var2126)
(declare-const null-var1066 var1066)
(declare-const var3363 var679) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3363 null-var679)))
(declare-const var3630 var704) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var3630 null-var704)))
(declare-const var175 var324) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var175 null-var324)))
(declare-const var3419 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3419 null-Int)))
(declare-const var619 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var619 null-Int)))
(define-const var3093 var1460 (mw/1968396404 var3630)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3851 ClassObject (objectClass/1968396404 var3630)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (= var3851 null-ClassObject))) ; Cond: r2 != null 
(define-const var1168 String (var616_type/-1892533503 var3851)) ; Statement: $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert true) ; Non Conditional
(define-const var2916 String var1168) ; Statement: r3 = $r36 
(define-const var95 ClassObject (fieldClass/-2048851183 var175)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2562 var2126 (method/-2048851183 var175)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (not (= var2562 null-var2126))) ; Negate: Cond: $r5 == null  
(define-const var1291 var1066 (cast-from-var2126-to-var1066 (method/-2048851183 var175))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: goto [?= r6 = $r37] 
(assert true) ; Non Conditional
(define-const var430 var1066 var1291) ; Statement: r6 = $r37 
(assert true)
(define-const var2571 var3410 (getFunction/604745076 var175)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (= var1291 null-var1066))) ; Cond: $r37 != null 
(define-const var2491 Bool true) ; Statement: $z0 = r6 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var2491 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var3093 25 var619)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var3093!1 var1460)
(declare-const var3794 Int)
(declare-const var619!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var3093!1 192 var2916)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3) 

(declare-const var3093!2 var1460)
(declare-const var104 Int)
(declare-const var2916!1 String)
(define-const var2687 String (var1066_getName/-545027370 var430)) ; Statement: $r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>() 
(define-const var3384 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3384)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3384!1 String)
(assert (= var3384!1 ""))
(assert true)
(define-const var2242 String (append/672562846 var3384!1 "()")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var3384!2 String)
(assert (= var3384!2 (str.++ var3384!1 "()")))
(define-const var3170 String (var616_desc/1182016152 var95)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35) 
(assert true)
(define-const var3013 String (append/672562846 var2242 var3170)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2242!1 String)
(assert (= var2242!1 (str.++ var2242 var3170)))
(assert true)
(define-const var3672 String (toString/-2075883882 var3013)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var3093!2 182 var2916!1 var2687 var3672 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0) 

(declare-const var3093!3 var1460)
(declare-const var2671 Int)
(declare-const var2916!2 String)
(declare-const var2687!1 String)
(declare-const var3672!1 String)
(declare-const var2477 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), var616_type/-1892533503=([java.lang.Class], java.lang.String), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2126-to-var1066=([java.lang.reflect.Method], java.lang.reflect.Member), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), var1066_getName/-545027370=([java.lang.reflect.Member], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var616_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var679=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3363=r18, var704=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var3630=r0, var324=com.alibaba.fastjson2.writer.FieldWriter, var175=r4, var3419=i3, var619=i1, var1460=com.alibaba.fastjson2.internal.asm.MethodWriter, var3093=r1, var3851=r2, var616=com.alibaba.fastjson2.internal.asm.ASMUtils, var1168=$r36, var2916=r3, var95=$r35, var2126=java.lang.reflect.Method, var2562=$r5, var1066=java.lang.reflect.Member, var1291=$r37, var430=r6, var3410=java.util.function.Function, var2571=$r34, var2491=$z0, var3794=25, var104=192, var2687=$r27, var3384=$r22, var2242=$r24, var3170=$r23, var3013=$r25, var3672=$r26, var2671=182, var2477=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var679, r18=var3363, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var704, r0=var3630, com.alibaba.fastjson2.writer.FieldWriter=var324, r4=var175, i3=var3419, i1=var619, com.alibaba.fastjson2.internal.asm.MethodWriter=var1460, r1=var3093, r2=var3851, com.alibaba.fastjson2.internal.asm.ASMUtils=var616, $r36=var1168, r3=var2916, $r35=var95, java.lang.reflect.Method=var2126, $r5=var2562, java.lang.reflect.Member=var1066, $r37=var1291, r6=var430, java.util.function.Function=var3410, $r34=var2571, $z0=var2491, 25=var3794, 192=var104, $r27=var2687, $r22=var3384, $r24=var2242, $r23=var3170, $r25=var3013, $r26=var3672, 182=var2671, 0=var2477}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	goto [?= r6 = $r37];	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	$z0 = r6 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3);	$r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0);	return
;block_num 7