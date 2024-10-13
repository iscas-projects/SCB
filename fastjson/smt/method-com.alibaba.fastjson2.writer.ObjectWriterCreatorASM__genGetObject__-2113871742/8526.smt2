(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1503 0)
(declare-sort var81 0)
(declare-sort var1409 0)
(declare-sort var376 0)
(declare-sort var3282 0)
(declare-sort var3356 0)
(declare-sort var3385 0)
(declare-sort var1627 0)
(declare-sort var3823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var81) var376)
(declare-fun objectClass/1968396404 (var81) ClassObject)
(declare-fun fieldClass/-2048851183 (var1409) ClassObject)
(declare-fun method/-2048851183 (var1409) var3282)
(declare-fun cast-from-var3385-to-var3356 (var3385) var3356)
(declare-fun field/-2048851183 (var1409) var3385)
(declare-fun getFunction/604745076 (var1409) var1627)
(declare-fun visitVarInsn/-915853820 (var376 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var376 Int String) void)
(declare-fun var3356_getName/-545027370 (var3356) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3823_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var376 Int String String String Bool) void)
(declare-const null-var1503 var1503)
(declare-const null-var81 var81)
(declare-const null-var1409 var1409)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3282 var3282)
(declare-const null-var3356 var3356)
(declare-const var2760 var1503) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var2760 null-var1503)))
(declare-const var462 var81) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var462 null-var81)))
(declare-const var2634 var1409) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var2634 null-var1409)))
(declare-const var1391 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1391 null-Int)))
(declare-const var2165 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2165 null-Int)))
(define-const var1299 var376 (mw/1968396404 var462)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var2574 ClassObject (objectClass/1968396404 var462)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (not (= var2574 null-ClassObject)))) ; Negate: Cond: r2 != null  
(define-const var1448 String "java/lang/Object") ; Statement: $r36 = "java/lang/Object" 
 ; Statement: goto [?= r3 = $r36] 
(assert true) ; Non Conditional
(define-const var982 String var1448) ; Statement: r3 = $r36 
(define-const var2059 ClassObject (fieldClass/-2048851183 var2634)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var2179 var3282 (method/-2048851183 var2634)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (= var2179 null-var3282)) ; Cond: $r5 == null 
(define-const var604 var3356 (cast-from-var3385-to-var3356 (field/-2048851183 var2634))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert true) ; Non Conditional
(define-const var980 var3356 var604) ; Statement: r6 = $r37 
(assert true)
(define-const var3352 var1627 (getFunction/604745076 var2634)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (= var604 null-var3356))) ; Cond: $r37 != null 
(define-const var2433 Bool true) ; Statement: $z0 = r6 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var2433 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var1299 25 var2165)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var1299!1 var376)
(declare-const var2366 Int)
(declare-const var2165!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var1299!1 192 var982)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3) 

(declare-const var1299!2 var376)
(declare-const var2802 Int)
(declare-const var982!1 String)
(define-const var1102 String (var3356_getName/-545027370 var980)) ; Statement: $r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>() 
(define-const var2230 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2230)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2230!1 String)
(assert (= var2230!1 ""))
(assert true)
(define-const var1689 String (append/672562846 var2230!1 "()")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var2230!2 String)
(assert (= var2230!2 (str.++ var2230!1 "()")))
(define-const var990 String (var3823_desc/1182016152 var2059)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35) 
(assert true)
(define-const var1179 String (append/672562846 var1689 var990)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1689!1 String)
(assert (= var1689!1 (str.++ var1689 var990)))
(assert true)
(define-const var2979 String (toString/-2075883882 var1179)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var1299!2 182 var982!1 var1102 var2979 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0) 

(declare-const var1299!3 var376)
(declare-const var2556 Int)
(declare-const var982!2 String)
(declare-const var1102!1 String)
(declare-const var2979!1 String)
(declare-const var2733 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3385-to-var3356=([java.lang.reflect.Field], java.lang.reflect.Member), field/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Field), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), var3356_getName/-545027370=([java.lang.reflect.Member], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3823_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var1503=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var2760=r18, var81=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var462=r0, var1409=com.alibaba.fastjson2.writer.FieldWriter, var2634=r4, var1391=i3, var2165=i1, var376=com.alibaba.fastjson2.internal.asm.MethodWriter, var1299=r1, var2574=r2, var1448=$r36, var982=r3, var2059=$r35, var3282=java.lang.reflect.Method, var2179=$r5, var3356=java.lang.reflect.Member, var3385=java.lang.reflect.Field, var604=$r37, var980=r6, var1627=java.util.function.Function, var3352=$r34, var2433=$z0, var2366=25, var2802=192, var1102=$r27, var2230=$r22, var1689=$r24, var3823=com.alibaba.fastjson2.internal.asm.ASMUtils, var990=$r23, var1179=$r25, var2979=$r26, var2556=182, var2733=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1503, r18=var2760, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var81, r0=var462, com.alibaba.fastjson2.writer.FieldWriter=var1409, r4=var2634, i3=var1391, i1=var2165, com.alibaba.fastjson2.internal.asm.MethodWriter=var376, r1=var1299, r2=var2574, $r36=var1448, r3=var982, $r35=var2059, java.lang.reflect.Method=var3282, $r5=var2179, java.lang.reflect.Member=var3356, java.lang.reflect.Field=var3385, $r37=var604, r6=var980, java.util.function.Function=var1627, $r34=var3352, $z0=var2433, 25=var2366, 192=var2802, $r27=var1102, $r22=var2230, $r24=var1689, com.alibaba.fastjson2.internal.asm.ASMUtils=var3823, $r23=var990, $r25=var1179, $r26=var2979, 182=var2556, 0=var2733}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = "java/lang/Object";	goto [?= r3 = $r36];	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	$z0 = r6 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3);	$r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0);	return
;block_num 7