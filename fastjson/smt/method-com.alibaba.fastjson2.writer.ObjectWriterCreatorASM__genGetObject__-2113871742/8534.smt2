(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2890 0)
(declare-sort var3615 0)
(declare-sort var965 0)
(declare-sort var679 0)
(declare-sort var1687 0)
(declare-sort var3137 0)
(declare-sort var2913 0)
(declare-sort var3697 0)
(declare-sort var1852 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3615) var679)
(declare-fun objectClass/1968396404 (var3615) ClassObject)
(declare-fun var1687_type/-1892533503 (ClassObject) String)
(declare-fun fieldClass/-2048851183 (var965) ClassObject)
(declare-fun method/-2048851183 (var965) var3137)
(declare-fun cast-from-var3697-to-var2913 (var3697) var2913)
(declare-fun field/-2048851183 (var965) var3697)
(declare-fun getFunction/604745076 (var965) var1852)
(declare-fun visitVarInsn/-915853820 (var679 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var679 Int String) void)
(declare-fun var2913_getName/-545027370 (var2913) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1687_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var679 Int String String String Bool) void)
(declare-const null-var2890 var2890)
(declare-const null-var3615 var3615)
(declare-const null-var965 var965)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3137 var3137)
(declare-const null-var2913 var2913)
(declare-const null-var1852 var1852)
(declare-const var1589 var2890) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1589 null-var2890)))
(declare-const var2208 var3615) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2208 null-var3615)))
(declare-const var1376 var965) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var1376 null-var965)))
(declare-const var2499 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2499 null-Int)))
(declare-const var3858 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3858 null-Int)))
(define-const var1833 var679 (mw/1968396404 var2208)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var3511 ClassObject (objectClass/1968396404 var2208)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (= var3511 null-ClassObject))) ; Cond: r2 != null 
(define-const var1400 String (var1687_type/-1892533503 var3511)) ; Statement: $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert true) ; Non Conditional
(define-const var2071 String var1400) ; Statement: r3 = $r36 
(define-const var1782 ClassObject (fieldClass/-2048851183 var1376)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var447 var3137 (method/-2048851183 var1376)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (= var447 null-var3137)) ; Cond: $r5 == null 
(define-const var77 var2913 (cast-from-var3697-to-var2913 (field/-2048851183 var1376))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert true) ; Non Conditional
(define-const var445 var2913 var77) ; Statement: r6 = $r37 
(assert true)
(define-const var291 var1852 (getFunction/604745076 var1376)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (not (= var77 null-var2913)))) ; Negate: Cond: $r37 != null  
 ; Statement: if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (= var291 null-var1852)) ; Cond: $r34 == null 
(define-const var2934 Bool true) ; Statement: $z0 = r6 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var2934 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var1833 25 var3858)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var1833!1 var679)
(declare-const var3755 Int)
(declare-const var3858!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var1833!1 192 var2071)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3) 

(declare-const var1833!2 var679)
(declare-const var3438 Int)
(declare-const var2071!1 String)
(define-const var1281 String (var2913_getName/-545027370 var445)) ; Statement: $r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>() 
(define-const var2288 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2288)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2288!1 String)
(assert (= var2288!1 ""))
(assert true)
(define-const var2871 String (append/672562846 var2288!1 "()")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var2288!2 String)
(assert (= var2288!2 (str.++ var2288!1 "()")))
(define-const var2793 String (var1687_desc/1182016152 var1782)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35) 
(assert true)
(define-const var2478 String (append/672562846 var2871 var2793)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2871!1 String)
(assert (= var2871!1 (str.++ var2871 var2793)))
(assert true)
(define-const var2784 String (toString/-2075883882 var2478)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var1833!2 182 var2071!1 var1281 var2784 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0) 

(declare-const var1833!3 var679)
(declare-const var156 Int)
(declare-const var2071!2 String)
(declare-const var1281!1 String)
(declare-const var2784!1 String)
(declare-const var304 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), var1687_type/-1892533503=([java.lang.Class], java.lang.String), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3697-to-var2913=([java.lang.reflect.Field], java.lang.reflect.Member), field/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Field), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), var2913_getName/-545027370=([java.lang.reflect.Member], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1687_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2890=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1589=r18, var3615=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2208=r0, var965=com.alibaba.fastjson2.writer.FieldWriter, var1376=r4, var2499=i3, var3858=i1, var679=com.alibaba.fastjson2.internal.asm.MethodWriter, var1833=r1, var3511=r2, var1687=com.alibaba.fastjson2.internal.asm.ASMUtils, var1400=$r36, var2071=r3, var1782=$r35, var3137=java.lang.reflect.Method, var447=$r5, var2913=java.lang.reflect.Member, var3697=java.lang.reflect.Field, var77=$r37, var445=r6, var1852=java.util.function.Function, var291=$r34, var2934=$z0, var3755=25, var3438=192, var1281=$r27, var2288=$r22, var2871=$r24, var2793=$r23, var2478=$r25, var2784=$r26, var156=182, var304=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2890, r18=var1589, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3615, r0=var2208, com.alibaba.fastjson2.writer.FieldWriter=var965, r4=var1376, i3=var2499, i1=var3858, com.alibaba.fastjson2.internal.asm.MethodWriter=var679, r1=var1833, r2=var3511, com.alibaba.fastjson2.internal.asm.ASMUtils=var1687, $r36=var1400, r3=var2071, $r35=var1782, java.lang.reflect.Method=var3137, $r5=var447, java.lang.reflect.Member=var2913, java.lang.reflect.Field=var3697, $r37=var77, r6=var445, java.util.function.Function=var1852, $r34=var291, $z0=var2934, 25=var3755, 192=var3438, $r27=var1281, $r22=var2288, $r24=var2871, $r23=var2793, $r25=var2478, $r26=var2784, 182=var156, 0=var304}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method;	$z0 = r6 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3);	$r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0);	return
;block_num 8