(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isPrimitive/-473230874 (ClassObject) Bool)
(declare-fun var2947-init () var2947)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2947 String) void)
(declare-const null-ClassObject ClassObject)
(declare-const var1622 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var1622 null-ClassObject)))
(assert true)
(define-const var1128 Bool (isPrimitive/-473230874 var1622)) ; Statement: $z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>() 
 ; Statement: if $z0 == 0 goto $r1 = class "Ljava/lang/Boolean;" 
(assert (not (= (ite var1128 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var996 var2947 var2947-init) ; Statement: $r16 = new java.lang.IllegalArgumentException 
(define-const var3026 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3026)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3026!1 String)
(assert (= var3026!1 ""))
(assert true)
(define-const var3419 String (append/672562846 var3026!1 "Given class is a primitive type : ")) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given class is a primitive type : ") 
(declare-const var3026!2 String)
(assert (= var3026!2 (str.++ var3026!1 "Given class is a primitive type : ")))
(assert true)
(define-const var3086 String (getName/-1958580599 var1622)) ; Statement: $r18 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3137 String (append/672562846 var3419 var3086)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3419!1 String)
(assert (= var3419!1 (str.++ var3419 var3086)))
(assert true)
(define-const var2154 String (toString/-2075883882 var3137)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var996 var2154)) ; Statement: specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21) 

(declare-const var996!1 var2947)
(declare-const var2154!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {isPrimitive/-473230874=([java.lang.Class], boolean), var2947-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1622=r0, var1128=$z0, var2947=java.lang.IllegalArgumentException, var996=$r16, var3026=$r17, var3419=$r19, var3086=$r18, var3137=$r20, var2154=$r21}
; {r0=var1622, $z0=var1128, java.lang.IllegalArgumentException=var2947, $r16=var996, $r17=var3026, $r19=var3419, $r18=var3086, $r20=var3137, $r21=var2154}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	$z0 = virtualinvoke r0.<java.lang.Class: boolean isPrimitive()>();	if $z0 == 0 goto $r1 = class "Ljava/lang/Boolean;";	$r16 = new java.lang.IllegalArgumentException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Given class is a primitive type : ");	$r18 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r21);	throw $r16
;block_num 2