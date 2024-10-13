(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3516 0)
(declare-sort var2742 0)
(declare-sort var1200 0)
(declare-sort var885 0)
(declare-sort var750 0)
(declare-sort var2184 0)
(declare-sort var1594 0)
(declare-sort var3993 0)
(declare-sort var667 0)
(declare-sort var2659 0)
(declare-sort var2806 0)
(declare-sort var3780 0)
(declare-sort var2398 0)
(declare-sort var2204 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2659!class ClassObject)
(declare-fun applyLazyCheck/-988706971 (var3516) Bool)
(declare-fun persistentField/-988706971 (var3516) var750)
(declare-fun var750_getType/-1495628553 (var750) var2184)
(declare-fun var2184_asErasure/-1205814801 (var2184) var1594)
(declare-fun var1594_getDescriptor/-815490800 (var1594) String)
(declare-fun var3993_getType/-670772978 (String) var3993)
(declare-fun getOpcode/858132300 (var3993 Int) Int)
(declare-fun visitVarInsn/-1960990921 (var2742 Int Int) void)
(declare-fun var750_getDeclaringType/1957207317 (var750) var1594)
(declare-fun var1594_asErasure/-1107626718 (var1594) var1594)
(declare-fun managedCtClass/-988706971 (var3516) var1594)
(declare-fun equals/-1650223740 (var667 var667) Bool)
(declare-fun cast-from-var1594-to-var667 (var1594) var667)
(declare-fun var1594_getInternalName/607692407 (var1594) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var750_getName/-182223371 (var750) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var750_getDescriptor/-1310213039 (var750) String)
(declare-fun arr-var3993-init () (Array Int var3993))
(declare-fun var3993_getMethodDescriptor/1714375689 (var3993 (Array Int var3993)) String)
(declare-fun visitMethodInsn/-1690375605 (var2742 Int String String String Bool) void)
(declare-fun var2184_isPrimitive/976449198 (var2184) Bool)
(declare-fun var3993_getInternalName/-319692553 (ClassObject) String)
(declare-fun var2806-init () var2806)
(declare-fun <init>/2082491926 (var2806) void)
(declare-fun visitJumpInsn/-1648307110 (var2742 Int var2806) void)
(declare-fun visitLdcInsn/993252084 (var2742 var667) void)
(declare-fun cast-from-String-to-var667 (String) var667)
(declare-fun visitLabel/-1047844545 (var2742 var2806) void)
(declare-fun var1200_getClassFileVersion/1582306684 (var1200) var3780)
(declare-fun isAtLeast/-1748342699 (var3780 var3780) Bool)
(declare-fun var2398-init () var2398)
(declare-fun var1594_getStackSize/637398802 (var1594) var2204)
(declare-fun getSize/481053644 (var2204) Int)
(declare-fun var885_getStackSize/1477814934 (var885) Int)
(declare-fun <init>/241536392 (var2398 Int Int) void)
(declare-const null-var3516 var3516)
(declare-const null-var2742 var2742)
(declare-const null-var1200 var1200)
(declare-const null-var885 var885)
(declare-const var3993-BOOLEAN_TYPE var3993)
(declare-const var3516-OBJECT_TYPE var3993)
(declare-const null-__Array__Int__var3993__ (Array Int var3993))
(declare-const var3993-VOID_TYPE var3993)
(declare-const var3516-STRING_TYPE var3993)
(declare-const var3780-JAVA_V6 var3780)
(declare-const var3404 var3516) ; Statement: r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler 
(assert (not (= var3404 null-var3516)))
(declare-const var905 var2742) ; Statement: r1 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var905 null-var2742)))
(declare-const var3518 var1200) ; Statement: r34 := @parameter1: net.bytebuddy.implementation.Implementation$Context 
(assert (not (= var3518 null-var1200)))
(declare-const var2148 var885) ; Statement: r40 := @parameter2: net.bytebuddy.description.method.MethodDescription 
(assert (not (= var2148 null-var885)))
(define-const var3646 Bool (applyLazyCheck/-988706971 var3404)) ; Statement: $z0 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: boolean applyLazyCheck> 
 ; Statement: if $z0 == 0 goto $r2 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(assert (= (ite var3646 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2528 var750 (persistentField/-988706971 var3404)) ; Statement: $r2 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(define-const var132 var2184 (var750_getType/-1495628553 var2528)) ; Statement: $r3 = interfaceinvoke $r2.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var2156 var1594 (var2184_asErasure/-1205814801 var132)) ; Statement: $r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var530 String (var1594_getDescriptor/-815490800 var2156)) ; Statement: $r5 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var2120 var3993 (var3993_getType/-670772978 var530)) ; Statement: $r6 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r5) 
