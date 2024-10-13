(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2720 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun seed/1819720381 (var2720) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2720 var2720)
(declare-const var81 var2720) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_128HashFunction 
(assert (not (= var81 null-var2720)))
(define-const var3804 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3804)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3804!1 String)
(assert (= var3804!1 ""))
(assert true)
(define-const var2978 String (append/672562846 var3804!1 "Hashing.murmur3_128(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hashing.murmur3_128(") 
(declare-const var3804!2 String)
(assert (= var3804!2 (str.++ var3804!1 "Hashing.murmur3_128(")))
(define-const var785 Int (seed/1819720381 var81)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_128HashFunction: int seed> 
(assert true)
(define-const var3887 String (append/-1001720160 var2978 var785)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2978!1 String)
(assert (str.prefixof var2978 var2978!1))
(assert true)
(define-const var2932 String (append/672562846 var3887 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3887!1 String)
(assert (= var3887!1 (str.++ var3887 ")")))
(assert true)
(define-const var1829 String (toString/-2075883882 var2932)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), seed/1819720381=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_128HashFunction], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2720=com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_128HashFunction, var81=r1, var3804=$r0, var2978=$r2, var785=$i0, var3887=$r3, var2932=$r4, var1829=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_128HashFunction=var2720, r1=var81, $r0=var3804, $r2=var2978, $i0=var785, $r3=var3887, $r4=var2932, $r5=var1829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_128HashFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hashing.murmur3_128(");	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_128HashFunction: int seed>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1