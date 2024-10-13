(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3490 0)
(declare-sort var616 0)
(declare-sort var267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun initialized/2110716053 (var3490) Bool)
(declare-fun cast-from-var267-to-var616 (var267) var616)
(declare-fun delegate/2110716053 (var3490) var267)
(declare-fun append/-1031950772 (String var616) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3490 var3490)
(declare-const var1517 var3490) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier 
(assert (not (= var1517 null-var3490)))
(define-const var2802 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2802)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2802!1 String)
(assert (= var2802!1 ""))
(assert true)
(define-const var2891 String (append/672562846 var2802!1 "Suppliers.memoize(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoize(") 
(declare-const var2802!2 String)
(assert (= var2802!2 (str.++ var2802!1 "Suppliers.memoize(")))
(define-const var3432 Bool (initialized/2110716053 var1517)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: boolean initialized> 
 ; Statement: if $z0 == 0 goto $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate> 
(assert (= (ite var3432 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1697 var616 (cast-from-var267-to-var616 (delegate/2110716053 var1517))) ; Statement: $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate> 
(assert true) ; Non Conditional
(assert true)
(define-const var1326 String (append/-1031950772 var2891 var1697)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var2891!1 String)
(assert (str.prefixof var2891 var2891!1))
(assert true)
(define-const var381 String (append/672562846 var1326 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1326!1 String)
(assert (= var1326!1 (str.++ var1326 ")")))
(assert true)
(define-const var1391 String (toString/-2075883882 var381)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), initialized/2110716053=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier], boolean), cast-from-var267-to-var616=([com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier], java.lang.Object), delegate/2110716053=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier], com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3490=com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier, var1517=r1, var2802=$r0, var2891=$r2, var3432=$z0, var616=java.lang.Object, var267=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var1697=$r11, var1326=$r3, var381=$r4, var1391=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier=var3490, r1=var1517, $r0=var2802, $r2=var2891, $z0=var3432, java.lang.Object=var616, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var267, $r11=var1697, $r3=var1326, $r4=var381, $r5=var1391}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoize(");	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: boolean initialized>;	if $z0 == 0 goto $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate>;	$r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3