(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2221 0)
(declare-sort var1351 0)
(declare-sort var2724 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun delegate/502641625 (var2221) var1351)
(declare-fun append/-1031950772 (String var2724) String)
(declare-fun cast-from-var1351-to-var2724 (var1351) var2724)
(declare-fun durationNanos/502641625 (var2221) Int)
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2221 var2221)
(declare-const var1928 var2221) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier 
(assert (not (= var1928 null-var2221)))
(define-const var2117 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2117)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2117!1 String)
(assert (= var2117!1 ""))
(assert true)
(define-const var1926 String (append/672562846 var2117!1 "Suppliers.memoizeWithExpiration(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoizeWithExpiration(") 
(declare-const var2117!2 String)
(assert (= var2117!2 (str.++ var2117!1 "Suppliers.memoizeWithExpiration(")))
(define-const var1455 var1351 (delegate/502641625 var1928)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate> 
(assert true)
(define-const var1334 String (append/-1031950772 var1926 (cast-from-var1351-to-var2724 var1455))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var1926!1 String)
(assert (str.prefixof var1926 var1926!1))
(assert true)
(define-const var3353 String (append/672562846 var1334 ", ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1334!1 String)
(assert (= var1334!1 (str.++ var1334 ", ")))
(define-const var2076 Int (durationNanos/502641625 var1928)) ; Statement: $l0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier: long durationNanos> 
(assert true)
(define-const var3413 String (append/-901862667 var3353 var2076)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3353!1 String)
(assert (str.prefixof var3353 var3353!1))
(assert true)
(define-const var244 String (append/672562846 var3413 ", NANOS)")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", NANOS)") 
(declare-const var3413!1 String)
(assert (= var3413!1 (str.++ var3413 ", NANOS)")))
(assert true)
(define-const var3972 String (toString/-2075883882 var244)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), delegate/502641625=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier], com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1351-to-var2724=([com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier], java.lang.Object), durationNanos/502641625=([com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2221=com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier, var1928=r1, var2117=$r0, var1926=$r3, var1351=com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier, var1455=$r2, var2724=java.lang.Object, var1334=$r4, var3353=$r5, var2076=$l0, var3413=$r6, var244=$r7, var3972=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier=var2221, r1=var1928, $r0=var2117, $r3=var1926, com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier=var1351, $r2=var1455, java.lang.Object=var2724, $r4=var1334, $r5=var3353, $l0=var2076, $r6=var3413, $r7=var244, $r8=var3972}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Suppliers.memoizeWithExpiration(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier: com.google.javascript.jscomp.jarjar.com.google.common.base.Supplier delegate>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$l0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Suppliers$ExpiringMemoizingSupplier: long durationNanos>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", NANOS)");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1