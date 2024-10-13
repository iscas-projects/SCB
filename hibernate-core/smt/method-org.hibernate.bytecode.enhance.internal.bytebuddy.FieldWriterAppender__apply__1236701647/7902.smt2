(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2614 0)
(declare-sort var2726 0)
(declare-sort var2516 0)
(declare-sort var277 0)
(declare-sort var1865 0)
(declare-sort var2415 0)
(declare-sort var3134 0)
(declare-sort var3388 0)
(declare-sort var17 0)
(declare-sort var3556 0)
(declare-sort var1457 0)
(declare-sort var2074 0)
(declare-sort var3578 0)
(declare-sort var3220 0)
(declare-sort var603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var17!class ClassObject)
(declare-const var1457!class ClassObject)
(declare-const String!class ClassObject)
(declare-fun persistentFieldAsDefined/1239702758 (var2614) var1865)
(declare-fun var1865_getType/-1495628553 (var1865) var2415)
(declare-fun var2415_isPrimitive/976449198 (var2415) Bool)
(declare-fun visitVarInsn/-1960990921 (var2726 Int Int) void)
(declare-fun managedCtClass/1239702758 (var2614) var3134)
(declare-fun var3134_getInternalName/607692407 (var3134) String)
(declare-fun var3388_getType/-1581227099 (ClassObject) var3388)
(declare-fun arr-var3388-init () (Array Int var3388))
(declare-fun var3388_getMethodDescriptor/1714375689 (var3388 (Array Int var3388)) String)
(declare-fun visitMethodInsn/-1690375605 (var2726 Int String String String Bool) void)
(declare-fun var3556-init () var3556)
(declare-fun <init>/2082491926 (var3556) void)
(declare-fun visitJumpInsn/-1648307110 (var2726 Int var3556) void)
(declare-fun var1865_getName/-182223371 (var1865) String)
(declare-fun visitLdcInsn/993252084 (var2726 var1457) void)
(declare-fun cast-from-String-to-var1457 (String) var1457)
(declare-fun fieldRead/469705703 (var2614 var2726) void)
(declare-fun var3134_getDescriptor/-815490800 (var3134) String)
(declare-fun var3388_getType/-670772978 (String) var3388)
(declare-fun getOpcode/858132300 (var3388 Int) Int)
(declare-fun var3388_getInternalName/-319692553 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3134_getSimpleName/-1846163870 (var3134) String)
(declare-fun var2074_capitalize/-2093178097 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3134_isPrimitive/72266651 (var3134) Bool)
(declare-fun fieldWrite/-1996681868 (var2614 var2726) void)
(declare-fun visitInsn/-522444309 (var2726 Int) void)
(declare-fun visitLabel/-1047844545 (var2726 var3556) void)
(declare-fun var2516_getClassFileVersion/1582306684 (var2516) var3578)
(declare-fun isAtLeast/-1748342699 (var3578 var3578) Bool)
(declare-fun var3220-init () var3220)
(declare-fun var2415_getStackSize/1525319007 (var2415) var603)
(declare-fun getSize/481053644 (var603) Int)
(declare-fun var277_getStackSize/1477814934 (var277) Int)
(declare-fun <init>/241536392 (var3220 Int Int) void)
(declare-const null-var2614 var2614)
(declare-const null-var2726 var2726)
(declare-const null-var2516 var2516)
(declare-const null-var277 var277)
(declare-const var3134-OBJECT var3134)
(declare-const null-__Array__Int__var3388__ (Array Int var3388))
(declare-const var3578-JAVA_V6 var3578)
(declare-const var3788 var2614) ; Statement: r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender 
(assert (not (= var3788 null-var2614)))
(declare-const var375 var2726) ; Statement: r4 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var375 null-var2726)))
(declare-const var1577 var2516) ; Statement: r37 := @parameter1: net.bytebuddy.implementation.Implementation$Context 
(assert (not (= var1577 null-var2516)))
(declare-const var1128 var277) ; Statement: r46 := @parameter2: net.bytebuddy.description.method.MethodDescription 
(assert (not (= var1128 null-var277)))
(define-const var2489 var1865 (persistentFieldAsDefined/1239702758 var3788)) ; Statement: $r1 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var3255 var2415 (var1865_getType/-1495628553 var2489)) ; Statement: $r2 = interfaceinvoke $r1.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3972 Bool (var2415_isPrimitive/976449198 var3255)) ; Statement: $z0 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r57 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT> 
(assert (= (ite var3972 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1202 var3134 var3134-OBJECT) ; Statement: $r57 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT> 
(assert true) ; Non Conditional
(define-const var3769 var3134 var1202) ; Statement: r3 = $r57 
(assert true)
;(assert (visitVarInsn/-1960990921 var375 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var375!1 var2726)
(declare-const var289 Int)
(declare-const var3247 Int)
(define-const var2242 var3134 (managedCtClass/1239702758 var3788)) ; Statement: $r5 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var183 String (var3134_getInternalName/607692407 var2242)) ; Statement: $r9 = interfaceinvoke $r5.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var2858 var3388 (var3388_getType/-1581227099 var17!class)) ; Statement: $r7 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var2905 (Array Int var3388) arr-var3388-init) ; Statement: $r6 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var644 String (var3388_getMethodDescriptor/1714375689 var2858 var2905)) ; Statement: $r8 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r7, $r6) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var375!1 182 var183 "$$_hibernate_getInterceptor" var644 (ite (= 1 0) true false))) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r9, "$$_hibernate_getInterceptor", $r8, 0) 

