(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2503 0)
(declare-sort var2100 0)
(declare-sort var1338 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun delegate/1637303377 (var2503) var2100)
(declare-fun append/-1031950772 (String var1338) String)
(declare-fun cast-from-var2100-to-var1338 (var2100) var1338)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2503 var2503)
(declare-const var3684 var2503) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ThreadSafeSupplier 
(assert (not (= var3684 null-var2503)))
(define-const var1234 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1234)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1234!1 String)
(assert (= var1234!1 ""))
(assert true)
(define-const var1935 String (append/672562846 var1234!1 "Suppliers.synchronizedSupplier(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.synchronizedSupplier(") 
(declare-const var1234!2 String)
(assert (= var1234!2 (str.++ var1234!1 "Suppliers.synchronizedSupplier(")))
(define-const var1893 var2100 (delegate/1637303377 var3684)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ThreadSafeSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate> 
(assert true)
(define-const var786 String (append/-1031950772 var1935 (cast-from-var2100-to-var1338 var1893))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1935!1 String)
(assert (str.prefixof var1935 var1935!1))
(assert true)
(define-const var3987 String (append/672562846 var786 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var786!1 String)
(assert (= var786!1 (str.++ var786 ")")))
(assert true)
(define-const var3190 String (toString/-2075883882 var3987)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), delegate/1637303377=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ThreadSafeSupplier], com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2100-to-var1338=([com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2503=com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ThreadSafeSupplier, var3684=r1, var1234=$r0, var1935=$r3, var2100=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var1893=$r2, var1338=java.lang.Object, var786=$r4, var3987=$r5, var3190=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ThreadSafeSupplier=var2503, r1=var3684, $r0=var1234, $r3=var1935, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var2100, $r2=var1893, java.lang.Object=var1338, $r4=var786, $r5=var3987, $r6=var3190}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ThreadSafeSupplier;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.synchronizedSupplier(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ThreadSafeSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1