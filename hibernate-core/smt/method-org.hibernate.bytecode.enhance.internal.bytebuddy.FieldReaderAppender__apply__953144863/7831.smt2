(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var800 0)
(declare-sort var236 0)
(declare-sort var2547 0)
(declare-sort var1679 0)
(declare-sort var3460 0)
(declare-sort var1431 0)
(declare-sort var3005 0)
(declare-sort var2333 0)
(declare-sort var2295 0)
(declare-sort var128 0)
(declare-sort var2010 0)
(declare-sort var2739 0)
(declare-sort var3974 0)
(declare-sort var2400 0)
(declare-sort var1571 0)
(declare-sort var3875 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2295!class ClassObject)
(declare-const var2010!class ClassObject)
(declare-const String!class ClassObject)
(declare-fun persistentFieldAsDefined/940556598 (var800) var3460)
(declare-fun var3460_getType/-1495628553 (var3460) var1431)
(declare-fun var1431_isPrimitive/976449198 (var1431) Bool)
(declare-fun var1431_asErasure/-1205814801 (var1431) var3005)
(declare-fun visitVarInsn/-1960990921 (var236 Int Int) void)
(declare-fun managedCtClass/940556598 (var800) var3005)
(declare-fun var3005_getInternalName/607692407 (var3005) String)
(declare-fun var2333_getType/-1581227099 (ClassObject) var2333)
(declare-fun arr-var2333-init () (Array Int var2333))
(declare-fun var2333_getMethodDescriptor/1714375689 (var2333 (Array Int var2333)) String)
(declare-fun visitMethodInsn/-1690375605 (var236 Int String String String Bool) void)
(declare-fun var128-init () var128)
(declare-fun <init>/2082491926 (var128) void)
(declare-fun visitJumpInsn/-1648307110 (var236 Int var128) void)
(declare-fun var3460_getName/-182223371 (var3460) String)
(declare-fun visitLdcInsn/993252084 (var236 var2010) void)
(declare-fun cast-from-String-to-var2010 (String) var2010)
(declare-fun fieldRead/-1215157193 (var800 var236) void)
(declare-fun var2333_getInternalName/-319692553 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3005_getSimpleName/-1846163870 (var3005) String)
(declare-fun var2739_capitalize/-2093178097 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3005_getDescriptor/-815490800 (var3005) String)
(declare-fun var2333_getType/-670772978 (String) var2333)
(declare-fun var3005_isPrimitive/72266651 (var3005) Bool)
(declare-fun fieldWrite/1607143204 (var800 var236) void)
(declare-fun visitLabel/-1047844545 (var236 var128) void)
(declare-fun var2547_getClassFileVersion/1582306684 (var2547) var3974)
(declare-fun isAtLeast/-1748342699 (var3974 var3974) Bool)
(declare-fun persistentField/940556598 (var800) var2400)
(declare-fun getType/-169094385 (var2400) var1431)
(declare-fun getOpcode/858132300 (var2333 Int) Int)
(declare-fun visitInsn/-522444309 (var236 Int) void)
(declare-fun var1571-init () var1571)
(declare-fun var1431_getStackSize/1525319007 (var1431) var3875)
(declare-fun getSize/481053644 (var3875) Int)
(declare-fun var1679_getStackSize/1477814934 (var1679) Int)
(declare-fun <init>/241536392 (var1571 Int Int) void)
(declare-const null-var800 var800)
(declare-const null-var236 var236)
(declare-const null-var2547 var2547)
(declare-const null-var1679 var1679)
(declare-const null-__Array__Int__var2333__ (Array Int var2333))
(declare-const var3974-JAVA_V6 var3974)
(declare-const var2702 var800) ; Statement: r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender 
(assert (not (= var2702 null-var800)))
(declare-const var2456 var236) ; Statement: r3 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var2456 null-var236)))
(declare-const var1653 var2547) ; Statement: r32 := @parameter1: net.bytebuddy.implementation.Implementation$Context 
(assert (not (= var1653 null-var2547)))
(declare-const var1303 var1679) ; Statement: r37 := @parameter2: net.bytebuddy.description.method.MethodDescription 
(assert (not (= var1303 null-var1679)))
(define-const var764 var3460 (persistentFieldAsDefined/940556598 var2702)) ; Statement: $r1 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var42 var1431 (var3460_getType/-1495628553 var764)) ; Statement: $r2 = interfaceinvoke $r1.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var58 Bool (var1431_isPrimitive/976449198 var42)) ; Statement: $z0 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r56 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT> 
(assert (not (= (ite var58 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1892 var3460 (persistentFieldAsDefined/940556598 var2702)) ; Statement: $r54 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var3340 var1431 (var3460_getType/-1495628553 var1892)) ; Statement: $r55 = interfaceinvoke $r54.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3154 var3005 (var1431_asErasure/-1205814801 var3340)) ; Statement: $r56 = interfaceinvoke $r55.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
 ; Statement: goto [?= virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0)] 
