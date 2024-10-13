(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2912 0)
(declare-sort var3509 0)
(declare-sort var3054 0)
(declare-sort var2558 0)
(declare-sort var3341 0)
(declare-sort var3799 0)
(declare-sort var3781 0)
(declare-sort var3611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun mw/1968396404 (var3509) var2558)
(declare-fun objectClass/1968396404 (var3509) ClassObject)
(declare-fun fieldClass/-2048851183 (var3054) ClassObject)
(declare-fun method/-2048851183 (var3054) var3341)
(declare-fun cast-from-var3341-to-var3799 (var3341) var3799)
(declare-fun getFunction/604745076 (var3054) var3781)
(declare-fun visitVarInsn/-915853820 (var2558 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var2558 Int String) void)
(declare-fun var3799_getName/-545027370 (var3799) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3611_desc/1182016152 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun visitMethodInsn/-527702312 (var2558 Int String String String Bool) void)
(declare-const null-var2912 var2912)
(declare-const null-var3509 var3509)
(declare-const null-var3054 var3054)
(declare-const null-Int Int)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3341 var3341)
(declare-const null-var3799 var3799)
(declare-const null-var3781 var3781)
(declare-const var3773 var2912) ; Statement: r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var3773 null-var2912)))
(declare-const var532 var3509) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var532 null-var3509)))
(declare-const var3994 var3054) ; Statement: r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3994 null-var3054)))
(declare-const var2981 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2981 null-Int)))
(declare-const var2047 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var2047 null-Int)))
(define-const var3148 var2558 (mw/1968396404 var532)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var136 ClassObject (objectClass/1968396404 var532)) ; Statement: r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass> 
 ; Statement: if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2) 
(assert (not (not (= var136 null-ClassObject)))) ; Negate: Cond: r2 != null  
(define-const var110 String "java/lang/Object") ; Statement: $r36 = "java/lang/Object" 
 ; Statement: goto [?= r3 = $r36] 
(assert true) ; Non Conditional
(define-const var3140 String var110) ; Statement: r3 = $r36 
(define-const var3046 ClassObject (fieldClass/-2048851183 var3994)) ; Statement: $r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(define-const var3516 var3341 (method/-2048851183 var3994)) ; Statement: $r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field> 
(assert (not (= var3516 null-var3341))) ; Negate: Cond: $r5 == null  
(define-const var780 var3799 (cast-from-var3341-to-var3799 (method/-2048851183 var3994))) ; Statement: $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method> 
 ; Statement: goto [?= r6 = $r37] 
(assert true) ; Non Conditional
(define-const var1978 var3799 var780) ; Statement: r6 = $r37 
(assert true)
(define-const var3613 var3781 (getFunction/604745076 var3994)) ; Statement: $r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>() 
 ; Statement: if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (not (not (= var780 null-var3799)))) ; Negate: Cond: $r37 != null  
 ; Statement: if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method 
(assert (= var3613 null-var3781)) ; Cond: $r34 == null 
(define-const var2743 Bool true) ; Statement: $z0 = r6 instanceof java.lang.reflect.Method 
 ; Statement: if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>() 