(declare-const var375!2 var2726)
(declare-const var560 Int)
(declare-const var183!1 String)
(declare-const var152 String)
(declare-const var644!1 String)
(declare-const var3247!1 Int)
(define-const var261 var3556 var3556-init) ; Statement: $r10 = new net.bytebuddy.jar.asm.Label 
(assert true)
;(assert (<init>/2082491926 var261)) ; Statement: specialinvoke $r10.<net.bytebuddy.jar.asm.Label: void <init>()>() 

(declare-const var261!1 var3556)
(assert true)
;(assert (visitJumpInsn/-1648307110 var375!2 198 var261!1)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(198, $r10) 

(declare-const var375!3 var2726)
(declare-const var1770 Int)
(declare-const var261!2 var3556)
(assert true)
;(assert (visitVarInsn/-1960990921 var375!3 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var375!4 var2726)
(declare-const var289!1 Int)
(declare-const var3247!2 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var375!4 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var375!5 var2726)
(declare-const var289!2 Int)
(declare-const var3247!3 Int)
(define-const var1294 var3134 (managedCtClass/1239702758 var3788)) ; Statement: $r11 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var1717 String (var3134_getInternalName/607692407 var1294)) ; Statement: $r15 = interfaceinvoke $r11.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var3557 var3388 (var3388_getType/-1581227099 var17!class)) ; Statement: $r13 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var41 (Array Int var3388) arr-var3388-init) ; Statement: $r12 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var233 String (var3388_getMethodDescriptor/1714375689 var3557 var41)) ; Statement: $r14 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r13, $r12) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var375!5 182 var1717 "$$_hibernate_getInterceptor" var233 (ite (= 1 0) true false))) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r15, "$$_hibernate_getInterceptor", $r14, 0) 

(declare-const var375!6 var2726)
(declare-const var560!1 Int)
(declare-const var1717!1 String)
(declare-const var152!1 String)
(declare-const var233!1 String)
(declare-const var3247!4 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var375!6 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var375!7 var2726)
(declare-const var289!3 Int)
(declare-const var3247!5 Int)
(define-const var3045 var1865 (persistentFieldAsDefined/1239702758 var3788)) ; Statement: $r16 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var635 String (var1865_getName/-182223371 var3045)) ; Statement: $r17 = interfaceinvoke $r16.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
;(assert (visitLdcInsn/993252084 var375!7 (cast-from-String-to-var1457 var635))) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r17) 

