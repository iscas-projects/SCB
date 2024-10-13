(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1344 0)
(declare-sort var1004 0)
(declare-sort var1140 0)
(declare-sort var2567 0)
(declare-sort var1152 0)
(declare-sort var360 0)
(declare-sort var1381 0)
(declare-sort var1515 0)
(declare-sort var3354 0)
(declare-sort var1777 0)
(declare-sort var267 0)
(declare-sort var1153 0)
(declare-sort var1765 0)
(declare-sort var2600 0)
(declare-sort var440 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3354!class ClassObject)
(declare-const var267!class ClassObject)
(declare-const String!class ClassObject)
(declare-fun persistentFieldAsDefined/1239702758 (var1344) var1152)
(declare-fun var1152_getType/-1495628553 (var1152) var360)
(declare-fun var360_isPrimitive/976449198 (var360) Bool)
(declare-fun var360_asErasure/-1205814801 (var360) var1381)
(declare-fun visitVarInsn/-1960990921 (var1004 Int Int) void)
(declare-fun managedCtClass/1239702758 (var1344) var1381)
(declare-fun var1381_getInternalName/607692407 (var1381) String)
(declare-fun var1515_getType/-1581227099 (ClassObject) var1515)
(declare-fun arr-var1515-init () (Array Int var1515))
(declare-fun var1515_getMethodDescriptor/1714375689 (var1515 (Array Int var1515)) String)
(declare-fun visitMethodInsn/-1690375605 (var1004 Int String String String Bool) void)
(declare-fun var1777-init () var1777)
(declare-fun <init>/2082491926 (var1777) void)
(declare-fun visitJumpInsn/-1648307110 (var1004 Int var1777) void)
(declare-fun var1152_getName/-182223371 (var1152) String)
(declare-fun visitLdcInsn/993252084 (var1004 var267) void)
(declare-fun cast-from-String-to-var267 (String) var267)
(declare-fun fieldRead/469705703 (var1344 var1004) void)
(declare-fun var1381_getDescriptor/-815490800 (var1381) String)
(declare-fun var1515_getType/-670772978 (String) var1515)
(declare-fun getOpcode/858132300 (var1515 Int) Int)
(declare-fun var1515_getInternalName/-319692553 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1381_getSimpleName/-1846163870 (var1381) String)
(declare-fun var1153_capitalize/-2093178097 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1381_isPrimitive/72266651 (var1381) Bool)
(declare-fun fieldWrite/-1996681868 (var1344 var1004) void)
(declare-fun visitInsn/-522444309 (var1004 Int) void)
(declare-fun visitLabel/-1047844545 (var1004 var1777) void)
(declare-fun var1140_getClassFileVersion/1582306684 (var1140) var1765)
(declare-fun isAtLeast/-1748342699 (var1765 var1765) Bool)
(declare-fun var2600-init () var2600)
(declare-fun var360_getStackSize/1525319007 (var360) var440)
(declare-fun getSize/481053644 (var440) Int)
(declare-fun var2567_getStackSize/1477814934 (var2567) Int)
(declare-fun <init>/241536392 (var2600 Int Int) void)
(declare-const null-var1344 var1344)
(declare-const null-var1004 var1004)
(declare-const null-var1140 var1140)
(declare-const null-var2567 var2567)
(declare-const null-__Array__Int__var1515__ (Array Int var1515))
(declare-const var1765-JAVA_V6 var1765)
(declare-const var3734 var1344) ; Statement: r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender 
(assert (not (= var3734 null-var1344)))
(declare-const var3442 var1004) ; Statement: r4 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var3442 null-var1004)))
(declare-const var3586 var1140) ; Statement: r37 := @parameter1: net.bytebuddy.implementation.Implementation$Context 
(assert (not (= var3586 null-var1140)))
(declare-const var2081 var2567) ; Statement: r46 := @parameter2: net.bytebuddy.description.method.MethodDescription 
(assert (not (= var2081 null-var2567)))
(define-const var2559 var1152 (persistentFieldAsDefined/1239702758 var3734)) ; Statement: $r1 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var2577 var360 (var1152_getType/-1495628553 var2559)) ; Statement: $r2 = interfaceinvoke $r1.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var579 Bool (var360_isPrimitive/976449198 var2577)) ; Statement: $z0 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r57 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT> 
(assert (not (= (ite var579 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var420 var1152 (persistentFieldAsDefined/1239702758 var3734)) ; Statement: $r55 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var1887 var360 (var1152_getType/-1495628553 var420)) ; Statement: $r56 = interfaceinvoke $r55.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var2130 var1381 (var360_asErasure/-1205814801 var1887)) ; Statement: $r57 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
 ; Statement: goto [?= r3 = $r57] 
(assert true) ; Non Conditional
(define-const var1329 var1381 var2130) ; Statement: r3 = $r57 
(assert true)
;(assert (visitVarInsn/-1960990921 var3442 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3442!1 var1004)
(declare-const var3164 Int)
(declare-const var3016 Int)
(define-const var3067 var1381 (managedCtClass/1239702758 var3734)) ; Statement: $r5 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var129 String (var1381_getInternalName/607692407 var3067)) ; Statement: $r9 = interfaceinvoke $r5.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var3027 var1515 (var1515_getType/-1581227099 var3354!class)) ; Statement: $r7 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var1993 (Array Int var1515) arr-var1515-init) ; Statement: $r6 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var2662 String (var1515_getMethodDescriptor/1714375689 var3027 var1993)) ; Statement: $r8 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r7, $r6) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var3442!1 182 var129 "$$_hibernate_getInterceptor" var2662 (ite (= 1 0) true false))) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r9, "$$_hibernate_getInterceptor", $r8, 0) 

