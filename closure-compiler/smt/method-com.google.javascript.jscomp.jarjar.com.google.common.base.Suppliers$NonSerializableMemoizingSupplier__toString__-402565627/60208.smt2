(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1831 0)
(declare-sort var2688 0)
(declare-sort var3242 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun delegate/106059813 (var1831) var2688)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/106059813 (var1831) var3242)
(declare-fun append/-1031950772 (String var3242) String)
(declare-fun cast-from-String-to-var3242 (String) var3242)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1831 var1831)
(declare-const var1831-SUCCESSFULLY_COMPUTED var2688)
(declare-const var697 var1831) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier 
(assert (not (= var697 null-var1831)))
(define-const var955 var2688 (delegate/106059813 var697)) ; Statement: r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate> 
(define-const var961 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var961)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var961!1 String)
(assert (= var961!1 ""))
(assert true)
(define-const var3220 String (append/672562846 var961!1 "Suppliers.memoize(")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoize(") 
(declare-const var961!2 String)
(assert (= var961!2 (str.++ var961!1 "Suppliers.memoize(")))
(define-const var930 var2688 var1831-SUCCESSFULLY_COMPUTED) ; Statement: $r3 = <com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier SUCCESSFULLY_COMPUTED> 
 ; Statement: if r1 != $r3 goto $r13 = r1 
(assert (not (not (= var955 var930)))) ; Negate: Cond: r1 != $r3  
(define-const var1028 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1028)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1028!1 String)
(assert (= var1028!1 ""))
(assert true)
(define-const var3894 String (append/672562846 var1028!1 "<supplier that returned ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<supplier that returned ") 
(declare-const var1028!2 String)
(assert (= var1028!2 (str.++ var1028!1 "<supplier that returned ")))
(define-const var3290 var3242 (value/106059813 var697)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: java.lang.Object value> 
(assert true)
(define-const var2536 String (append/-1031950772 var3894 var3290)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var3894!1 String)
(assert (str.prefixof var3894 var3894!1))
(assert true)
(define-const var1221 String (append/672562846 var2536 ">")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var2536!1 String)
(assert (= var2536!1 (str.++ var2536 ">")))
(assert true)
(define-const var3809 var3242 (cast-from-String-to-var3242 (toString/-2075883882 var1221))) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1784 String (append/-1031950772 var3220 var3809)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var3220!1 String)
(assert (str.prefixof var3220 var3220!1))
(assert true)
(define-const var225 String (append/672562846 var1784 ")")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1784!1 String)
(assert (= var1784!1 (str.++ var1784 ")")))
(assert true)
(define-const var1336 String (toString/-2075883882 var225)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {delegate/106059813=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier], com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/106059813=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var3242=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1831=com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier, var697=r0, var2688=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var955=r1, var961=$r2, var3220=$r4, var930=$r3, var1028=$r8, var3894=$r10, var3242=java.lang.Object, var3290=$r9, var2536=$r11, var1221=$r12, var3809=$r13, var1784=$r5, var225=$r6, var1336=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier=var1831, r0=var697, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var2688, r1=var955, $r2=var961, $r4=var3220, $r3=var930, $r8=var1028, $r10=var3894, java.lang.Object=var3242, $r9=var3290, $r11=var2536, $r12=var1221, $r13=var3809, $r5=var1784, $r6=var225, $r7=var1336}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier;	r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoize(");	$r3 = <com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier SUCCESSFULLY_COMPUTED>;	if r1 != $r3 goto $r13 = r1;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<supplier that returned ");	$r9 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$NonSerializableMemoizingSupplier: java.lang.Object value>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13)];	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3