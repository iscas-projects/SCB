(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1741 0)
(declare-sort var1441 0)
(declare-sort var926 0)
(declare-sort var346 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun function/-1543531184 (var1741) var1441)
(declare-fun append/-1031950772 (String var926) String)
(declare-fun cast-from-var1441-to-var926 (var1441) var926)
(declare-fun supplier/-1543531184 (var1741) var346)
(declare-fun cast-from-var346-to-var926 (var346) var926)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1741 var1741)
(declare-const var46 var1741) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition 
(assert (not (= var46 null-var1741)))
(define-const var18 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var18)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var18!1 String)
(assert (= var18!1 ""))
(assert true)
(define-const var2512 String (append/672562846 var18!1 "Suppliers.compose(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.compose(") 
(declare-const var18!2 String)
(assert (= var18!2 (str.++ var18!1 "Suppliers.compose(")))
(define-const var3453 var1441 (function/-1543531184 var46)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Function function> 
(assert true)
(define-const var1004 String (append/-1031950772 var2512 (cast-from-var1441-to-var926 var3453))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2512!1 String)
(assert (str.prefixof var2512 var2512!1))
(assert true)
(define-const var481 String (append/672562846 var1004 ", ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1004!1 String)
(assert (= var1004!1 (str.++ var1004 ", ")))
(define-const var3855 var346 (supplier/-1543531184 var46)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier supplier> 
(assert true)
(define-const var3202 String (append/-1031950772 var481 (cast-from-var346-to-var926 var3855))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var481!1 String)
(assert (str.prefixof var481 var481!1))
(assert true)
(define-const var3989 String (append/672562846 var3202 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3202!1 String)
(assert (= var3202!1 (str.++ var3202 ")")))
(assert true)
(define-const var1863 String (toString/-2075883882 var3989)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), function/-1543531184=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition], com.google.javascript.jscomp.jarjar.com.google.common.base.Function), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1441-to-var926=([com.google.javascript.jscomp.jarjar.com.google.common.base.Function], java.lang.Object), supplier/-1543531184=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition], com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier), cast-from-var346-to-var926=([com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1741=com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition, var46=r1, var18=$r0, var2512=$r3, var1441=com.google.javascript.jscomp.jarjar.com.google.common.base.Function, var3453=$r2, var926=java.lang.Object, var1004=$r4, var481=$r6, var346=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var3855=$r5, var3202=$r7, var3989=$r8, var1863=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition=var1741, r1=var46, $r0=var18, $r3=var2512, com.google.javascript.jscomp.jarjar.com.google.common.base.Function=var1441, $r2=var3453, java.lang.Object=var926, $r4=var1004, $r6=var481, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var346, $r5=var3855, $r7=var3202, $r8=var3989, $r9=var1863}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.compose(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Function function>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$SupplierComposition: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier supplier>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1