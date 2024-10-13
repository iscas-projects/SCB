(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3603 0)
(declare-sort var3581 0)
(declare-sort var3267 0)
(declare-sort var123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3603_checkInstantiable/1616375362 (ClassObject) String)
(declare-fun var3267-init () var3267)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/582965326 (var3267 var123) void)
(declare-fun cast-from-String-to-var123 (String) var123)
(declare-const null-ClassObject ClassObject)
(declare-const null-String String)
(declare-const var2917 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var2917 null-ClassObject)))
(define-const var489 String (var3603_checkInstantiable/1616375362 var2917)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator: java.lang.String checkInstantiable(java.lang.Class)>(r0) 
 ; Statement: if r1 == null goto return 
(assert (not (= var489 null-String))) ; Negate: Cond: r1 == null  
(define-const var300 var3267 var3267-init) ; Statement: $r2 = new java.lang.AssertionError 
(define-const var1782 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1782)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1782!1 String)
(assert (= var1782!1 ""))
(assert true)
(define-const var2533 String (append/672562846 var1782!1 "UnsafeAllocator is used for non-instantiable type: ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsafeAllocator is used for non-instantiable type: ") 
(declare-const var1782!2 String)
(assert (= var1782!2 (str.++ var1782!1 "UnsafeAllocator is used for non-instantiable type: ")))
(assert true)
(define-const var852 String (append/672562846 var2533 var489)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2533!1 String)
(assert (= var2533!1 (str.++ var2533 var489)))
(assert true)
(define-const var2202 String (toString/-2075883882 var852)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/582965326 var300 (cast-from-String-to-var123 var2202))) ; Statement: specialinvoke $r2.<java.lang.AssertionError: void <init>(java.lang.Object)>($r6) 

(declare-const var300!1 var3267)
(declare-const var2202!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3603_checkInstantiable/1616375362=([java.lang.Class], java.lang.String), var3267-init=([], java.lang.AssertionError), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/582965326=([java.lang.AssertionError, java.lang.Object], void), cast-from-String-to-var123=([java.lang.String], java.lang.Object)}
; {var2917=r0, var3603=com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator, var489=r1, var3581=null_type, var3267=java.lang.AssertionError, var300=$r2, var1782=$r3, var2533=$r4, var852=$r5, var2202=$r6, var123=java.lang.Object}
; {r0=var2917, com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator=var3603, r1=var489, null_type=var3581, java.lang.AssertionError=var3267, $r2=var300, $r3=var1782, $r4=var2533, $r5=var852, $r6=var2202, java.lang.Object=var123}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.Class;	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.gson.internal.UnsafeAllocator: java.lang.String checkInstantiable(java.lang.Class)>(r0);	if r1 == null goto return;	$r2 = new java.lang.AssertionError;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("UnsafeAllocator is used for non-instantiable type: ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.AssertionError: void <init>(java.lang.Object)>($r6);	throw $r2
;block_num 2