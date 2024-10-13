(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1243 0)
(declare-sort var2080 0)
(declare-sort var502 0)
(declare-sort var707 0)
(declare-sort var3171 0)
(declare-sort var2198 0)
(declare-sort var1963 0)
(declare-sort var3738 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun componentIndices/-339183035 (var1243) var3171)
(declare-fun fieldName/-2124946699 (var707) String)
(declare-fun var3171_get/1088891777 (var3171 var2080) var2080)
(declare-fun cast-from-String-to-var2080 (String) var2080)
(declare-fun cast-from-var2080-to-Int (var2080) Int)
(declare-fun var2198-init () var2198)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun constructor/-339183035 (var1243) var1963)
(declare-fun var3738_constructorToString/1631520055 (var1963) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2198 String) void)
(declare-const null-var1243 var1243)
(declare-const null-__Array__Int__var2080__ (Array Int var2080))
(declare-const null-var502 var502)
(declare-const null-var707 var707)
(declare-const null-Int Int)
(declare-const var2779 var1243) ; Statement: r0 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter 
(assert (not (= var2779 null-var1243)))
(declare-const var3817 (Array Int var2080)) ; Statement: r7 := @parameter0: java.lang.Object[] 
(assert (not (= var3817 null-__Array__Int__var2080__)))
(declare-const var954 var502) ; Statement: r6 := @parameter1: com.google.gson.stream.JsonReader 
(assert (not (= var954 null-var502)))
(declare-const var1355 var707) ; Statement: r1 := @parameter2: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField 
(assert (not (= var1355 null-var707)))
(define-const var558 var3171 (componentIndices/-339183035 var2779)) ; Statement: $r3 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.util.Map componentIndices> 
(define-const var3118 String (fieldName/-2124946699 var1355)) ; Statement: $r2 = r1.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField: java.lang.String fieldName> 
(define-const var2328 var2080 (var3171_get/1088891777 var558 (cast-from-String-to-var2080 var3118))) ; Statement: $r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var1084 Int (cast-from-var2080-to-Int var2328)) ; Statement: r5 = (java.lang.Integer) $r4 
 ; Statement: if r5 != null goto $i0 = virtualinvoke r5.<java.lang.Integer: int intValue()>() 
(assert (not (not (= var1084 null-Int)))) ; Negate: Cond: r5 != null  
(define-const var2193 var2198 var2198-init) ; Statement: $r8 = new java.lang.IllegalStateException 
(define-const var383 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var383)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var383!1 String)
(assert (= var383!1 ""))
(assert true)
(define-const var1787 String (append/672562846 var383!1 "Could not find the index in the constructor \u0027")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find the index in the constructor \'") 
(declare-const var383!2 String)
(assert (= var383!2 (str.++ var383!1 "Could not find the index in the constructor \u0027")))
(define-const var1240 var1963 (constructor/-339183035 var2779)) ; Statement: $r10 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor> 
(define-const var1520 String (var3738_constructorToString/1631520055 var1240)) ; Statement: $r11 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r10) 
(assert true)
(define-const var2817 String (append/672562846 var1787 var1520)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1787!1 String)
(assert (= var1787!1 (str.++ var1787 var1520)))
(assert true)
(define-const var2456 String (append/672562846 var2817 "\u0027 for field with name \u0027")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' for field with name \'") 
(declare-const var2817!1 String)
(assert (= var2817!1 (str.++ var2817 "\u0027 for field with name \u0027")))
(define-const var1874 String (fieldName/-2124946699 var1355)) ; Statement: $r14 = r1.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField: java.lang.String fieldName> 
(assert true)
(define-const var354 String (append/672562846 var2456 var1874)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14) 
(declare-const var2456!1 String)
(assert (= var2456!1 (str.++ var2456 var1874)))
(assert true)
(define-const var2936 String (append/672562846 var354 "\u0027, unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.")) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.") 
(declare-const var354!1 String)
(assert (= var354!1 (str.++ var354 "\u0027, unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.")))
(assert true)
(define-const var1759 String (toString/-2075883882 var2936)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2193 var1759)) ; Statement: specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18) 

(declare-const var2193!1 var2198)
(declare-const var1759!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {componentIndices/-339183035=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter], java.util.Map), fieldName/-2124946699=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField], java.lang.String), var3171_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var2080=([java.lang.String], java.lang.Object), cast-from-var2080-to-Int=([java.lang.Object], java.lang.Integer), var2198-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), constructor/-339183035=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter], java.lang.reflect.Constructor), var3738_constructorToString/1631520055=([java.lang.reflect.Constructor], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1243=com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter, var2779=r0, var2080=java.lang.Object, var3817=r7, var502=com.google.gson.stream.JsonReader, var954=r6, var707=com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField, var1355=r1, var3171=java.util.Map, var558=$r3, var3118=$r2, var2328=$r4, var1084=r5, var2198=java.lang.IllegalStateException, var2193=$r8, var383=$r9, var1787=$r12, var1963=java.lang.reflect.Constructor, var1240=$r10, var3738=com.google.gson.internal.reflect.ReflectionHelper, var1520=$r11, var2817=$r13, var2456=$r15, var1874=$r14, var354=$r16, var2936=$r17, var1759=$r18}
; {com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter=var1243, r0=var2779, java.lang.Object=var2080, r7=var3817, com.google.gson.stream.JsonReader=var502, r6=var954, com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField=var707, r1=var1355, java.util.Map=var3171, $r3=var558, $r2=var3118, $r4=var2328, r5=var1084, java.lang.IllegalStateException=var2198, $r8=var2193, $r9=var383, $r12=var1787, java.lang.reflect.Constructor=var1963, $r10=var1240, com.google.gson.internal.reflect.ReflectionHelper=var3738, $r11=var1520, $r13=var2817, $r15=var2456, $r14=var1874, $r16=var354, $r17=var2936, $r18=var1759}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter;	r7 := @parameter0: java.lang.Object[];	r6 := @parameter1: com.google.gson.stream.JsonReader;	r1 := @parameter2: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField;	$r3 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.util.Map componentIndices>;	$r2 = r1.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField: java.lang.String fieldName>;	$r4 = interfaceinvoke $r3.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r5 = (java.lang.Integer) $r4;	if r5 != null goto $i0 = virtualinvoke r5.<java.lang.Integer: int intValue()>();	$r8 = new java.lang.IllegalStateException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not find the index in the constructor \'");	$r10 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor>;	$r11 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' for field with name \'");	$r14 = r1.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$BoundField: java.lang.String fieldName>;	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\', unable to determine which argument in the constructor the field corresponds to. This is unexpected behavior, as we expect the RecordComponents to have the same names as the fields in the Java class, and that the order of the RecordComponents is the same as the order of the canonical constructor parameters.");	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18);	throw $r8
;block_num 2