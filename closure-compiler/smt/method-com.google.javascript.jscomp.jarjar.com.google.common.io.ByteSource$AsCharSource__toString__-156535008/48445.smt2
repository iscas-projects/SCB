(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3779 0)
(declare-sort var2673 0)
(declare-sort var1191 0)
(declare-sort var3567 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/389101448 (var3779) var2673)
(declare-fun toString/-522406933 (var1191) String)
(declare-fun cast-from-var2673-to-var1191 (var2673) var1191)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun charset/389101448 (var3779) var3567)
(declare-fun append/-1031950772 (String var1191) String)
(declare-fun cast-from-var3567-to-var1191 (var3567) var1191)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3779 var3779)
(declare-const var2326 var3779) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource 
(assert (not (= var2326 null-var3779)))
(define-const var2156 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2156)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2156!1 String)
(assert (= var2156!1 ""))
(define-const var2061 var2673 (this$0/389101448 var2326)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource this$0> 
(assert true)
(define-const var3600 String (toString/-522406933 (cast-from-var2673-to-var1191 var2061))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2135 String (append/672562846 var2156!1 var3600)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2156!2 String)
(assert (= var2156!2 (str.++ var2156!1 var3600)))
(assert true)
(define-const var3185 String (append/672562846 var2135 ".asCharSource(")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".asCharSource(") 
(declare-const var2135!1 String)
(assert (= var2135!1 (str.++ var2135 ".asCharSource(")))
(define-const var935 var3567 (charset/389101448 var2326)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource: java.nio.charset.Charset charset> 
(assert true)
(define-const var2629 String (append/-1031950772 var3185 (cast-from-var3567-to-var1191 var935))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3185!1 String)
(assert (str.prefixof var3185 var3185!1))
(assert true)
(define-const var1609 String (append/672562846 var2629 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2629!1 String)
(assert (= var2629!1 (str.++ var2629 ")")))
(assert true)
(define-const var892 String (toString/-2075883882 var1609)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/389101448=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource], com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2673-to-var1191=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), charset/389101448=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource], java.nio.charset.Charset), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3567-to-var1191=([java.nio.charset.Charset], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3779=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource, var2326=r1, var2156=$r0, var2673=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource, var2061=$r2, var1191=java.lang.Object, var3600=$r3, var2135=$r4, var3185=$r6, var3567=java.nio.charset.Charset, var935=$r5, var2629=$r7, var1609=$r8, var892=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource=var3779, r1=var2326, $r0=var2156, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource=var2673, $r2=var2061, java.lang.Object=var1191, $r3=var3600, $r4=var2135, $r6=var3185, java.nio.charset.Charset=var3567, $r5=var935, $r7=var2629, $r8=var1609, $r9=var892}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource this$0>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".asCharSource(");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$AsCharSource: java.nio.charset.Charset charset>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1