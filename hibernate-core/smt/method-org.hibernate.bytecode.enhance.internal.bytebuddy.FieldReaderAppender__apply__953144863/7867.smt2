(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1499 0)
(declare-sort var2877 0)
(declare-sort var254 0)
(declare-sort var1462 0)
(declare-sort var1966 0)
(declare-sort var197 0)
(declare-sort var3477 0)
(declare-sort var3693 0)
(declare-sort var1872 0)
(declare-sort var2461 0)
(declare-sort var1533 0)
(declare-sort var1412 0)
(declare-sort var1663 0)
(declare-sort var493 0)
(declare-sort var2640 0)
(declare-sort var1627 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1872!class ClassObject)
(declare-const var1533!class ClassObject)
(declare-const String!class ClassObject)
(declare-fun persistentFieldAsDefined/940556598 (var1499) var1966)
(declare-fun var1966_getType/-1495628553 (var1966) var197)
(declare-fun var197_isPrimitive/976449198 (var197) Bool)
(declare-fun visitVarInsn/-1960990921 (var2877 Int Int) void)
(declare-fun managedCtClass/940556598 (var1499) var3477)
(declare-fun var3477_getInternalName/607692407 (var3477) String)
(declare-fun var3693_getType/-1581227099 (ClassObject) var3693)
(declare-fun arr-var3693-init () (Array Int var3693))
(declare-fun var3693_getMethodDescriptor/1714375689 (var3693 (Array Int var3693)) String)
(declare-fun visitMethodInsn/-1690375605 (var2877 Int String String String Bool) void)
(declare-fun var2461-init () var2461)
(declare-fun <init>/2082491926 (var2461) void)
(declare-fun visitJumpInsn/-1648307110 (var2877 Int var2461) void)
(declare-fun var1966_getName/-182223371 (var1966) String)
(declare-fun visitLdcInsn/993252084 (var2877 var1533) void)
(declare-fun cast-from-String-to-var1533 (String) var1533)
(declare-fun fieldRead/-1215157193 (var1499 var2877) void)
(declare-fun var3693_getInternalName/-319692553 (ClassObject) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3477_getSimpleName/-1846163870 (var3477) String)
(declare-fun var1412_capitalize/-2093178097 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3477_getDescriptor/-815490800 (var3477) String)
(declare-fun var3693_getType/-670772978 (String) var3693)
(declare-fun var3477_isPrimitive/72266651 (var3477) Bool)
(declare-fun fieldWrite/1607143204 (var1499 var2877) void)
(declare-fun visitLabel/-1047844545 (var2877 var2461) void)
(declare-fun var254_getClassFileVersion/1582306684 (var254) var1663)
(declare-fun isAtLeast/-1748342699 (var1663 var1663) Bool)
(declare-fun persistentField/940556598 (var1499) var493)
(declare-fun getType/-169094385 (var493) var197)
(declare-fun var197_asErasure/-1205814801 (var197) var3477)
(declare-fun getOpcode/858132300 (var3693 Int) Int)
(declare-fun visitInsn/-522444309 (var2877 Int) void)
(declare-fun var2640-init () var2640)
(declare-fun var197_getStackSize/1525319007 (var197) var1627)
(declare-fun getSize/481053644 (var1627) Int)
(declare-fun var1462_getStackSize/1477814934 (var1462) Int)
(declare-fun <init>/241536392 (var2640 Int Int) void)
(declare-const null-var1499 var1499)
(declare-const null-var2877 var2877)
(declare-const null-var254 var254)
(declare-const null-var1462 var1462)
(declare-const var3477-OBJECT var3477)
(declare-const null-__Array__Int__var3693__ (Array Int var3693))
(declare-const var1663-JAVA_V6 var1663)
(declare-const var2919 var1499) ; Statement: r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender 
(assert (not (= var2919 null-var1499)))
(declare-const var1927 var2877) ; Statement: r3 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var1927 null-var2877)))
(declare-const var416 var254) ; Statement: r32 := @parameter1: net.bytebuddy.implementation.Implementation$Context 
(assert (not (= var416 null-var254)))
(declare-const var2311 var1462) ; Statement: r37 := @parameter2: net.bytebuddy.description.method.MethodDescription 
(assert (not (= var2311 null-var1462)))
(define-const var17 var1966 (persistentFieldAsDefined/940556598 var2919)) ; Statement: $r1 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var0 var197 (var1966_getType/-1495628553 var17)) ; Statement: $r2 = interfaceinvoke $r1.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var1378 Bool (var197_isPrimitive/976449198 var0)) ; Statement: $z0 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r56 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT> 
(assert (= (ite var1378 1 0) 0)) ; Cond: $z0 == 0 
(define-const var874 var3477 var3477-OBJECT) ; Statement: $r56 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT> 
(assert true) ; Non Conditional
(assert true)
;(assert (visitVarInsn/-1960990921 var1927 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1927!1 var2877)
(declare-const var1876 Int)
(declare-const var3161 Int)
(define-const var3934 var3477 (managedCtClass/940556598 var2919)) ; Statement: $r4 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var3373 String (var3477_getInternalName/607692407 var3934)) ; Statement: $r8 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var1851 var3693 (var3693_getType/-1581227099 var1872!class)) ; Statement: $r6 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var2666 (Array Int var3693) arr-var3693-init) ; Statement: $r5 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var1178 String (var3693_getMethodDescriptor/1714375689 var1851 var2666)) ; Statement: $r7 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r6, $r5) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var1927!1 182 var3373 "$$_hibernate_getInterceptor" var1178 (ite (= 1 0) true false))) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r8, "$$_hibernate_getInterceptor", $r7, 0) 

