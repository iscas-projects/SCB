(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2242 0)
(declare-sort var3090 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun initialized/2110716053 (var2242) Bool)
(declare-fun value/2110716053 (var2242) var3090)
(declare-fun append/-1031950772 (String var3090) String)
(declare-fun cast-from-String-to-var3090 (String) var3090)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2242 var2242)
(declare-const var785 var2242) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier 
(assert (not (= var785 null-var2242)))
(define-const var1243 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1243)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1243!1 String)
(assert (= var1243!1 ""))
(assert true)
(define-const var3398 String (append/672562846 var1243!1 "Suppliers.memoize(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoize(") 
(declare-const var1243!2 String)
(assert (= var1243!2 (str.++ var1243!1 "Suppliers.memoize(")))
(define-const var3116 Bool (initialized/2110716053 var785)) ; Statement: $z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: boolean initialized> 
 ; Statement: if $z0 == 0 goto $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate> 
(assert (not (= (ite var3116 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var100 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var100)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var100!1 String)
(assert (= var100!1 ""))
(assert true)
(define-const var624 String (append/672562846 var100!1 "<supplier that returned ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<supplier that returned ") 
(declare-const var100!2 String)
(assert (= var100!2 (str.++ var100!1 "<supplier that returned ")))
(define-const var1583 var3090 (value/2110716053 var785)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: java.lang.Object value> 
(assert true)
(define-const var3576 String (append/-1031950772 var624 var1583)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7) 
(declare-const var624!1 String)
(assert (str.prefixof var624 var624!1))
(assert true)
(define-const var1214 String (append/672562846 var3576 ">")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3576!1 String)
(assert (= var3576!1 (str.++ var3576 ">")))
(assert true)
(define-const var26 var3090 (cast-from-String-to-var3090 (toString/-2075883882 var1214))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11)] 
(assert true) ; Non Conditional
(assert true)
(define-const var582 String (append/-1031950772 var3398 var26)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11) 
(declare-const var3398!1 String)
(assert (str.prefixof var3398 var3398!1))
(assert true)
(define-const var2338 String (append/672562846 var582 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var582!1 String)
(assert (= var582!1 (str.++ var582 ")")))
(assert true)
(define-const var3379 String (toString/-2075883882 var2338)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), initialized/2110716053=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier], boolean), value/2110716053=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier], java.lang.Object), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-String-to-var3090=([java.lang.String], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2242=com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier, var785=r1, var1243=$r0, var3398=$r2, var3116=$z0, var100=$r6, var624=$r8, var3090=java.lang.Object, var1583=$r7, var3576=$r9, var1214=$r10, var26=$r11, var582=$r3, var2338=$r4, var3379=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier=var2242, r1=var785, $r0=var1243, $r2=var3398, $z0=var3116, $r6=var100, $r8=var624, java.lang.Object=var3090, $r7=var1583, $r9=var3576, $r10=var1214, $r11=var26, $r3=var582, $r4=var2338, $r5=var3379}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoize(");	$z0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: boolean initialized>;	if $z0 == 0 goto $r11 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate>;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<supplier that returned ");	$r7 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$MemoizingSupplier: java.lang.Object value>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r11);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3