(declare-const var375!8 var2726)
(declare-const var635!1 String)
(assert true)
;(assert (visitVarInsn/-1960990921 var375!8 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var375!9 var2726)
(declare-const var289!4 Int)
(declare-const var3247!6 Int)
(assert true)
;(assert (fieldRead/469705703 var3788 var375!9)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 

(declare-const var3788!1 var2614)
(declare-const var375!10 var2726)
(define-const var3174 String (var3134_getDescriptor/-815490800 var1202)) ; Statement: $r18 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var2470 var3388 (var3388_getType/-670772978 var3174)) ; Statement: $r19 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r18) 
(assert true)
(define-const var1735 Int (getOpcode/858132300 var2470 21)) ; Statement: $i0 = virtualinvoke $r19.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21) 
(assert true)
;(assert (visitVarInsn/-1960990921 var375!10 var1735 1)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i0, 1) 

(declare-const var375!11 var2726)
(declare-const var1735!1 Int)
(declare-const var3950 Int)
(define-const var2331 String (var3388_getInternalName/-319692553 var17!class)) ; Statement: $r36 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var2846 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2846)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2846!1 String)
(assert (= var2846!1 ""))
(assert true)
(define-const var2626 String (append/672562846 var2846!1 "write")) ; Statement: $r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write") 
(declare-const var2846!2 String)
(assert (= var2846!2 (str.++ var2846!1 "write")))
(define-const var2099 String (var3134_getSimpleName/-1846163870 var1202)) ; Statement: $r21 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getSimpleName()>() 
(define-const var2476 String (var2074_capitalize/-2093178097 var2099)) ; Statement: $r22 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: java.lang.String capitalize(java.lang.String)>($r21) 
(assert true)
(define-const var970 String (append/672562846 var2626 var2476)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var2626!1 String)
(assert (= var2626!1 (str.++ var2626 var2476)))
(assert true)
(define-const var3816 String (toString/-2075883882 var970)) ; Statement: $r35 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2334 String (var3134_getDescriptor/-815490800 var1202)) ; Statement: $r25 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var1614 var3388 (var3388_getType/-670772978 var2334)) ; Statement: $r33 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r25) 
(define-const var1477 (Array Int var3388) arr-var3388-init) ; Statement: $r26 = newarray (net.bytebuddy.jar.asm.Type)[4] 
(define-const var320 var3388 (var3388_getType/-1581227099 var1457!class)) ; Statement: $r27 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/Object;") 
(declare-const var1477!1 (Array Int var3388))
(assert (not (= var1477!1 null-__Array__Int__var3388__)))
(assert (= (select var1477!1 0) var320)) ; Statement: $r26[0] = $r27 
(define-const var1452 var3388 (var3388_getType/-1581227099 String!class)) ; Statement: $r28 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/String;") 
(declare-const var1477!2 (Array Int var3388))
(assert (not (= var1477!2 null-__Array__Int__var3388__)))
(assert (= (select var1477!2 1) var1452)) ; Statement: $r26[1] = $r28 
(define-const var786 String (var3134_getDescriptor/-815490800 var1202)) ; Statement: $r29 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var2733 var3388 (var3388_getType/-670772978 var786)) ; Statement: $r30 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r29) 
(declare-const var1477!3 (Array Int var3388))
(assert (not (= var1477!3 null-__Array__Int__var3388__)))
(assert (= (select var1477!3 2) var2733)) ; Statement: $r26[2] = $r30 
(define-const var3632 String (var3134_getDescriptor/-815490800 var1202)) ; Statement: $r31 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var3716 var3388 (var3388_getType/-670772978 var3632)) ; Statement: $r32 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r31) 
(declare-const var1477!4 (Array Int var3388))
(assert (not (= var1477!4 null-__Array__Int__var3388__)))
(assert (= (select var1477!4 3) var3716)) ; Statement: $r26[3] = $r32 
(define-const var718 String (var3388_getMethodDescriptor/1714375689 var1614 var1477!4)) ; Statement: $r34 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r33, $r26) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var375!11 185 var2331 var3816 var718 (ite (= 1 1) true false))) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r36, $r35, $r34, 1) 

(declare-const var375!12 var2726)
(declare-const var1362 Int)
(declare-const var2331!1 String)
(declare-const var3816!1 String)
(declare-const var718!1 String)
(declare-const var3950!1 Int)
(define-const var190 Bool (var3134_isPrimitive/72266651 var1202)) ; Statement: $z1 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>() 
 ; Statement: if $z1 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 
