(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3458 0)
(declare-sort var2633 0)
(declare-sort var1306 0)
(declare-sort var916 0)
(declare-sort var2366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var916_checkNotNull/1446102589 (var1306) var1306)
(declare-fun cast-from-var2633-to-var1306 (var2633) var1306)
(declare-fun var2366-init () var2366)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1306) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2366 String) void)
(declare-const null-var3458 var3458)
(declare-const null-var2633 var2633)
(declare-const null-var1306 var1306)
(declare-const var3228 var3458) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1 
(assert (not (= var3228 null-var3458)))
(declare-const var1429 var2633) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range 
(assert (not (= var1429 null-var2633)))
(declare-const var3330 var1306) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var3330 null-var1306)))
;(assert (var916_checkNotNull/1446102589 (cast-from-var2633-to-var1306 var1429))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1429!1 var2633)
(define-const var703 var2366 var2366-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var574 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var574)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var574!1 String)
(assert (= var574!1 ""))
(assert true)
(define-const var3933 String (append/672562846 var574!1 "Cannot insert range ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot insert range ") 
(declare-const var574!2 String)
(assert (= var574!2 (str.++ var574!1 "Cannot insert range ")))
(assert true)
(define-const var3457 String (append/-1031950772 var3933 (cast-from-var2633-to-var1306 var1429!1))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var3933!1 String)
(assert (str.prefixof var3933 var3933!1))
(assert true)
(define-const var126 String (append/672562846 var3457 " into an empty subRangeMap")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into an empty subRangeMap") 
(declare-const var3457!1 String)
(assert (= var3457!1 (str.++ var3457 " into an empty subRangeMap")))
(assert true)
(define-const var2707 String (toString/-2075883882 var126)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var703 var2707)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var703!1 var2366)
(declare-const var2707!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var916_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var2633-to-var1306=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], java.lang.Object), var2366-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3458=com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1, var3228=r7, var2633=com.google.javascript.jscomp.jarjar.com.google.common.collect.Range, var1429=r0, var1306=java.lang.Object, var3330=r8, var916=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2366=java.lang.IllegalArgumentException, var703=$r1, var574=$r2, var3933=$r3, var3457=$r4, var126=$r5, var2707=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1=var3458, r7=var3228, com.google.javascript.jscomp.jarjar.com.google.common.collect.Range=var2633, r0=var1429, java.lang.Object=var1306, r8=var3330, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var916, java.lang.IllegalArgumentException=var2366, $r1=var703, $r2=var574, $r3=var3933, $r4=var3457, $r5=var126, $r6=var2707}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range;	r8 := @parameter1: java.lang.Object;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot insert range ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into an empty subRangeMap");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 1