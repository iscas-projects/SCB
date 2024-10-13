(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var255 0)
(declare-sort var2505 0)
(declare-sort var2462 0)
(declare-sort var1669 0)
(declare-sort var1245 0)
(declare-sort var3659 0)
(declare-sort var2784 0)
(declare-sort var1540 0)
(declare-sort var766 0)
(declare-sort var1557 0)
(declare-sort var2894 0)
(declare-sort var63 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2784-init () var2784)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun persistentField/1220235965 (var255) var1540)
(declare-fun var1540_getName/-476838132 (var1540) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1540_getType/-726498098 (var1540) var766)
(declare-fun <init>/-1016833173 (var2784 String Int var766) void)
(declare-fun var1557-init () var1557)
(declare-fun var2505_getSuperClass/-779732717 (var2505) var766)
(declare-fun var766_asErasure/-1205814801 (var766) var2505)
(declare-fun <init>/-113828461 (var1557 var2505 var2784) void)
(declare-fun var2894-init () var2894)
(declare-fun cast-from-var1557-to-var2462 (var1557) var2462)
(declare-fun <init>/1774780451 (var2894 var255 var2462) void)
(declare-fun cast-from-var2894-to-var63 (var2894) var63)
(declare-const null-var255 var255)
(declare-const null-var2505 var2505)
(declare-const null-var2462 var2462)
(declare-const null-var1669 var1669)
(declare-const null-var1245 var1245)
(declare-const null-var3659 var3659)
(declare-const var3707 var255) ; Statement: r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping 
(assert (not (= var3707 null-var255)))
(declare-const var832 var2505) ; Statement: r11 := @parameter0: net.bytebuddy.description.type.TypeDescription 
(assert (not (= var832 null-var2505)))
(declare-const var1986 var2462) ; Statement: r15 := @parameter1: net.bytebuddy.description.method.MethodDescription 
(assert (not (= var1986 null-var2462)))
(declare-const var2129 var1669) ; Statement: r16 := @parameter2: net.bytebuddy.implementation.bytecode.assign.Assigner 
(assert (not (= var2129 null-var1669)))
(declare-const var3268 var1245) ; Statement: r17 := @parameter3: net.bytebuddy.asm.Advice$ArgumentHandler 
(assert (not (= var3268 null-var1245)))
(declare-const var2407 var3659) ; Statement: r18 := @parameter4: net.bytebuddy.asm.Advice$OffsetMapping$Sort 
(assert (not (= var2407 null-var3659)))
(define-const var2001 var2784 var2784-init) ; Statement: $r20 = new net.bytebuddy.description.method.MethodDescription$Token 
(define-const var447 String String-init) ; Statement: $r19 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var447)) ; Statement: specialinvoke $r19.<java.lang.StringBuilder: void <init>()>() 
(declare-const var447!1 String)
(assert (= var447!1 ""))
(assert true)
(define-const var336 String (append/672562846 var447!1 "$$_hibernate_read_")) ; Statement: $r5 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_read_") 
(declare-const var447!2 String)
(assert (= var447!2 (str.++ var447!1 "$$_hibernate_read_")))
(define-const var3432 var1540 (persistentField/1220235965 var3707)) ; Statement: $r3 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping: net.bytebuddy.description.field.FieldDescription persistentField> 
(define-const var2733 String (var1540_getName/-476838132 var3432)) ; Statement: $r4 = interfaceinvoke $r3.<net.bytebuddy.description.field.FieldDescription: java.lang.String getName()>() 
(assert true)
(define-const var2278 String (append/672562846 var336 var2733)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var336!1 String)
(assert (= var336!1 (str.++ var336 var2733)))
(assert true)
(define-const var3734 String (toString/-2075883882 var2278)) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var19 var1540 (persistentField/1220235965 var3707)) ; Statement: $r7 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping: net.bytebuddy.description.field.FieldDescription persistentField> 
(define-const var545 var766 (var1540_getType/-726498098 var19)) ; Statement: $r8 = interfaceinvoke $r7.<net.bytebuddy.description.field.FieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>() 
(assert true)
;(assert (<init>/-1016833173 var2001 var3734 1 var545)) ; Statement: specialinvoke $r20.<net.bytebuddy.description.method.MethodDescription$Token: void <init>(java.lang.String,int,net.bytebuddy.description.type.TypeDescription$Generic)>($r9, 1, $r8) 

