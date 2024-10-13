(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var702 0)
(declare-sort var975 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var702!class ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var975-init () var975)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var975 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const var2142 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2142 null-ClassObject)))
(define-const var1720 ClassObject var702!class) ; Statement: $r1 = class "Ljdk/jfr/Event;" 
(assert true)
(define-const var1960 Bool (isAssignableFrom/-1028998700 var1720 var2142)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0) 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1960 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r0 == class "Ljdk/jfr/Event;" goto $r2 = new java.lang.IllegalArgumentException 
(assert (= var2142 var702!class)) ; Cond: r0 == class "Ljdk/jfr/Event;" 
(define-const var1922 var975 var975-init) ; Statement: $r2 = new java.lang.IllegalArgumentException 
(define-const var1312 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1312)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1312!1 String)
(assert (= var1312!1 ""))
(assert true)
(define-const var2905 String (append/672562846 var1312!1 "Must be a subclass to ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Must be a subclass to ") 
(declare-const var1312!2 String)
(assert (= var1312!2 (str.++ var1312!1 "Must be a subclass to ")))
(define-const var3915 ClassObject var702!class) ; Statement: $r4 = class "Ljdk/jfr/Event;" 
(assert true)
(define-const var2354 String (getName/-1958580599 var3915)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1085 String (append/672562846 var2905 var2354)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2905!1 String)
(assert (= var2905!1 (str.++ var2905 var2354)))
(assert true)
(define-const var1345 String (toString/-2075883882 var1085)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1922 var1345)) ; Statement: specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var1922!1 var975)
(declare-const var1345!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var975-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2142=r0, var702=jdk.jfr.Event, var1720=$r1, var1960=$z0, var975=java.lang.IllegalArgumentException, var1922=$r2, var1312=$r3, var2905=$r6, var3915=$r4, var2354=$r5, var1085=$r7, var1345=$r8}
; {r0=var2142, jdk.jfr.Event=var702, $r1=var1720, $z0=var1960, java.lang.IllegalArgumentException=var975, $r2=var1922, $r3=var1312, $r6=var2905, $r4=var3915, $r5=var2354, $r7=var1085, $r8=var1345}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$r1 = class "Ljdk/jfr/Event;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>(r0);	if $z0 == 0 goto (branch);	if r0 == class "Ljdk/jfr/Event;" goto $r2 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Must be a subclass to ");	$r4 = class "Ljdk/jfr/Event;";	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r2
;block_num 3