(declare-const var1927!2 var2877)
(declare-const var1762 Int)
(declare-const var3373!1 String)
(declare-const var3397 String)
(declare-const var1178!1 String)
(declare-const var3161!1 Int)
(define-const var2122 var2461 var2461-init) ; Statement: $r9 = new net.bytebuddy.jar.asm.Label 
(assert true)
;(assert (<init>/2082491926 var2122)) ; Statement: specialinvoke $r9.<net.bytebuddy.jar.asm.Label: void <init>()>() 

(declare-const var2122!1 var2461)
(assert true)
;(assert (visitJumpInsn/-1648307110 var1927!2 198 var2122!1)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(198, $r9) 

(declare-const var1927!3 var2877)
(declare-const var2440 Int)
(declare-const var2122!2 var2461)
(assert true)
;(assert (visitVarInsn/-1960990921 var1927!3 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1927!4 var2877)
(declare-const var1876!1 Int)
(declare-const var3161!2 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var1927!4 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1927!5 var2877)
(declare-const var1876!2 Int)
(declare-const var3161!3 Int)
(define-const var1923 var3477 (managedCtClass/940556598 var2919)) ; Statement: $r10 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var208 String (var3477_getInternalName/607692407 var1923)) ; Statement: $r14 = interfaceinvoke $r10.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var129 var3693 (var3693_getType/-1581227099 var1872!class)) ; Statement: $r12 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var3473 (Array Int var3693) arr-var3693-init) ; Statement: $r11 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var865 String (var3693_getMethodDescriptor/1714375689 var129 var3473)) ; Statement: $r13 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r12, $r11) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var1927!5 182 var208 "$$_hibernate_getInterceptor" var865 (ite (= 1 0) true false))) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r14, "$$_hibernate_getInterceptor", $r13, 0) 

(declare-const var1927!6 var2877)
(declare-const var1762!1 Int)
(declare-const var208!1 String)
(declare-const var3397!1 String)
(declare-const var865!1 String)
(declare-const var3161!4 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var1927!6 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1927!7 var2877)
(declare-const var1876!3 Int)
(declare-const var3161!5 Int)
(define-const var231 var1966 (persistentFieldAsDefined/940556598 var2919)) ; Statement: $r15 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var3821 String (var1966_getName/-182223371 var231)) ; Statement: $r16 = interfaceinvoke $r15.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
;(assert (visitLdcInsn/993252084 var1927!7 (cast-from-String-to-var1533 var3821))) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r16) 

