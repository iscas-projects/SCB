(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var957 0)
(declare-sort var938 0)
(declare-sort var3430 0)
(declare-sort var2793 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3430-init () var3430)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2793) String)
(declare-fun cast-from-var938-to-var2793 (var938) var2793)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3430 String) void)
(declare-const null-var957 var957)
(declare-const null-var938 var938)
(declare-const var1390 var957) ; Statement: r7 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var1390 null-var957)))
(declare-const var1326 var938) ; Statement: r0 := @parameter0: org.hibernate.mapping.FetchProfile 
(assert (not (= var1326 null-var938)))
 ; Statement: if r0 == null goto $r1 = new java.lang.IllegalArgumentException 
(assert (= var1326 null-var938)) ; Cond: r0 == null 
(define-const var1029 var3430 var3430-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var1982 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1982)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1982!1 String)
(assert (= var1982!1 ""))
(assert true)
(define-const var2327 String (append/672562846 var1982!1 "Fetch profile object or name is null: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fetch profile object or name is null: ") 
(declare-const var1982!2 String)
(assert (= var1982!2 (str.++ var1982!1 "Fetch profile object or name is null: ")))
(assert true)
(define-const var2669 String (append/-1031950772 var2327 (cast-from-var938-to-var2793 var1326))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2327!1 String)
(assert (str.prefixof var2327 var2327!1))
(assert true)
(define-const var649 String (toString/-2075883882 var2669)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1029 var649)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var1029!1 var3430)
(declare-const var649!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3430-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var938-to-var2793=([org.hibernate.mapping.FetchProfile], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var957=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var1390=r7, var938=org.hibernate.mapping.FetchProfile, var1326=r0, var3430=java.lang.IllegalArgumentException, var1029=$r1, var1982=$r2, var2327=$r3, var2793=java.lang.Object, var2669=$r4, var649=$r5}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var957, r7=var1390, org.hibernate.mapping.FetchProfile=var938, r0=var1326, java.lang.IllegalArgumentException=var3430, $r1=var1029, $r2=var1982, $r3=var2327, java.lang.Object=var2793, $r4=var2669, $r5=var649}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r0 := @parameter0: org.hibernate.mapping.FetchProfile;	if r0 == null goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Fetch profile object or name is null: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 2