(assert (not (= (ite var190 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
;(assert (fieldWrite/-1996681868 var3788!1 var375!12)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 

(declare-const var3788!2 var2614)
(declare-const var375!13 var2726)
(assert true)
;(assert (visitInsn/-522444309 var375!13 177)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177) 

(declare-const var375!14 var2726)
(declare-const var2120 Int)
(assert true)
;(assert (visitLabel/-1047844545 var375!14 var261!2)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r10) 

(declare-const var375!15 var2726)
(declare-const var261!3 var3556)
(define-const var443 var3578 (var2516_getClassFileVersion/1582306684 var1577)) ; Statement: $r39 = interfaceinvoke r37.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>() 
(define-const var161 var3578 var3578-JAVA_V6) ; Statement: $r38 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6> 
(assert true)
(define-const var1721 Bool (isAtLeast/-1748342699 var443 var161)) ; Statement: $z2 = virtualinvoke $r39.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r38) 
 ; Statement: if $z2 == 0 goto virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 
(assert (= (ite var1721 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (visitVarInsn/-1960990921 var375!15 25 0)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var375!16 var2726)
(declare-const var289!5 Int)
(declare-const var3247!7 Int)
(define-const var540 String (var3134_getDescriptor/-815490800 var3769)) ; Statement: $r40 = interfaceinvoke r3.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var2050 var3388 (var3388_getType/-670772978 var540)) ; Statement: $r41 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r40) 
(assert true)
(define-const var1932 Int (getOpcode/858132300 var2050 21)) ; Statement: $i1 = virtualinvoke $r41.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21) 
(assert true)
;(assert (visitVarInsn/-1960990921 var375!16 var1932 1)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i1, 1) 

(declare-const var375!17 var2726)
(declare-const var1932!1 Int)
(declare-const var3950!2 Int)
(define-const var352 Bool (var3134_isPrimitive/72266651 var3769)) ; Statement: $z3 = interfaceinvoke r3.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>() 
 ; Statement: if $z3 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 
(assert (not (= (ite var352 1 0) 0))) ; Cond: $z3 != 0 
(assert true)
;(assert (fieldWrite/-1996681868 var3788!2 var375!17)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4) 

(declare-const var3788!3 var2614)
(declare-const var375!18 var2726)
(assert true)
;(assert (visitInsn/-522444309 var375!18 177)) ; Statement: virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177) 

(declare-const var375!19 var2726)
(declare-const var2120!1 Int)
(define-const var1451 var3220 var3220-init) ; Statement: $r42 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size 
(define-const var3208 var1865 (persistentFieldAsDefined/1239702758 var3788!3)) ; Statement: $r43 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var1428 var2415 (var1865_getType/-1495628553 var3208)) ; Statement: $r44 = interfaceinvoke $r43.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3042 var603 (var2415_getStackSize/1525319007 var1428)) ; Statement: $r45 = interfaceinvoke $r44.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>() 
(assert true)
(define-const var789 Int (getSize/481053644 var3042)) ; Statement: $i2 = virtualinvoke $r45.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>() 
(define-const var3198 Int (* 2 var789)) ; Statement: $i3 = 2 * $i2 
(define-const var266 Int (+ 4 var3198)) ; Statement: $i5 = 4 + $i3 
(define-const var2420 Int (var277_getStackSize/1477814934 var1128)) ; Statement: $i4 = interfaceinvoke r46.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>() 
(assert true)
;(assert (<init>/241536392 var1451 var266 var2420)) ; Statement: specialinvoke $r42.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i5, $i4) 