(declare-const var1927!8 var2877)
(declare-const var3821!1 String)
(assert true)
;(assert (visitVarInsn/-1960990921 var1927!8 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1927!9 var2877)
(declare-const var1876!4 Int)
(declare-const var3161!6 Int)
(assert true)
;(assert (fieldRead/-1215157193 var2919 var1927!9)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r3) 

(declare-const var2919!1 var1499)
(declare-const var1927!10 var2877)
(define-const var78 String (var3693_getInternalName/-319692553 var1872!class)) ; Statement: $r31 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;") 
(define-const var2225 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2225)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2225!1 String)
(assert (= var2225!1 ""))
(assert true)
(define-const var2705 String (append/672562846 var2225!1 "read")) ; Statement: $r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("read") 
(declare-const var2225!2 String)
(assert (= var2225!2 (str.++ var2225!1 "read")))
(define-const var2175 String (var3477_getSimpleName/-1846163870 var874)) ; Statement: $r18 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getSimpleName()>() 
(define-const var2046 String (var1412_capitalize/-2093178097 var2175)) ; Statement: $r19 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: java.lang.String capitalize(java.lang.String)>($r18) 
(assert true)
(define-const var2191 String (append/672562846 var2705 var2046)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var2705!1 String)
(assert (= var2705!1 (str.++ var2705 var2046)))
(assert true)
(define-const var2174 String (toString/-2075883882 var2191)) ; Statement: $r30 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1864 String (var3477_getDescriptor/-815490800 var874)) ; Statement: $r22 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var2107 var3693 (var3693_getType/-670772978 var1864)) ; Statement: $r28 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r22) 
(define-const var1046 (Array Int var3693) arr-var3693-init) ; Statement: $r23 = newarray (net.bytebuddy.jar.asm.Type)[3] 
(define-const var679 var3693 (var3693_getType/-1581227099 var1533!class)) ; Statement: $r24 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/Object;") 
(declare-const var1046!1 (Array Int var3693))
(assert (not (= var1046!1 null-__Array__Int__var3693__)))
(assert (= (select var1046!1 0) var679)) ; Statement: $r23[0] = $r24 
(define-const var3107 var3693 (var3693_getType/-1581227099 String!class)) ; Statement: $r25 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/String;") 
(declare-const var1046!2 (Array Int var3693))
(assert (not (= var1046!2 null-__Array__Int__var3693__)))
(assert (= (select var1046!2 1) var3107)) ; Statement: $r23[1] = $r25 
(define-const var349 String (var3477_getDescriptor/-815490800 var874)) ; Statement: $r26 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var238 var3693 (var3693_getType/-670772978 var349)) ; Statement: $r27 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r26) 
(declare-const var1046!3 (Array Int var3693))
(assert (not (= var1046!3 null-__Array__Int__var3693__)))
(assert (= (select var1046!3 2) var238)) ; Statement: $r23[2] = $r27 
(define-const var1423 String (var3693_getMethodDescriptor/1714375689 var2107 var1046!3)) ; Statement: $r29 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r28, $r23) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var1927!10 185 var78 var2174 var1423 (ite (= 1 1) true false))) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r31, $r30, $r29, 1) 

(declare-const var1927!11 var2877)
(declare-const var748 Int)
(declare-const var78!1 String)
(declare-const var2174!1 String)
(declare-const var1423!1 String)
(declare-const var1005 Int)
(define-const var510 Bool (var3477_isPrimitive/72266651 var874)) ; Statement: $z1 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>() 
 ; Statement: if $z1 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r3) 
(assert (not (= (ite var510 1 0) 0))) ; Cond: $z1 != 0 
(assert true)
;(assert (fieldWrite/1607143204 var2919!1 var1927!11)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r3) 

(declare-const var2919!2 var1499)
(declare-const var1927!12 var2877)
(assert true)
;(assert (visitLabel/-1047844545 var1927!12 var2122!2)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r9) 

(declare-const var1927!13 var2877)
(declare-const var2122!3 var2461)
(define-const var2518 var1663 (var254_getClassFileVersion/1582306684 var416)) ; Statement: $r34 = interfaceinvoke r32.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>() 
(define-const var2778 var1663 var1663-JAVA_V6) ; Statement: $r33 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6> 
(assert true)
(define-const var900 Bool (isAtLeast/-1748342699 var2518 var2778)) ; Statement: $z2 = virtualinvoke $r34.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r33) 
 ; Statement: if $z2 == 0 goto virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 