(declare-const var3442!2 var1004)
(declare-const var2541 Int)
(declare-const var129!1 String)
(declare-const var436 String)
(declare-const var2662!1 String)
(declare-const var3016!1 Int)
(define-const var355 var1777 var1777-init) ; Statement: $r10 = new net.bytebuddy.jar.asm.Label 
(assert true)
;(assert (<init>/2082491926 var355)) ; Statement: specialinvoke $r10.<net.bytebuddy.jar.asm.Label: void <init>()>() 

(declare-const var355!1 var1777)
(assert true)
;(assert (visitJumpInsn/-1648307110 var3442!2 198 var355!1)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(198, $r10) 

(declare-const var3442!3 var1004)
(declare-const var3338 Int)
(declare-const var355!2 var1777)
(assert true)
;(assert (visitVarInsn/-1960990921 var3442!3 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3442!4 var1004)
(declare-const var3164!1 Int)
(declare-const var3016!2 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var3442!4 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3442!5 var1004)
(declare-const var3164!2 Int)
(declare-const var3016!3 Int)
(define-const var3096 var1381 (managedCtClass/1239702758 var3734)) ; Statement: $r11 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var1812 String (var1381_getInternalName/607692407 var3096)) ; Statement: $r15 = interfaceinvoke $r11.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var2739 var1515 (var1515_getType/-1581227099 var3354!class)) ; Statement: $r13 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var2506 (Array Int var1515) arr-var1515-init) ; Statement: $r12 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var2144 String (var1515_getMethodDescriptor/1714375689 var2739 var2506)) ; Statement: $r14 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r13, $r12) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var3442!5 182 var1812 "$$_hibernate_getInterceptor" var2144 (ite (= 1 0) true false))) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r15, "$$_hibernate_getInterceptor", $r14, 0) 

(declare-const var3442!6 var1004)
(declare-const var2541!1 Int)
(declare-const var1812!1 String)
(declare-const var436!1 String)
(declare-const var2144!1 String)
(declare-const var3016!4 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var3442!6 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3442!7 var1004)
(declare-const var3164!3 Int)
(declare-const var3016!5 Int)
(define-const var1384 var1152 (persistentFieldAsDefined/1239702758 var3734)) ; Statement: $r16 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var1100 String (var1152_getName/-182223371 var1384)) ; Statement: $r17 = interfaceinvoke $r16.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
;(assert (visitLdcInsn/993252084 var3442!7 (cast-from-String-to-var267 var1100))) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r17) 