(assert true)
(define-const var3725 Int (getOpcode/858132300 var2120 21)) ; Statement: $i0 = virtualinvoke $r6.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21) 
(assert true)
;(assert (visitVarInsn/-1960990921 var905 var3725 1)) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i0, 1) 

(declare-const var905!1 var2742)
(declare-const var3725!1 Int)
(declare-const var976 Int)
(assert true)
;(assert (visitVarInsn/-1960990921 var905!1 25 0)) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var905!2 var2742)
(declare-const var952 Int)
(declare-const var1396 Int)
(define-const var1273 var750 (persistentField/-988706971 var3404)) ; Statement: $r7 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(define-const var913 var1594 (var750_getDeclaringType/1957207317 var1273)) ; Statement: $r8 = interfaceinvoke $r7.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription getDeclaringType()>() 
(define-const var3915 var1594 (var1594_asErasure/-1107626718 var913)) ; Statement: $r10 = interfaceinvoke $r8.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var2625 var1594 (managedCtClass/-988706971 var3404)) ; Statement: $r9 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(assert true)
(define-const var3372 Bool (equals/-1650223740 (cast-from-var1594-to-var667 var3915) (cast-from-var1594-to-var667 var2625))) ; Statement: $z1 = virtualinvoke $r10.<java.lang.Object: boolean equals(java.lang.Object)>($r9) 
 ; Statement: if $z1 == 0 goto $r11 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(assert (= (ite var3372 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3187 var750 (persistentField/-988706971 var3404)) ; Statement: $r11 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(define-const var23 var1594 (var750_getDeclaringType/1957207317 var3187)) ; Statement: $r12 = interfaceinvoke $r11.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription getDeclaringType()>() 
(define-const var2576 var1594 (var1594_asErasure/-1107626718 var23)) ; Statement: $r13 = interfaceinvoke $r12.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var2368 String (var1594_getInternalName/607692407 var2576)) ; Statement: $r25 = interfaceinvoke $r13.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var3911 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3911)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3911!1 String)
(assert (= var3911!1 ""))
(assert true)
(define-const var3698 String (append/672562846 var3911!1 "$$_hibernate_read_")) ; Statement: $r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_read_") 
(declare-const var3911!2 String)
(assert (= var3911!2 (str.++ var3911!1 "$$_hibernate_read_")))
(define-const var1724 var750 (persistentField/-988706971 var3404)) ; Statement: $r15 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(define-const var906 String (var750_getName/-182223371 var1724)) ; Statement: $r16 = interfaceinvoke $r15.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
(define-const var2157 String (append/672562846 var3698 var906)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3698!1 String)
(assert (= var3698!1 (str.++ var3698 var906)))
(assert true)
(define-const var2284 String (toString/-2075883882 var2157)) ; Statement: $r24 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2240 var750 (persistentField/-988706971 var3404)) ; Statement: $r19 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(define-const var74 String (var750_getDescriptor/-1310213039 var2240)) ; Statement: $r20 = interfaceinvoke $r19.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getDescriptor()>() 
(define-const var844 var3993 (var3993_getType/-670772978 var74)) ; Statement: $r22 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r20) 
(define-const var3192 (Array Int var3993) arr-var3993-init) ; Statement: $r21 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var3880 String (var3993_getMethodDescriptor/1714375689 var844 var3192)) ; Statement: $r23 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r22, $r21) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var905!2 182 var2368 var2284 var3880 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r25, $r24, $r23, 0) 

