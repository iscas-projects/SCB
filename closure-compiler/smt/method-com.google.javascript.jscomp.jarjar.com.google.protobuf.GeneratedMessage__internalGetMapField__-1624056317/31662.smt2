(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3758 0)
(declare-sort var2535 0)
(declare-sort var301 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2535-init () var2535)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var301) ClassObject)
(declare-fun cast-from-var3758-to-var301 (var3758) var301)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var2535 String) void)
(declare-const null-var3758 var3758)
(declare-const null-Int Int)
(declare-const var1072 var3758) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage 
(assert (not (= var1072 null-var3758)))
(declare-const var1143 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1143 null-Int)))
(define-const var2881 var2535 var2535-init) ; Statement: $r0 = new java.lang.RuntimeException 
(define-const var2482 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2482)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2482!1 String)
(assert (= var2482!1 ""))
(assert true)
(define-const var2802 String (append/672562846 var2482!1 "No map fields found in ")) ; Statement: $r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ") 
(declare-const var2482!2 String)
(assert (= var2482!2 (str.++ var2482!1 "No map fields found in ")))
(assert true)
(define-const var3041 ClassObject (getClass/1258963082 (cast-from-var3758-to-var301 var1072))) ; Statement: $r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1834 String (getName/-1958580599 var3041)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2661 String (append/672562846 var2802 var1834)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2802!1 String)
(assert (= var2802!1 (str.++ var2802 var1834)))
(assert true)
(define-const var805 String (toString/-2075883882 var2661)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2881 var805)) ; Statement: specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7) 

(declare-const var2881!1 var2535)
(declare-const var805!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2535-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3758-to-var301=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var3758=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage, var1072=r2, var1143=i0, var2535=java.lang.RuntimeException, var2881=$r0, var2482=$r1, var2802=$r5, var301=java.lang.Object, var3041=$r3, var1834=$r4, var2661=$r6, var805=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage=var3758, r2=var1072, i0=var1143, java.lang.RuntimeException=var2535, $r0=var2881, $r1=var2482, $r5=var2802, java.lang.Object=var301, $r3=var3041, $r4=var1834, $r6=var2661, $r7=var805}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessage;	i0 := @parameter0: int;	$r0 = new java.lang.RuntimeException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No map fields found in ");	$r3 = virtualinvoke r2.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r7);	throw $r0
;block_num 1