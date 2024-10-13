(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2959 0)
(declare-sort var3513 0)
(declare-sort var1245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getHandler/-524865107 (var2959 ClassObject) var3513)
(declare-fun var1245-init () var1245)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var1245 String) void)
(declare-const null-var2959 var2959)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3513 var3513)
(declare-const var417 var2959) ; Statement: r0 := @this: jdk.jfr.internal.MetadataRepository 
(assert (not (= var417 null-var2959)))
(declare-const var2578 ClassObject) ; Statement: r1 := @parameter0: java.lang.Class 
(assert (not (= var2578 null-ClassObject)))
(assert true)
(define-const var1712 var3513 (getHandler/-524865107 var417 var2578)) ; Statement: r2 = specialinvoke r0.<jdk.jfr.internal.MetadataRepository: jdk.jfr.internal.handlers.EventHandler getHandler(java.lang.Class)>(r1) 
 ; Statement: if r2 == null goto $r3 = new java.lang.IllegalStateException 
(assert (= var1712 null-var3513)) ; Cond: r2 == null 
(define-const var1136 var1245 var1245-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var1281 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1281)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1281!1 String)
(assert (= var1281!1 ""))
(assert true)
(define-const var1553 String (append/672562846 var1281!1 "Event class ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Event class ") 
(declare-const var1281!2 String)
(assert (= var1281!2 (str.++ var1281!1 "Event class ")))
(assert true)
(define-const var1849 String (getName/-1958580599 var2578)) ; Statement: $r5 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2059 String (append/672562846 var1553 var1849)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1553!1 String)
(assert (= var1553!1 (str.++ var1553 var1849)))
(assert true)
(define-const var1833 String (append/672562846 var2059 " is not registered")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not registered") 
(declare-const var2059!1 String)
(assert (= var2059!1 (str.++ var2059 " is not registered")))
(assert true)
(define-const var1231 String (toString/-2075883882 var1833)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1136 var1231)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var1136!1 var1245)
(declare-const var1231!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getHandler/-524865107=([jdk.jfr.internal.MetadataRepository, java.lang.Class], jdk.jfr.internal.handlers.EventHandler), var1245-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2959=jdk.jfr.internal.MetadataRepository, var417=r0, var2578=r1, var3513=jdk.jfr.internal.handlers.EventHandler, var1712=r2, var1245=java.lang.IllegalStateException, var1136=$r3, var1281=$r4, var1553=$r6, var1849=$r5, var2059=$r7, var1833=$r8, var1231=$r9}
; {jdk.jfr.internal.MetadataRepository=var2959, r0=var417, r1=var2578, jdk.jfr.internal.handlers.EventHandler=var3513, r2=var1712, java.lang.IllegalStateException=var1245, $r3=var1136, $r4=var1281, $r6=var1553, $r5=var1849, $r7=var2059, $r8=var1833, $r9=var1231}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: jdk.jfr.internal.MetadataRepository;	r1 := @parameter0: java.lang.Class;	r2 = specialinvoke r0.<jdk.jfr.internal.MetadataRepository: jdk.jfr.internal.handlers.EventHandler getHandler(java.lang.Class)>(r1);	if r2 == null goto $r3 = new java.lang.IllegalStateException;	$r3 = new java.lang.IllegalStateException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Event class ");	$r5 = virtualinvoke r1.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not registered");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r3
;block_num 2