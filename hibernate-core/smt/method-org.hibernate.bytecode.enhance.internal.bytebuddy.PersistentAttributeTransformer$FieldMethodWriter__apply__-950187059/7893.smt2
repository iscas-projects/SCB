(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2454 0)
(declare-sort var91 0)
(declare-sort var704 0)
(declare-sort var3021 0)
(declare-sort var3230 0)
(declare-sort var126 0)
(declare-sort var925 0)
(declare-sort var1747 0)
(declare-sort var2725 0)
(declare-sort var1522 0)
(declare-sort var3783 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun visitVarInsn/-1960990921 (var91 Int Int) void)
(declare-fun persistentField/-2062993684 (var2454) var3230)
(declare-fun getType/-169094385 (var3230) var126)
(declare-fun var126_asErasure/-1205814801 (var126) var925)
(declare-fun var925_getDescriptor/-815490800 (var925) String)
(declare-fun var1747_getType/-670772978 (String) var1747)
(declare-fun getOpcode/858132300 (var1747 Int) Int)
(declare-fun managedCtClass/-2062993684 (var2454) var925)
(declare-fun var925_getSuperClass/-779732717 (var925) var126)
(declare-fun var925_getInternalName/607692407 (var925) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/179674637 (var3230) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1747_getType/-1581227099 (ClassObject) var1747)
(declare-fun arr-var1747-init () (Array Int var1747))
(declare-fun var1747_getMethodDescriptor/1714375689 (var1747 (Array Int var1747)) String)
(declare-fun visitMethodInsn/-1690375605 (var91 Int String String String Bool) void)
(declare-fun visitInsn/-522444309 (var91 Int) void)
(declare-fun var1522-init () var1522)
(declare-fun var126_getStackSize/1525319007 (var126) var3783)
(declare-fun getSize/481053644 (var3783) Int)
(declare-fun var3021_getStackSize/1477814934 (var3021) Int)
(declare-fun <init>/241536392 (var1522 Int Int) void)
(declare-const null-var2454 var2454)
(declare-const null-var91 var91)
(declare-const null-var704 var704)
(declare-const null-var3021 var3021)
(declare-const var2725-TYPE ClassObject)
(declare-const null-__Array__Int__var1747__ (Array Int var1747))
(declare-const var3841 var2454) ; Statement: r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter 
(assert (not (= var3841 null-var2454)))
(declare-const var2706 var91) ; Statement: r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var2706 null-var91)))
(declare-const var1422 var704) ; Statement: r31 := @parameter1: net.bytebuddy.implementation.Implementation$Context 
(assert (not (= var1422 null-var704)))
(declare-const var471 var3021) ; Statement: r30 := @parameter2: net.bytebuddy.description.method.MethodDescription 
(assert (not (= var471 null-var3021)))
(assert true)
;(assert (visitVarInsn/-1960990921 var2706 25 0)) ; Statement: virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0) 

(declare-const var2706!1 var91)
(declare-const var3038 Int)
(declare-const var1609 Int)
(define-const var2153 var3230 (persistentField/-2062993684 var3841)) ; Statement: $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField> 
(assert true)
(define-const var445 var126 (getType/-169094385 var2153)) ; Statement: $r3 = virtualinvoke $r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var816 var925 (var126_asErasure/-1205814801 var445)) ; Statement: $r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var1285 String (var925_getDescriptor/-815490800 var816)) ; Statement: $r5 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var1882 var1747 (var1747_getType/-670772978 var1285)) ; Statement: $r6 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r5) 
(assert true)
(define-const var2351 Int (getOpcode/858132300 var1882 21)) ; Statement: $i0 = virtualinvoke $r6.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21) 
(assert true)
;(assert (visitVarInsn/-1960990921 var2706!1 var2351 1)) ; Statement: virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i0, 1) 

