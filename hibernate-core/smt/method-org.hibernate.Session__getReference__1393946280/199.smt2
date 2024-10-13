(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var273 0)
(declare-sort var3213 0)
(declare-sort var2530 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2530-init () var2530)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3213) ClassObject)
(declare-fun cast-from-var273-to-var3213 (var273) var3213)
(declare-fun append/-1031950772 (String var3213) String)
(declare-fun cast-from-ClassObject-to-var3213 (ClassObject) var3213)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2530 String) void)
(declare-const null-var273 var273)
(declare-const null-var3213 var3213)
(declare-const var1178 var273) ; Statement: r2 := @this: org.hibernate.Session 
(assert (not (= var1178 null-var273)))
(declare-const var3534 var3213) ; Statement: r7 := @parameter0: java.lang.Object 
(assert (not (= var3534 null-var3213)))
(define-const var2374 var2530 var2530-init) ; Statement: $r0 = new java.lang.IllegalStateException 
(define-const var725 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var725)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var725!1 String)
(assert (= var725!1 ""))
(assert true)
(define-const var2660 String (append/672562846 var725!1 "getReference(Object) is not implemented in ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getReference(Object) is not implemented in ") 
(declare-const var725!2 String)
(assert (= var725!2 (str.++ var725!1 "getReference(Object) is not implemented in ")))
(assert true)
(define-const var3063 ClassObject (getClass/1258963082 (cast-from-var273-to-var3213 var1178))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2146 String (append/-1031950772 var2660 (cast-from-ClassObject-to-var3213 var3063))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2660!1 String)
(assert (str.prefixof var2660 var2660!1))
(assert true)
(define-const var1173 String (toString/-2075883882 var2146)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2374 var1173)) ; Statement: specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6) 

(declare-const var2374!1 var2530)
(declare-const var1173!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2530-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var273-to-var3213=([org.hibernate.Session], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3213=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var273=org.hibernate.Session, var1178=r2, var3213=java.lang.Object, var3534=r7, var2530=java.lang.IllegalStateException, var2374=$r0, var725=$r1, var2660=$r4, var3063=$r3, var2146=$r5, var1173=$r6}
; {org.hibernate.Session=var273, r2=var1178, java.lang.Object=var3213, r7=var3534, java.lang.IllegalStateException=var2530, $r0=var2374, $r1=var725, $r4=var2660, $r3=var3063, $r5=var2146, $r6=var1173}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.Session;	r7 := @parameter0: java.lang.Object;	$r0 = new java.lang.IllegalStateException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("getReference(Object) is not implemented in ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6);	throw $r0
;block_num 1