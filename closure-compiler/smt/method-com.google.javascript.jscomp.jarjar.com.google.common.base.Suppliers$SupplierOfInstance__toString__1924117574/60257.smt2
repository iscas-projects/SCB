(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3268 0)
(declare-sort var1722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun instance/-1080449242 (var3268) var1722)
(declare-fun append/-1031950772 (String var1722) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3268 var3268)
(declare-const var443 var3268) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierOfInstance 
(assert (not (= var443 null-var3268)))
(define-const var2750 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2750)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2750!1 String)
(assert (= var2750!1 ""))
(assert true)
(define-const var1325 String (append/672562846 var2750!1 "Suppliers.ofInstance(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.ofInstance(") 
(declare-const var2750!2 String)
(assert (= var2750!2 (str.++ var2750!1 "Suppliers.ofInstance(")))
(define-const var2475 var1722 (instance/-1080449242 var443)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierOfInstance: java.lang.Object instance> 
(assert true)
(define-const var3828 String (append/-1031950772 var1325 var2475)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1325!1 String)
(assert (str.prefixof var1325 var1325!1))
(assert true)
(define-const var493 String (append/672562846 var3828 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3828!1 String)
(assert (= var3828!1 (str.++ var3828 ")")))
(assert true)
(define-const var1524 String (toString/-2075883882 var493)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), instance/-1080449242=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierOfInstance], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3268=com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierOfInstance, var443=r1, var2750=$r0, var1325=$r3, var1722=java.lang.Object, var2475=$r2, var3828=$r4, var493=$r5, var1524=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierOfInstance=var3268, r1=var443, $r0=var2750, $r3=var1325, java.lang.Object=var1722, $r2=var2475, $r4=var3828, $r5=var493, $r6=var1524}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierOfInstance;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.ofInstance(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierOfInstance: java.lang.Object instance>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1