(assert true) ; Non Conditional
(assert true)
;(assert (visitVarInsn/-1960990921 var2456 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2456!1 var236)
(declare-const var2744 Int)
(declare-const var3359 Int)
(define-const var2478 var3005 (managedCtClass/940556598 var2702)) ; Statement: $r4 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var2034 String (var3005_getInternalName/607692407 var2478)) ; Statement: $r8 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var1523 var2333 (var2333_getType/-1581227099 var2295!class)) ; Statement: $r6 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var3436 (Array Int var2333) arr-var2333-init) ; Statement: $r5 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var2330 String (var2333_getMethodDescriptor/1714375689 var1523 var3436)) ; Statement: $r7 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r6, $r5) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var2456!1 182 var2034 "$$_hibernate_getInterceptor" var2330 (ite (= 1 0) true false))) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r8, "$$_hibernate_getInterceptor", $r7, 0) 

(declare-const var2456!2 var236)
(declare-const var1770 Int)
(declare-const var2034!1 String)
(declare-const var1636 String)
(declare-const var2330!1 String)
(declare-const var3359!1 Int)
(define-const var1982 var128 var128-init) ; Statement: $r9 = new net.bytebuddy.jar.asm.Label 
(assert true)
;(assert (<init>/2082491926 var1982)) ; Statement: specialinvoke $r9.<net.bytebuddy.jar.asm.Label: void <init>()>() 

(declare-const var1982!1 var128)
(assert true)
;(assert (visitJumpInsn/-1648307110 var2456!2 198 var1982!1)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(198, $r9) 

(declare-const var2456!3 var236)
(declare-const var3827 Int)
(declare-const var1982!2 var128)
(assert true)
;(assert (visitVarInsn/-1960990921 var2456!3 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2456!4 var236)
(declare-const var2744!1 Int)
(declare-const var3359!2 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var2456!4 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2456!5 var236)
(declare-const var2744!2 Int)
(declare-const var3359!3 Int)
(define-const var743 var3005 (managedCtClass/940556598 var2702)) ; Statement: $r10 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var705 String (var3005_getInternalName/607692407 var743)) ; Statement: $r14 = interfaceinvoke $r10.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var702 var2333 (var2333_getType/-1581227099 var2295!class)) ; Statement: $r12 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var2984 (Array Int var2333) arr-var2333-init) ; Statement: $r11 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var1531 String (var2333_getMethodDescriptor/1714375689 var702 var2984)) ; Statement: $r13 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r12, $r11) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var2456!5 182 var705 "$$_hibernate_getInterceptor" var1531 (ite (= 1 0) true false))) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r14, "$$_hibernate_getInterceptor", $r13, 0) 

(declare-const var2456!6 var236)
(declare-const var1770!1 Int)
(declare-const var705!1 String)
(declare-const var1636!1 String)
(declare-const var1531!1 String)
(declare-const var3359!4 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var2456!6 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2456!7 var236)
(declare-const var2744!3 Int)
(declare-const var3359!5 Int)
(define-const var1130 var3460 (persistentFieldAsDefined/940556598 var2702)) ; Statement: $r15 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var3991 String (var3460_getName/-182223371 var1130)) ; Statement: $r16 = interfaceinvoke $r15.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
;(assert (visitLdcInsn/993252084 var2456!7 (cast-from-String-to-var2010 var3991))) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r16) 