(declare-const var905!3 var2742)
(declare-const var1459 Int)
(declare-const var2368!1 String)
(declare-const var2284!1 String)
(declare-const var3880!1 String)
(declare-const var1396!1 Int)
(assert true) ; Non Conditional
(define-const var2931 Bool (applyLazyCheck/-988706971 var3404)) ; Statement: $z2 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: boolean applyLazyCheck> 
 ; Statement: if $z2 == 0 goto $r26 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(assert (= (ite var2931 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2937 var750 (persistentField/-988706971 var3404)) ; Statement: $r26 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(define-const var2605 var2184 (var750_getType/-1495628553 var2937)) ; Statement: $r27 = interfaceinvoke $r26.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3893 Bool (var2184_isPrimitive/976449198 var2605)) ; Statement: $z3 = interfaceinvoke $r27.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>() 
 ; Statement: if $z3 == 0 goto $r33 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Ljava/util/Objects;") 
(assert (= (ite var3893 1 0) 0)) ; Cond: $z3 == 0 
(define-const var683 String (var3993_getInternalName/-319692553 var2659!class)) ; Statement: $r33 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Ljava/util/Objects;") 
(define-const var3531 var3993 var3993-BOOLEAN_TYPE) ; Statement: $r31 = <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type BOOLEAN_TYPE> 
(define-const var1358 (Array Int var3993) arr-var3993-init) ; Statement: $r28 = newarray (net.bytebuddy.jar.asm.Type)[2] 
(define-const var3599 var3993 var3516-OBJECT_TYPE) ; Statement: $r29 = <org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.jar.asm.Type OBJECT_TYPE> 
(declare-const var1358!1 (Array Int var3993))
(assert (not (= var1358!1 null-__Array__Int__var3993__)))
(assert (= (select var1358!1 0) var3599)) ; Statement: $r28[0] = $r29 
(define-const var2582 var3993 var3516-OBJECT_TYPE) ; Statement: $r30 = <org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.jar.asm.Type OBJECT_TYPE> 
(declare-const var1358!2 (Array Int var3993))
(assert (not (= var1358!2 null-__Array__Int__var3993__)))
(assert (= (select var1358!2 1) var2582)) ; Statement: $r28[1] = $r30 
(define-const var3291 String (var3993_getMethodDescriptor/1714375689 var3531 var1358!2)) ; Statement: $r32 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r31, $r28) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var905!3 184 var683 "deepEquals" var3291 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(184, $r33, "deepEquals", $r32, 0) 

(declare-const var905!4 var2742)
(declare-const var645 Int)
(declare-const var683!1 String)
(declare-const var1493 String)
(declare-const var3291!1 String)
(declare-const var1396!2 Int)
(define-const var601 Int 154) ; Statement: s5 = 154 
(assert true) ; Non Conditional
(define-const var1052 var2806 var2806-init) ; Statement: $r79 = new net.bytebuddy.jar.asm.Label 
(assert true)
;(assert (<init>/2082491926 var1052)) ; Statement: specialinvoke $r79.<net.bytebuddy.jar.asm.Label: void <init>()>() 

(declare-const var1052!1 var2806)
(assert true)
;(assert (visitJumpInsn/-1648307110 var905!4 var601 var1052!1)) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(s5, $r79) 

(declare-const var905!5 var2742)
(declare-const var601!1 Int)
(declare-const var1052!2 var2806)
(assert true)
;(assert (visitVarInsn/-1960990921 var905!5 25 0)) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var905!6 var2742)
(declare-const var952!1 Int)
(declare-const var1396!3 Int)
(define-const var1398 var750 (persistentField/-988706971 var3404)) ; Statement: $r80 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(define-const var695 String (var750_getName/-182223371 var1398)) ; Statement: $r81 = interfaceinvoke $r80.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
;(assert (visitLdcInsn/993252084 var905!6 (cast-from-String-to-var667 var695))) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r81) 

(declare-const var905!7 var2742)
(declare-const var695!1 String)
(define-const var1084 var1594 (managedCtClass/-988706971 var3404)) ; Statement: $r82 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var678 String (var1594_getInternalName/607692407 var1084)) ; Statement: $r83 = interfaceinvoke $r82.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var2176 var3993 var3993-VOID_TYPE) ; Statement: $r84 = <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type VOID_TYPE> 
(define-const var1144 (Array Int var3993) arr-var3993-init) ; Statement: $r85 = newarray (net.bytebuddy.jar.asm.Type)[1] 
(define-const var3262 var3993 var3516-STRING_TYPE) ; Statement: $r86 = <org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.jar.asm.Type STRING_TYPE> 
(declare-const var1144!1 (Array Int var3993))
(assert (not (= var1144!1 null-__Array__Int__var3993__)))
(assert (= (select var1144!1 0) var3262)) ; Statement: $r85[0] = $r86 
(define-const var1377 String (var3993_getMethodDescriptor/1714375689 var2176 var1144!1)) ; Statement: $r87 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r84, $r85) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var905!7 182 var678 "$$_hibernate_trackChange" var1377 (ite (= 1 0) true false))) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r83, "$$_hibernate_trackChange", $r87, 0) 