(declare-const var3442!8 var1004)
(declare-const var1100!1 String)
(assert true)
;(assert (visitVarInsn/-1960990921 var3442!8 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3442!9 var1004)
(declare-const var3164!4 Int)
(declare-const var3016!6 Int)
(assert true)
;(assert (fieldRead/469705703 var3734 var3442!9)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 

(declare-const var3734!1 var1344)
(declare-const var3442!10 var1004)
(define-const var339 String (var1381_getDescriptor/-815490800 var2130)) ; Statement: $r18 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var576 var1515 (var1515_getType/-670772978 var339)) ; Statement: $r19 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r18) 
(assert true)
(define-const var487 Int (getOpcode/858132300 var576 21)) ; Statement: $i0 = virtualinvoke $r19.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21) 
(assert true)
;(assert (visitVarInsn/-1960990921 var3442!10 var487 1)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i0, 1) 

(declare-const var3442!11 var1004)
(declare-const var487!1 Int)
(declare-const var623 Int)
(define-const var2295 String (var1515_getInternalName/-319692553 var3354!class)) ; Statement: $r36 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var2759 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2759)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2759!1 String)
(assert (= var2759!1 ""))
(assert true)
(define-const var3876 String (append/672562846 var2759!1 "write")) ; Statement: $r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write") 
(declare-const var2759!2 String)
(assert (= var2759!2 (str.++ var2759!1 "write")))
(define-const var3775 String (var1381_getSimpleName/-1846163870 var2130)) ; Statement: $r21 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getSimpleName()>() 
(define-const var3028 String (var1153_capitalize/-2093178097 var3775)) ; Statement: $r22 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: java.lang.String capitalize(java.lang.String)>($r21) 
(assert true)
(define-const var1375 String (append/672562846 var3876 var3028)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3876!1 String)
(assert (= var3876!1 (str.++ var3876 var3028)))
(assert true)
(define-const var255 String (toString/-2075883882 var1375)) ; Statement: $r35 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var944 String (var1381_getDescriptor/-815490800 var2130)) ; Statement: $r25 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var3943 var1515 (var1515_getType/-670772978 var944)) ; Statement: $r33 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r25) 
(define-const var2723 (Array Int var1515) arr-var1515-init) ; Statement: $r26 = newarray (net.bytebuddy.jar.asm.Type)[4] 
(define-const var2664 var1515 (var1515_getType/-1581227099 var267!class)) ; Statement: $r27 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/Object;") 
(declare-const var2723!1 (Array Int var1515))
(assert (not (= var2723!1 null-__Array__Int__var1515__)))
(assert (= (select var2723!1 0) var2664)) ; Statement: $r26[0] = $r27 
(define-const var2912 var1515 (var1515_getType/-1581227099 String!class)) ; Statement: $r28 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/String;") 
(declare-const var2723!2 (Array Int var1515))
(assert (not (= var2723!2 null-__Array__Int__var1515__)))
(assert (= (select var2723!2 1) var2912)) ; Statement: $r26[1] = $r28 
(define-const var1306 String (var1381_getDescriptor/-815490800 var2130)) ; Statement: $r29 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var814 var1515 (var1515_getType/-670772978 var1306)) ; Statement: $r30 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r29) 
(declare-const var2723!3 (Array Int var1515))
(assert (not (= var2723!3 null-__Array__Int__var1515__)))
(assert (= (select var2723!3 2) var814)) ; Statement: $r26[2] = $r30 
(define-const var888 String (var1381_getDescriptor/-815490800 var2130)) ; Statement: $r31 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var2283 var1515 (var1515_getType/-670772978 var888)) ; Statement: $r32 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r31) 
(declare-const var2723!4 (Array Int var1515))
(assert (not (= var2723!4 null-__Array__Int__var1515__)))
(assert (= (select var2723!4 3) var2283)) ; Statement: $r26[3] = $r32 
(define-const var2098 String (var1515_getMethodDescriptor/1714375689 var3943 var2723!4)) ; Statement: $r34 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r33, $r26) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var3442!11 185 var2295 var255 var2098 (ite (= 1 1) true false))) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r36, $r35, $r34, 1) 

(declare-const var3442!12 var1004)
(declare-const var3912 Int)
(declare-const var2295!1 String)
(declare-const var255!1 String)
(declare-const var2098!1 String)
(declare-const var623!1 Int)
(define-const var663 Bool (var1381_isPrimitive/72266651 var2130)) ; Statement: $z1 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>() 
 ; Statement: if $z1 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 