(declare-const var2001!1 var2784)
(declare-const var3734!1 String)
(declare-const var394 Int)
(declare-const var545!1 var766)
(define-const var3082 var1557 var1557-init) ; Statement: $r21 = new net.bytebuddy.description.method.MethodDescription$Latent 
(define-const var3012 var766 (var2505_getSuperClass/-779732717 var832)) ; Statement: $r12 = interfaceinvoke r11.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>() 
(define-const var1893 var2505 (var766_asErasure/-1205814801 var3012)) ; Statement: $r13 = interfaceinvoke $r12.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(assert true)
;(assert (<init>/-113828461 var3082 var1893 var2001!1)) ; Statement: specialinvoke $r21.<net.bytebuddy.description.method.MethodDescription$Latent: void <init>(net.bytebuddy.description.type.TypeDescription,net.bytebuddy.description.method.MethodDescription$Token)>($r13, $r20) 

(declare-const var3082!1 var1557)
(declare-const var1893!1 var2505)
(declare-const var2001!2 var2784)
(define-const var2782 var2894 var2894-init) ; Statement: $r22 = new org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1 
(define-const var2025 var2462 (cast-from-var1557-to-var2462 var3082!1)) ; Statement: $r23 = (net.bytebuddy.description.method.MethodDescription) $r21 
(assert true)
;(assert (<init>/1774780451 var2782 var3707 var2025)) ; Statement: specialinvoke $r22.<org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1: void <init>(org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping,net.bytebuddy.description.method.MethodDescription)>(r2, $r23) 

(declare-const var2782!1 var2894)
(declare-const var3707!1 var255)
(declare-const var2025!1 var2462)
(define-const var1217 var63 (cast-from-var2894-to-var63 var2782!1)) ; Statement: $r24 = (net.bytebuddy.asm.Advice$OffsetMapping$Target) $r22 
 ; Statement: return $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var2784-init=([], net.bytebuddy.description.method.MethodDescription$Token), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), persistentField/1220235965=([org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping], net.bytebuddy.description.field.FieldDescription), var1540_getName/-476838132=([net.bytebuddy.description.field.FieldDescription], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1540_getType/-726498098=([net.bytebuddy.description.field.FieldDescription], net.bytebuddy.description.type.TypeDescription$Generic), <init>/-1016833173=([net.bytebuddy.description.method.MethodDescription$Token, java.lang.String, int, net.bytebuddy.description.type.TypeDescription$Generic], void), var1557-init=([], net.bytebuddy.description.method.MethodDescription$Latent), var2505_getSuperClass/-779732717=([net.bytebuddy.description.type.TypeDescription], net.bytebuddy.description.type.TypeDescription$Generic), var766_asErasure/-1205814801=([net.bytebuddy.description.type.TypeDescription$Generic], net.bytebuddy.description.type.TypeDescription), <init>/-113828461=([net.bytebuddy.description.method.MethodDescription$Latent, net.bytebuddy.description.type.TypeDescription, net.bytebuddy.description.method.MethodDescription$Token], void), var2894-init=([], org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1), cast-from-var1557-to-var2462=([net.bytebuddy.description.method.MethodDescription$Latent], net.bytebuddy.description.method.MethodDescription), <init>/1774780451=([org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1, org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping, net.bytebuddy.description.method.MethodDescription], void), cast-from-var2894-to-var63=([org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1], net.bytebuddy.asm.Advice$OffsetMapping$Target)}
