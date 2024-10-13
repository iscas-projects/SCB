(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1283 0)
(declare-sort var1744 0)
(declare-sort var146 0)
(declare-sort var3362 0)
(declare-sort var3707 0)
(declare-sort var3364 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3707_checkNotNull/1446102589 (var146) var146)
(declare-fun cast-from-var1744-to-var146 (var1744) var146)
(declare-fun var3364-init () var3364)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var146) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3364 String) void)
(declare-const null-var1283 var1283)
(declare-const null-var1744 var1744)
(declare-const null-var146 var146)
(declare-const null-var3362 var3362)
(declare-const var1900 var1283) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1 
(assert (not (= var1900 null-var1283)))
(declare-const var2880 var1744) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range 
(assert (not (= var2880 null-var1744)))
(declare-const var2539 var146) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var2539 null-var146)))
(declare-const var3100 var3362) ; Statement: r9 := @parameter2: java.util.function.BiFunction 
(assert (not (= var3100 null-var3362)))
;(assert (var3707_checkNotNull/1446102589 (cast-from-var1744-to-var146 var2880))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2880!1 var1744)
(define-const var1884 var3364 var3364-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var3518 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3518)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3518!1 String)
(assert (= var3518!1 ""))
(assert true)
(define-const var1061 String (append/672562846 var3518!1 "Cannot merge range ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot merge range ") 
(declare-const var3518!2 String)
(assert (= var3518!2 (str.++ var3518!1 "Cannot merge range ")))
(assert true)
(define-const var2707 String (append/-1031950772 var1061 (cast-from-var1744-to-var146 var2880!1))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var1061!1 String)
(assert (str.prefixof var1061 var1061!1))
(assert true)
(define-const var1731 String (append/672562846 var2707 " into an empty subRangeMap")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into an empty subRangeMap") 
(declare-const var2707!1 String)
(assert (= var2707!1 (str.++ var2707 " into an empty subRangeMap")))
(assert true)
(define-const var3659 String (toString/-2075883882 var1731)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1884 var3659)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var1884!1 var3364)
(declare-const var3659!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3707_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var1744-to-var146=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], java.lang.Object), var3364-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1283=com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1, var1900=r7, var1744=com.google.javascript.jscomp.jarjar.com.google.common.collect.Range, var2880=r0, var146=java.lang.Object, var2539=r8, var3362=java.util.function.BiFunction, var3100=r9, var3707=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3364=java.lang.IllegalArgumentException, var1884=$r1, var3518=$r2, var1061=$r3, var2707=$r4, var1731=$r5, var3659=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1=var1283, r7=var1900, com.google.javascript.jscomp.jarjar.com.google.common.collect.Range=var1744, r0=var2880, java.lang.Object=var146, r8=var2539, java.util.function.BiFunction=var3362, r9=var3100, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3707, java.lang.IllegalArgumentException=var3364, $r1=var1884, $r2=var3518, $r3=var1061, $r4=var2707, $r5=var1731, $r6=var3659}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range;	r8 := @parameter1: java.lang.Object;	r9 := @parameter2: java.util.function.BiFunction;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot merge range ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into an empty subRangeMap");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 1