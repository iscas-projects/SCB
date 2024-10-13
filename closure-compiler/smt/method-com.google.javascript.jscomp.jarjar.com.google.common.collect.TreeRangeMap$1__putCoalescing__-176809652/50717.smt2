(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var276 0)
(declare-sort var747 0)
(declare-sort var3334 0)
(declare-sort var3307 0)
(declare-sort var714 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3307_checkNotNull/1446102589 (var3334) var3334)
(declare-fun cast-from-var747-to-var3334 (var747) var3334)
(declare-fun var714-init () var714)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3334) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var714 String) void)
(declare-const null-var276 var276)
(declare-const null-var747 var747)
(declare-const null-var3334 var3334)
(declare-const var3331 var276) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1 
(assert (not (= var3331 null-var276)))
(declare-const var1484 var747) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range 
(assert (not (= var1484 null-var747)))
(declare-const var502 var3334) ; Statement: r8 := @parameter1: java.lang.Object 
(assert (not (= var502 null-var3334)))
;(assert (var3307_checkNotNull/1446102589 (cast-from-var747-to-var3334 var1484))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1484!1 var747)
(define-const var3644 var714 var714-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var1408 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1408)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1408!1 String)
(assert (= var1408!1 ""))
(assert true)
(define-const var2614 String (append/672562846 var1408!1 "Cannot insert range ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot insert range ") 
(declare-const var1408!2 String)
(assert (= var1408!2 (str.++ var1408!1 "Cannot insert range ")))
(assert true)
(define-const var371 String (append/-1031950772 var2614 (cast-from-var747-to-var3334 var1484!1))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var2614!1 String)
(assert (str.prefixof var2614 var2614!1))
(assert true)
(define-const var2114 String (append/672562846 var371 " into an empty subRangeMap")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into an empty subRangeMap") 
(declare-const var371!1 String)
(assert (= var371!1 (str.++ var371 " into an empty subRangeMap")))
(assert true)
(define-const var3721 String (toString/-2075883882 var2114)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3644 var3721)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6) 

(declare-const var3644!1 var714)
(declare-const var3721!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3307_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-var747-to-var3334=([com.google.javascript.jscomp.jarjar.com.google.common.collect.Range], java.lang.Object), var714-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var276=com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1, var3331=r7, var747=com.google.javascript.jscomp.jarjar.com.google.common.collect.Range, var1484=r0, var3334=java.lang.Object, var502=r8, var3307=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var714=java.lang.IllegalArgumentException, var3644=$r1, var1408=$r2, var2614=$r3, var371=$r4, var2114=$r5, var3721=$r6}
; {com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1=var276, r7=var3331, com.google.javascript.jscomp.jarjar.com.google.common.collect.Range=var747, r0=var1484, java.lang.Object=var3334, r8=var502, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3307, java.lang.IllegalArgumentException=var714, $r1=var3644, $r2=var1408, $r3=var2614, $r4=var371, $r5=var2114, $r6=var3721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.com.google.common.collect.TreeRangeMap$1;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.collect.Range;	r8 := @parameter1: java.lang.Object;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot insert range ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" into an empty subRangeMap");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r6);	throw $r1
;block_num 1