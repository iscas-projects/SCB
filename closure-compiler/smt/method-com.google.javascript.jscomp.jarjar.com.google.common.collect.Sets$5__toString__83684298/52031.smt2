(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2751 0)
(declare-sort var2098 0)
(declare-sort var3820 0)
(declare-sort var3129 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$index/-36841550 (var2751) var2098)
(declare-fun keySet/-1809185322 (var2098) var3820)
(declare-fun append/-1031950772 (String var3129) String)
(declare-fun cast-from-var3820-to-var3129 (var3820) var3129)
(declare-fun val$size/-36841550 (var2751) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2751 var2751)
(declare-const var1095 var2751) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5 
(assert (not (= var1095 null-var2751)))
(define-const var878 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var878)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var878!1 String)
(assert (= var878!1 ""))
(assert true)
(define-const var269 String (append/672562846 var878!1 "Sets.combinations(")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sets.combinations(") 
(declare-const var878!2 String)
(assert (= var878!2 (str.++ var878!1 "Sets.combinations(")))
(define-const var1406 var2098 (val$index/-36841550 var1095)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap val$index> 
(assert true)
(define-const var1093 var3820 (keySet/-1809185322 var1406)) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet keySet()>() 
(assert true)
(define-const var1854 String (append/-1031950772 var269 (cast-from-var3820-to-var3129 var1093))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var269!1 String)
(assert (str.prefixof var269 var269!1))
(assert true)
(define-const var3764 String (append/672562846 var1854 ", ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1854!1 String)
(assert (= var1854!1 (str.++ var1854 ", ")))
(define-const var3988 Int (val$size/-36841550 var1095)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5: int val$size> 
(assert true)
(define-const var3633 String (append/-1001720160 var3764 var3988)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3764!1 String)
(assert (str.prefixof var3764 var3764!1))
(assert true)
(define-const var2681 String (append/672562846 var3633 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3633!1 String)
(assert (= var3633!1 (str.++ var3633 ")")))
(assert true)
(define-const var3396 String (toString/-2075883882 var2681)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$index/-36841550=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), keySet/-1809185322=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3820-to-var3129=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], java.lang.Object), val$size/-36841550=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2751=com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5, var1095=r1, var878=$r0, var269=$r4, var2098=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1406=$r2, var3820=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1093=$r3, var3129=java.lang.Object, var1854=$r5, var3764=$r6, var3988=$i0, var3633=$r7, var2681=$r8, var3396=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5=var2751, r1=var1095, $r0=var878, $r4=var269, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2098, $r2=var1406, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3820, $r3=var1093, java.lang.Object=var3129, $r5=var1854, $r6=var3764, $i0=var3988, $r7=var3633, $r8=var2681, $r9=var3396}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Sets.combinations(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap val$index>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet keySet()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.collect.Sets$5: int val$size>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1