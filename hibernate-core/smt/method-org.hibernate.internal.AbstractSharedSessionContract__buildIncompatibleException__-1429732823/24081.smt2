(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var574 0)
(declare-sort var2540 0)
(declare-sort var2792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun var2540-init () var2540)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2792) String)
(declare-fun cast-from-ClassObject-to-var2792 (ClassObject) var2792)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2540 String) void)
(declare-const null-var574 var574)
(declare-const null-ClassObject ClassObject)
(declare-const var2375 var574) ; Statement: r26 := @this: org.hibernate.internal.AbstractSharedSessionContract 
(assert (not (= var2375 null-var574)))
(declare-const var1145 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1145 null-ClassObject)))
(declare-const var2902 ClassObject) ; Statement: r2 := @parameter1: java.lang.Class 
(assert (not (= var2902 null-ClassObject)))
(assert true)
(define-const var1335 String (getName/-1958580599 var1145)) ; Statement: r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1037 String (getName/-1958580599 var2902)) ; Statement: r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1004 Bool (= var1335 var1037)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r4 = new java.lang.IllegalArgumentException 
(assert (= (ite var1004 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3523 var2540 var2540-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1535 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1535)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1535!1 String)
(assert (= var1535!1 ""))
(assert true)
(define-const var1128 String (append/672562846 var1535!1 "Type specified for TypedQuery [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type specified for TypedQuery [") 
(declare-const var1535!2 String)
(assert (= var1535!2 (str.++ var1535!1 "Type specified for TypedQuery [")))
(assert true)
(define-const var77 String (append/672562846 var1128 var1335)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1128!1 String)
(assert (= var1128!1 (str.++ var1128 var1335)))
(assert true)
(define-const var275 String (append/672562846 var77 "] is incompatible with query return type [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is incompatible with query return type [") 
(declare-const var77!1 String)
(assert (= var77!1 (str.++ var77 "] is incompatible with query return type [")))
(assert true)
(define-const var2190 String (append/-1031950772 var275 (cast-from-ClassObject-to-var2792 var2902))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var275!1 String)
(assert (str.prefixof var275 var275!1))
(assert true)
(define-const var1229 String (append/672562846 var2190 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2190!1 String)
(assert (= var2190!1 (str.++ var2190 "]")))
(assert true)
(define-const var2689 String (toString/-2075883882 var1229)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3523 var2689)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3523!1 var2540)
(declare-const var2689!1 String)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1958580599=([java.lang.Class], java.lang.String), var2540-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2792=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var574=org.hibernate.internal.AbstractSharedSessionContract, var2375=r26, var1145=r0, var2902=r2, var1335=r1, var1037=r3, var1004=$z0, var2540=java.lang.IllegalArgumentException, var3523=$r4, var1535=$r5, var1128=$r6, var77=$r7, var275=$r8, var2792=java.lang.Object, var2190=$r9, var1229=$r10, var2689=$r11}
; {org.hibernate.internal.AbstractSharedSessionContract=var574, r26=var2375, r0=var1145, r2=var2902, r1=var1335, r3=var1037, $z0=var1004, java.lang.IllegalArgumentException=var2540, $r4=var3523, $r5=var1535, $r6=var1128, $r7=var77, $r8=var275, java.lang.Object=var2792, $r9=var2190, $r10=var1229, $r11=var2689}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r26 := @this: org.hibernate.internal.AbstractSharedSessionContract;	r0 := @parameter0: java.lang.Class;	r2 := @parameter1: java.lang.Class;	r1 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	r3 = virtualinvoke r2.<java.lang.Class: java.lang.String getName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r4 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Type specified for TypedQuery [");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] is incompatible with query return type [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	return $r4
;block_num 2