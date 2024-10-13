(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3391 0)
(declare-sort var2528 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getStringValue/1650698605 (var3391) String)
(declare-fun cast-from-var2528-to-var3391 (var2528) var3391)
(declare-const null-var3391 var3391)
(declare-const null-var2528 var2528)
(declare-const var2545 var3391) ; Statement: r1 := @this: jdk.nashorn.internal.objects.NativeString 
(assert (not (= var2545 null-var3391)))
(declare-const var965 var2528) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var965 null-var2528)))
(define-const var1721 Bool false) ; Statement: $z0 = r0 instanceof jdk.nashorn.internal.objects.NativeString 
 ; Statement: if $z0 == 0 goto return 0 
(assert (not (= (ite var1721 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2570 String (getStringValue/1650698605 var2545)) ; Statement: $r4 = specialinvoke r1.<jdk.nashorn.internal.objects.NativeString: java.lang.String getStringValue()>() 
(define-const var1242 var3391 (cast-from-var2528-to-var3391 var965)) ; Statement: $r2 = (jdk.nashorn.internal.objects.NativeString) r0 
(assert true)
(define-const var1540 String (getStringValue/1650698605 var1242)) ; Statement: $r3 = specialinvoke $r2.<jdk.nashorn.internal.objects.NativeString: java.lang.String getStringValue()>() 
(assert true)
(define-const var750 Bool (= var2570 var1540)) ; Statement: $z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getStringValue/1650698605=([jdk.nashorn.internal.objects.NativeString], java.lang.String), cast-from-var2528-to-var3391=([java.lang.Object], jdk.nashorn.internal.objects.NativeString)}
; {var3391=jdk.nashorn.internal.objects.NativeString, var2545=r1, var2528=java.lang.Object, var965=r0, var1721=$z0, var2570=$r4, var1242=$r2, var1540=$r3, var750=$z1}
; {jdk.nashorn.internal.objects.NativeString=var3391, r1=var2545, java.lang.Object=var2528, r0=var965, $z0=var1721, $r4=var2570, $r2=var1242, $r3=var1540, $z1=var750}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: jdk.nashorn.internal.objects.NativeString;	r0 := @parameter0: java.lang.Object;	$z0 = r0 instanceof jdk.nashorn.internal.objects.NativeString;	if $z0 == 0 goto return 0;	$r4 = specialinvoke r1.<jdk.nashorn.internal.objects.NativeString: java.lang.String getStringValue()>();	$r2 = (jdk.nashorn.internal.objects.NativeString) r0;	$r3 = specialinvoke $r2.<jdk.nashorn.internal.objects.NativeString: java.lang.String getStringValue()>();	$z1 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>($r3);	return $z1
;block_num 2