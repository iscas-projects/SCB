(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1454 0)
(declare-sort var2974 0)
(declare-sort var3805 0)
(declare-sort var790 0)
(declare-sort var823 0)
(declare-sort var3713 0)
(declare-sort var3455 0)
(declare-sort var2474 0)
(declare-sort var2891 0)
(declare-sort var1916 0)
(declare-sort var1110 0)
(declare-sort var1644 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getterByTypeMap/-1263827277 (var1454) var3805)
(declare-fun var2974_getDeclaringType/-799119147 (var2974) var790)
(declare-fun var790_asErasure/-1380467891 (var790) var823)
(declare-fun var3455_bootstrap$/-943799725 () var3713)
(declare-fun computeIfAbsent/-741707440 (var3805 var2474 var3713) var2474)
(declare-fun cast-from-var823-to-var2474 (var823) var2474)
(declare-fun cast-from-var2474-to-var2891 (var2474) var2891)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var2974_getName/-476838132 (var2974) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1916_toUpperCase/1913344327 (Int) Int)
(declare-fun append/-1166366385 (String Int) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2891_get/1088891777 (var2891 var2474) var2474)
(declare-fun cast-from-String-to-var2474 (String) var2474)
(declare-fun cast-from-var2474-to-var1110 (var2474) var1110)
(declare-fun var1644_ofNullable/-1077078438 (var2474) var1644)
(declare-fun cast-from-var1110-to-var2474 (var1110) var2474)
(declare-const null-var1454 var1454)
(declare-const null-var2974 var2974)
(declare-const null-var1110 var1110)
(declare-const var1649 var1454) ; Statement: r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext 
(assert (not (= var1649 null-var1454)))
(declare-const var767 var2974) ; Statement: r1 := @parameter0: net.bytebuddy.description.field.FieldDescription 
(assert (not (= var767 null-var2974)))
(define-const var3451 var3805 (getterByTypeMap/-1263827277 var1649)) ; Statement: $r2 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext: java.util.concurrent.ConcurrentHashMap getterByTypeMap> 
(define-const var2046 var790 (var2974_getDeclaringType/-799119147 var767)) ; Statement: $r3 = interfaceinvoke r1.<net.bytebuddy.description.field.FieldDescription: net.bytebuddy.description.type.TypeDefinition getDeclaringType()>() 
(define-const var3567 var823 (var790_asErasure/-1380467891 var2046)) ; Statement: $r5 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDefinition: net.bytebuddy.description.type.TypeDescription asErasure()>() 
(define-const var2739 var3713 var3455_bootstrap$/-943799725) ; Statement: $r4 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext$lambda_resolveGetter_0__65: java.util.function.Function bootstrap$()>() 
(assert true)
(define-const var3748 var2474 (computeIfAbsent/-741707440 var3451 (cast-from-var823-to-var2474 var3567) var2739)) ; Statement: $r6 = virtualinvoke $r2.<java.util.concurrent.ConcurrentHashMap: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>($r5, $r4) 
(define-const var3309 var2891 (cast-from-var2474-to-var2891 var3748)) ; Statement: r7 = (java.util.Map) $r6 
(define-const var2748 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2748)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2748!1 String)
(assert (= var2748!1 ""))
(define-const var3915 String (var2974_getName/-476838132 var767)) ; Statement: $r9 = interfaceinvoke r1.<net.bytebuddy.description.field.FieldDescription: java.lang.String getName()>() 
(assert (and true (and (> (str.len var3915) 0) (<= 0 0))))
(define-const var1386 Int (charAt/698050440 var3915 0)) ; Statement: $c0 = virtualinvoke $r9.<java.lang.String: char charAt(int)>(0) 
(define-const var1763 Int (var1916_toUpperCase/1913344327 var1386)) ; Statement: $c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0) 
(assert true)
(define-const var2277 String (append/-1166366385 var2748!1 var1763)) ; Statement: $r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1) 
(declare-const var2748!2 String)
(assert (str.prefixof var2748!1 var2748!2))
(define-const var465 String (var2974_getName/-476838132 var767)) ; Statement: $r10 = interfaceinvoke r1.<net.bytebuddy.description.field.FieldDescription: java.lang.String getName()>() 
(assert (not (and true (and (>= 1 0) (>= (str.len var465) 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {getterByTypeMap/-1263827277=([org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext], java.util.concurrent.ConcurrentHashMap), var2974_getDeclaringType/-799119147=([net.bytebuddy.description.field.FieldDescription], net.bytebuddy.description.type.TypeDefinition), var790_asErasure/-1380467891=([net.bytebuddy.description.type.TypeDefinition], net.bytebuddy.description.type.TypeDescription), var3455_bootstrap$/-943799725=([], java.util.function.Function), computeIfAbsent/-741707440=([java.util.concurrent.ConcurrentHashMap, java.lang.Object, java.util.function.Function], java.lang.Object), cast-from-var823-to-var2474=([net.bytebuddy.description.type.TypeDescription], java.lang.Object), cast-from-var2474-to-var2891=([java.lang.Object], java.util.Map), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var2974_getName/-476838132=([net.bytebuddy.description.field.FieldDescription], java.lang.String), charAt/698050440=([java.lang.String, int], char), var1916_toUpperCase/1913344327=([char], char), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2891_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2474=([java.lang.String], java.lang.Object), cast-from-var2474-to-var1110=([java.lang.Object], net.bytebuddy.description.method.MethodDescription), var1644_ofNullable/-1077078438=([java.lang.Object], java.util.Optional), cast-from-var1110-to-var2474=([net.bytebuddy.description.method.MethodDescription], java.lang.Object)}
; {var1454=org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext, var1649=r0, var2974=net.bytebuddy.description.field.FieldDescription, var767=r1, var3805=java.util.concurrent.ConcurrentHashMap, var3451=$r2, var790=net.bytebuddy.description.type.TypeDefinition, var2046=$r3, var823=net.bytebuddy.description.type.TypeDescription, var3567=$r5, var3713=java.util.function.Function, var3455=org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext$lambda_resolveGetter_0__65, var2739=$r4, var2474=java.lang.Object, var3748=$r6, var2891=java.util.Map, var3309=r7, var2748=$r8, var3915=$r9, var1386=$c0, var1916=java.lang.Character, var1763=$c1, var2277=$r12, var465=$r10, var969=$r11, var2983=$r13, var2433=r14, var1092=$r15, var2805=$r16, var3325=$r17, var191=$r18, var2022=$r19, var1110=net.bytebuddy.description.method.MethodDescription, var3770=r20, var3029=$r21, var3640=$r22, var1840=$r23, var2250=$r24, var951=$r25, var3807=r26, var1644=java.util.Optional, var1823=$r27}
; {org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext=var1454, r0=var1649, net.bytebuddy.description.field.FieldDescription=var2974, r1=var767, java.util.concurrent.ConcurrentHashMap=var3805, $r2=var3451, net.bytebuddy.description.type.TypeDefinition=var790, $r3=var2046, net.bytebuddy.description.type.TypeDescription=var823, $r5=var3567, java.util.function.Function=var3713, org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext$lambda_resolveGetter_0__65=var3455, $r4=var2739, java.lang.Object=var2474, $r6=var3748, java.util.Map=var2891, r7=var3309, $r8=var2748, $r9=var3915, $c0=var1386, java.lang.Character=var1916, $c1=var1763, $r12=var2277, $r10=var465, $r11=var969, $r13=var2983, r14=var2433, $r15=var1092, $r16=var2805, $r17=var3325, $r18=var191, $r19=var2022, net.bytebuddy.description.method.MethodDescription=var1110, r20=var3770, $r21=var3029, $r22=var3640, $r23=var1840, $r24=var2250, $r25=var951, r26=var3807, java.util.Optional=var1644, $r27=var1823}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char charAt(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.String: char charAt(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 3}
;stmts r0 := @this: org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext;	r1 := @parameter0: net.bytebuddy.description.field.FieldDescription;	$r2 = r0.<org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext: java.util.concurrent.ConcurrentHashMap getterByTypeMap>;	$r3 = interfaceinvoke r1.<net.bytebuddy.description.field.FieldDescription: net.bytebuddy.description.type.TypeDefinition getDeclaringType()>();	$r5 = interfaceinvoke $r3.<net.bytebuddy.description.type.TypeDefinition: net.bytebuddy.description.type.TypeDescription asErasure()>();	$r4 = staticinvoke <org.hibernate.bytecode.enhance.internal.bytebuddy.ByteBuddyEnhancementContext$lambda_resolveGetter_0__65: java.util.function.Function bootstrap$()>();	$r6 = virtualinvoke $r2.<java.util.concurrent.ConcurrentHashMap: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>($r5, $r4);	r7 = (java.util.Map) $r6;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = interfaceinvoke r1.<net.bytebuddy.description.field.FieldDescription: java.lang.String getName()>();	$c0 = virtualinvoke $r9.<java.lang.String: char charAt(int)>(0);	$c1 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c0);	$r12 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>($c1);	$r10 = interfaceinvoke r1.<net.bytebuddy.description.field.FieldDescription: java.lang.String getName()>();	$r11 = virtualinvoke $r10.<java.lang.String: java.lang.String substring(int)>(1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("get");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	$r19 = interfaceinvoke r7.<java.util.Map: java.lang.Object get(java.lang.Object)>($r18);	r20 = (net.bytebuddy.description.method.MethodDescription) $r19;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("is");	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	$r25 = interfaceinvoke r7.<java.util.Map: java.lang.Object get(java.lang.Object)>($r24);	r26 = (net.bytebuddy.description.method.MethodDescription) $r25;	if r20 == null goto $r27 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>(r26);	$r27 = staticinvoke <java.util.Optional: java.util.Optional ofNullable(java.lang.Object)>(r26);	return $r27
;block_num 2