(assert (not (= (ite var663 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
;(assert (fieldWrite/-1996681868 var3734!1 var3442!12)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 

(declare-const var3734!2 var1344)
(declare-const var3442!13 var1004)
(assert true)
;(assert (visitInsn/-522444309 var3442!13 177)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177) 

(declare-const var3442!14 var1004)
(declare-const var196 Int)
(assert true)
;(assert (visitLabel/-1047844545 var3442!14 var355!2)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r10) 

(declare-const var3442!15 var1004)
(declare-const var355!3 var1777)
(define-const var2573 var1765 (var1140_getClassFileVersion/1582306684 var3586)) ; Statement: $r39 = interfaceinvoke r37.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>() 
(define-const var1970 var1765 var1765-JAVA_V6) ; Statement: $r38 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6> 
(assert true)
(define-const var3780 Bool (isAtLeast/-1748342699 var2573 var1970)) ; Statement: $z2 = virtualinvoke $r39.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r38) 
 ; Statement: if $z2 == 0 goto virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 
(assert (= (ite var3780 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (visitVarInsn/-1960990921 var3442!15 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var3442!16 var1004)
(declare-const var3164!5 Int)
(declare-const var3016!7 Int)
(define-const var2113 String (var1381_getDescriptor/-815490800 var1329)) ; Statement: $r40 = interfaceinvoke r3.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var3926 var1515 (var1515_getType/-670772978 var2113)) ; Statement: $r41 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r40) 
(assert true)
(define-const var3645 Int (getOpcode/858132300 var3926 21)) ; Statement: $i1 = virtualinvoke $r41.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21) 
(assert true)
;(assert (visitVarInsn/-1960990921 var3442!16 var3645 1)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i1, 1) 

(declare-const var3442!17 var1004)
(declare-const var3645!1 Int)
(declare-const var623!2 Int)
(define-const var705 Bool (var1381_isPrimitive/72266651 var1329)) ; Statement: $z3 = interfaceinvoke r3.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>() 
 ; Statement: if $z3 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 
(assert (not (= (ite var705 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
;(assert (fieldWrite/-1996681868 var3734!2 var3442!17)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 

(declare-const var3734!3 var1344)
(declare-const var3442!18 var1004)
(assert true)
;(assert (visitInsn/-522444309 var3442!18 177)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177) 

(declare-const var3442!19 var1004)
(declare-const var196!1 Int)
(define-const var3845 var2600 var2600-init) ; Statement: $r42 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size 
(define-const var3160 var1152 (persistentFieldAsDefined/1239702758 var3734!3)) ; Statement: $r43 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var2003 var360 (var1152_getType/-1495628553 var3160)) ; Statement: $r44 = interfaceinvoke $r43.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var1617 var440 (var360_getStackSize/1525319007 var2003)) ; Statement: $r45 = interfaceinvoke $r44.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>() 
(assert true)
(define-const var213 Int (getSize/481053644 var1617)) ; Statement: $i2 = virtualinvoke $r45.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>() 
(define-const var567 Int (* 2 var213)) ; Statement: $i3 = 2 * $i2 
(define-const var653 Int (+ 4 var567)) ; Statement: $i5 = 4 + $i3 
(define-const var3823 Int (var2567_getStackSize/1477814934 var2081)) ; Statement: $i4 = interfaceinvoke r46.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>() 
(assert true)
;(assert (<init>/241536392 var3845 var653 var3823)) ; Statement: specialinvoke $r42.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i5, $i4) 

(declare-const var3845!1 var2600)
(declare-const var653!1 Int)
(declare-const var3823!1 Int)
 ; Statement: return $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {persistentFieldAsDefined/1239702758=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var1152_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var360_isPrimitive/976449198=([net.bytebuddy.description.type.TypeDescription$Generic], boolean), var360_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), visitVarInsn/-1960990921=([net.bytebuddy.jar.asm.MethodVisitor, int, int], void), managedCtClass/1239702758=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender], net.bytebuddy.description.type.TypeDescription), var1381_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var1515_getType/-1581227099=([java.lang.Class], net.bytebuddy.jar.asm.Type), arr-var1515-init=([], net.bytebuddy.jar.asm.Type[]), var1515_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var1777-init=([], net.bytebuddy.jar.asm.Label), <init>/2082491926=([net.bytebuddy.jar.asm.Label], void), visitJumpInsn/-1648307110=([net.bytebuddy.jar.asm.MethodVisitor, int, net.bytebuddy.jar.asm.Label], void), var1152_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), visitLdcInsn/993252084=([net.bytebuddy.jar.asm.MethodVisitor, java.lang.Object], void), cast-from-String-to-var267=([java.lang.String], java.lang.Object), fieldRead/469705703=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender, net.bytebuddy.jar.asm.MethodVisitor], void), var1381_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var1515_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), getOpcode/858132300=([net.bytebuddy.jar.asm.Type, int], int), var1515_getInternalName/-319692553=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1381_getSimpleName/-1846163870=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var1153_capitalize/-2093178097=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1381_isPrimitive/72266651=([net.bytebuddy.description.type.TypeDescription], boolean), fieldWrite/-1996681868=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender, net.bytebuddy.jar.asm.MethodVisitor], void), visitInsn/-522444309=([net.bytebuddy.jar.asm.MethodVisitor, int], void), visitLabel/-1047844545=([net.bytebuddy.jar.asm.MethodVisitor, net.bytebuddy.jar.asm.Label], void), var1140_getClassFileVersion/1582306684=([net.bytebuddy.implementation.Implementation$Context], net.bytebuddy.ClassFileVersion), isAtLeast/-1748342699=([net.bytebuddy.ClassFileVersion, net.bytebuddy.ClassFileVersion], boolean), var2600-init=([], net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size), var360_getStackSize/1525319007=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.implementation.bytecode.StackSize), getSize/481053644=([net.bytebuddy.implementation.bytecode.StackSize], int), var2567_getStackSize/1477814934=([net.bytebuddy.description.method.MethodDescription], int), <init>/241536392=([net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, int, int], void)}
