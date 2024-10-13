(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var995 0)
(declare-sort var2352 0)
(declare-sort var3329 0)
(declare-sort var3693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun type/705534411 (var995) var2352)
(declare-fun equals/-851478670 (var2352 var3329) Bool)
(declare-fun cast-from-var2352-to-var3329 (var2352) var3329)
(declare-fun var3693-init () var3693)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3329) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1736591927 (var3693 String) void)
(declare-const null-var995 var995)
(declare-const null-var2352 var2352)
(declare-const var127 var995) ; Statement: r0 := @parameter0: java.lang.invoke.MethodHandle 
(assert (not (= var127 null-var995)))
(declare-const var1817 var2352) ; Statement: r1 := @parameter1: java.lang.invoke.MethodType 
(assert (not (= var1817 null-var2352)))
(assert true)
(define-const var535 var2352 (type/705534411 var127)) ; Statement: $r2 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var2957 Bool (equals/-851478670 var535 (cast-from-var2352-to-var3329 var1817))) ; Statement: $z0 = virtualinvoke $r2.<java.lang.invoke.MethodType: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2957 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1028 var3693 var3693-init) ; Statement: $r3 = new java.lang.invoke.WrongMethodTypeException 
(define-const var3826 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3826)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3826!1 String)
(assert (= var3826!1 ""))
(assert true)
(define-const var1195 String (append/672562846 var3826!1 "Expected type: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected type: ") 
(declare-const var3826!2 String)
(assert (= var3826!2 (str.++ var3826!1 "Expected type: ")))
(assert true)
(define-const var1408 String (append/-1031950772 var1195 (cast-from-var2352-to-var3329 var1817))) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1195!1 String)
(assert (str.prefixof var1195 var1195!1))
(assert true)
(define-const var96 String (append/672562846 var1408 " actual type: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual type: ") 
(declare-const var1408!1 String)
(assert (= var1408!1 (str.++ var1408 " actual type: ")))
(assert true)
(define-const var3649 var2352 (type/705534411 var127)) ; Statement: $r7 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>() 
(assert true)
(define-const var922 String (append/-1031950772 var96 (cast-from-var2352-to-var3329 var3649))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var96!1 String)
(assert (str.prefixof var96 var96!1))
(assert true)
(define-const var2129 String (toString/-2075883882 var922)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1736591927 var1028 var2129)) ; Statement: specialinvoke $r3.<java.lang.invoke.WrongMethodTypeException: void <init>(java.lang.String)>($r10) 

(declare-const var1028!1 var3693)
(declare-const var2129!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {type/705534411=([java.lang.invoke.MethodHandle], java.lang.invoke.MethodType), equals/-851478670=([java.lang.invoke.MethodType, java.lang.Object], boolean), cast-from-var2352-to-var3329=([java.lang.invoke.MethodType], java.lang.Object), var3693-init=([], java.lang.invoke.WrongMethodTypeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1736591927=([java.lang.invoke.WrongMethodTypeException, java.lang.String], void)}
; {var995=java.lang.invoke.MethodHandle, var127=r0, var2352=java.lang.invoke.MethodType, var1817=r1, var535=$r2, var3329=java.lang.Object, var2957=$z0, var3693=java.lang.invoke.WrongMethodTypeException, var1028=$r3, var3826=$r4, var1195=$r5, var1408=$r6, var96=$r8, var3649=$r7, var922=$r9, var2129=$r10}
; {java.lang.invoke.MethodHandle=var995, r0=var127, java.lang.invoke.MethodType=var2352, r1=var1817, $r2=var535, java.lang.Object=var3329, $z0=var2957, java.lang.invoke.WrongMethodTypeException=var3693, $r3=var1028, $r4=var3826, $r5=var1195, $r6=var1408, $r8=var96, $r7=var3649, $r9=var922, $r10=var2129}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.invoke.MethodHandle;	r1 := @parameter1: java.lang.invoke.MethodType;	$r2 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$z0 = virtualinvoke $r2.<java.lang.invoke.MethodType: boolean equals(java.lang.Object)>(r1);	if $z0 != 0 goto return;	$r3 = new java.lang.invoke.WrongMethodTypeException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Expected type: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" actual type: ");	$r7 = virtualinvoke r0.<java.lang.invoke.MethodHandle: java.lang.invoke.MethodType type()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.invoke.WrongMethodTypeException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2