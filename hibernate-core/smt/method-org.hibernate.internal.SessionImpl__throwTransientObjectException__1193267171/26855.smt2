(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3682 0)
(declare-sort var248 0)
(declare-sort var331 0)
(declare-sort var812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var331-init () var331)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun guessEntityName/-695082695 (var3682 var248) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1749558638 (var331 String) void)
(declare-fun cast-from-var331-to-var812 (var331) var812)
(declare-const null-var3682 var3682)
(declare-const null-var248 var248)
(declare-const var3526 var3682) ; Statement: r2 := @this: org.hibernate.internal.SessionImpl 
(assert (not (= var3526 null-var3682)))
(declare-const var1801 var248) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var1801 null-var248)))
(define-const var2318 var331 var331-init) ; Statement: $r9 = new org.hibernate.TransientObjectException 
(define-const var3264 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3264)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3264!1 String)
(assert (= var3264!1 ""))
(assert true)
(define-const var988 String (append/672562846 var3264!1 "object references an unsaved transient instance - save the transient instance before flushing: ")) ; Statement: $r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object references an unsaved transient instance - save the transient instance before flushing: ") 
(declare-const var3264!2 String)
(assert (= var3264!2 (str.++ var3264!1 "object references an unsaved transient instance - save the transient instance before flushing: ")))
(assert true)
(define-const var1821 String (guessEntityName/-695082695 var3526 var1801)) ; Statement: $r4 = virtualinvoke r2.<org.hibernate.internal.SessionImpl: java.lang.String guessEntityName(java.lang.Object)>(r3) 
(assert true)
(define-const var258 String (append/672562846 var988 var1821)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var988!1 String)
(assert (= var988!1 (str.++ var988 var1821)))
(assert true)
(define-const var2396 String (toString/-2075883882 var258)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1749558638 var2318 var2396)) ; Statement: specialinvoke $r9.<org.hibernate.TransientObjectException: void <init>(java.lang.String)>($r7) 

(declare-const var2318!1 var331)
(declare-const var2396!1 String)
(define-const var2083 var812 (cast-from-var331-to-var812 var2318!1)) ; Statement: $r10 = (java.lang.Throwable) $r9 
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var331-init=([], org.hibernate.TransientObjectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), guessEntityName/-695082695=([org.hibernate.internal.SessionImpl, java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1749558638=([org.hibernate.TransientObjectException, java.lang.String], void), cast-from-var331-to-var812=([org.hibernate.TransientObjectException], java.lang.Throwable)}
; {var3682=org.hibernate.internal.SessionImpl, var3526=r2, var248=java.lang.Object, var1801=r3, var331=org.hibernate.TransientObjectException, var2318=$r9, var3264=$r8, var988=$r5, var1821=$r4, var258=$r6, var2396=$r7, var812=java.lang.Throwable, var2083=$r10}
; {org.hibernate.internal.SessionImpl=var3682, r2=var3526, java.lang.Object=var248, r3=var1801, org.hibernate.TransientObjectException=var331, $r9=var2318, $r8=var3264, $r5=var988, $r4=var1821, $r6=var258, $r7=var2396, java.lang.Throwable=var812, $r10=var2083}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.internal.SessionImpl;	r3 := @parameter0: java.lang.Object;	$r9 = new org.hibernate.TransientObjectException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("object references an unsaved transient instance - save the transient instance before flushing: ");	$r4 = virtualinvoke r2.<org.hibernate.internal.SessionImpl: java.lang.String guessEntityName(java.lang.Object)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<org.hibernate.TransientObjectException: void <init>(java.lang.String)>($r7);	$r10 = (java.lang.Throwable) $r9;	throw $r10
;block_num 1