; {var1344=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender, var3734=r0, var1004=net.bytebuddy.jar.asm.MethodVisitor, var3442=r4, var1140=net.bytebuddy.implementation.Implementation$Context, var3586=r37, var2567=net.bytebuddy.description.method.MethodDescription, var2081=r46, var1152=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var2559=$r1, var360=net.bytebuddy.description.type.TypeDescription$Generic, var2577=$r2, var579=$z0, var420=$r55, var1887=$r56, var1381=net.bytebuddy.description.type.TypeDescription, var2130=$r57, var1329=r3, var3164=25, var3016=0, var3067=$r5, var129=$r9, var1515=net.bytebuddy.jar.asm.Type, var3354=org.hibernate.engine.spi.PersistentAttributeInterceptor, var3027=$r7, var1993=$r6, var2662=$r8, var2541=182, var436="$$_hibernate_getInterceptor", var1777=net.bytebuddy.jar.asm.Label, var355=$r10, var3338=198, var3096=$r11, var1812=$r15, var2739=$r13, var2506=$r12, var2144=$r14, var1384=$r16, var1100=$r17, var267=java.lang.Object, var339=$r18, var576=$r19, var487=$i0, var623=1, var2295=$r36, var2759=$r20, var3876=$r23, var3775=$r21, var1153=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl, var3028=$r22, var1375=$r24, var255=$r35, var944=$r25, var3943=$r33, var2723=$r26, var2664=$r27, var2912=$r28, var1306=$r29, var814=$r30, var888=$r31, var2283=$r32, var2098=$r34, var3912=185, var663=$z1, var196=177, var1765=net.bytebuddy.ClassFileVersion, var2573=$r39, var1970=$r38, var3780=$z2, var2113=$r40, var3926=$r41, var3645=$i1, var705=$z3, var2600=net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, var3845=$r42, var3160=$r43, var2003=$r44, var440=net.bytebuddy.implementation.bytecode.StackSize, var1617=$r45, var213=$i2, var567=$i3, var653=$i5, var3823=$i4}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender=var1344, r0=var3734, net.bytebuddy.jar.asm.MethodVisitor=var1004, r4=var3442, net.bytebuddy.implementation.Implementation$Context=var1140, r37=var3586, net.bytebuddy.description.method.MethodDescription=var2567, r46=var2081, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var1152, $r1=var2559, net.bytebuddy.description.type.TypeDescription$Generic=var360, $r2=var2577, $z0=var579, $r55=var420, $r56=var1887, net.bytebuddy.description.type.TypeDescription=var1381, $r57=var2130, r3=var1329, 25=var3164, 0=var3016, $r5=var3067, $r9=var129, net.bytebuddy.jar.asm.Type=var1515, org.hibernate.engine.spi.PersistentAttributeInterceptor=var3354, $r7=var3027, $r6=var1993, $r8=var2662, 182=var2541, "$$_hibernate_getInterceptor"=var436, net.bytebuddy.jar.asm.Label=var1777, $r10=var355, 198=var3338, $r11=var3096, $r15=var1812, $r13=var2739, $r12=var2506, $r14=var2144, $r16=var1384, $r17=var1100, java.lang.Object=var267, $r18=var339, $r19=var576, $i0=var487, 1=var623, $r36=var2295, $r20=var2759, $r23=var3876, $r21=var3775, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl=var1153, $r22=var3028, $r24=var1375, $r35=var255, $r25=var944, $r33=var3943, $r26=var2723, $r27=var2664, $r28=var2912, $r29=var1306, $r30=var814, $r31=var888, $r32=var2283, $r34=var2098, 185=var3912, $z1=var663, 177=var196, net.bytebuddy.ClassFileVersion=var1765, $r39=var2573, $r38=var1970, $z2=var3780, $r40=var2113, $r41=var3926, $i1=var3645, $z3=var705, net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size=var2600, $r42=var3845, $r43=var3160, $r44=var2003, net.bytebuddy.implementation.bytecode.StackSize=var440, $r45=var1617, $i2=var213, $i3=var567, $i5=var653, $i4=var3823}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender;	r4 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	r37 := @parameter1: net.bytebuddy.implementation.Implementation$Context;	r46 := @parameter2: net.bytebuddy.description.method.MethodDescription;	$r1 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r2 = interfaceinvoke $r1.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$z0 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>();	if $z0 == 0 goto $r57 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT>;	$r55 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r56 = interfaceinvoke $r55.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r57 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	goto [?= r3 = $r57];	r3 = $r57;	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r5 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r9 = interfaceinvoke $r5.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r7 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r6 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r8 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r7, $r6);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r9, "$$_hibernate_getInterceptor", $r8, 0);	$r10 = new net.bytebuddy.jar.asm.Label;	specialinvoke $r10.<net.bytebuddy.jar.asm.Label: void <init>()>();	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(198, $r10);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r11 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r15 = interfaceinvoke $r11.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r13 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r12 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r14 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r13, $r12);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r15, "$$_hibernate_getInterceptor", $r14, 0);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r16 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r17 = interfaceinvoke $r16.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r17);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	$r18 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r19 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r18);	$i0 = virtualinvoke $r19.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i0, 1);	$r36 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write");	$r21 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getSimpleName()>();	$r22 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: java.lang.String capitalize(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r35 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r33 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r25);	$r26 = newarray (net.bytebuddy.jar.asm.Type)[4];	$r27 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/Object;");	$r26[0] = $r27;	$r28 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/String;");	$r26[1] = $r28;	$r29 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r30 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r29);	$r26[2] = $r30;	$r31 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r32 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r31);	$r26[3] = $r32;	$r34 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r33, $r26);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r36, $r35, $r34, 1);	$z1 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>();	if $z1 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r10);	$r39 = interfaceinvoke r37.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>();	$r38 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6>;	$z2 = virtualinvoke $r39.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r38);	if $z2 == 0 goto virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r40 = interfaceinvoke r3.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r41 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r40);	$i1 = virtualinvoke $r41.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i1, 1);	$z3 = interfaceinvoke r3.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>();	if $z3 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177);	$r42 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size;	$r43 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r44 = interfaceinvoke $r43.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r45 = interfaceinvoke $r44.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>();	$i2 = virtualinvoke $r45.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>();	$i3 = 2 * $i2;	$i5 = 4 + $i3;	$i4 = interfaceinvoke r46.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>();	specialinvoke $r42.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i5, $i4);	return $r42
;block_num 6