(assert (= (ite var900 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
;(assert (visitVarInsn/-1960990921 var1927!13 25 0)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var1927!14 var2877)
(declare-const var1876!5 Int)
(declare-const var3161!7 Int)
(assert true)
;(assert (fieldRead/-1215157193 var2919!2 var1927!14)) ; Statement: virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r3) 

(declare-const var2919!3 var1499)
(declare-const var1927!15 var2877)
(define-const var472 var493 (persistentField/940556598 var2919!3)) ; Statement: $r35 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField> 
(assert true)
(define-const var3738 var197 (getType/-169094385 var472)) ; Statement: $r36 = virtualinvoke $r35.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3664 Bool (var197_isPrimitive/976449198 var3738)) ; Statement: $z3 = interfaceinvoke $r36.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>() 
 ; Statement: if $z3 != 0 goto $r57 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(assert (not (= (ite var3664 1 0) 0))) ; Cond: $z3 != 0 
(define-const var1868 var1966 (persistentFieldAsDefined/940556598 var2919!3)) ; Statement: $r57 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var1820 var197 (var1966_getType/-1495628553 var1868)) ; Statement: $r58 = interfaceinvoke $r57.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var2711 var3477 (var197_asErasure/-1205814801 var1820)) ; Statement: $r59 = interfaceinvoke $r58.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var3408 String (var3477_getDescriptor/-815490800 var2711)) ; Statement: $r60 = interfaceinvoke $r59.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var3069 var3693 (var3693_getType/-670772978 var3408)) ; Statement: $r61 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r60) 
(assert true)
(define-const var3187 Int (getOpcode/858132300 var3069 172)) ; Statement: $i0 = virtualinvoke $r61.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(172) 
(assert true)
;(assert (visitInsn/-522444309 var1927!15 var3187)) ; Statement: virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>($i0) 

(declare-const var1927!16 var2877)
(declare-const var3187!1 Int)
(define-const var314 var2640 var2640-init) ; Statement: $r62 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size 
(define-const var433 var1966 (persistentFieldAsDefined/940556598 var2919!3)) ; Statement: $r63 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var1563 var197 (var1966_getType/-1495628553 var433)) ; Statement: $r64 = interfaceinvoke $r63.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var276 var1627 (var197_getStackSize/1525319007 var1563)) ; Statement: $r65 = interfaceinvoke $r64.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>() 
(assert true)
(define-const var2526 Int (getSize/481053644 var276)) ; Statement: $i1 = virtualinvoke $r65.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>() 
(define-const var3666 Int (+ 4 var2526)) ; Statement: $i2 = 4 + $i1 
(define-const var3808 Int (var1462_getStackSize/1477814934 var2311)) ; Statement: $i3 = interfaceinvoke r37.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>() 
(assert true)
;(assert (<init>/241536392 var314 var3666 var3808)) ; Statement: specialinvoke $r62.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i2, $i3) 

(declare-const var314!1 var2640)
(declare-const var3666!1 Int)
(declare-const var3808!1 Int)
 ; Statement: return $r62 
