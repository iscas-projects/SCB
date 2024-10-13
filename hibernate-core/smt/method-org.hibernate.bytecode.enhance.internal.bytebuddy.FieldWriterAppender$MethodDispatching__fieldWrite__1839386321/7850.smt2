(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3373 0)
(declare-sort var2722 0)
(declare-sort var2348 0)
(declare-sort var2234 0)
(declare-sort var1132 0)
(declare-sort var3442 0)
(declare-sort var3320 0)
(declare-sort var682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun managedCtClass/1239702758 (var2234) var2348)
(declare-fun cast-from-var3373-to-var2234 (var3373) var2234)
(declare-fun var2348_getSuperClass/-779732717 (var2348) var1132)
(declare-fun var1132_asErasure/-1205814801 (var1132) var2348)
(declare-fun var2348_getInternalName/607692407 (var2348) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persistentFieldAsDefined/1239702758 (var2234) var3442)
(declare-fun var3442_getName/-182223371 (var3442) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var682_getType/-1581227099 (ClassObject) var682)
(declare-fun arr-var682-init () (Array Int var682))
(declare-fun var3442_getType/-1495628553 (var3442) var1132)
(declare-fun var2348_getDescriptor/-815490800 (var2348) String)
(declare-fun var682_getType/-670772978 (String) var682)
(declare-fun var682_getMethodDescriptor/1714375689 (var682 (Array Int var682)) String)
(declare-fun visitMethodInsn/-1690375605 (var2722 Int String String String Bool) void)
(declare-const null-var3373 var3373)
(declare-const null-var2722 var2722)
(declare-const var3320-TYPE ClassObject)
(declare-const null-__Array__Int__var682__ (Array Int var682))
(declare-const var1783 var3373) ; Statement: r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching 
(assert (not (= var1783 null-var3373)))
(declare-const var247 var2722) ; Statement: r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var247 null-var2722)))
(define-const var461 var2348 (managedCtClass/1239702758 (cast-from-var3373-to-var2234 var1783))) ; Statement: $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var704 var1132 (var2348_getSuperClass/-779732717 var461)) ; Statement: $r3 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>() 
(define-const var2752 var2348 (var1132_asErasure/-1205814801 var704)) ; Statement: $r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var490 String (var2348_getInternalName/607692407 var2752)) ; Statement: $r20 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var3770 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3770)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3770!1 String)
(assert (= var3770!1 ""))
(assert true)
(define-const var3842 String (append/672562846 var3770!1 "$$_hibernate_write_")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_write_") 
(declare-const var3770!2 String)
(assert (= var3770!2 (str.++ var3770!1 "$$_hibernate_write_")))
(define-const var2563 var3442 (persistentFieldAsDefined/1239702758 (cast-from-var3373-to-var2234 var1783))) ; Statement: $r6 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var363 String (var3442_getName/-182223371 var2563)) ; Statement: $r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
(define-const var3976 String (append/672562846 var3842 var363)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3842!1 String)
(assert (= var3842!1 (str.++ var3842 var363)))
(assert true)
(define-const var1767 String (toString/-2075883882 var3976)) ; Statement: $r19 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1357 ClassObject var3320-TYPE) ; Statement: $r10 = <java.lang.Void: java.lang.Class TYPE> 
(define-const var2548 var682 (var682_getType/-1581227099 var1357)) ; Statement: $r17 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>($r10) 
(define-const var1023 (Array Int var682) arr-var682-init) ; Statement: $r11 = newarray (net.bytebuddy.jar.asm.Type)[1] 
(define-const var2049 var3442 (persistentFieldAsDefined/1239702758 (cast-from-var3373-to-var2234 var1783))) ; Statement: $r12 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var2153 var1132 (var3442_getType/-1495628553 var2049)) ; Statement: $r13 = interfaceinvoke $r12.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var2606 var2348 (var1132_asErasure/-1205814801 var2153)) ; Statement: $r14 = interfaceinvoke $r13.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var457 String (var2348_getDescriptor/-815490800 var2606)) ; Statement: $r15 = interfaceinvoke $r14.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var3291 var682 (var682_getType/-670772978 var457)) ; Statement: $r16 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r15) 
(declare-const var1023!1 (Array Int var682))
(assert (not (= var1023!1 null-__Array__Int__var682__)))
(assert (= (select var1023!1 0) var3291)) ; Statement: $r11[0] = $r16 
(define-const var573 String (var682_getMethodDescriptor/1714375689 var2548 var1023!1)) ; Statement: $r18 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r17, $r11) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var247 183 var490 var1767 var573 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r20, $r19, $r18, 0) 

(declare-const var247!1 var2722)
(declare-const var2880 Int)
(declare-const var490!1 String)
(declare-const var1767!1 String)
(declare-const var573!1 String)
(declare-const var2329 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {managedCtClass/1239702758=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender], net.bytebuddy.description.type.TypeDescription), cast-from-var3373-to-var2234=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching], org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender), var2348_getSuperClass/-779732717=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDescription$Generic), var1132_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), var2348_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persistentFieldAsDefined/1239702758=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var3442_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var682_getType/-1581227099=([java.lang.Class], net.bytebuddy.jar.asm.Type), arr-var682-init=([], net.bytebuddy.jar.asm.Type[]), var3442_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var2348_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var682_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), var682_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3373=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching, var1783=r1, var2722=net.bytebuddy.jar.asm.MethodVisitor, var247=r0, var2348=net.bytebuddy.description.type.TypeDescription, var2234=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender, var461=$r2, var1132=net.bytebuddy.description.type.TypeDescription$Generic, var704=$r3, var2752=$r4, var490=$r20, var3770=$r5, var3842=$r8, var3442=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var2563=$r6, var363=$r7, var3976=$r9, var1767=$r19, var3320=java.lang.Void, var1357=$r10, var682=net.bytebuddy.jar.asm.Type, var2548=$r17, var1023=$r11, var2049=$r12, var2153=$r13, var2606=$r14, var457=$r15, var3291=$r16, var573=$r18, var2880=183, var2329=0}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching=var3373, r1=var1783, net.bytebuddy.jar.asm.MethodVisitor=var2722, r0=var247, net.bytebuddy.description.type.TypeDescription=var2348, org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender=var2234, $r2=var461, net.bytebuddy.description.type.TypeDescription$Generic=var1132, $r3=var704, $r4=var2752, $r20=var490, $r5=var3770, $r8=var3842, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var3442, $r6=var2563, $r7=var363, $r9=var3976, $r19=var1767, java.lang.Void=var3320, $r10=var1357, net.bytebuddy.jar.asm.Type=var682, $r17=var2548, $r11=var1023, $r12=var2049, $r13=var2153, $r14=var2606, $r15=var457, $r16=var3291, $r18=var573, 183=var2880, 0=var2329}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching;	r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	$r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r3 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>();	$r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r20 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_write_");	$r6 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r19 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = <java.lang.Void: java.lang.Class TYPE>;	$r17 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>($r10);	$r11 = newarray (net.bytebuddy.jar.asm.Type)[1];	$r12 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldWriterAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r13 = interfaceinvoke $r12.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r14 = interfaceinvoke $r13.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r15 = interfaceinvoke $r14.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r16 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r15);	$r11[0] = $r16;	$r18 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r17, $r11);	virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r20, $r19, $r18, 0);	return
;block_num 1