(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3855 0)
(declare-sort var1905 0)
(declare-sort var2668 0)
(declare-sort var209 0)
(declare-sort var426 0)
(declare-sort var3315 0)
(declare-sort var3918 0)
(declare-sort var3977 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun managedCtClass/940556598 (var209) var2668)
(declare-fun cast-from-var3855-to-var209 (var3855) var209)
(declare-fun var2668_getSuperClass/-779732717 (var2668) var426)
(declare-fun var426_asErasure/-1205814801 (var426) var2668)
(declare-fun var2668_getInternalName/607692407 (var2668) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persistentFieldAsDefined/940556598 (var209) var3315)
(declare-fun var3315_getName/-182223371 (var3315) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3977_getType/-1581227099 (ClassObject) var3977)
(declare-fun arr-var3977-init () (Array Int var3977))
(declare-fun var3315_getType/-1495628553 (var3315) var426)
(declare-fun var2668_getDescriptor/-815490800 (var2668) String)
(declare-fun var3977_getType/-670772978 (String) var3977)
(declare-fun var3977_getMethodDescriptor/1714375689 (var3977 (Array Int var3977)) String)
(declare-fun visitMethodInsn/-1690375605 (var1905 Int String String String Bool) void)
(declare-const null-var3855 var3855)
(declare-const null-var1905 var1905)
(declare-const var3918-TYPE ClassObject)
(declare-const null-__Array__Int__var3977__ (Array Int var3977))
(declare-const var864 var3855) ; Statement: r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching 
(assert (not (= var864 null-var3855)))
(declare-const var2578 var1905) ; Statement: r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor 
(assert (not (= var2578 null-var1905)))
(define-const var2026 var2668 (managedCtClass/940556598 (cast-from-var3855-to-var209 var864))) ; Statement: $r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.type.TypeDescription managedCtClass> 
(define-const var2779 var426 (var2668_getSuperClass/-779732717 var2026)) ; Statement: $r3 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>() 
(define-const var1762 var2668 (var426_asErasure/-1205814801 var2779)) ; Statement: $r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var663 String (var2668_getInternalName/607692407 var1762)) ; Statement: $r20 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>() 
(define-const var166 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var166)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var166!1 String)
(assert (= var166!1 ""))
(assert true)
(define-const var1567 String (append/672562846 var166!1 "$$_hibernate_write_")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_write_") 
(declare-const var166!2 String)
(assert (= var166!2 (str.++ var166!1 "$$_hibernate_write_")))
(define-const var3577 var3315 (persistentFieldAsDefined/940556598 (cast-from-var3855-to-var209 var864))) ; Statement: $r6 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var3125 String (var3315_getName/-182223371 var3577)) ; Statement: $r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>() 
(assert true)
(define-const var1026 String (append/672562846 var1567 var3125)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1567!1 String)
(assert (= var1567!1 (str.++ var1567 var3125)))
(assert true)
(define-const var1312 String (toString/-2075883882 var1026)) ; Statement: $r19 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1812 ClassObject var3918-TYPE) ; Statement: $r10 = <java.lang.Void: java.lang.Class TYPE> 
(define-const var798 var3977 (var3977_getType/-1581227099 var1812)) ; Statement: $r17 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>($r10) 
(define-const var526 (Array Int var3977) arr-var3977-init) ; Statement: $r11 = newarray (net.bytebuddy.jar.asm.Type)[1] 
(define-const var193 var3315 (persistentFieldAsDefined/940556598 (cast-from-var3855-to-var209 var864))) ; Statement: $r12 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined> 
(define-const var1456 var426 (var3315_getType/-1495628553 var193)) ; Statement: $r13 = interfaceinvoke $r12.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(define-const var444 var2668 (var426_asErasure/-1205814801 var1456)) ; Statement: $r14 = interfaceinvoke $r13.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var202 String (var2668_getDescriptor/-815490800 var444)) ; Statement: $r15 = interfaceinvoke $r14.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>() 
(define-const var3280 var3977 (var3977_getType/-670772978 var202)) ; Statement: $r16 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r15) 
(declare-const var526!1 (Array Int var3977))
(assert (not (= var526!1 null-__Array__Int__var3977__)))
(assert (= (select var526!1 0) var3280)) ; Statement: $r11[0] = $r16 
(define-const var2173 String (var3977_getMethodDescriptor/1714375689 var798 var526!1)) ; Statement: $r18 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r17, $r11) 
(assert true)
;(assert (visitMethodInsn/-1690375605 var2578 183 var663 var1312 var2173 (ite (= 1 0) true false))) ; Statement: virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r20, $r19, $r18, 0) 

