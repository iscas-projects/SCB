(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var750 0)
(declare-sort var2248 0)
(declare-sort var3244 0)
(declare-sort var2585 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getKey/-1967431913 (var2248) String)
(declare-fun var3244-init () var3244)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3244 var2585) void)
(declare-fun cast-from-String-to-var2585 (String) var2585)
(declare-const null-var750 var750)
(declare-const null-var2248 var2248)
(declare-const var750-$assertionsDisabled Bool)
(declare-const var3147 var750) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.PropertyHashMap 
(assert (not (= var3147 null-var750)))
(declare-const var3389 var2248) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.Property 
(assert (not (= var3389 null-var2248)))
(declare-const var2164 var2248) ; Statement: r2 := @parameter1: jdk.nashorn.internal.runtime.Property 
(assert (not (= var2164 null-var2248)))
(define-const var2354 Bool var750-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $z1 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled> 
(assert (not (not (= (ite var2354 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var825 String (getKey/-1967431913 var3389)) ; Statement: $r16 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var527 String (getKey/-1967431913 var2164)) ; Statement: $r15 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var985 Bool (= var825 var527)) ; Statement: $z2 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>($r15) 
 ; Statement: if $z2 != 0 goto $z1 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled> 
(assert (not (not (= (ite var985 1 0) 0)))) ; Negate: Cond: $z2 != 0  
(define-const var2624 var3244 var3244-init) ; Statement: $r17 = new java.lang.AssertionError 
(define-const var2707 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2707)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2707!1 String)
(assert (= var2707!1 ""))
(assert true)
(define-const var1773 String (append/672562846 var2707!1 "replacing properties with different keys: \u0027")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("replacing properties with different keys: \'") 
(declare-const var2707!2 String)
(assert (= var2707!2 (str.++ var2707!1 "replacing properties with different keys: \u0027")))
(assert true)
(define-const var2898 String (getKey/-1967431913 var3389)) ; Statement: $r19 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var1011 String (append/672562846 var1773 var2898)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var1773!1 String)
(assert (= var1773!1 (str.++ var1773 var2898)))
(assert true)
(define-const var3632 String (append/672562846 var1011 "\u0027 != \u0027")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' != \'") 
(declare-const var1011!1 String)
(assert (= var1011!1 (str.++ var1011 "\u0027 != \u0027")))
(assert true)
(define-const var189 String (getKey/-1967431913 var2164)) ; Statement: $r22 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>() 
(assert true)
(define-const var601 String (append/672562846 var3632 var189)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3632!1 String)
(assert (= var3632!1 (str.++ var3632 var189)))
(assert true)
(define-const var430 String (append/672562846 var601 "\u0027")) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var601!1 String)
(assert (= var601!1 (str.++ var601 "\u0027")))
(assert true)
(define-const var134 String (toString/-2075883882 var430)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var2624 (cast-from-String-to-var2585 var134))) ; Statement: specialinvoke $r17.<java.lang.AssertionError: void <init>(java.lang.Object)>($r26) 

(declare-const var2624!1 var3244)
(declare-const var134!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getKey/-1967431913=([jdk.nashorn.internal.runtime.Property], java.lang.String), var3244-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2585=([java.lang.String], java.lang.Object)}
; {var750=jdk.nashorn.internal.runtime.PropertyHashMap, var3147=r0, var2248=jdk.nashorn.internal.runtime.Property, var3389=r1, var2164=r2, var2354=$z0, var825=$r16, var527=$r15, var985=$z2, var3244=java.lang.AssertionError, var2624=$r17, var2707=$r18, var1773=$r20, var2898=$r19, var1011=$r21, var3632=$r23, var189=$r22, var601=$r24, var430=$r25, var134=$r26, var2585=java.lang.Object}
; {jdk.nashorn.internal.runtime.PropertyHashMap=var750, r0=var3147, jdk.nashorn.internal.runtime.Property=var2248, r1=var3389, r2=var2164, $z0=var2354, $r16=var825, $r15=var527, $z2=var985, java.lang.AssertionError=var3244, $r17=var2624, $r18=var2707, $r20=var1773, $r19=var2898, $r21=var1011, $r23=var3632, $r22=var189, $r24=var601, $r25=var430, $r26=var134, java.lang.Object=var2585}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.PropertyHashMap;	r1 := @parameter0: jdk.nashorn.internal.runtime.Property;	r2 := @parameter1: jdk.nashorn.internal.runtime.Property;	$z0 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled>;	if $z0 != 0 goto $z1 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled>;	$r16 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$r15 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$z2 = virtualinvoke $r16.<java.lang.String: boolean equals(java.lang.Object)>($r15);	if $z2 != 0 goto $z1 = <jdk.nashorn.internal.runtime.PropertyHashMap: boolean $assertionsDisabled>;	$r17 = new java.lang.AssertionError;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("replacing properties with different keys: \'");	$r19 = virtualinvoke r1.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' != \'");	$r22 = virtualinvoke r2.<jdk.nashorn.internal.runtime.Property: java.lang.String getKey()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.AssertionError: void <init>(java.lang.Object)>($r26);	throw $r17
;block_num 3