(declare-const var2706!2 var91)
(declare-const var2351!1 Int)
(declare-const var1937 Int)
(define-const var709 var925 (managedCtClass/-2062993684 var3841)) ; Statement: $r7 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var2644 var126 (var925_getSuperClass/-779732717 var709)) ; Statement: $r8 = interfaceinvoke $r7.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>() 
(define-const var37 var925 (var126_asErasure/-1205814801 var2644)) ; Statement: $r9 = interfaceinvoke $r8.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var1576 String (var925_getInternalName/607692407 var37)) ; Statement: $r25 = interfaceinvoke $r9.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var1178 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1178)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1178!1 String)
(assert (= var1178!1 ""))
(assert true)
(define-const var1768 String (append/672562846 var1178!1 "$$_hibernate_write_")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_write_") 
(declare-const var1178!2 String)
(assert (= var1178!2 (str.++ var1178!1 "$$_hibernate_write_")))
(define-const var1297 var3230 (persistentField/-2062993684 var3841)) ; Statement: $r11 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField> 
(assert true)
(define-const var3555 String (getName/179674637 var1297)) ; Statement: $r12 = virtualinvoke $r11.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: java.lang.String getName()>() 
(assert true)
(define-const var3162 String (append/672562846 var1768 var3555)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1768!1 String)
(assert (= var1768!1 (str.++ var1768 var3555)))
(assert true)
(define-const var3054 String (toString/-2075883882 var3162)) ; Statement: $r24 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1686 ClassObject var2725-TYPE) ; Statement: $r15 = <java.lang.Void: java.lang.Class TYPE> 
(define-const var3566 var1747 (var1747_getType/-1581227099 var1686)) ; Statement: $r22 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>($r15) 
(define-const var711 (Array Int var1747) arr-var1747-init) ; Statement: $r16 = newarray (net.bytebuddy.jar.asm.Type)[1] 
(define-const var355 var3230 (persistentField/-2062993684 var3841)) ; Statement: $r17 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField> 
(assert true)
(define-const var2578 var126 (getType/-169094385 var355)) ; Statement: $r18 = virtualinvoke $r17.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var2419 var925 (var126_asErasure/-1205814801 var2578)) ; Statement: $r19 = interfaceinvoke $r18.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var2805 String (var925_getDescriptor/-815490800 var2419)) ; Statement: $r20 = interfaceinvoke $r19.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var1634 var1747 (var1747_getType/-670772978 var2805)) ; Statement: $r21 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r20) 
(declare-const var711!1 (Array Int var1747))
(assert (not (= var711!1 null-__Array__Int__var1747__)))
(assert (= (select var711!1 0) var1634)) ; Statement: $r16[0] = $r21 
(define-const var2920 String (var1747_getMethodDescriptor/1714375689 var3566 var711!1)) ; Statement: $r23 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r22, $r16) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var2706!2 183 var1576 var3054 var2920 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r25, $r24, $r23, 0) 

(declare-const var2706!3 var91)
(declare-const var2234 Int)
(declare-const var1576!1 String)
(declare-const var3054!1 String)
(declare-const var2920!1 String)
(declare-const var1609!1 Int)
(assert true)
;(assert (visitInsn/-522444309 var2706!3 177)) ; Statement: virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177) 

(declare-const var2706!4 var91)
(declare-const var3358 Int)
(define-const var2346 var1522 var1522-init) ; Statement: $r26 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size 
(define-const var1772 var3230 (persistentField/-2062993684 var3841)) ; Statement: $r27 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField> 
(assert true)
(define-const var3763 var126 (getType/-169094385 var1772)) ; Statement: $r28 = virtualinvoke $r27.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3262 var3783 (var126_getStackSize/1525319007 var3763)) ; Statement: $r29 = interfaceinvoke $r28.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>() 
(assert true)
(define-const var653 Int (getSize/481053644 var3262)) ; Statement: $i1 = virtualinvoke $r29.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>() 
(define-const var1187 Int (+ 1 var653)) ; Statement: $i3 = 1 + $i1 
(define-const var742 Int (var3021_getStackSize/1477814934 var471)) ; Statement: $i2 = interfaceinvoke r30.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>() 
(assert true)
;(assert (<init>/241536392 var2346 var1187 var742)) ; Statement: specialinvoke $r26.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i3, $i2) 

(declare-const var2346!1 var1522)
(declare-const var1187!1 Int)
(declare-const var742!1 Int)
 ; Statement: return $r26 
