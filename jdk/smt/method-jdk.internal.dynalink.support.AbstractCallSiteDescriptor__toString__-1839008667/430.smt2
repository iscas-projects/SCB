(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1416 0)
(declare-sort var2750 0)
(declare-sort var1009 0)
(declare-sort var3985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getMethodType/-466914787 (var1009) var2750)
(declare-fun cast-from-var1416-to-var1009 (var1416) var1009)
(declare-fun toString/-1143286467 (var2750) String)
(declare-fun getLookup/91626822 (var1416) var3985)
(declare-fun toString/455088278 (var3985) String)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getNameLength/-2134253578 (var1416) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun appendName/1063954209 (var1416 String) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1416 var1416)
(declare-const var3357 var1416) ; Statement: r0 := @this: jdk.internal.dynalink.support.AbstractCallSiteDescriptor 
(assert (not (= var3357 null-var1416)))
(assert true)
(define-const var2450 var2750 (getMethodType/-466914787 (cast-from-var1416-to-var1009 var3357))) ; Statement: $r1 = virtualinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>() 
(assert true)
(define-const var1414 String (toString/-1143286467 var2450)) ; Statement: r2 = virtualinvoke $r1.<java.lang.invoke.MethodType: java.lang.String toString()>() 
(assert true)
(define-const var3781 var3985 (getLookup/91626822 var3357)) ; Statement: $r3 = virtualinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.invoke.MethodHandles$Lookup getLookup()>() 
(assert true)
(define-const var2921 String (toString/455088278 var3781)) ; Statement: r4 = virtualinvoke $r3.<java.lang.invoke.MethodHandles$Lookup: java.lang.String toString()>() 
(define-const var2121 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
(define-const var3595 Int (length/-134980193 var2921)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var2940 Int (+ var3595 1)) ; Statement: $i2 = $i0 + 1 
(assert true)
(define-const var3935 Int (length/-134980193 var1414)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var3279 Int (+ var2940 var3935)) ; Statement: $i4 = $i2 + $i1 
(assert true)
(define-const var1819 Int (getNameLength/-2134253578 var3357)) ; Statement: $i3 = specialinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: int getNameLength()>() 
(define-const var2814 Int (+ var3279 var1819)) ; Statement: $i5 = $i4 + $i3 
(assert true)
;(assert (<init>/543593434 var2121 var2814)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i5) 

(declare-const var2121!1 String)
(declare-const var2814!1 Int)
(assert true)
(define-const var3581 String (appendName/1063954209 var3357 var2121!1)) ; Statement: $r6 = specialinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.StringBuilder appendName(java.lang.StringBuilder)>($r5) 
(assert true)
(define-const var2976 String (append/672562846 var3581 var1414)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var3581!1 String)
(assert (= var3581!1 (str.++ var3581 var1414)))
(assert true)
(define-const var3419 String (append/672562846 var2976 "@")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@") 
(declare-const var2976!1 String)
(assert (= var2976!1 (str.++ var2976 "@")))
(assert true)
(define-const var2911 String (append/672562846 var3419 var2921)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var3419!1 String)
(assert (= var3419!1 (str.++ var3419 var2921)))
(assert true)
(define-const var2873 String (toString/-2075883882 var2911)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getMethodType/-466914787=([jdk.internal.dynalink.CallSiteDescriptor], java.lang.invoke.MethodType), cast-from-var1416-to-var1009=([jdk.internal.dynalink.support.AbstractCallSiteDescriptor], jdk.internal.dynalink.CallSiteDescriptor), toString/-1143286467=([java.lang.invoke.MethodType], java.lang.String), getLookup/91626822=([jdk.internal.dynalink.support.AbstractCallSiteDescriptor], java.lang.invoke.MethodHandles$Lookup), toString/455088278=([java.lang.invoke.MethodHandles$Lookup], java.lang.String), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), getNameLength/-2134253578=([jdk.internal.dynalink.support.AbstractCallSiteDescriptor], int), <init>/543593434=([java.lang.StringBuilder, int], void), appendName/1063954209=([jdk.internal.dynalink.support.AbstractCallSiteDescriptor, java.lang.StringBuilder], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1416=jdk.internal.dynalink.support.AbstractCallSiteDescriptor, var3357=r0, var2750=java.lang.invoke.MethodType, var1009=jdk.internal.dynalink.CallSiteDescriptor, var2450=$r1, var1414=r2, var3985=java.lang.invoke.MethodHandles$Lookup, var3781=$r3, var2921=r4, var2121=$r5, var3595=$i0, var2940=$i2, var3935=$i1, var3279=$i4, var1819=$i3, var2814=$i5, var3581=$r6, var2976=$r7, var3419=$r8, var2911=$r9, var2873=$r10}
; {jdk.internal.dynalink.support.AbstractCallSiteDescriptor=var1416, r0=var3357, java.lang.invoke.MethodType=var2750, jdk.internal.dynalink.CallSiteDescriptor=var1009, $r1=var2450, r2=var1414, java.lang.invoke.MethodHandles$Lookup=var3985, $r3=var3781, r4=var2921, $r5=var2121, $i0=var3595, $i2=var2940, $i1=var3935, $i4=var3279, $i3=var1819, $i5=var2814, $r6=var3581, $r7=var2976, $r8=var3419, $r9=var2911, $r10=var2873}
;seq <java.lang.invoke.MethodType: java.lang.String toString()>;	<java.lang.invoke.MethodHandles$Lookup: java.lang.String toString()>;	<java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.internal.dynalink.support.AbstractCallSiteDescriptor;	$r1 = virtualinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.invoke.MethodType getMethodType()>();	r2 = virtualinvoke $r1.<java.lang.invoke.MethodType: java.lang.String toString()>();	$r3 = virtualinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.invoke.MethodHandles$Lookup getLookup()>();	r4 = virtualinvoke $r3.<java.lang.invoke.MethodHandles$Lookup: java.lang.String toString()>();	$r5 = new java.lang.StringBuilder;	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$i2 = $i0 + 1;	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i4 = $i2 + $i1;	$i3 = specialinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: int getNameLength()>();	$i5 = $i4 + $i3;	specialinvoke $r5.<java.lang.StringBuilder: void <init>(int)>($i5);	$r6 = specialinvoke r0.<jdk.internal.dynalink.support.AbstractCallSiteDescriptor: java.lang.StringBuilder appendName(java.lang.StringBuilder)>($r5);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("@");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1