; {var255=org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping, var3707=r2, var2505=net.bytebuddy.description.type.TypeDescription, var832=r11, var2462=net.bytebuddy.description.method.MethodDescription, var1986=r15, var1669=net.bytebuddy.implementation.bytecode.assign.Assigner, var2129=r16, var1245=net.bytebuddy.asm.Advice$ArgumentHandler, var3268=r17, var3659=net.bytebuddy.asm.Advice$OffsetMapping$Sort, var2407=r18, var2784=net.bytebuddy.description.method.MethodDescription$Token, var2001=$r20, var447=$r19, var336=$r5, var1540=net.bytebuddy.description.field.FieldDescription, var3432=$r3, var2733=$r4, var2278=$r6, var3734=$r9, var19=$r7, var766=net.bytebuddy.description.type.TypeDescription$Generic, var545=$r8, var394=1, var1557=net.bytebuddy.description.method.MethodDescription$Latent, var3082=$r21, var3012=$r12, var1893=$r13, var2894=org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1, var2782=$r22, var2025=$r23, var63=net.bytebuddy.asm.Advice$OffsetMapping$Target, var1217=$r24}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping=var255, r2=var3707, net.bytebuddy.description.type.TypeDescription=var2505, r11=var832, net.bytebuddy.description.method.MethodDescription=var2462, r15=var1986, net.bytebuddy.implementation.bytecode.assign.Assigner=var1669, r16=var2129, net.bytebuddy.asm.Advice$ArgumentHandler=var1245, r17=var3268, net.bytebuddy.asm.Advice$OffsetMapping$Sort=var3659, r18=var2407, net.bytebuddy.description.method.MethodDescription$Token=var2784, $r20=var2001, $r19=var447, $r5=var336, net.bytebuddy.description.field.FieldDescription=var1540, $r3=var3432, $r4=var2733, $r6=var2278, $r9=var3734, $r7=var19, net.bytebuddy.description.type.TypeDescription$Generic=var766, $r8=var545, 1=var394, net.bytebuddy.description.method.MethodDescription$Latent=var1557, $r21=var3082, $r12=var3012, $r13=var1893, org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1=var2894, $r22=var2782, $r23=var2025, net.bytebuddy.asm.Advice$OffsetMapping$Target=var63, $r24=var1217}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping;	r11 := @parameter0: net.bytebuddy.description.type.TypeDescription;	r15 := @parameter1: net.bytebuddy.description.method.MethodDescription;	r16 := @parameter2: net.bytebuddy.implementation.bytecode.assign.Assigner;	r17 := @parameter3: net.bytebuddy.asm.Advice$ArgumentHandler;	r18 := @parameter4: net.bytebuddy.asm.Advice$OffsetMapping$Sort;	$r20 = new net.bytebuddy.description.method.MethodDescription$Token;	$r19 = new java.lang.StringBuilder;	specialinvoke $r19.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("$$_hibernate_read_");	$r3 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping: net.bytebuddy.description.field.FieldDescription persistentField>;	$r4 = interfaceinvoke $r3.<net.bytebuddy.description.field.FieldDescription: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = r2.<org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping: net.bytebuddy.description.field.FieldDescription persistentField>;	$r8 = interfaceinvoke $r7.<net.bytebuddy.description.field.FieldDescription: net.bytebuddy.description.type.TypeDescription$Generic getType()>();	specialinvoke $r20.<net.bytebuddy.description.method.MethodDescription$Token: void <init>(java.lang.String,int,net.bytebuddy.description.type.TypeDescription$Generic)>($r9, 1, $r8);	$r21 = new net.bytebuddy.description.method.MethodDescription$Latent;	$r12 = interfaceinvoke r11.<net.bytebuddy.description.type.TypeDescription: net.bytebuddy.description.type.TypeDescription$Generic getSuperClass()>();	$r13 = interfaceinvoke $r12.<net.bytebuddy.description.type.TypeDescription$Generic: net.bytebuddy.description.type.TypeDescription asErasure()>();	specialinvoke $r21.<net.bytebuddy.description.method.MethodDescription$Latent: void <init>(net.bytebuddy.description.type.TypeDescription,net.bytebuddy.description.method.MethodDescription$Token)>($r13, $r20);	$r22 = new org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1;	$r23 = (net.bytebuddy.description.method.MethodDescription) $r21;	specialinvoke $r22.<org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping$1: void <init>(org.hibernate.bytecode.enhance.internal.bytebuddy.CodeTemplates$GetterMapping,net.bytebuddy.description.method.MethodDescription)>(r2, $r23);	$r24 = (net.bytebuddy.asm.Advice$OffsetMapping$Target) $r22;	return $r24
;block_num 1