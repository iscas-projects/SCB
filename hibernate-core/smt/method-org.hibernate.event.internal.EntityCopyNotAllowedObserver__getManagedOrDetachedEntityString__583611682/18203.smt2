(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1581 0)
(declare-sort var54 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var54) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1581 var1581)
(declare-const null-var54 var54)
(declare-const var567 var1581) ; Statement: r12 := @this: org.hibernate.event.internal.EntityCopyNotAllowedObserver 
(assert (not (= var567 null-var1581)))
(declare-const var2642 var54) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var2642 null-var54)))
(declare-const var2125 var54) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var2125 null-var54)))
 ; Statement: if r0 != r1 goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var2125 var2642)))) ; Negate: Cond: r0 != r1  
(define-const var653 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var653)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var653!1 String)
(assert (= var653!1 ""))
(assert true)
(define-const var1163 String (append/672562846 var653!1 "Managed: [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Managed: [") 
(declare-const var653!2 String)
(assert (= var653!2 (str.++ var653!1 "Managed: [")))
(assert true)
(define-const var3295 String (append/-1031950772 var1163 var2125)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1163!1 String)
(assert (str.prefixof var1163 var1163!1))
(assert true)
(define-const var1488 String (append/672562846 var3295 "]")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3295!1 String)
(assert (= var3295!1 (str.++ var3295 "]")))
(assert true)
(define-const var1052 String (toString/-2075883882 var1488)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1581=org.hibernate.event.internal.EntityCopyNotAllowedObserver, var567=r12, var54=java.lang.Object, var2642=r1, var2125=r0, var653=$r7, var1163=$r8, var3295=$r9, var1488=$r10, var1052=$r11}
; {org.hibernate.event.internal.EntityCopyNotAllowedObserver=var1581, r12=var567, java.lang.Object=var54, r1=var2642, r0=var2125, $r7=var653, $r8=var1163, $r9=var3295, $r10=var1488, $r11=var1052}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.hibernate.event.internal.EntityCopyNotAllowedObserver;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	if r0 != r1 goto $r2 = new java.lang.StringBuilder;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Managed: [");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 2