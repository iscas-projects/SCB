(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1117 0)
(declare-sort var503 0)
(declare-sort var2399 0)
(declare-sort var233 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var503_identityHashCode/1096208673 (var2399) Int)
(declare-fun cast-from-var1117-to-var2399 (var1117) var2399)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun isClosed/-1850826345 (var233) Bool)
(declare-fun cast-from-var1117-to-var233 (var1117) var233)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1117 var1117)
(declare-const var3786 var1117) ; Statement: r1 := @this: org.hibernate.internal.SessionImpl 
(assert (not (= var3786 null-var1117)))
(define-const var3956 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3956 500)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(500) 

(declare-const var3956!1 String)
(declare-const var2793 Int)
(assert true)
(define-const var974 String (append/672562846 var3956!1 "SessionImpl(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SessionImpl(") 
(declare-const var3956!2 String)
(assert (= var3956!2 (str.++ var3956!1 "SessionImpl(")))
(define-const var250 Int (var503_identityHashCode/1096208673 (cast-from-var1117-to-var2399 var3786))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(assert true)
(define-const var3818 String (append/-1001720160 var974 var250)) ; Statement: r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var974!1 String)
(assert (str.prefixof var974 var974!1))
(assert true)
(define-const var2926 Bool (isClosed/-1850826345 (cast-from-var1117-to-var233 var3786))) ; Statement: $z0 = virtualinvoke r1.<org.hibernate.internal.SessionImpl: boolean isClosed()>() 
 ; Statement: if $z0 != 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<closed>") 
(assert (not (= (ite var2926 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
;(assert (append/672562846 var3818 "<closed>")) ; Statement: virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<closed>") 
(declare-const var3818!1 String)
(assert (= var3818!1 (str.++ var3818 "<closed>")))
(assert true) ; Non Conditional
(assert true)
(define-const var1887 String (append/-1166366385 var3818!1 41)) ; Statement: $r9 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var3818!2 String)
(assert (str.prefixof var3818!1 var3818!2))
(assert true)
(define-const var1475 String (toString/-2075883882 var1887)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var503_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var1117-to-var2399=([org.hibernate.internal.SessionImpl], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), isClosed/-1850826345=([org.hibernate.internal.AbstractSharedSessionContract], boolean), cast-from-var1117-to-var233=([org.hibernate.internal.SessionImpl], org.hibernate.internal.AbstractSharedSessionContract), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1117=org.hibernate.internal.SessionImpl, var3786=r1, var3956=$r0, var2793=500, var974=$r2, var503=java.lang.System, var2399=java.lang.Object, var250=$i0, var3818=r3, var233=org.hibernate.internal.AbstractSharedSessionContract, var2926=$z0, var1887=$r9, var1475=$r10}
; {org.hibernate.internal.SessionImpl=var1117, r1=var3786, $r0=var3956, 500=var2793, $r2=var974, java.lang.System=var503, java.lang.Object=var2399, $i0=var250, r3=var3818, org.hibernate.internal.AbstractSharedSessionContract=var233, $z0=var2926, $r9=var1887, $r10=var1475}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.SessionImpl;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>(500);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("SessionImpl(");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$z0 = virtualinvoke r1.<org.hibernate.internal.SessionImpl: boolean isClosed()>();	if $z0 != 0 goto virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<closed>");	virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<closed>");	$r9 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3