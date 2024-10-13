(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1593 0)
(declare-sort var911 0)
(declare-sort var144 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun supplier/-2106947330 (var1593) var911)
(declare-fun append/-1031950772 (String var144) String)
(declare-fun cast-from-var911-to-var144 (var911) var144)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1593 var1593)
(declare-const var460 var1593) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$SupplierFunction 
(assert (not (= var460 null-var1593)))
(define-const var2911 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2911)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2911!1 String)
(assert (= var2911!1 ""))
(assert true)
(define-const var2055 String (append/672562846 var2911!1 "Functions.forSupplier(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.forSupplier(") 
(declare-const var2911!2 String)
(assert (= var2911!2 (str.++ var2911!1 "Functions.forSupplier(")))
(define-const var1253 var911 (supplier/-2106947330 var460)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$SupplierFunction: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier supplier> 
(assert true)
(define-const var307 String (append/-1031950772 var2055 (cast-from-var911-to-var144 var1253))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2055!1 String)
(assert (str.prefixof var2055 var2055!1))
(assert true)
(define-const var2009 String (append/672562846 var307 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var307!1 String)
(assert (= var307!1 (str.++ var307 ")")))
(assert true)
(define-const var3231 String (toString/-2075883882 var2009)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), supplier/-2106947330=([com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$SupplierFunction], com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var911-to-var144=([com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1593=com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$SupplierFunction, var460=r1, var2911=$r0, var2055=$r3, var911=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var1253=$r2, var144=java.lang.Object, var307=$r4, var2009=$r5, var3231=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$SupplierFunction=var1593, r1=var460, $r0=var2911, $r3=var2055, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var911, $r2=var1253, java.lang.Object=var144, $r4=var307, $r5=var2009, $r6=var3231}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$SupplierFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.forSupplier(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$SupplierFunction: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier supplier>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1