(declare-const var905!8 var2742)
(declare-const var1459!1 Int)
(declare-const var678!1 String)
(declare-const var3985 String)
(declare-const var1377!1 String)
(declare-const var1396!4 Int)
(assert true)
;(assert (visitLabel/-1047844545 var905!8 var1052!2)) ; Statement: virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r79) 

(declare-const var905!9 var2742)
(declare-const var1052!3 var2806)
(define-const var2021 var3780 (var1200_getClassFileVersion/1582306684 var3518)) ; Statement: $r88 = interfaceinvoke r34.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>() 
(define-const var169 var3780 var3780-JAVA_V6) ; Statement: $r89 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6> 
(assert true)
(define-const var3797 Bool (isAtLeast/-1748342699 var2021 var169)) ; Statement: $z8 = virtualinvoke $r88.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r89) 
 ; Statement: if $z8 == 0 goto $r35 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size 
(assert (= (ite var3797 1 0) 0)) ; Cond: $z8 == 0 
(define-const var1430 var2398 var2398-init) ; Statement: $r35 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size 
(define-const var3858 var750 (persistentField/-988706971 var3404)) ; Statement: $r36 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField> 
(define-const var3335 var2184 (var750_getType/-1495628553 var3858)) ; Statement: $r37 = interfaceinvoke $r36.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var707 var1594 (var2184_asErasure/-1205814801 var3335)) ; Statement: $r38 = interfaceinvoke $r37.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var3553 var2204 (var1594_getStackSize/637398802 var707)) ; Statement: $r39 = interfaceinvoke $r38.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>() 
(assert true)
(define-const var2010 Int (getSize/481053644 var3553)) ; Statement: $i1 = virtualinvoke $r39.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>() 
(define-const var1850 Int (* 2 var2010)) ; Statement: $i2 = 2 * $i1 
(define-const var2643 Int (+ 3 var1850)) ; Statement: $i4 = 3 + $i2 
(define-const var1133 Int (var885_getStackSize/1477814934 var2148)) ; Statement: $i3 = interfaceinvoke r40.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>() 
(assert true)
;(assert (<init>/241536392 var1430 var2643 var1133)) ; Statement: specialinvoke $r35.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i4, $i3) 

(declare-const var1430!1 var2398)
(declare-const var2643!1 Int)
(declare-const var1133!1 Int)
 ; Statement: return $r35 
