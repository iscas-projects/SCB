(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2452 0)
(declare-sort var1982 0)
(declare-sort var3950 0)
(declare-sort var184 0)
(declare-sort var649 0)
(declare-sort var2506 0)
(declare-sort var918 0)
(declare-sort var2443 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var1982) var184)
(declare-fun objectClass/1968396404 (var1982) ClassObject)
(declare-fun var649_type/-1892533503 (ClassObject) String)
(declare-fun fieldClass/-2048851183 (var3950) ClassObject)
(declare-fun method/-2048851183 (var3950) var2506)
(declare-fun cast-from-var2506-to-var918 (var2506) var918)
(declare-fun getFunction/604745076 (var3950) var2443)
(declare-fun visitVarInsn/-915853820 (var184 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var184 Int String) void)
(declare-fun var918_getName/-545027370 (var918) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var649_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var184 Int String String String Bool) void)
(declare-const null-var2452 var2452)
(declare-const null-var1982 var1982)
(declare-const null-var3950 var3950)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2506 var2506)
(declare-const null-var918 var918)
(declare-const null-var2443 var2443)
(declare-const var3376 var2452) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3376 null-var2452)))
(declare-const var854 var1982) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var854 null-var1982)))
(declare-const var451 var3950) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var451 null-var3950)))
(declare-const var1314 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1314 null-Int)))
(declare-const var317 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var317 null-Int)))
(define-const var3851 var184 (mw/1968396404 var854)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var92 ClassObject (objectClass/1968396404 var854)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (= var92 null-ClassObject))) ; Cond: r2 != null 
(define-const var174 String (var649_type/-1892533503 var92)) ; Statement: $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert true) ; Non Conditional
(define-const var778 String var174) ; Statement: r3 = $r36 
(define-const var2775 ClassObject (fieldClass/-2048851183 var451)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2074 var2506 (method/-2048851183 var451)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (not (= var2074 null-var2506))) ; Negate: Cond: $r5 == null  
(define-const var3091 var918 (cast-from-var2506-to-var918 (method/-2048851183 var451))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: goto [?= r6 = $r37] 
(assert true) ; Non Conditional
(define-const var3363 var918 var3091) ; Statement: r6 = $r37 
(assert true)
(define-const var2441 var2443 (getFunction/604745076 var451)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (not (= var3091 null-var918)))) ; Negate: Cond: $r37 != null  
 ; Statement: if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (= var2441 null-var2443)) ; Cond: $r34 == null 
(define-const var279 Bool true) ; Statement: $z0 = r6 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var279 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var3851 25 var317)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var3851!1 var184)
(declare-const var3413 Int)
(declare-const var317!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var3851!1 192 var778)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3) 

(declare-const var3851!2 var184)
(declare-const var1595 Int)
(declare-const var778!1 String)
(define-const var2646 String (var918_getName/-545027370 var3363)) ; Statement: $r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>() 
(define-const var2674 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2674)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2674!1 String)
(assert (= var2674!1 ""))
(assert true)
(define-const var1292 String (append/672562846 var2674!1 "()")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var2674!2 String)
(assert (= var2674!2 (str.++ var2674!1 "()")))
(define-const var3305 String (var649_desc/1182016152 var2775)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35) 
(assert true)
(define-const var3143 String (append/672562846 var1292 var3305)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1292!1 String)
(assert (= var1292!1 (str.++ var1292 var3305)))
(assert true)
(define-const var2067 String (toString/-2075883882 var3143)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var3851!2 182 var778!1 var2646 var2067 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0) 

(declare-const var3851!3 var184)
(declare-const var841 Int)
(declare-const var778!2 String)
(declare-const var2646!1 String)
(declare-const var2067!1 String)
(declare-const var2973 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), var649_type/-1892533503=([java.lang.Class], java.lang.String), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var2506-to-var918=([java.lang.reflect.Method], java.lang.reflect.Member), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), var918_getName/-545027370=([java.lang.reflect.Member], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var649_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2452=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3376=r18, var1982=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var854=r0, var3950=com.alibaba.fastjson2.writer.FieldWriter, var451=r4, var1314=i3, var317=i1, var184=com.alibaba.fastjson2.internal.asm.MethodWriter, var3851=r1, var92=r2, var649=com.alibaba.fastjson2.internal.asm.ASMUtils, var174=$r36, var778=r3, var2775=$r35, var2506=java.lang.reflect.Method, var2074=$r5, var918=java.lang.reflect.Member, var3091=$r37, var3363=r6, var2443=java.util.function.Function, var2441=$r34, var279=$z0, var3413=25, var1595=192, var2646=$r27, var2674=$r22, var1292=$r24, var3305=$r23, var3143=$r25, var2067=$r26, var841=182, var2973=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2452, r18=var3376, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1982, r0=var854, com.alibaba.fastjson2.writer.FieldWriter=var3950, r4=var451, i3=var1314, i1=var317, com.alibaba.fastjson2.internal.asm.MethodWriter=var184, r1=var3851, r2=var92, com.alibaba.fastjson2.internal.asm.ASMUtils=var649, $r36=var174, r3=var778, $r35=var2775, java.lang.reflect.Method=var2506, $r5=var2074, java.lang.reflect.Member=var918, $r37=var3091, r6=var3363, java.util.function.Function=var2443, $r34=var2441, $z0=var279, 25=var3413, 192=var1595, $r27=var2646, $r22=var2674, $r24=var1292, $r23=var3305, $r25=var3143, $r26=var2067, 182=var841, 0=var2973}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	goto [?= r6 = $r37];	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method;	$z0 = r6 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3);	$r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0);	return
;block_num 8