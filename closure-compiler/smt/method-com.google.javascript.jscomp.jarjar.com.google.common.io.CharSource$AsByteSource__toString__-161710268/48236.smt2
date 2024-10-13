(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3450 0)
(declare-sort var2052 0)
(declare-sort var3742 0)
(declare-sort var2362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/816207532 (var3450) var2052)
(declare-fun toString/-522406933 (var3742) String)
(declare-fun cast-from-var2052-to-var3742 (var2052) var3742)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun charset/816207532 (var3450) var2362)
(declare-fun append/-1031950772 (String var3742) String)
(declare-fun cast-from-var2362-to-var3742 (var2362) var3742)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3450 var3450)
(declare-const var698 var3450) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource 
(assert (not (= var698 null-var3450)))
(define-const var1889 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1889)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1889!1 String)
(assert (= var1889!1 ""))
(define-const var2888 var2052 (this$0/816207532 var698)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource this$0> 
(assert true)
(define-const var3891 String (toString/-522406933 (cast-from-var2052-to-var3742 var2888))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2965 String (append/672562846 var1889!1 var3891)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1889!2 String)
(assert (= var1889!2 (str.++ var1889!1 var3891)))
(assert true)
(define-const var3060 String (append/672562846 var2965 ".asByteSource(")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".asByteSource(") 
(declare-const var2965!1 String)
(assert (= var2965!1 (str.++ var2965 ".asByteSource(")))
(define-const var667 var2362 (charset/816207532 var698)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource: java.nio.charset.Charset charset> 
(assert true)
(define-const var1381 String (append/-1031950772 var3060 (cast-from-var2362-to-var3742 var667))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3060!1 String)
(assert (str.prefixof var3060 var3060!1))
(assert true)
(define-const var184 String (append/672562846 var1381 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1381!1 String)
(assert (= var1381!1 (str.++ var1381 ")")))
(assert true)
(define-const var3999 String (toString/-2075883882 var184)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/816207532=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource], com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2052-to-var3742=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charset/816207532=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource], java.nio.charset.Charset), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2362-to-var3742=([java.nio.charset.Charset], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3450=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource, var698=r1, var1889=$r0, var2052=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource, var2888=$r2, var3742=java.lang.Object, var3891=$r3, var2965=$r4, var3060=$r6, var2362=java.nio.charset.Charset, var667=$r5, var1381=$r7, var184=$r8, var3999=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource=var3450, r1=var698, $r0=var1889, com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource=var2052, $r2=var2888, java.lang.Object=var3742, $r3=var3891, $r4=var2965, $r6=var3060, java.nio.charset.Charset=var2362, $r5=var667, $r7=var1381, $r8=var184, $r9=var3999}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource this$0>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".asByteSource(");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSource$AsByteSource: java.nio.charset.Charset charset>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1