(check-sat)
(get-model)
(get-unsat-core)
; {visitVarInsn/-1960990921=([net.bytebuddy.jar.asm.MethodVisitor, int, int], void), persistentField/-2062993684=([org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter], org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription), getType/-169094385=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription], net.bytebuddy.description.type.TypeDescription$Generic), var126_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), var925_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var1747_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), getOpcode/858132300=([net.bytebuddy.jar.asm.Type, int], int), managedCtClass/-2062993684=([org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter], net.bytebuddy.description.type.TypeDescription), var925_getSuperClass/-779732717=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDescription$Generic), var925_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/179674637=([org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1747_getType/-1581227099=([java.lang.Class], net.bytebuddy.jar.asm.Type), arr-var1747-init=([], net.bytebuddy.jar.asm.Type[]), var1747_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void), visitInsn/-522444309=([net.bytebuddy.jar.asm.MethodVisitor, int], void), var1522-init=([], net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size), var126_getStackSize/1525319007=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.implementation.bytecode.StackSize), getSize/481053644=([net.bytebuddy.implementation.bytecode.StackSize], int), var3021_getStackSize/1477814934=([net.bytebuddy.description.method.MethodDescription], int), <init>/241536392=([net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, int, int], void)}
; {var2454=org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter, var3841=r1, var91=net.bytebuddy.jar.asm.MethodVisitor, var2706=r0, var704=net.bytebuddy.implementation.Implementation$Context, var1422=r31, var3021=net.bytebuddy.description.method.MethodDescription, var471=r30, var3038=25, var1609=0, var3230=org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription, var2153=$r2, var126=net.bytebuddy.description.type.TypeDescription$Generic, var445=$r3, var925=net.bytebuddy.description.type.TypeDescription, var816=$r4, var1285=$r5, var1747=net.bytebuddy.jar.asm.Type, var1882=$r6, var2351=$i0, var1937=1, var709=$r7, var2644=$r8, var37=$r9, var1576=$r25, var1178=$r10, var1768=$r13, var1297=$r11, var3555=$r12, var3162=$r14, var3054=$r24, var2725=java.lang.Void, var1686=$r15, var3566=$r22, var711=$r16, var355=$r17, var2578=$r18, var2419=$r19, var2805=$r20, var1634=$r21, var2920=$r23, var2234=183, var3358=177, var1522=net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size, var2346=$r26, var1772=$r27, var3763=$r28, var3783=net.bytebuddy.implementation.bytecode.StackSize, var3262=$r29, var653=$i1, var1187=$i3, var742=$i2}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter=var2454, r1=var3841, net.bytebuddy.jar.asm.MethodVisitor=var91, r0=var2706, net.bytebuddy.implementation.Implementation$Context=var704, r31=var1422, net.bytebuddy.description.method.MethodDescription=var3021, r30=var471, 25=var3038, 0=var1609, org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription=var3230, $r2=var2153, net.bytebuddy.description.type.TypeDescription$Generic=var126, $r3=var445, net.bytebuddy.description.type.TypeDescription=var925, $r4=var816, $r5=var1285, net.bytebuddy.jar.asm.Type=var1747, $r6=var1882, $i0=var2351, 1=var1937, $r7=var709, $r8=var2644, $r9=var37, $r25=var1576, $r10=var1178, $r13=var1768, $r11=var1297, $r12=var3555, $r14=var3162, $r24=var3054, java.lang.Void=var2725, $r15=var1686, $r22=var3566, $r16=var711, $r17=var355, $r18=var2578, $r19=var2419, $r20=var2805, $r21=var1634, $r23=var2920, 183=var2234, 177=var3358, net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size=var1522, $r26=var2346, $r27=var1772, $r28=var3763, net.bytebuddy.implementation.bytecode.StackSize=var3783, $r29=var3262, $i1=var653, $i3=var1187, $i2=var742}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter;	r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	r31 := @parameter1: net.bytebuddy.implementation.Implementation$Context;	r30 := @parameter2: net.bytebuddy.description.method.MethodDescription;	virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>(25, 0);	$r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField>;	$r3 = virtualinvoke $r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r5 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r6 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r5);	$i0 = virtualinvoke $r6.<net.bytebuddy.jar.asm.Type: int getOpcode(int)>(21);	virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitVarInsn(int,int)>($i0, 1);	$r7 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r8 = interfaceinvoke $r7.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>();	$r9 = interfaceinvoke $r8.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r25 = interfaceinvoke $r9.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_write_");	$r11 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField>;	$r12 = virtualinvoke $r11.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r24 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = <java.lang.Void: java.lang.Class TYPE>;	$r22 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>($r15);	$r16 = newarray (net.bytebuddy.jar.asm.Type)[1];	$r17 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField>;	$r18 = virtualinvoke $r17.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r19 = interfaceinvoke $r18.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r20 = interfaceinvoke $r19.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r21 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r20);	$r16[0] = $r21;	$r23 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r22, $r16);	virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r25, $r24, $r23, 0);	virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitInsn(int)>(177);	$r26 = new net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size;	$r27 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.PersistentAttributeTransformer$FieldMethodWriter: org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription persistentField>;	$r28 = virtualinvoke $r27.<org.hibernate.bytecode.enhance.internal.bytebuddy.EnhancerImpl$AnnotatedFieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r29 = interfaceinvoke $r28.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.implementation.bytecode.StackSize getStackSize()>();	$i1 = virtualinvoke $r29.<net.bytebuddy.implementation.bytecode.StackSize: int getSize()>();	$i3 = 1 + $i1;	$i2 = interfaceinvoke r30.<net.bytebuddy.description.method.MethodDescription: int getStackSize()>();	specialinvoke $r26.<net.bytebuddy.implementation.bytecode.ByteCodeAppender$Size: void <init>(int,int)>($i3, $i2);	return $r26
;block_num 1