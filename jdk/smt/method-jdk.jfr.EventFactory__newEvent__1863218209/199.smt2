(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2879 0)
(declare-sort var680 0)
(declare-sort var2820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2820-init () var2820)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun eventClass/-1978995899 (var2879) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getMessage/849299655 (var680) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/37326133 (var2820 String) void)
(declare-const null-var2879 var2879)
(declare-const null-var680 var680)
(declare-const var2325 var2879) ; Statement: r0 := @this: jdk.jfr.EventFactory 
(assert (not (= var2325 null-var2879)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3961 var680) ; Statement: $r3 := @caughtexception 
(assert (not (= var3961 null-var680)))
(define-const var517 var2820 var2820-init) ; Statement: $r4 = new java.lang.InstantiationError 
(define-const var1292 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1292)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1292!1 String)
(assert (= var1292!1 ""))
(assert true)
(define-const var795 String (append/672562846 var1292!1 "Could not instantaite dynamically generated event class ")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantaite dynamically generated event class ") 
(declare-const var1292!2 String)
(assert (= var1292!2 (str.++ var1292!1 "Could not instantaite dynamically generated event class ")))
(define-const var198 ClassObject (eventClass/-1978995899 var2325)) ; Statement: $r6 = r0.<jdk.jfr.EventFactory: java.lang.Class eventClass> 
(assert true)
(define-const var3618 String (getName/-1958580599 var198)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2957 String (append/672562846 var795 var3618)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var795!1 String)
(assert (= var795!1 (str.++ var795 var3618)))
(assert true)
(define-const var1244 String (append/672562846 var2957 ". ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ") 
(declare-const var2957!1 String)
(assert (= var2957!1 (str.++ var2957 ". ")))
(assert true)
(define-const var743 String (getMessage/849299655 var3961)) ; Statement: $r10 = virtualinvoke $r3.<java.lang.Throwable: java.lang.String getMessage()>() 
(assert true)
(define-const var2380 String (append/672562846 var1244 var743)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1244!1 String)
(assert (= var1244!1 (str.++ var1244 var743)))
(assert true)
(define-const var3143 String (toString/-2075883882 var2380)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/37326133 var517 var3143)) ; Statement: specialinvoke $r4.<java.lang.InstantiationError: void <init>(java.lang.String)>($r13) 

(declare-const var517!1 var2820)
(declare-const var3143!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2820-init=([], java.lang.InstantiationError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), eventClass/-1978995899=([jdk.jfr.EventFactory], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getMessage/849299655=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/37326133=([java.lang.InstantiationError, java.lang.String], void)}
; {var2879=jdk.jfr.EventFactory, var2325=r0, var680=java.lang.Throwable, var3961=$r3, var2820=java.lang.InstantiationError, var517=$r4, var1292=$r5, var795=$r8, var198=$r6, var3618=$r7, var2957=$r9, var1244=$r11, var743=$r10, var2380=$r12, var3143=$r13}
; {jdk.jfr.EventFactory=var2879, r0=var2325, java.lang.Throwable=var680, $r3=var3961, java.lang.InstantiationError=var2820, $r4=var517, $r5=var1292, $r8=var795, $r6=var198, $r7=var3618, $r9=var2957, $r11=var1244, $r10=var743, $r12=var2380, $r13=var3143}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.EventFactory;	$r3 := @caughtexception;	$r4 = new java.lang.InstantiationError;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantaite dynamically generated event class ");	$r6 = r0.<jdk.jfr.EventFactory: java.lang.Class eventClass>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". ");	$r10 = virtualinvoke $r3.<java.lang.Throwable: java.lang.String getMessage()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.InstantiationError: void <init>(java.lang.String)>($r13);	throw $r4
;block_num 2