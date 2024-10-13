(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1115 0)
(declare-sort var3808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDefaultNS/-140015768 (var3808) String)
(declare-fun getPrefixForNamespace/728125261 (var3808 String) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-var3808 var3808)
(declare-const var186 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var186 null-String)))
(declare-const var316 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var316 null-String)))
(declare-const var2301 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2301 null-String)))
(declare-const var2778 var3808) ; Statement: r0 := @parameter3: freemarker.core.Environment 
(assert (not (= var2778 null-var3808)))
(assert true)
(define-const var1334 String (getDefaultNS/-140015768 var2778)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDefaultNS()>() 
 ; Statement: if r1 == null goto $r3 = "" 
(assert (= var1334 null-String)) ; Cond: r1 == null 
(define-const var3500 String "") ; Statement: $r3 = "" 
(assert true)
(define-const var520 Bool (= var3500 var2301)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2) 
(assert (= (ite var520 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var229 String (getPrefixForNamespace/728125261 var2778 var2301)) ; Statement: r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2) 
 ; Statement: if r4 != null goto $r6 = new java.lang.StringBuilder 
(assert (not (= var229 null-String))) ; Cond: r4 != null 
(define-const var464 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var464)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var464!1 String)
(assert (= var464!1 ""))
(assert true)
(define-const var21 String (append/672562846 var464!1 var229)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var464!2 String)
(assert (= var464!2 (str.++ var464!1 var229)))
(assert true)
(define-const var524 String (append/672562846 var21 ":")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var21!1 String)
(assert (= var21!1 (str.++ var21 ":")))
(assert true)
(define-const var3502 String (append/672562846 var524 var316)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var524!1 String)
(assert (= var524!1 (str.++ var524 var316)))
(assert true)
(define-const var1038 String (toString/-2075883882 var3502)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2168 Bool (= var186 var1038)) ; Statement: $z1 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>($r11) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getDefaultNS/-140015768=([freemarker.core.Environment], java.lang.String), getPrefixForNamespace/728125261=([freemarker.core.Environment, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var186=r5, var1115=null_type, var316=r8, var2301=r2, var3808=freemarker.core.Environment, var2778=r0, var1334=r1, var3500=$r3, var520=$z0, var229=r4, var464=$r6, var21=$r7, var524=$r9, var3502=$r10, var1038=$r11, var2168=$z1}
; {r5=var186, null_type=var1115, r8=var316, r2=var2301, freemarker.core.Environment=var3808, r0=var2778, r1=var1334, $r3=var3500, $z0=var520, r4=var229, $r6=var464, $r7=var21, $r9=var524, $r10=var3502, $r11=var1038, $z1=var2168}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @parameter0: java.lang.String;	r8 := @parameter1: java.lang.String;	r2 := @parameter2: java.lang.String;	r0 := @parameter3: freemarker.core.Environment;	r1 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getDefaultNS()>();	if r1 == null goto $r3 = "";	$r3 = "";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r2);	if $z0 == 0 goto r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2);	r4 = virtualinvoke r0.<freemarker.core.Environment: java.lang.String getPrefixForNamespace(java.lang.String)>(r2);	if r4 != null goto $r6 = new java.lang.StringBuilder;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$z1 = virtualinvoke r5.<java.lang.String: boolean equals(java.lang.Object)>($r11);	return $z1
;block_num 4