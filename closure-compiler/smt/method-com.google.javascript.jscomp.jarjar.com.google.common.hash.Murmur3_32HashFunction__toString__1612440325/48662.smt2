(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1710 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun seed/1055742757 (var1710) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1710 var1710)
(declare-const var986 var1710) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction 
(assert (not (= var986 null-var1710)))
(define-const var1818 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1818)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1818!1 String)
(assert (= var1818!1 ""))
(assert true)
(define-const var3518 String (append/672562846 var1818!1 "Hashing.murmur3_32(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hashing.murmur3_32(") 
(declare-const var1818!2 String)
(assert (= var1818!2 (str.++ var1818!1 "Hashing.murmur3_32(")))
(define-const var1837 Int (seed/1055742757 var986)) ; Statement: $i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction: int seed> 
(assert true)
(define-const var3686 String (append/-1001720160 var3518 var1837)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var3518!1 String)
(assert (str.prefixof var3518 var3518!1))
(assert true)
(define-const var3744 String (append/672562846 var3686 ")")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var3686!1 String)
(assert (= var3686!1 (str.++ var3686 ")")))
(assert true)
(define-const var516 String (toString/-2075883882 var3744)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), seed/1055742757=([com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1710=com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction, var986=r1, var1818=$r0, var3518=$r2, var1837=$i0, var3686=$r3, var3744=$r4, var516=$r5}
; {com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction=var1710, r1=var986, $r0=var1818, $r2=var3518, $i0=var1837, $r3=var3686, $r4=var3744, $r5=var516}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Hashing.murmur3_32(");	$i0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.hash.Murmur3_32HashFunction: int seed>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1