(declare-const var2456!8 var236)
(declare-const var3991!1 String)
(assert true)
;(assert (visitVarInsn/-1960990921 var2456!8 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2456!9 var236)
(declare-const var2744!4 Int)
(declare-const var3359!6 Int)
(assert true)
;(assert (fieldRead/-1215157193 var2702 var2456!9)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r3) 

(declare-const var2702!1 var800)
(declare-const var2456!10 var236)
(define-const var3731 String (var2333_getInternalName/-319692553 var2295!class)) ; Statement: $r31 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var3545 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3545)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3545!1 String)
(assert (= var3545!1 ""))
(assert true)
(define-const var3066 String (append/672562846 var3545!1 "read")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("read") 
(declare-const var3545!2 String)
(assert (= var3545!2 (str.++ var3545!1 "read")))
(define-const var3280 String (var3005_getSimpleName/-1846163870 var3154)) ; Statement: $r18 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getSimpleName()>() 
(define-const var1102 String (var2739_capitalize/-2093178097 var3280)) ; Statement: $r19 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: java.lang.String capitalize(java.lang.String)>($r18) 
(assert true)
(define-const var2374 String (append/672562846 var3066 var1102)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3066!1 String)
(assert (= var3066!1 (str.++ var3066 var1102)))
(assert true)
(define-const var2310 String (toString/-2075883882 var2374)) ; Statement: $r30 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var839 String (var3005_getDescriptor/-815490800 var3154)) ; Statement: $r22 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var780 var2333 (var2333_getType/-670772978 var839)) ; Statement: $r28 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r22) 
(define-const var2096 (Array Int var2333) arr-var2333-init) ; Statement: $r23 = newarray (net.bytebuddy.jar.asm.Type)[3] 
(define-const var2903 var2333 (var2333_getType/-1581227099 var2010!class)) ; Statement: $r24 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/Object;") 
(declare-const var2096!1 (Array Int var2333))
(assert (not (= var2096!1 null-__Array__Int__var2333__)))
(assert (= (select var2096!1 0) var2903)) ; Statement: $r23[0] = $r24 
(define-const var281 var2333 (var2333_getType/-1581227099 String!class)) ; Statement: $r25 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/String;") 
(declare-const var2096!2 (Array Int var2333))
(assert (not (= var2096!2 null-__Array__Int__var2333__)))
(assert (= (select var2096!2 1) var281)) ; Statement: $r23[1] = $r25 
(define-const var1612 String (var3005_getDescriptor/-815490800 var3154)) ; Statement: $r26 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var845 var2333 (var2333_getType/-670772978 var1612)) ; Statement: $r27 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r26) 
(declare-const var2096!3 (Array Int var2333))
(assert (not (= var2096!3 null-__Array__Int__var2333__)))
(assert (= (select var2096!3 2) var845)) ; Statement: $r23[2] = $r27 
(define-const var319 String (var2333_getMethodDescriptor/1714375689 var780 var2096!3)) ; Statement: $r29 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r28, $r23) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var2456!10 185 var3731 var2310 var319 (ite (= 1 1) true false))) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r31, $r30, $r29, 1) 

(declare-const var2456!11 var236)
(declare-const var1610 Int)
(declare-const var3731!1 String)
(declare-const var2310!1 String)
(declare-const var319!1 String)
(declare-const var3267 Int)
(define-const var2934 Bool (var3005_isPrimitive/72266651 var3154)) ; Statement: $z1 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>() 
 ; Statement: if $z1 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r3) 
