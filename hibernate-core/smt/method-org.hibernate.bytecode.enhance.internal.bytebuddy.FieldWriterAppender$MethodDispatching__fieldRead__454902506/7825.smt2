(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2994 0)
(declare-sort var2717 0)
(declare-sort var2732 0)
(declare-sort var1680 0)
(declare-sort var777 0)
(declare-sort var235 0)
(declare-sort var3406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun managedCtClass/1239702758 (var1680) var2732)
(declare-fun cast-from-var2994-to-var1680 (var2994) var1680)
(declare-fun var2732_getSuperClass/-779732717 (var2732) var777)
(declare-fun var777_asErasure/-1205814801 (var777) var2732)
(declare-fun var2732_getInternalName/607692407 (var2732) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persistentFieldAsDefined/1239702758 (var1680) var235)
(declare-fun var235_getName/-182223371 (var235) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var235_getType/-1495628553 (var235) var777)
(declare-fun var2732_getDescriptor/-815490800 (var2732) String)
(declare-fun var3406_getType/-670772978 (String) var3406)
(declare-fun arr-var3406-init () (Array Int var3406))
(declare-fun var3406_getMethodDescriptor/1714375689 (var3406 (Array Int var3406)) String)
(declare-fun visitMethodInsn/-1690375605 (var2717 Int String String String Bool) void)
(declare-const null-var2994 var2994)
(declare-const null-var2717 var2717)
(declare-const var2453 var2994) ; Statement: r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching 
(assert (not (= var2453 null-var2994)))
(declare-const var3903 var2717) ; Statement: r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var3903 null-var2717)))
(define-const var1860 var2732 (managedCtClass/1239702758 (cast-from-var2994-to-var1680 var2453))) ; Statement: $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var653 var777 (var2732_getSuperClass/-779732717 var1860)) ; Statement: $r3 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>() 
(define-const var2043 var2732 (var777_asErasure/-1205814801 var653)) ; Statement: $r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var1480 String (var2732_getInternalName/607692407 var2043)) ; Statement: $r18 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var1645 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1645)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1645!1 String)
(assert (= var1645!1 ""))
(assert true)
(define-const var3433 String (append/672562846 var1645!1 "$$_hibernate_read_")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_read_") 
(declare-const var1645!2 String)
(assert (= var1645!2 (str.++ var1645!1 "$$_hibernate_read_")))
(define-const var2314 var235 (persistentFieldAsDefined/1239702758 (cast-from-var2994-to-var1680 var2453))) ; Statement: $r6 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var2350 String (var235_getName/-182223371 var2314)) ; Statement: $r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
(define-const var84 String (append/672562846 var3433 var2350)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3433!1 String)
(assert (= var3433!1 (str.++ var3433 var2350)))
(assert true)
(define-const var2792 String (toString/-2075883882 var84)) ; Statement: $r17 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var933 var235 (persistentFieldAsDefined/1239702758 (cast-from-var2994-to-var1680 var2453))) ; Statement: $r10 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var3082 var777 (var235_getType/-1495628553 var933)) ; Statement: $r11 = interfaceinvoke $r10.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var1399 var2732 (var777_asErasure/-1205814801 var3082)) ; Statement: $r12 = interfaceinvoke $r11.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var3853 String (var2732_getDescriptor/-815490800 var1399)) ; Statement: $r13 = interfaceinvoke $r12.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var1245 var3406 (var3406_getType/-670772978 var3853)) ; Statement: $r15 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r13) 
(define-const var700 (Array Int var3406) arr-var3406-init) ; Statement: $r14 = newarray (net.bytebuddy.jar.asm.Type)[0] 
(define-const var2400 String (var3406_getMethodDescriptor/1714375689 var1245 var700)) ; Statement: $r16 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r15, $r14) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var3903 183 var1480 var2792 var2400 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r18, $r17, $r16, 0) 

(declare-const var3903!1 var2717)
(declare-const var623 Int)
(declare-const var1480!1 String)
(declare-const var2792!1 String)
(declare-const var2400!1 String)
(declare-const var3256 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {managedCtClass/1239702758=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender], net.bytebuddy.description.type.TypeDescription), cast-from-var2994-to-var1680=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching], org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender), var2732_getSuperClass/-779732717=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDescription$Generic), var777_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), var2732_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persistentFieldAsDefined/1239702758=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var235_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var235_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var2732_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var3406_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), arr-var3406-init=([], net.bytebuddy.jar.asm.Type[]), var3406_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var2994=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching, var2453=r1, var2717=net.bytebuddy.jar.asm.MethodVisitor, var3903=r0, var2732=net.bytebuddy.description.type.TypeDescription, var1680=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender, var1860=$r2, var777=net.bytebuddy.description.type.TypeDescription$Generic, var653=$r3, var2043=$r4, var1480=$r18, var1645=$r5, var3433=$r8, var235=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var2314=$r6, var2350=$r7, var84=$r9, var2792=$r17, var933=$r10, var3082=$r11, var1399=$r12, var3853=$r13, var3406=net.bytebuddy.jar.asm.Type, var1245=$r15, var700=$r14, var2400=$r16, var623=183, var3256=0}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching=var2994, r1=var2453, net.bytebuddy.jar.asm.MethodVisitor=var2717, r0=var3903, net.bytebuddy.description.type.TypeDescription=var2732, org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender=var1680, $r2=var1860, net.bytebuddy.description.type.TypeDescription$Generic=var777, $r3=var653, $r4=var2043, $r18=var1480, $r5=var1645, $r8=var3433, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var235, $r6=var2314, $r7=var2350, $r9=var84, $r17=var2792, $r10=var933, $r11=var3082, $r12=var1399, $r13=var3853, net.bytebuddy.jar.asm.Type=var3406, $r15=var1245, $r14=var700, $r16=var2400, 183=var623, 0=var3256}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching;	r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	$r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r3 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>();	$r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r18 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_read_");	$r6 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r17 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r11 = interfaceinvoke $r10.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r12 = interfaceinvoke $r11.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r13 = interfaceinvoke $r12.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r15 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r13);	$r14 = newarray (net.bytebuddy.jar.asm.Type)[0];	$r16 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r15, $r14);	virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r18, $r17, $r16, 0);	return
;block_num 1