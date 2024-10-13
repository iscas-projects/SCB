(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var748 0)
(declare-sort var1569 0)
(declare-sort var2909 0)
(declare-sort var2107 0)
(declare-sort var758 0)
(declare-sort var3352 0)
(declare-sort var2847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun managedCtClass/940556598 (var2107) var2909)
(declare-fun cast-from-var748-to-var2107 (var748) var2107)
(declare-fun var2909_getSuperClass/-779732717 (var2909) var758)
(declare-fun var758_asErasure/-1205814801 (var758) var2909)
(declare-fun var2909_getInternalName/607692407 (var2909) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persistentFieldAsDefined/940556598 (var2107) var3352)
(declare-fun var3352_getName/-182223371 (var3352) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3352_getType/-1495628553 (var3352) var758)
(declare-fun var2909_getDescriptor/-815490800 (var2909) String)
(declare-fun var2847_getType/-670772978 (String) var2847)
(declare-fun arr-var2847-init () (Array Int var2847))
(declare-fun var2847_getMethodDescriptor/1714375689 (var2847 (Array Int var2847)) String)
(declare-fun visitMethodInsn/-1690375605 (var1569 Int String String String Bool) void)
(declare-const null-var748 var748)
(declare-const null-var1569 var1569)
(declare-const var1885 var748) ; Statement: r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching 
(assert (not (= var1885 null-var748)))
(declare-const var2819 var1569) ; Statement: r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var2819 null-var1569)))
(define-const var802 var2909 (managedCtClass/940556598 (cast-from-var748-to-var2107 var1885))) ; Statement: $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var459 var758 (var2909_getSuperClass/-779732717 var802)) ; Statement: $r3 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>() 
(define-const var3096 var2909 (var758_asErasure/-1205814801 var459)) ; Statement: $r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var1118 String (var2909_getInternalName/607692407 var3096)) ; Statement: $r18 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var3191 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3191)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3191!1 String)
(assert (= var3191!1 ""))
(assert true)
(define-const var344 String (append/672562846 var3191!1 "$$_hibernate_read_")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_read_") 
(declare-const var3191!2 String)
(assert (= var3191!2 (str.++ var3191!1 "$$_hibernate_read_")))
(define-const var1495 var3352 (persistentFieldAsDefined/940556598 (cast-from-var748-to-var2107 var1885))) ; Statement: $r6 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var2318 String (var3352_getName/-182223371 var1495)) ; Statement: $r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
(define-const var2008 String (append/672562846 var344 var2318)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var344!1 String)
(assert (= var344!1 (str.++ var344 var2318)))
(assert true)
(define-const var1845 String (toString/-2075883882 var2008)) ; Statement: $r17 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var502 var3352 (persistentFieldAsDefined/940556598 (cast-from-var748-to-var2107 var1885))) ; Statement: $r10 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var958 var758 (var3352_getType/-1495628553 var502)) ; Statement: $r11 = interfaceinvoke $r10.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var3863 var2909 (var758_asErasure/-1205814801 var958)) ; Statement: $r12 = interfaceinvoke $r11.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var1889 String (var2909_getDescriptor/-815490800 var3863)) ; Statement: $r13 = interfaceinvoke $r12.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var612 var2847 (var2847_getType/-670772978 var1889)) ; Statement: $r15 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r13) 
(define-const var2778 (Array Int var2847) arr-var2847-init) ; Statement: $r14 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var1654 String (var2847_getMethodDescriptor/1714375689 var612 var2778)) ; Statement: $r16 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r15, $r14) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var2819 183 var1118 var1845 var1654 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r18, $r17, $r16, 0) 

(declare-const var2819!1 var1569)
(declare-const var2154 Int)
(declare-const var1118!1 String)
(declare-const var1845!1 String)
(declare-const var1654!1 String)
(declare-const var2549 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {managedCtClass/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], net.bytebuddy.description.type.TypeDescription), cast-from-var748-to-var2107=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching], org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender), var2909_getSuperClass/-779732717=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDescription$Generic), var758_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), var2909_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persistentFieldAsDefined/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var3352_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3352_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var2909_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var2847_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), arr-var2847-init=([], net.bytebuddy.jar.asm.Type[]), var2847_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var748=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching, var1885=r1, var1569=net.bytebuddy.jar.asm.MethodVisitor, var2819=r0, var2909=net.bytebuddy.description.type.TypeDescription, var2107=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender, var802=$r2, var758=net.bytebuddy.description.type.TypeDescription$Generic, var459=$r3, var3096=$r4, var1118=$r18, var3191=$r5, var344=$r8, var3352=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var1495=$r6, var2318=$r7, var2008=$r9, var1845=$r17, var502=$r10, var958=$r11, var3863=$r12, var1889=$r13, var2847=net.bytebuddy.jar.asm.Type, var612=$r15, var2778=$r14, var1654=$r16, var2154=183, var2549=0}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching=var748, r1=var1885, net.bytebuddy.jar.asm.MethodVisitor=var1569, r0=var2819, net.bytebuddy.description.type.TypeDescription=var2909, org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender=var2107, $r2=var802, net.bytebuddy.description.type.TypeDescription$Generic=var758, $r3=var459, $r4=var3096, $r18=var1118, $r5=var3191, $r8=var344, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var3352, $r6=var1495, $r7=var2318, $r9=var2008, $r17=var1845, $r10=var502, $r11=var958, $r12=var3863, $r13=var1889, net.bytebuddy.jar.asm.Type=var2847, $r15=var612, $r14=var2778, $r16=var1654, 183=var2154, 0=var2549}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching;	r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	$r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r3 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>();	$r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r18 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_read_");	$r6 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r17 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r11 = interfaceinvoke $r10.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r12 = interfaceinvoke $r11.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r13 = interfaceinvoke $r12.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r15 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r13);	$r14 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r16 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r15, $r14);	virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r18, $r17, $r16, 0);	return
;block_num 1