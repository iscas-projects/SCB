(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun var1484-init () var1484)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1484 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const var20 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var20 null-ClassObject)))
(assert true)
(define-const var2191 Bool (isPrimitive/-473230874 var20)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 != 0 goto $r1 = <java.lang.Boolean: java.lang.Class TYPE> 
(assert (not (not (= (ite var2191 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var95 var1484 var1484-init) ; Statement: $r25 = new java.lang.IllegalArgumentException 
(define-const var2302 String String-init) ; Statement: $r26 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2302)) ; Statement: specialinvoke $r26.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2302!1 String)
(assert (= var2302!1 ""))
(assert true)
(define-const var1227 String (append/672562846 var2302!1 "Given class is not a primitive type : ")) ; Statement: $r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given class is not a primitive type : ") 
(declare-const var2302!2 String)
(assert (= var2302!2 (str.++ var2302!1 "Given class is not a primitive type : ")))
(assert true)
(define-const var518 String (getName/-1958580599 var20)) ; Statement: $r27 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1316 String (append/672562846 var1227 var518)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27) 
(declare-const var1227!1 String)
(assert (= var1227!1 (str.++ var1227 var518)))
(assert true)
(define-const var2457 String (toString/-2075883882 var1316)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var95 var2457)) ; Statement: specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r30) 

(declare-const var95!1 var1484)
(declare-const var2457!1 String)
 ; Statement: throw $r25 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/-473230874=([java.lang.Class], boolean), var1484-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var20=r0, var2191=$z0, var1484=java.lang.IllegalArgumentException, var95=$r25, var2302=$r26, var1227=$r28, var518=$r27, var1316=$r29, var2457=$r30}
; {r0=var20, $z0=var2191, java.lang.IllegalArgumentException=var1484, $r25=var95, $r26=var2302, $r28=var1227, $r27=var518, $r29=var1316, $r30=var2457}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>();	if $z0 != 0 goto $r1 = <java.lang.Boolean: java.lang.Class TYPE>;	$r25 = new java.lang.IllegalArgumentException;	$r26 = new java.lang.StringBuilder;	specialinvoke $r26.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given class is not a primitive type : ");	$r27 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r27);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r25.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r30);	throw $r25
;block_num 2