(assert (not (= (ite var2934 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
;(assert (fieldWrite/1607143204 var2702!1 var2456!11)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r3) 

(declare-const var2702!2 var800)
(declare-const var2456!12 var236)
(assert true)
;(assert (visitLabel/-1047844545 var2456!12 var1982!2)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r9) 

(declare-const var2456!13 var236)
(declare-const var1982!3 var128)
(define-const var3892 var3974 (var2547_getClassFileVersion/1582306684 var1653)) ; Statement: $r34 = interfaceinvoke r32.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>() 
(define-const var1581 var3974 var3974-JAVA_V6) ; Statement: $r33 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6> 
(assert true)
(define-const var2893 Bool (isAtLeast/-1748342699 var3892 var1581)) ; Statement: $z2 = virtualinvoke $r34.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r33) 
 ; Statement: if $z2 == 0 goto virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 
(assert (= (ite var2893 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (visitVarInsn/-1960990921 var2456!13 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2456!14 var236)
(declare-const var2744!5 Int)
(declare-const var3359!7 Int)
(assert true)
;(assert (fieldRead/-1215157193 var2702!2 var2456!14)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r3) 

(declare-const var2702!3 var800)
(declare-const var2456!15 var236)
(define-const var3866 var2400 (persistentField/940556598 var2702!3)) ; Statement: $r35 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField> 
(assert true)
(define-const var1432 var1431 (getType/-169094385 var3866)) ; Statement: $r36 = virtualinvoke $r35.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var1391 Bool (var1431_isPrimitive/976449198 var1432)) ; Statement: $z3 = interfaceinvoke $r36.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>() 
 ; Statement: if $z3 != 0 goto $r57 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(assert (not (= (ite var1391 1 0) 0))) ; Cond: $z3 != 0 
(define-const var2550 var3460 (persistentFieldAsDefined/940556598 var2702!3)) ; Statement: $r57 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var2540 var1431 (var3460_getType/-1495628553 var2550)) ; Statement: $r58 = interfaceinvoke $r57.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3263 var3005 (var1431_asErasure/-1205814801 var2540)) ; Statement: $r59 = interfaceinvoke $r58.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var1254 String (var3005_getDescriptor/-815490800 var3263)) ; Statement: $r60 = interfaceinvoke $r59.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var2986 var2333 (var2333_getType/-670772978 var1254)) ; Statement: $r61 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r60) 
(assert true)
(define-const var2394 Int (getOpcode/858132300 var2986 172)) ; Statement: $i0 = virtualinvoke $r61.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(172) 
(assert true)
;(assert (visitInsn/-522444309 var2456!15 var2394)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>($i0) 

(declare-const var2456!16 var236)
(declare-const var2394!1 Int)
(define-const var3973 var1571 var1571-init) ; Statement: $r62 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size 
(define-const var2112 var3460 (persistentFieldAsDefined/940556598 var2702!3)) ; Statement: $r63 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var108 var1431 (var3460_getType/-1495628553 var2112)) ; Statement: $r64 = interfaceinvoke $r63.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3916 var3875 (var1431_getStackSize/1525319007 var108)) ; Statement: $r65 = interfaceinvoke $r64.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>() 
(assert true)
(define-const var2317 Int (getSize/481053644 var3916)) ; Statement: $i1 = virtualinvoke $r65.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>() 
(define-const var589 Int (+ 4 var2317)) ; Statement: $i2 = 4 + $i1 
(define-const var930 Int (var1679_getStackSize/1477814934 var1303)) ; Statement: $i3 = interfaceinvoke r37.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>() 
(assert true)
;(assert (<init>/241536392 var3973 var589 var930)) ; Statement: specialinvoke $r62.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i2, $i3) 

(declare-const var3973!1 var1571)
(declare-const var589!1 Int)
(declare-const var930!1 Int)
 ; Statement: return $r62 
