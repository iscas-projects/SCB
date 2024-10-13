(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1792 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-1525464609 (var1792) String)
(declare-fun refCount/1653940871 (var1792) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1792 var1792)
(declare-const var3496 var1792) ; Statement: r1 := @this: jdk.jfr.internal.RepositoryChunk 
(assert (not (= var3496 null-var1792)))
(define-const var1604 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1604)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1604!1 String)
(assert (= var1604!1 ""))
(assert true)
(define-const var3108 String (append/672562846 var1604!1 "Use chunk ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Use chunk ") 
(declare-const var1604!2 String)
(assert (= var1604!2 (str.++ var1604!1 "Use chunk ")))
(assert true)
(define-const var2714 String (toString/-1525464609 var3496)) ; Statement: $r2 = virtualinvoke r1.<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>() 
(assert true)
(define-const var1869 String (append/672562846 var3108 var2714)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3108!1 String)
(assert (= var3108!1 (str.++ var3108 var2714)))
(assert true)
(define-const var1475 String (append/672562846 var1869 " ref count now ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ref count now ") 
(declare-const var1869!1 String)
(assert (= var1869!1 (str.++ var1869 " ref count now ")))
(define-const var948 Int (refCount/1653940871 var3496)) ; Statement: $i0 = r1.<jdk.jfr.internal.RepositoryChunk: int refCount> 
(assert true)
(define-const var3224 String (append/-1001720160 var1475 var948)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1475!1 String)
(assert (str.prefixof var1475 var1475!1))
(assert true)
(define-const var2017 String (toString/-2075883882 var3224)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-1525464609=([jdk.jfr.internal.RepositoryChunk], java.lang.String), refCount/1653940871=([jdk.jfr.internal.RepositoryChunk], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1792=jdk.jfr.internal.RepositoryChunk, var3496=r1, var1604=$r0, var3108=$r3, var2714=$r2, var1869=$r4, var1475=$r5, var948=$i0, var3224=$r6, var2017=$r7}
; {jdk.jfr.internal.RepositoryChunk=var1792, r1=var3496, $r0=var1604, $r3=var3108, $r2=var2714, $r4=var1869, $r5=var1475, $i0=var948, $r6=var3224, $r7=var2017}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.jfr.internal.RepositoryChunk;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Use chunk ");	$r2 = virtualinvoke r1.<jdk.jfr.internal.RepositoryChunk: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ref count now ");	$i0 = r1.<jdk.jfr.internal.RepositoryChunk: int refCount>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1