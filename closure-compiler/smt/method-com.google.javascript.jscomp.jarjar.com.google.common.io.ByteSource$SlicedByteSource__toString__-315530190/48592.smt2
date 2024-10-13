(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3246 0)
(declare-sort var3989 0)
(declare-sort var618 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun this$0/-993169894 (var3246) var3989)
(declare-fun toString/-522406933 (var618) String)
(declare-fun cast-from-var3989-to-var618 (var3989) var618)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun offset/-993169894 (var3246) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun length/-993169894 (var3246) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3246 var3246)
(declare-const var1730 var3246) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource 
(assert (not (= var1730 null-var3246)))
(define-const var74 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var74)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var74!1 String)
(assert (= var74!1 ""))
(define-const var3352 var3989 (this$0/-993169894 var1730)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource this$0> 
(assert true)
(define-const var3187 String (toString/-522406933 (cast-from-var3989-to-var618 var3352))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2685 String (append/672562846 var74!1 var3187)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var74!2 String)
(assert (= var74!2 (str.++ var74!1 var3187)))
(assert true)
(define-const var1863 String (append/672562846 var2685 ".slice(")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".slice(") 
(declare-const var2685!1 String)
(assert (= var2685!1 (str.++ var2685 ".slice(")))
(define-const var1937 Int (offset/-993169894 var1730)) ; Statement: $l0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource: long offset> 
(assert true)
(define-const var3813 String (append/-901862667 var1863 var1937)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var1863!1 String)
(assert (str.prefixof var1863 var1863!1))
(assert true)
(define-const var3409 String (append/672562846 var3813 ", ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3813!1 String)
(assert (= var3813!1 (str.++ var3813 ", ")))
(define-const var1344 Int (length/-993169894 var1730)) ; Statement: $l1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource: long length> 
(assert true)
(define-const var1232 String (append/-901862667 var3409 var1344)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var3409!1 String)
(assert (str.prefixof var3409 var3409!1))
(assert true)
(define-const var2534 String (append/672562846 var1232 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1232!1 String)
(assert (= var1232!1 (str.++ var1232 ")")))
(assert true)
(define-const var1895 String (toString/-2075883882 var2534)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), this$0/-993169894=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource], com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3989-to-var618=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), offset/-993169894=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), length/-993169894=([com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3246=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource, var1730=r1, var74=$r0, var3989=com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource, var3352=$r2, var618=java.lang.Object, var3187=$r3, var2685=$r4, var1863=$r5, var1937=$l0, var3813=$r6, var3409=$r7, var1344=$l1, var1232=$r8, var2534=$r9, var1895=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource=var3246, r1=var1730, $r0=var74, com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource=var3989, $r2=var3352, java.lang.Object=var618, $r3=var3187, $r4=var2685, $r5=var1863, $l0=var1937, $r6=var3813, $r7=var3409, $l1=var1344, $r8=var1232, $r9=var2534, $r10=var1895}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource: com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource this$0>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".slice(");	$l0 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource: long offset>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$l1 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.ByteSource$SlicedByteSource: long length>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1