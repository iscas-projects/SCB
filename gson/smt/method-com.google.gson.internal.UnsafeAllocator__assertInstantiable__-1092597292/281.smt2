(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var210 0)
(declare-sort var1538 0)
(declare-sort var1433 0)
(declare-sort var2061 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var210_checkInstantiable/789342880 (ClassObject) String)
(declare-fun var1433-init () var1433)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var1433 var2061) void)
(declare-fun cast-from-String-to-var2061 (String) var2061)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var70 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var70 null-ClassObject)))
(define-const var2069 String (var210_checkInstantiable/789342880 var70)) ; Statement: r1 = staticinvoke <com.google.gson.internal.ConstructorConstructor: java.lang.String checkInstantiable(java.lang.Class)>(r0) 
 ; Statement: if r1 == null goto return 
(assert (not (= var2069 null-String))) ; Negate: Cond: r1 == null  
(define-const var1799 var1433 var1433-init) ; Statement: $r2 = new java.lang.AssertionError 
(define-const var2959 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2959)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2959!1 String)
(assert (= var2959!1 ""))
(assert true)
(define-const var550 String (append/672562846 var2959!1 "UnsafeAllocator is used for non-instantiable type: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsafeAllocator is used for non-instantiable type: ") 
(declare-const var2959!2 String)
(assert (= var2959!2 (str.++ var2959!1 "UnsafeAllocator is used for non-instantiable type: ")))
(assert true)
(define-const var595 String (append/672562846 var550 var2069)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var550!1 String)
(assert (= var550!1 (str.++ var550 var2069)))
(assert true)
(define-const var2404 String (toString/-2075883882 var595)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var1799 (cast-from-String-to-var2061 var2404))) ; Statement: specialinvoke $r2.<java.lang.AssertionError: void <init>(java.lang.Object)>($r6) 

(declare-const var1799!1 var1433)
(declare-const var2404!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var210_checkInstantiable/789342880=([java.lang.Class], java.lang.String), var1433-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var2061=([java.lang.String], java.lang.Object)}
; {var70=r0, var210=com.google.gson.internal.ConstructorConstructor, var2069=r1, var1538=null_type, var1433=java.lang.AssertionError, var1799=$r2, var2959=$r3, var550=$r4, var595=$r5, var2404=$r6, var2061=java.lang.Object}
; {r0=var70, com.google.gson.internal.ConstructorConstructor=var210, r1=var2069, null_type=var1538, java.lang.AssertionError=var1433, $r2=var1799, $r3=var2959, $r4=var550, $r5=var595, $r6=var2404, java.lang.Object=var2061}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.google.gson.internal.ConstructorConstructor: java.lang.String checkInstantiable(java.lang.Class)>(r0);	if r1 == null goto return;	$r2 = new java.lang.AssertionError;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsafeAllocator is used for non-instantiable type: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.AssertionError: void <init>(java.lang.Object)>($r6);	throw $r2
;block_num 2