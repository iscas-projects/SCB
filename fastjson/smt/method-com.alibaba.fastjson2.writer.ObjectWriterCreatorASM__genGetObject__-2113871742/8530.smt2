(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3326 0)
(declare-sort var3436 0)
(declare-sort var3234 0)
(declare-sort var635 0)
(declare-sort var3257 0)
(declare-sort var1107 0)
(declare-sort var1635 0)
(declare-sort var3872 0)
(declare-sort var1052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3436) var635)
(declare-fun objectClass/1968396404 (var3436) ClassObject)
(declare-fun var3257_type/-1892533503 (ClassObject) String)
(declare-fun fieldClass/-2048851183 (var3234) ClassObject)
(declare-fun method/-2048851183 (var3234) var1107)
(declare-fun cast-from-var3872-to-var1635 (var3872) var1635)
(declare-fun field/-2048851183 (var3234) var3872)
(declare-fun getFunction/604745076 (var3234) var1052)
(declare-fun visitVarInsn/-915853820 (var635 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var635 Int String) void)
(declare-fun var1635_getName/-545027370 (var1635) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3257_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var635 Int String String String Bool) void)
(declare-const null-var3326 var3326)
(declare-const null-var3436 var3436)
(declare-const null-var3234 var3234)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1107 var1107)
(declare-const null-var1635 var1635)
(declare-const var1482 var3326) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var1482 null-var3326)))
(declare-const var2920 var3436) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var2920 null-var3436)))
(declare-const var574 var3234) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var574 null-var3234)))
(declare-const var3244 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var3244 null-Int)))
(declare-const var3904 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3904 null-Int)))
(define-const var1162 var635 (mw/1968396404 var2920)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var2834 ClassObject (objectClass/1968396404 var2920)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (= var2834 null-ClassObject))) ; Cond: r2 != null 
(define-const var2053 String (var3257_type/-1892533503 var2834)) ; Statement: $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert true) ; Non Conditional
(define-const var3716 String var2053) ; Statement: r3 = $r36 
(define-const var2244 ClassObject (fieldClass/-2048851183 var574)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var3246 var1107 (method/-2048851183 var574)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (= var3246 null-var1107)) ; Cond: $r5 == null 
(define-const var363 var1635 (cast-from-var3872-to-var1635 (field/-2048851183 var574))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert true) ; Non Conditional
(define-const var169 var1635 var363) ; Statement: r6 = $r37 
(assert true)
(define-const var2127 var1052 (getFunction/604745076 var574)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (= var363 null-var1635))) ; Cond: $r37 != null 
(define-const var3580 Bool true) ; Statement: $z0 = r6 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var3580 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var1162 25 var3904)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var1162!1 var635)
(declare-const var625 Int)
(declare-const var3904!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var1162!1 192 var3716)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3) 

(declare-const var1162!2 var635)
(declare-const var3983 Int)
(declare-const var3716!1 String)
(define-const var2521 String (var1635_getName/-545027370 var169)) ; Statement: $r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>() 
(define-const var85 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var85)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var85!1 String)
(assert (= var85!1 ""))
(assert true)
(define-const var3579 String (append/672562846 var85!1 "()")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var85!2 String)
(assert (= var85!2 (str.++ var85!1 "()")))
(define-const var3110 String (var3257_desc/1182016152 var2244)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35) 
(assert true)
(define-const var3655 String (append/672562846 var3579 var3110)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var3579!1 String)
(assert (= var3579!1 (str.++ var3579 var3110)))
(assert true)
(define-const var1722 String (toString/-2075883882 var3655)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var1162!2 182 var3716!1 var2521 var1722 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0) 

(declare-const var1162!3 var635)
(declare-const var1379 Int)
(declare-const var3716!2 String)
(declare-const var2521!1 String)
(declare-const var1722!1 String)
(declare-const var1149 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), var3257_type/-1892533503=([java.lang.Class], java.lang.String), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3872-to-var1635=([java.lang.reflect.Field], java.lang.reflect.Member), field/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Field), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), var1635_getName/-545027370=([java.lang.reflect.Member], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3257_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3326=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var1482=r18, var3436=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var2920=r0, var3234=com.alibaba.fastjson2.writer.FieldWriter, var574=r4, var3244=i3, var3904=i1, var635=com.alibaba.fastjson2.internal.asm.MethodWriter, var1162=r1, var2834=r2, var3257=com.alibaba.fastjson2.internal.asm.ASMUtils, var2053=$r36, var3716=r3, var2244=$r35, var1107=java.lang.reflect.Method, var3246=$r5, var1635=java.lang.reflect.Member, var3872=java.lang.reflect.Field, var363=$r37, var169=r6, var1052=java.util.function.Function, var2127=$r34, var3580=$z0, var625=25, var3983=192, var2521=$r27, var85=$r22, var3579=$r24, var3110=$r23, var3655=$r25, var1722=$r26, var1379=182, var1149=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var3326, r18=var1482, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3436, r0=var2920, com.alibaba.fastjson2.writer.FieldWriter=var3234, r4=var574, i3=var3244, i1=var3904, com.alibaba.fastjson2.internal.asm.MethodWriter=var635, r1=var1162, r2=var2834, com.alibaba.fastjson2.internal.asm.ASMUtils=var3257, $r36=var2053, r3=var3716, $r35=var2244, java.lang.reflect.Method=var1107, $r5=var3246, java.lang.reflect.Member=var1635, java.lang.reflect.Field=var3872, $r37=var363, r6=var169, java.util.function.Function=var1052, $r34=var2127, $z0=var3580, 25=var625, 192=var3983, $r27=var2521, $r22=var85, $r24=var3579, $r23=var3110, $r25=var3655, $r26=var1722, 182=var1379, 0=var1149}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	$z0 = r6 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3);	$r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0);	return
;block_num 7