(check-sat)
(get-model)
(get-unsat-core)
; {persistentFieldAsDefined/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var1966_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var197_isPrimitive/976449198=([net.bytebuddy.description.type.TypeDescription$Generic], boolean), visitVarInsn/-1960990921=([net.bytebuddy.jar.asm.MethodVisitor, int, int], void), managedCtClass/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], net.bytebuddy.description.type.TypeDescription), var3477_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var3693_getType/-1581227099=([java.lang.Class], net.bytebuddy.jar.asm.Type), arr-var3693-init=([], net.bytebuddy.jar.asm.Type[]), var3693_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var2461-init=([], net.bytebuddy.jar.asm.Label), <init>/2082491926=([net.bytebuddy.jar.asm.Label], void), visitJumpInsn/-1648307110=([net.bytebuddy.jar.asm.MethodVisitor, int, net.bytebuddy.jar.asm.Label], void), var1966_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), visitLdcInsn/993252084=([net.bytebuddy.jar.asm.MethodVisitor, java.lang.Object], void), cast-from-String-to-var1533=([java.lang.String], java.lang.Object), fieldRead/-1215157193=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender, net.bytebuddy.jar.asm.MethodVisitor], void), var3693_getInternalName/-319692553=([java.lang.Class], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3477_getSimpleName/-1846163870=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var1412_capitalize/-2093178097=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3477_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var3693_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), var3477_isPrimitive/72266651=([net.bytebuddy.description.type.TypeDescription], boolean), fieldWrite/1607143204=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender, net.bytebuddy.jar.asm.MethodVisitor], void), visitLabel/-1047844545=([net.bytebuddy.jar.asm.MethodVisitor, net.bytebuddy.jar.asm.Label], void), var254_getClassFileVersion/1582306684=([net.bytebuddy.implementation.Implementation$Context], net.bytebuddy.ClassFileVersion), isAtLeast/-1748342699=([net.bytebuddy.ClassFileVersion, net.bytebuddy.ClassFileVersion], boolean), persistentField/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription), getType/-169094385=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription], net.bytebuddy.description.type.TypeDescription$Generic), var197_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), getOpcode/858132300=([net.bytebuddy.jar.asm.Type, int], int), visitInsn/-522444309=([net.bytebuddy.jar.asm.MethodVisitor, int], void), var2640-init=([], net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size), var197_getStackSize/1525319007=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.implementation.bytecode.StackSize), getSize/481053644=([net.bytebuddy.implementation.bytecode.StackSize], int), var1462_getStackSize/1477814934=([net.bytebuddy.description.method.MethodDescription], int), <init>/241536392=([net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, int, int], void)}
; {var1499=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender, var2919=r0, var2877=net.bytebuddy.jar.asm.MethodVisitor, var1927=r3, var254=net.bytebuddy.implementation.Implementation$Context, var416=r32, var1462=net.bytebuddy.description.method.MethodDescription, var2311=r37, var1966=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var17=$r1, var197=net.bytebuddy.description.type.TypeDescription$Generic, var0=$r2, var1378=$z0, var3477=net.bytebuddy.description.type.TypeDescription, var874=$r56, var1876=25, var3161=0, var3934=$r4, var3373=$r8, var3693=net.bytebuddy.jar.asm.Type, var1872=org.hibernate.engine.spi.PersistentAttributeInterceptor, var1851=$r6, var2666=$r5, var1178=$r7, var1762=182, var3397="$$_hibernate_getInterceptor", var2461=net.bytebuddy.jar.asm.Label, var2122=$r9, var2440=198, var1923=$r10, var208=$r14, var129=$r12, var3473=$r11, var865=$r13, var231=$r15, var3821=$r16, var1533=java.lang.Object, var78=$r31, var2225=$r17, var2705=$r20, var2175=$r18, var1412=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl, var2046=$r19, var2191=$r21, var2174=$r30, var1864=$r22, var2107=$r28, var1046=$r23, var679=$r24, var3107=$r25, var349=$r26, var238=$r27, var1423=$r29, var748=185, var1005=1, var510=$z1, var1663=net.bytebuddy.ClassFileVersion, var2518=$r34, var2778=$r33, var900=$z2, var493=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription, var472=$r35, var3738=$r36, var3664=$z3, var1868=$r57, var1820=$r58, var2711=$r59, var3408=$r60, var3069=$r61, var3187=$i0, var2640=net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, var314=$r62, var433=$r63, var1563=$r64, var1627=net.bytebuddy.implementation.bytecode.StackSize, var276=$r65, var2526=$i1, var3666=$i2, var3808=$i3}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender=var1499, r0=var2919, net.bytebuddy.jar.asm.MethodVisitor=var2877, r3=var1927, net.bytebuddy.implementation.Implementation$Context=var254, r32=var416, net.bytebuddy.description.method.MethodDescription=var1462, r37=var2311, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var1966, $r1=var17, net.bytebuddy.description.type.TypeDescription$Generic=var197, $r2=var0, $z0=var1378, net.bytebuddy.description.type.TypeDescription=var3477, $r56=var874, 25=var1876, 0=var3161, $r4=var3934, $r8=var3373, net.bytebuddy.jar.asm.Type=var3693, org.hibernate.engine.spi.PersistentAttributeInterceptor=var1872, $r6=var1851, $r5=var2666, $r7=var1178, 182=var1762, "$$_hibernate_getInterceptor"=var3397, net.bytebuddy.jar.asm.Label=var2461, $r9=var2122, 198=var2440, $r10=var1923, $r14=var208, $r12=var129, $r11=var3473, $r13=var865, $r15=var231, $r16=var3821, java.lang.Object=var1533, $r31=var78, $r17=var2225, $r20=var2705, $r18=var2175, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl=var1412, $r19=var2046, $r21=var2191, $r30=var2174, $r22=var1864, $r28=var2107, $r23=var1046, $r24=var679, $r25=var3107, $r26=var349, $r27=var238, $r29=var1423, 185=var748, 1=var1005, $z1=var510, net.bytebuddy.ClassFileVersion=var1663, $r34=var2518, $r33=var2778, $z2=var900, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription=var493, $r35=var472, $r36=var3738, $z3=var3664, $r57=var1868, $r58=var1820, $r59=var2711, $r60=var3408, $r61=var3069, $i0=var3187, net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size=var2640, $r62=var314, $r63=var433, $r64=var1563, net.bytebuddy.implementation.bytecode.StackSize=var1627, $r65=var276, $i1=var2526, $i2=var3666, $i3=var3808}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender;	r3 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	r32 := @parameter1: net.bytebuddy.implementation.Implementation$Context;	r37 := @parameter2: net.bytebuddy.description.method.MethodDescription;	$r1 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r2 = interfaceinvoke $r1.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$z0 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>();	if $z0 == 0 goto $r56 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT>;	$r56 = <net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription OBJECT>;	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r4 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r8 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r6 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r5 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r7 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r6, $r5);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r8, "$$_hibernate_getInterceptor", $r7, 0);	$r9 = new net.bytebuddy.jar.asm.Label;	specialinvoke $r9.<net.bytebuddy.jar.asm.Label: void <init>()>();	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(198, $r9);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r10 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r14 = interfaceinvoke $r10.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r12 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r11 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r13 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r12, $r11);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r14, "$$_hibernate_getInterceptor", $r13, 0);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r15 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r16 = interfaceinvoke $r15.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r16);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r3);	$r31 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Lorg/hibernate/engine/spi/PersistentAttributeInterceptor;");	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("read");	$r18 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getSimpleName()>();	$r19 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl: java.lang.String capitalize(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r30 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	$r22 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r28 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r22);	$r23 = newarray (net.bytebuddy.jar.asm.Type)[3];	$r24 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/Object;");	$r23[0] = $r24;	$r25 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>(class "Ljava/lang/String;");	$r23[1] = $r25;	$r26 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r27 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r26);	$r23[2] = $r27;	$r29 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r28, $r23);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(185, $r31, $r30, $r29, 1);	$z1 = interfaceinvoke $r56.<net.bytebuddy.description.type.TypeDescription: boolean isPrimitive()>();	if $z1 != 0 goto virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r3);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldWrite(net.bytebuddy.jar.asm.MethodVisitor)>(r3);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r9);	$r34 = interfaceinvoke r32.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>();	$r33 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6>;	$z2 = virtualinvoke $r34.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r33);	if $z2 == 0 goto virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	virtualinvoke r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: void fieldRead(net.bytebuddy.jar.asm.MethodVisitor)>(r3);	$r35 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField>;	$r36 = virtualinvoke $r35.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$z3 = interfaceinvoke $r36.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>();	if $z3 != 0 goto $r57 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r57 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r58 = interfaceinvoke $r57.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r59 = interfaceinvoke $r58.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r60 = interfaceinvoke $r59.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r61 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r60);	$i0 = virtualinvoke $r61.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(172);	virtualinvoke r3.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>($i0);	$r62 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size;	$r63 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r64 = interfaceinvoke $r63.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r65 = interfaceinvoke $r64.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>();	$i1 = virtualinvoke $r65.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>();	$i2 = 4 + $i1;	$i3 = interfaceinvoke r37.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>();	specialinvoke $r62.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i2, $i3);	return $r62
;block_num 6