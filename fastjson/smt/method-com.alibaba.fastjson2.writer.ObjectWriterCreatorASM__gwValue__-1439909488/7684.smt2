(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1277 0)
(declare-sort var1369 0)
(declare-sort var2867 0)
(declare-sort var3958 0)
(declare-sort var1538 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const String!class ClassObject)
(declare-fun mw/1968396404 (var1369) var3958)
(declare-fun fieldClass/-2048851183 (var2867) ClassObject)
(declare-fun genGetObject/-2113871742 (var1277 var1369 var2867 Int Int) void)
(declare-fun visitTypeInsn/1924483459 (var3958 Int String) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var/1427438936 (var1369 var1538) Int)
(declare-fun cast-from-String-to-var1538 (String) var1538)
(declare-fun visitVarInsn/-915853820 (var3958 Int Int) void)
(declare-fun var1277_gwString/1014499970 (var1369 Bool Bool Int) void)
(declare-const null-var1277 var1277)
(declare-const null-var1369 var1369)
(declare-const null-var2867 var2867)
(declare-const null-Int Int)
(declare-const var602 var1277) ; Statement: r4 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM 
(assert (not (= var602 null-var1277)))
(declare-const var1535 var1369) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext 
(assert (not (= var1535 null-var1369)))
(declare-const var3689 var2867) ; Statement: r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter 
(assert (not (= var3689 null-var2867)))
(declare-const var2596 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2596 null-Int)))
(declare-const var2956 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var2956 null-Int)))
(define-const var1266 var3958 (mw/1968396404 var1535)) ; Statement: r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw> 
(define-const var851 ClassObject (fieldClass/-2048851183 var3689)) ; Statement: r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
 ; Statement: if r3 != class "Ljava/lang/String;" goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1) 
(assert (not (not (= var851 String!class)))) ; Negate: Cond: r3 != class "Ljava/lang/String;"  
(assert true)
;(assert (genGetObject/-2113871742 var602 var1535 var3689 var2956 var2596)) ; Statement: virtualinvoke r4.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i0, i1) 

(declare-const var602!1 var1277)
(declare-const var1535!1 var1369)
(declare-const var3689!1 var2867)
(declare-const var2956!1 Int)
(declare-const var2596!1 Int)
(assert true)
;(assert (visitTypeInsn/1924483459 var1266 192 "java/lang/String")) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, "java/lang/String") 

(declare-const var1266!1 var3958)
(declare-const var3801 Int)
(declare-const var428 String)
(define-const var2483 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2483)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2483!1 String)
(assert (= var2483!1 ""))
(assert true)
(define-const var747 String (append/672562846 var2483!1 "FIELD_VALUE_")) ; Statement: $r40 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FIELD_VALUE_") 
(declare-const var2483!2 String)
(assert (= var2483!2 (str.++ var2483!1 "FIELD_VALUE_")))
(define-const var3593 ClassObject (fieldClass/-2048851183 var3689!1)) ; Statement: $r38 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass> 
(assert true)
(define-const var2635 String (getName/-1958580599 var3593)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var830 String (append/672562846 var747 var2635)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39) 
(declare-const var747!1 String)
(assert (= var747!1 (str.++ var747 var2635)))
(assert true)
(define-const var2412 String (toString/-2075883882 var830)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1728 Int (var/1427438936 var1535!1 (cast-from-String-to-var1538 var2412))) ; Statement: i4 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r42) 
(assert true)
;(assert (visitVarInsn/-915853820 var1266!1 58 var1728)) ; Statement: virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i4) 

(declare-const var1266!2 var3958)
(declare-const var3025 Int)
(declare-const var1728!1 Int)
;(assert (var1277_gwString/1014499970 var1535!1 (ite (= 1 0) true false) (ite (= 1 1) true false) var1728!1)) ; Statement: staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, 0, 1, i4) 

(declare-const var1535!2 var1369)
(declare-const var2183 Int)
(declare-const var3139 Int)
(declare-const var1728!2 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {mw/1968396404=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext], com.alibaba.fastjson2.internal.asm.MethodWriter), fieldClass/-2048851183=([com.alibaba.fastjson2.writer.FieldWriter], java.lang.Class), genGetObject/-2113871742=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, com.alibaba.fastjson2.writer.FieldWriter, int, int], void), visitTypeInsn/1924483459=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, java.lang.String], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var/1427438936=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, java.lang.Object], int), cast-from-String-to-var1538=([java.lang.String], java.lang.Object), visitVarInsn/-915853820=([com.alibaba.fastjson2.internal.asm.MethodWriter, int, int], void), var1277_gwString/1014499970=([com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, boolean, boolean, int], void)}
; {var1277=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM, var602=r4, var1369=com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext, var1535=r0, var2867=com.alibaba.fastjson2.writer.FieldWriter, var3689=r2, var2596=i1, var2956=i0, var3958=com.alibaba.fastjson2.internal.asm.MethodWriter, var1266=r1, var851=r3, var3801=192, var428="java/lang/String", var2483=$r37, var747=$r40, var3593=$r38, var2635=$r39, var830=$r41, var2412=$r42, var1538=java.lang.Object, var1728=i4, var3025=58, var2183=0, var3139=1}
; {com.alibaba.fastjson2.writer.ObjectWriterCreatorASM=var1277, r4=var602, com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext=var1369, r0=var1535, com.alibaba.fastjson2.writer.FieldWriter=var2867, r2=var3689, i1=var2596, i0=var2956, com.alibaba.fastjson2.internal.asm.MethodWriter=var3958, r1=var1266, r3=var851, 192=var3801, "java/lang/String"=var428, $r37=var2483, $r40=var747, $r38=var3593, $r39=var2635, $r41=var830, $r42=var2412, java.lang.Object=var1538, i4=var1728, 58=var3025, 0=var2183, 1=var3139}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM;	r0 := @parameter0: com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext;	r2 := @parameter1: com.alibaba.fastjson2.writer.FieldWriter;	i1 := @parameter2: int;	i0 := @parameter3: int;	r1 = r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: com.alibaba.fastjson2.internal.asm.MethodWriter mw>;	r3 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	if r3 != class "Ljava/lang/String;" goto virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(25, 1);	virtualinvoke r4.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void genGetObject(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,com.alibaba.fastjson2.writer.FieldWriter,int,int)>(r0, r2, i0, i1);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitTypeInsn(int,java.lang.String)>(192, "java/lang/String");	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r40 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("FIELD_VALUE_");	$r38 = r2.<com.alibaba.fastjson2.writer.FieldWriter: java.lang.Class fieldClass>;	$r39 = virtualinvoke $r38.<java.lang.Class: java.lang.String getName()>();	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r39);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	i4 = virtualinvoke r0.<com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext: int var(java.lang.Object)>($r42);	virtualinvoke r1.<com.alibaba.fastjson2.internal.asm.MethodWriter: void visitVarInsn(int,int)>(58, i4);	staticinvoke <com.alibaba.fastjson2.writer.ObjectWriterCreatorASM: void gwString(com.alibaba.fastjson2.writer.ObjectWriterCreatorASM$MethodWriterContext,boolean,boolean,int)>(r0, 0, 1, i4);	return
;block_num 2