(check-sat)
(get-model)
(get-unsat-core)
; {persistentFieldAsDefined/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var3460_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var1431_isPrimitive/976449198=([net.bytebuddy.description.type.TypeDescription$Generic], boolean), var1431_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), visitVarInsn/-1960990921=([net.bytebuddy.jar.asm.MethodVisitor, int, int], void), managedCtClass/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], net.bytebuddy.description.type.TypeDescription), var3005_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var2333_getType/-1581227099=([java.lang.Class], net.bytebuddy.jar.asm.Type), arr-var2333-init=([], net.bytebuddy.jar.asm.Type[]), var2333_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var128-init=([], net.bytebuddy.jar.asm.Label), <init>/2082491926=([net.bytebuddy.jar.asm.Label], void), visitJumpInsn/-1648307110=([net.bytebuddy.jar.asm.MethodVisitor, int, net.bytebuddy.jar.asm.Label], void), var3460_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), visitLdcInsn/993252084=([net.bytebuddy.jar.asm.MethodVisitor, java.lang.Object], void), cast-from-String-to-var2010=([java.lang.String], java.lang.Object), fieldRead/-1215157193=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender, net.bytebuddy.jar.asm.MethodVisitor], void), var2333_getInternalName/-319692553=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3005_getSimpleName/-1846163870=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var2739_capitalize/-2093178097=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3005_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var2333_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), var3005_isPrimitive/72266651=([net.bytebuddy.description.type.TypeDescription], boolean), fieldWrite/1607143204=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender, net.bytebuddy.jar.asm.MethodVisitor], void), visitLabel/-1047844545=([net.bytebuddy.jar.asm.MethodVisitor, net.bytebuddy.jar.asm.Label], void), var2547_getClassFileVersion/1582306684=([net.bytebuddy.implementation.Implementation$Context], net.bytebuddy.ClassFileVersion), isAtLeast/-1748342699=([net.bytebuddy.ClassFileVersion, net.bytebuddy.ClassFileVersion], boolean), persistentField/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription), getType/-169094385=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription], net.bytebuddy.description.type.TypeDescription$Generic), getOpcode/858132300=([net.bytebuddy.jar.asm.Type, int], int), visitInsn/-522444309=([net.bytebuddy.jar.asm.MethodVisitor, int], void), var1571-init=([], net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size), var1431_getStackSize/1525319007=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.implementation.bytecode.StackSize), getSize/481053644=([net.bytebuddy.implementation.bytecode.StackSize], int), var1679_getStackSize/1477814934=([net.bytebuddy.description.method.MethodDescription], int), <init>/241536392=([net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, int, int], void)}
; {var800=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender, var2702=r0, var236=net.bytebuddy.jar.asm.MethodVisitor, var2456=r3, var2547=net.bytebuddy.implementation.Implementation$Context, var1653=r32, var1679=net.bytebuddy.description.method.MethodDescription, var1303=r37, var3460=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var764=$r1, var1431=net.bytebuddy.description.type.TypeDescription$Generic, var42=$r2, var58=$z0, var1892=$r54, var3340=$r55, var3005=net.bytebuddy.description.type.TypeDescription, var3154=$r56, var2744=25, var3359=0, var2478=$r4, var2034=$r8, var2333=net.bytebuddy.jar.asm.Type, var2295=org.hibernate.engine.spi.PersistentAttributeInterceptor, var1523=$r6, var3436=$r5, var2330=$r7, var1770=182, var1636="$$_hibernate_getInterceptor", var128=net.bytebuddy.jar.asm.Label, var1982=$r9, var3827=198, var743=$r10, var705=$r14, var702=$r12, var2984=$r11, var1531=$r13, var1130=$r15, var3991=$r16, var2010=java.lang.Object, var3731=$r31, var3545=$r17, var3066=$r20, var3280=$r18, var2739=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl, var1102=$r19, var2374=$r21, var2310=$r30, var839=$r22, var780=$r28, var2096=$r23, var2903=$r24, var281=$r25, var1612=$r26, var845=$r27, var319=$r29, var1610=185, var3267=1, var2934=$z1, var3974=net.bytebuddy.ClassFileVersion, var3892=$r34, var1581=$r33, var2893=$z2, var2400=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription, var3866=$r35, var1432=$r36, var1391=$z3, var2550=$r57, var2540=$r58, var3263=$r59, var1254=$r60, var2986=$r61, var2394=$i0, var1571=net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, var3973=$r62, var2112=$r63, var108=$r64, var3875=net.bytebuddy.implementation.bytecode.StackSize, var3916=$r65, var2317=$i1, var589=$i2, var930=$i3}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender=var800, r0=var2702, net.bytebuddy.jar.asm.MethodVisitor=var236, r3=var2456, net.bytebuddy.implementation.Implementation$Context=var2547, r32=var1653, net.bytebuddy.description.method.MethodDescription=var1679, r37=var1303, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var3460, $r1=var764, net.bytebuddy.description.type.TypeDescription$Generic=var1431, $r2=var42, $z0=var58, $r54=var1892, $r55=var3340, net.bytebuddy.description.type.TypeDescription=var3005, $r56=var3154, 25=var2744, 0=var3359, $r4=var2478, $r8=var2034, net.bytebuddy.jar.asm.Type=var2333, org.hibernate.engine.spi.PersistentAttributeInterceptor=var2295, $r6=var1523, $r5=var3436, $r7=var2330, 182=var1770, "$$_hibernate_getInterceptor"=var1636, net.bytebuddy.jar.asm.Label=var128, $r9=var1982, 198=var3827, $r10=var743, $r14=var705, $r12=var702, $r11=var2984, $r13=var1531, $r15=var1130, $r16=var3991, java.lang.Object=var2010, $r31=var3731, $r17=var3545, $r20=var3066, $r18=var3280, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl=var2739, $r19=var1102, $r21=var2374, $r30=var2310, $r22=var839, $r28=var780, $r23=var2096, $r24=var2903, $r25=var281, $r26=var1612, $r27=var845, $r29=var319, 185=var1610, 1=var3267, $z1=var2934, net.bytebuddy.ClassFileVersion=var3974, $r34=var3892, $r33=var1581, $z2=var2893, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription=var2400, $r35=var3866, $r36=var1432, $z3=var1391, $r57=var2550, $r58=var2540, $r59=var3263, $r60=var1254, $r61=var2986, $i0=var2394, net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size=var1571, $r62=var3973, $r63=var2112, $r64=var108, net.bytebuddy.implementation.bytecode.StackSize=var3875, $r65=var3916, $i1=var2317, $i2=var589, $i3=var930}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender;	r3 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	r32 := @parameter1: net.bytebuddy.implementation.Implementation$Context;	r37 := @parameter2: net.bytebuddy.description.method.MethodDescription;	$r1 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r2 = interfaceinvoke $r1.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$z0 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>();	if $z0 == 0 goto $r56 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT>;	$r54 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r55 = interfaceinvoke $r54.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r56 = interfaceinvoke $r55.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	goto [?= virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0)];	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r4 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r8 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r6 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r5 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r7 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r6, $r5);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r8, "$$_hibernate_getInterceptor", $r7, 0);	$r9 = new net.bytebuddy.jar.asm.Label;	specialinvoke $r9.<net.bytebuddy.jar.asm.Label: void <init>()>();	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(198, $r9);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r10 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r14 = interfaceinvoke $r10.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r12 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r11 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r13 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r12, $r11);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r14, "$$_hibernate_getInterceptor", $r13, 0);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r15 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r16 = interfaceinvoke $r15.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r16);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r3);	$r31 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("read");	$r18 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getSimpleName()>();	$r19 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: java.lang.String capitalize(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r30 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r28 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r22);	$r23 = newarray (net.bytebuddy.jar.asm.Type)[3];	$r24 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/Object;");	$r23[0] = $r24;	$r25 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/String;");	$r23[1] = $r25;	$r26 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r27 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r26);	$r23[2] = $r27;	$r29 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r28, $r23);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r31, $r30, $r29, 1);	$z1 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>();	if $z1 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r3);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r3);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r9);	$r34 = interfaceinvoke r32.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>();	$r33 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6>;	$z2 = virtualinvoke $r34.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r33);	if $z2 == 0 goto virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r3);	$r35 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField>;	$r36 = virtualinvoke $r35.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$z3 = interfaceinvoke $r36.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>();	if $z3 != 0 goto $r57 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r57 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r58 = interfaceinvoke $r57.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r59 = interfaceinvoke $r58.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r60 = interfaceinvoke $r59.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r61 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r60);	$i0 = virtualinvoke $r61.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(172);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>($i0);	$r62 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size;	$r63 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r64 = interfaceinvoke $r63.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r65 = interfaceinvoke $r64.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>();	$i1 = virtualinvoke $r65.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>();	$i2 = 4 + $i1;	$i3 = interfaceinvoke r37.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>();	specialinvoke $r62.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i2, $i3);	return $r62
;block_num 6