(check-sat)
(get-model)
(get-unsat-core)
; {applyLazyCheck/-988706971=([org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler], boolean), persistentField/-988706971=([org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var750_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var2184_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), var1594_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var3993_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), getOpcode/858132300=([net.bytebuddy.jar.asm.Type, int], int), visitVarInsn/-1960990921=([net.bytebuddy.jar.asm.MethodVisitor, int, int], void), var750_getDeclaringType/1957207317=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription), var1594_asErasure/-1107626718=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDescription), managedCtClass/-988706971=([org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler], net.bytebuddy.description.type.TypeDescription), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-var1594-to-var667=([net.bytebuddy.description.type.TypeDescription], java.lang.Object), var1594_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var750_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var750_getDescriptor/-1310213039=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), arr-var3993-init=([], net.bytebuddy.jar.asm.Type[]), var3993_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), var2184_isPrimitive/976449198=([net.bytebuddy.description.type.TypeDescription$Generic], boolean), var3993_getInternalName/-319692553=([java.lang.Class], java.lang.String), var2806-init=([], net.bytebuddy.jar.asm.Label), <init>/2082491926=([net.bytebuddy.jar.asm.Label], void), visitJumpInsn/-1648307110=([net.bytebuddy.jar.asm.MethodVisitor, int, net.bytebuddy.jar.asm.Label], void), visitLdcInsn/993252084=([net.bytebuddy.jar.asm.MethodVisitor, java.lang.Object], void), cast-from-String-to-var667=([java.lang.String], java.lang.Object), visitLabel/-1047844545=([net.bytebuddy.jar.asm.MethodVisitor, net.bytebuddy.jar.asm.Label], void), var1200_getClassFileVersion/1582306684=([net.bytebuddy.implementation.Implementation$Context], net.bytebuddy.ClassFileVersion), isAtLeast/-1748342699=([net.bytebuddy.ClassFileVersion, net.bytebuddy.ClassFileVersion], boolean), var2398-init=([], net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size), var1594_getStackSize/637398802=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.implementation.bytecode.StackSize), getSize/481053644=([net.bytebuddy.implementation.bytecode.StackSize], int), var885_getStackSize/1477814934=([net.bytebuddy.description.method.MethodDescription], int), <init>/241536392=([net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, int, int], void)}
; {var3516=org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler, var3404=r0, var2742=net.bytebuddy.jar.asm.MethodVisitor, var905=r1, var1200=net.bytebuddy.implementation.Implementation$Context, var3518=r34, var885=net.bytebuddy.description.method.MethodDescription, var2148=r40, var3646=$z0, var750=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var2528=$r2, var2184=net.bytebuddy.description.type.TypeDescription$Generic, var132=$r3, var1594=net.bytebuddy.description.type.TypeDescription, var2156=$r4, var530=$r5, var3993=net.bytebuddy.jar.asm.Type, var2120=$r6, var3725=$i0, var976=1, var952=25, var1396=0, var1273=$r7, var913=$r8, var3915=$r10, var2625=$r9, var667=java.lang.Object, var3372=$z1, var3187=$r11, var23=$r12, var2576=$r13, var2368=$r25, var3911=$r14, var3698=$r17, var1724=$r15, var906=$r16, var2157=$r18, var2284=$r24, var2240=$r19, var74=$r20, var844=$r22, var3192=$r21, var3880=$r23, var1459=182, var2931=$z2, var2937=$r26, var2605=$r27, var3893=$z3, var2659=java.util.Objects, var683=$r33, var3531=$r31, var1358=$r28, var3599=$r29, var2582=$r30, var3291=$r32, var645=184, var1493="deepEquals", var601=s5, var2806=net.bytebuddy.jar.asm.Label, var1052=$r79, var1398=$r80, var695=$r81, var1084=$r82, var678=$r83, var2176=$r84, var1144=$r85, var3262=$r86, var1377=$r87, var3985="$$_hibernate_trackChange", var3780=net.bytebuddy.ClassFileVersion, var2021=$r88, var169=$r89, var3797=$z8, var2398=net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, var1430=$r35, var3858=$r36, var3335=$r37, var707=$r38, var2204=net.bytebuddy.implementation.bytecode.StackSize, var3553=$r39, var2010=$i1, var1850=$i2, var2643=$i4, var1133=$i3}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler=var3516, r0=var3404, net.bytebuddy.jar.asm.MethodVisitor=var2742, r1=var905, net.bytebuddy.implementation.Implementation$Context=var1200, r34=var3518, net.bytebuddy.description.method.MethodDescription=var885, r40=var2148, $z0=var3646, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var750, $r2=var2528, net.bytebuddy.description.type.TypeDescription$Generic=var2184, $r3=var132, net.bytebuddy.description.type.TypeDescription=var1594, $r4=var2156, $r5=var530, net.bytebuddy.jar.asm.Type=var3993, $r6=var2120, $i0=var3725, 1=var976, 25=var952, 0=var1396, $r7=var1273, $r8=var913, $r10=var3915, $r9=var2625, java.lang.Object=var667, $z1=var3372, $r11=var3187, $r12=var23, $r13=var2576, $r25=var2368, $r14=var3911, $r17=var3698, $r15=var1724, $r16=var906, $r18=var2157, $r24=var2284, $r19=var2240, $r20=var74, $r22=var844, $r21=var3192, $r23=var3880, 182=var1459, $z2=var2931, $r26=var2937, $r27=var2605, $z3=var3893, java.util.Objects=var2659, $r33=var683, $r31=var3531, $r28=var1358, $r29=var3599, $r30=var2582, $r32=var3291, 184=var645, "deepEquals"=var1493, s5=var601, net.bytebuddy.jar.asm.Label=var2806, $r79=var1052, $r80=var1398, $r81=var695, $r82=var1084, $r83=var678, $r84=var2176, $r85=var1144, $r86=var3262, $r87=var1377, "$$_hibernate_trackChange"=var3985, net.bytebuddy.ClassFileVersion=var3780, $r88=var2021, $r89=var169, $z8=var3797, net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size=var2398, $r35=var1430, $r36=var3858, $r37=var3335, $r38=var707, net.bytebuddy.implementation.bytecode.StackSize=var2204, $r39=var3553, $i1=var2010, $i2=var1850, $i4=var2643, $i3=var1133}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler;	r1 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	r34 := @parameter1: net.bytebuddy.implementation.Implementation$Context;	r40 := @parameter2: net.bytebuddy.description.method.MethodDescription;	$z0 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: boolean applyLazyCheck>;	if $z0 == 0 goto $r2 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r2 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r3 = interfaceinvoke $r2.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r5 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r6 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r5);	$i0 = virtualinvoke $r6.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21);	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i0, 1);	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r7 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r8 = interfaceinvoke $r7.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription getDeclaringType()>();	$r10 = interfaceinvoke $r8.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r9 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$z1 = virtualinvoke $r10.<java.lang.Object: boolean equals(java.lang.Object)>($r9);	if $z1 == 0 goto $r11 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r11 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r12 = interfaceinvoke $r11.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription getDeclaringType()>();	$r13 = interfaceinvoke $r12.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r25 = interfaceinvoke $r13.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_read_");	$r15 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r16 = interfaceinvoke $r15.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r24 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r20 = interfaceinvoke $r19.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getDescriptor()>();	$r22 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r20);	$r21 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r23 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r22, $r21);	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r25, $r24, $r23, 0);	$z2 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: boolean applyLazyCheck>;	if $z2 == 0 goto $r26 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r26 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r27 = interfaceinvoke $r26.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$z3 = interfaceinvoke $r27.<net.bytebuddy.description.type.TypeDescription$Generic: boolean isPrimitive()>();	if $z3 == 0 goto $r33 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Ljava/util/Objects;");	$r33 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getInternalName(java.lang.Class)>(class "Ljava/util/Objects;");	$r31 = <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type BOOLEAN_TYPE>;	$r28 = newarray (net.bytebuddy.jar.asm.Type)[2];	$r29 = <org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.jar.asm.Type OBJECT_TYPE>;	$r28[0] = $r29;	$r30 = <org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.jar.asm.Type OBJECT_TYPE>;	$r28[1] = $r30;	$r32 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r31, $r28);	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(184, $r33, "deepEquals", $r32, 0);	s5 = 154;	$r79 = new net.bytebuddy.jar.asm.Label;	specialinvoke $r79.<net.bytebuddy.jar.asm.Label: void <init>()>();	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitJumpInsn(int,net.bytebuddy.jar.asm.Label)>(s5, $r79);	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r80 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r81 = interfaceinvoke $r80.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitLdcInsn(java.lang.Object)>($r81);	$r82 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r83 = interfaceinvoke $r82.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r84 = <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type VOID_TYPE>;	$r85 = newarray (net.bytebuddy.jar.asm.Type)[1];	$r86 = <org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.jar.asm.Type STRING_TYPE>;	$r85[0] = $r86;	$r87 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r84, $r85);	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(182, $r83, "$$_hibernate_trackChange", $r87, 0);	virtualinvoke r1.<net.bytebuddy.jar.asm.MethodVisitor: void visitLabel(net.bytebuddy.jar.asm.Label)>($r79);	$r88 = interfaceinvoke r34.<net.bytebuddy.implementation.Implementation$Context: net.bytebuddy.ClassFileVersion getClassFileVersion()>();	$r89 = <net.bytebuddy.ClassFileVersion: net.bytebuddy.ClassFileVersion JAVA_V6>;	$z8 = virtualinvoke $r88.<net.bytebuddy.ClassFileVersion: boolean isAtLeast(net.bytebuddy.ClassFileVersion)>($r89);	if $z8 == 0 goto $r35 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size;	$r35 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size;	$r36 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.InlineDirtyCheckingHandler: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentField>;	$r37 = interfaceinvoke $r36.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r38 = interfaceinvoke $r37.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r39 = interfaceinvoke $r38.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>();	$i1 = virtualinvoke $r39.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>();	$i2 = 2 * $i1;	$i4 = 3 + $i2;	$i3 = interfaceinvoke r40.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>();	specialinvoke $r35.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i4, $i3);	return $r35
;block_num 8