(declare-const var1451!1 var3220)
(declare-const var266!1 Int)
(declare-const var2420!1 Int)
 ; Statement: return $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {persistentFieldAsDefined/1239702758=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var1865_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var2415_isPrimitive/976449198=([net.bytebuddy.description.type.TypeDescription$Generic], boolean), visitVarInsn/-1960990921=([net.bytebuddy.jar.asm.MethodVisitor, int, int], void), managedCtClass/1239702758=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender], net.bytebuddy.description.type.TypeDescription), var3134_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var3388_getType/-1581227099=([java.lang.Class], net.bytebuddy.jar.asm.Type), arr-var3388-init=([], net.bytebuddy.jar.asm.Type[]), var3388_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var3556-init=([], net.bytebuddy.jar.asm.Label), <init>/2082491926=([net.bytebuddy.jar.asm.Label], void), visitJumpInsn/-1648307110=([net.bytebuddy.jar.asm.MethodVisitor, int, net.bytebuddy.jar.asm.Label], void), var1865_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), visitLdcInsn/993252084=([net.bytebuddy.jar.asm.MethodVisitor, java.lang.Object], void), cast-from-String-to-var1457=([java.lang.String], java.lang.Object), fieldRead/469705703=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender, net.bytebuddy.jar.asm.MethodVisitor], void), var3134_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var3388_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), getOpcode/858132300=([net.bytebuddy.jar.asm.Type, int], int), var3388_getInternalName/-319692553=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3134_getSimpleName/-1846163870=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var2074_capitalize/-2093178097=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3134_isPrimitive/72266651=([net.bytebuddy.description.type.TypeDescription], boolean), fieldWrite/-1996681868=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender, net.bytebuddy.jar.asm.MethodVisitor], void), visitInsn/-522444309=([net.bytebuddy.jar.asm.MethodVisitor, int], void), visitLabel/-1047844545=([net.bytebuddy.jar.asm.MethodVisitor, net.bytebuddy.jar.asm.Label], void), var2516_getClassFileVersion/1582306684=([net.bytebuddy.implementation.Implementation$Context], net.bytebuddy.ClassFileVersion), isAtLeast/-1748342699=([net.bytebuddy.ClassFileVersion, net.bytebuddy.ClassFileVersion], boolean), var3220-init=([], net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size), var2415_getStackSize/1525319007=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.implementation.bytecode.StackSize), getSize/481053644=([net.bytebuddy.implementation.bytecode.StackSize], int), var277_getStackSize/1477814934=([net.bytebuddy.description.method.MethodDescription], int), <init>/241536392=([net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, int, int], void)}
