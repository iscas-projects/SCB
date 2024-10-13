(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var893 0)
(declare-sort var512 0)
(declare-sort var1372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun delegate/106059813 (var893) var512)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var512-to-var1372 (var512) var1372)
(declare-fun append/-1031950772 (String var1372) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var893 var893)
(declare-const var893-SUCCESSFULLY_COMPUTED var512)
(declare-const var3519 var893) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier 
(assert (not (= var3519 null-var893)))
(define-const var1522 var512 (delegate/106059813 var3519)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate> 
(define-const var3782 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3782)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3782!1 String)
(assert (= var3782!1 ""))
(assert true)
(define-const var1089 String (append/672562846 var3782!1 "Suppliers.memoize(")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoize(") 
(declare-const var3782!2 String)
(assert (= var3782!2 (str.++ var3782!1 "Suppliers.memoize(")))
(define-const var2318 var512 var893-SUCCESSFULLY_COMPUTED) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier SUCCESSFULLY_COMPUTED> 
 ; Statement: if r1 != $r3 goto $r13 = r1 
(assert (not (= var1522 var2318))) ; Cond: r1 != $r3 
(define-const var3768 var1372 (cast-from-var512-to-var1372 var1522)) ; Statement: $r13 = r1 
(assert true) ; Non Conditional
(assert true)
(define-const var711 String (append/-1031950772 var1089 var3768)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var1089!1 String)
(assert (str.prefixof var1089 var1089!1))
(assert true)
(define-const var1269 String (append/672562846 var711 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var711!1 String)
(assert (= var711!1 (str.++ var711 ")")))
(assert true)
(define-const var1818 String (toString/-2075883882 var1269)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {delegate/106059813=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier], com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var512-to-var1372=([com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var893=com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier, var3519=r0, var512=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var1522=r1, var3782=$r2, var1089=$r4, var2318=$r3, var1372=java.lang.Object, var3768=$r13, var711=$r5, var1269=$r6, var1818=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier=var893, r0=var3519, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var512, r1=var1522, $r2=var3782, $r4=var1089, $r3=var2318, java.lang.Object=var1372, $r13=var3768, $r5=var711, $r6=var1269, $r7=var1818}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoize(");	$r3 = <com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier SUCCESSFULLY_COMPUTED>;	if r1 != $r3 goto $r13 = r1;	$r13 = r1;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3