(assert (not (= (ite var2743 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (visitVarInsn/-915853820 var3148 25 var2047)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1) 

(declare-const var3148!1 var2558)
(declare-const var2110 Int)
(declare-const var2047!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var3148!1 192 var3140)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3) 

(declare-const var3148!2 var2558)
(declare-const var2618 Int)
(declare-const var3140!1 String)
(define-const var1601 String (var3799_getName/-545027370 var1978)) ; Statement: $r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>() 
(define-const var953 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var953)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var953!1 String)
(assert (= var953!1 ""))
(assert true)
(define-const var1333 String (append/672562846 var953!1 "()")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()") 
(declare-const var953!2 String)
(assert (= var953!2 (str.++ var953!1 "()")))
(define-const var1156 String (var3611_desc/1182016152 var3046)) ; Statement: $r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35) 
(assert true)
(define-const var3317 String (append/672562846 var1333 var1156)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1333!1 String)
(assert (= var1333!1 (str.++ var1333 var1156)))
(assert true)
(define-const var601 String (toString/-2075883882 var3317)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (visitMethodInsn/-527702312 var3148!2 182 var3140!1 var1601 var601 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0) 

(declare-const var3148!3 var2558)
(declare-const var2808 Int)
(declare-const var3140!2 String)
(declare-const var1601!1 String)
(declare-const var601!1 String)
(declare-const var2864 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), objectClass/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], java.lang.Class), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), method/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.reflect.Method), cast-from-var3341-to-var3799=([java.lang.reflect.Method], java.lang.reflect.Member), getFunction/604745076=([com.alibaba.fastjson2.writer.FieldWriter], java.util.function.Function), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), var3799_getName/-545027370=([java.lang.reflect.Member], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3611_desc/1182016152=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), visitMethodInsn/-527702312=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2912=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var3773=r18, var3509=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var532=r0, var3054=com.alibaba.fastjson2.writer.FieldWriter, var3994=r4, var2981=i3, var2047=i1, var2558=com.alibaba.fastjson2.internal.asm.MethodWriter, var3148=r1, var136=r2, var110=$r36, var3140=r3, var3046=$r35, var3341=java.lang.reflect.Method, var3516=$r5, var3799=java.lang.reflect.Member, var780=$r37, var1978=r6, var3781=java.util.function.Function, var3613=$r34, var2743=$z0, var2110=25, var2618=192, var1601=$r27, var953=$r22, var1333=$r24, var3611=com.alibaba.fastjson2.internal.asm.ASMUtils, var1156=$r23, var3317=$r25, var601=$r26, var2808=182, var2864=0}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var2912, r18=var3773, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var3509, r0=var532, com.alibaba.fastjson2.writer.FieldWriter=var3054, r4=var3994, i3=var2981, i1=var2047, com.alibaba.fastjson2.internal.asm.MethodWriter=var2558, r1=var3148, r2=var136, $r36=var110, r3=var3140, $r35=var3046, java.lang.reflect.Method=var3341, $r5=var3516, java.lang.reflect.Member=var3799, $r37=var780, r6=var1978, java.util.function.Function=var3781, $r34=var3613, $z0=var2743, 25=var2110, 192=var2618, $r27=var1601, $r22=var953, $r24=var1333, com.alibaba.fastjson2.internal.asm.ASMUtils=var3611, $r23=var1156, $r25=var3317, $r26=var601, 182=var2808, 0=var2864}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r18 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r4 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i3 := @parameter2: int;	i1 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r2 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: java.lang.Class objectClass>;	if r2 != null goto $r36 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String type(java.lang.Class)>(r2);	$r36 = "java/lang/Object";	goto [?= r3 = $r36];	r3 = $r36;	$r35 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r5 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	if $r5 == null goto $r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Field field>;	$r37 = r4.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.reflect.Method method>;	goto [?= r6 = $r37];	r6 = $r37;	$r34 = virtualinvoke r4.<com.alibaba.fastjson2.writer.FieldWriter: java.util.function.Function getFunction()>();	if $r37 != null goto $z0 = r6 instanceof java.lang.reflect.Method;	if $r34 == null goto $z0 = r6 instanceof java.lang.reflect.Method;	$z0 = r6 instanceof java.lang.reflect.Method;	if $z0 == 0 goto $i0 = virtualinvoke r2.<java.lang.Class: int getModifiers()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, r3);	$r27 = interfaceinvoke r6.<java.lang.reflect.Member: java.lang.String getName()>();	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("()");	$r23 = staticinvoke <com.alibaba.fastjson2.internal.asm.ASMUtils: java.lang.String desc(java.lang.Class)>($r35);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, r3, $r27, $r26, 0);	return
;block_num 8