; {var2614=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender, var3788=r0, var2726=net.bytebuddy.jar.asm.MethodVisitor, var375=r4, var2516=net.bytebuddy.implementation.Implementation$Context, var1577=r37, var277=net.bytebuddy.description.method.MethodDescription, var1128=r46, var1865=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var2489=$r1, var2415=net.bytebuddy.description.type.TypeDescription$Generic, var3255=$r2, var3972=$z0, var3134=net.bytebuddy.description.type.TypeDescription, var1202=$r57, var3769=r3, var289=25, var3247=0, var2242=$r5, var183=$r9, var3388=net.bytebuddy.jar.asm.Type, var17=org.hibernate.engine.spi.PersistentAttributeInterceptor, var2858=$r7, var2905=$r6, var644=$r8, var560=182, var152="$$_hibernate_getInterceptor", var3556=net.bytebuddy.jar.asm.Label, var261=$r10, var1770=198, var1294=$r11, var1717=$r15, var3557=$r13, var41=$r12, var233=$r14, var3045=$r16, var635=$r17, var1457=java.lang.Object, var3174=$r18, var2470=$r19, var1735=$i0, var3950=1, var2331=$r36, var2846=$r20, var2626=$r23, var2099=$r21, var2074=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl, var2476=$r22, var970=$r24, var3816=$r35, var2334=$r25, var1614=$r33, var1477=$r26, var320=$r27, var1452=$r28, var786=$r29, var2733=$r30, var3632=$r31, var3716=$r32, var718=$r34, var1362=185, var190=$z1, var2120=177, var3578=net.bytebuddy.ClassFileVersion, var443=$r39, var161=$r38, var1721=$z2, var540=$r40, var2050=$r41, var1932=$i1, var352=$z3, var3220=net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, var1451=$r42, var3208=$r43, var1428=$r44, var603=net.bytebuddy.implementation.bytecode.StackSize, var3042=$r45, var789=$i2, var3198=$i3, var266=$i5, var2420=$i4}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender=var2614, r0=var3788, net.bytebuddy.jar.asm.MethodVisitor=var2726, r4=var375, net.bytebuddy.implementation.Implementation$Context=var2516, r37=var1577, net.bytebuddy.description.method.MethodDescription=var277, r46=var1128, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var1865, $r1=var2489, net.bytebuddy.description.type.TypeDescription$Generic=var2415, $r2=var3255, $z0=var3972, net.bytebuddy.description.type.TypeDescription=var3134, $r57=var1202, r3=var3769, 25=var289, 0=var3247, $r5=var2242, $r9=var183, net.bytebuddy.jar.asm.Type=var3388, org.hibernate.engine.spi.PersistentAttributeInterceptor=var17, $r7=var2858, $r6=var2905, $r8=var644, 182=var560, "$$_hibernate_getInterceptor"=var152, net.bytebuddy.jar.asm.Label=var3556, $r10=var261, 198=var1770, $r11=var1294, $r15=var1717, $r13=var3557, $r12=var41, $r14=var233, $r16=var3045, $r17=var635, java.lang.Object=var1457, $r18=var3174, $r19=var2470, $i0=var1735, 1=var3950, $r36=var2331, $r20=var2846, $r23=var2626, $r21=var2099, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl=var2074, $r22=var2476, $r24=var970, $r35=var3816, $r25=var2334, $r33=var1614, $r26=var1477, $r27=var320, $r28=var1452, $r29=var786, $r30=var2733, $r31=var3632, $r32=var3716, $r34=var718, 185=var1362, $z1=var190, 177=var2120, net.bytebuddy.ClassFileVersion=var3578, $r39=var443, $r38=var161, $z2=var1721, $r40=var540, $r41=var2050, $i1=var1932, $z3=var352, net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size=var3220, $r42=var1451, $r43=var3208, $r44=var1428, net.bytebuddy.implementation.bytecode.StackSize=var603, $r45=var3042, $i2=var789, $i3=var3198, $i5=var266, $i4=var2420}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender;	r4 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	r37 := @parameter1: net.bytebuddy.implementation.Implementation$Context;	r46 := @parameter2: net.bytebuddy.description.method.MethodDescription;	$r1 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r2 = interfaceinvoke $r1.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$z0 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>();	if $z0 == 0 goto $r57 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT>;	$r57 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT>;	r3 = $r57;	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r5 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r9 = interfaceinvoke $r5.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r7 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r6 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r8 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r7, $r6);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r9, "$$_hibernate_getInterceptor", $r8, 0);	$r10 = new net.bytebuddy.jar.asm.Label;	specialinvoke $r10.<net.bytebuddy.jar.asm.Label: void <init>()>();	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(198, $r10);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r11 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r15 = interfaceinvoke $r11.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r13 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r12 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r14 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r13, $r12);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r15, "$$_hibernate_getInterceptor", $r14, 0);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r16 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r17 = interfaceinvoke $r16.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r17);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	$r18 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r19 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r18);	$i0 = virtualinvoke $r19.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i0, 1);	$r36 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write");	$r21 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getSimpleName()>();	$r22 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: java.lang.String capitalize(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r35 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r33 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r25);	$r26 = newarray (net.bytebuddy.jar.asm.Type)[4];	$r27 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/Object;");	$r26[0] = $r27;	$r28 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/String;");	$r26[1] = $r28;	$r29 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r30 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r29);	$r26[2] = $r30;	$r31 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r32 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r31);	$r26[3] = $r32;	$r34 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r33, $r26);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r36, $r35, $r34, 1);	$z1 = interfaceinvoke $r57.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>();	if $z1 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r10);	$r39 = interfaceinvoke r37.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>();	$r38 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6>;	$z2 = virtualinvoke $r39.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r38);	if $z2 == 0 goto virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r40 = interfaceinvoke r3.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r41 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r40);	$i1 = virtualinvoke $r41.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i1, 1);	$z3 = interfaceinvoke r3.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>();	if $z3 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r4);	virtualinvoke r4.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177);	$r42 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size;	$r43 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r44 = interfaceinvoke $r43.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r45 = interfaceinvoke $r44.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>();	$i2 = virtualinvoke $r45.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>();	$i3 = 2 * $i2;	$i5 = 4 + $i3;	$i4 = interfaceinvoke r46.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>();	specialinvoke $r42.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i5, $i4);	return $r42
;block_num 6