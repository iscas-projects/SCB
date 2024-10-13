(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1205 0)
(declare-sort var285 0)
(declare-sort var1747 0)
(declare-sort var967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1747-init () var1747)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1245322999 (var1747 String var967) void)
(declare-fun cast-from-var285-to-var967 (var285) var967)
(declare-fun cast-from-var1747-to-var967 (var1747) var967)
(declare-const null-String String)
(declare-const null-var285 var285)
(declare-const var1624 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1624 null-String)))
 ; Statement: if r0 != null goto $r1 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.Class classForName(java.lang.String)>(r0) 
(assert (not (not (= var1624 null-String)))) ; Negate: Cond: r0 != null  
(declare-const var2821 var285) ; Statement: $r5 := @caughtexception 
(assert (not (= var2821 null-var285)))
(define-const var667 var1747 var1747-init) ; Statement: $r21 = new org.hibernate.HibernateException 
(define-const var417 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var417)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var417!1 String)
(assert (= var417!1 ""))
(assert true)
(define-const var3486 String (append/672562846 var417!1 "Could not instantiate given dialect class: ")) ; Statement: $r8 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate given dialect class: ") 
(declare-const var417!2 String)
(assert (= var417!2 (str.++ var417!1 "Could not instantiate given dialect class: ")))
(assert true)
(define-const var2848 String (append/672562846 var3486 var1624)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var3486!1 String)
(assert (= var3486!1 (str.++ var3486 var1624)))
(assert true)
(define-const var2007 String (toString/-2075883882 var2848)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1245322999 var667 var2007 (cast-from-var285-to-var967 var2821))) ; Statement: specialinvoke $r21.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5) 

(declare-const var667!1 var1747)
(declare-const var2007!1 String)
(declare-const var2821!1 var285)
(define-const var2465 var967 (cast-from-var1747-to-var967 var667!1)) ; Statement: $r24 = (java.lang.Throwable) $r21 
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var1747-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1245322999=([org.hibernate.HibernateException, java.lang.String, java.lang.Throwable], void), cast-from-var285-to-var967=([java.lang.Exception], java.lang.Throwable), cast-from-var1747-to-var967=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var1624=r0, var1205=null_type, var285=java.lang.Exception, var2821=$r5, var1747=org.hibernate.HibernateException, var667=$r21, var417=$r20, var3486=$r8, var2848=$r9, var2007=$r10, var967=java.lang.Throwable, var2465=$r24}
; {r0=var1624, null_type=var1205, java.lang.Exception=var285, $r5=var2821, org.hibernate.HibernateException=var1747, $r21=var667, $r20=var417, $r8=var3486, $r9=var2848, $r10=var2007, java.lang.Throwable=var967, $r24=var2465}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.Class classForName(java.lang.String)>(r0);	$r5 := @caughtexception;	$r21 = new org.hibernate.HibernateException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate given dialect class: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r21.<org.hibernate.HibernateException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r5);	$r24 = (java.lang.Throwable) $r21;	throw $r24
;block_num 2