(declare-const var2578!1 var1905)
(declare-const var3909 Int)
(declare-const var663!1 String)
(declare-const var1312!1 String)
(declare-const var2173!1 String)
(declare-const var1969 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {managedCtClass/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], net.bytebuddy.description.type.TypeDescription), cast-from-var3855-to-var209=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching], org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender), var2668_getSuperClass/-779732717=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDescription$Generic), var426_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), var2668_getInternalName/607692407=([net.bytebuddy.description.type.TypeDescription], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persistentFieldAsDefined/940556598=([org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender], net.bytebuddy.description.field.FieldDescription$InDefinedShape), var3315_getName/-182223371=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3977_getType/-1581227099=([java.lang.Class], net.bytebuddy.jar.asm.Type), arr-var3977-init=([], net.bytebuddy.jar.asm.Type[]), var3315_getType/-1495628553=([net.bytebuddy.description.field.FieldDescription$InDefinedShape], net.bytebuddy.description.type.TypeDescription$Generic), var2668_getDescriptor/-815490800=([net.bytebuddy.description.type.TypeDescription], java.lang.String), var3977_getType/-670772978=([java.lang.String], net.bytebuddy.jar.asm.Type), var3977_getMethodDescriptor/1714375689=([net.bytebuddy.jar.asm.Type, net.bytebuddy.jar.asm.Type[]], java.lang.String), visitMethodInsn/-1690375605=([net.bytebuddy.jar.asm.MethodVisitor, int, java.lang.String, java.lang.String, java.lang.String, boolean], void)}
; {var3855=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching, var864=r1, var1905=net.bytebuddy.jar.asm.MethodVisitor, var2578=r0, var2668=net.bytebuddy.description.type.TypeDescription, var209=org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender, var2026=$r2, var426=net.bytebuddy.description.type.TypeDescription$Generic, var2779=$r3, var1762=$r4, var663=$r20, var166=$r5, var1567=$r8, var3315=net.bytebuddy.description.field.FieldDescription$InDefinedShape, var3577=$r6, var3125=$r7, var1026=$r9, var1312=$r19, var3918=java.lang.Void, var1812=$r10, var3977=net.bytebuddy.jar.asm.Type, var798=$r17, var526=$r11, var193=$r12, var1456=$r13, var444=$r14, var202=$r15, var3280=$r16, var2173=$r18, var3909=183, var1969=0}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching=var3855, r1=var864, net.bytebuddy.jar.asm.MethodVisitor=var1905, r0=var2578, net.bytebuddy.description.type.TypeDescription=var2668, org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender=var209, $r2=var2026, net.bytebuddy.description.type.TypeDescription$Generic=var426, $r3=var2779, $r4=var1762, $r20=var663, $r5=var166, $r8=var1567, net.bytebuddy.description.field.FieldDescription$InDefinedShape=var3315, $r6=var3577, $r7=var3125, $r9=var1026, $r19=var1312, java.lang.Void=var3918, $r10=var1812, net.bytebuddy.jar.asm.Type=var3977, $r17=var798, $r11=var526, $r12=var193, $r13=var1456, $r14=var444, $r15=var202, $r16=var3280, $r18=var2173, 183=var3909, 0=var1969}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching;	r0 := @parameter0: net.bytebuddy.jar.asm.MethodVisitor;	$r2 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.type.TypeDescription managedCtClass>;	$r3 = interfaceinvoke $r2.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>();	$r4 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r20 = interfaceinvoke $r4.<net.bytebuddy.description.type.TypeDescription: java.lang.String getInternalName()>();	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_write_");	$r6 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r7 = interfaceinvoke $r6.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r19 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = <java.lang.Void: java.lang.Class TYPE>;	$r17 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.Class)>($r10);	$r11 = newarray (net.bytebuddy.jar.asm.Type)[1];	$r12 = r1.<org.hibernate.bytecode.enhance.internal.bytebuddy.FieldReaderAppender$MethodDispatching: net.bytebuddy.description.field.FieldDescription$InDefinedShape persistentFieldAsDefined>;	$r13 = interfaceinvoke $r12.<net.bytebuddy.description.field.FieldDescription$InDefinedShape: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	$r14 = interfaceinvoke $r13.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r15 = interfaceinvoke $r14.<net.bytebuddy.description.type.TypeDescription: java.lang.String getDescriptor()>();	$r16 = staticinvoke <net.bytebuddy.jar.asm.Type: net.bytebuddy.jar.asm.Type getType(java.lang.String)>($r15);	$r11[0] = $r16;	$r18 = staticinvoke <net.bytebuddy.jar.asm.Type: java.lang.String getMethodDescriptor(net.bytebuddy.jar.asm.Type,net.bytebuddy.jar.asm.Type[])>($r17, $r11);	virtualinvoke r0.<net.bytebuddy.jar.asm.MethodVisitor: void visitMethodInsn(int,java.lang.String,java.lang.String,java.lang.String,boolean)>(183, $r20, $r19, $r18, 0);	return
;block_num 1