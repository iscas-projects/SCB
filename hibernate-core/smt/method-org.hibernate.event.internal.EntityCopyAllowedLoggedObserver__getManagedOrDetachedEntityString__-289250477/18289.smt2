(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2382 0)
(declare-sort var1080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1080) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2382 var2382)
(declare-const null-var1080 var1080)
(declare-const var3470 var2382) ; Statement: r12 := @this: org.hibernate.event.internal.EntityCopyAllowedLoggedObserver 
(assert (not (= var3470 null-var2382)))
(declare-const var933 var1080) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var933 null-var1080)))
(declare-const var1185 var1080) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1185 null-var1080)))
 ; Statement: if r0 != r1 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var1185 var933)))) ; Negate: Cond: r0 != r1  
(define-const var900 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var900)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var900!1 String)
(assert (= var900!1 ""))
(assert true)
(define-const var675 String (append/672562846 var900!1 "Managed: [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Managed: [") 
(declare-const var900!2 String)
(assert (= var900!2 (str.++ var900!1 "Managed: [")))
(assert true)
(define-const var821 String (append/-1031950772 var675 var1185)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var675!1 String)
(assert (str.prefixof var675 var675!1))
(assert true)
(define-const var3227 String (append/672562846 var821 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var821!1 String)
(assert (= var821!1 (str.++ var821 "]")))
(assert true)
(define-const var3770 String (toString/-2075883882 var3227)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2382=org.hibernate.event.internal.EntityCopyAllowedLoggedObserver, var3470=r12, var1080=java.lang.Object, var933=r1, var1185=r0, var900=$r7, var675=$r8, var821=$r9, var3227=$r10, var3770=$r11}
; {org.hibernate.event.internal.EntityCopyAllowedLoggedObserver=var2382, r12=var3470, java.lang.Object=var1080, r1=var933, r0=var1185, $r7=var900, $r8=var675, $r9=var821, $r10=var3227, $r11=var3770}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.event.internal.EntityCopyAllowedLoggedObserver;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != r1 goto $r2 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Managed: [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2