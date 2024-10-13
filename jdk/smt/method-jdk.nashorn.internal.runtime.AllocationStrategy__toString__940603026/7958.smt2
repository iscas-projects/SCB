(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fieldCount/933143154 (var2791) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2791 var2791)
(declare-const var2616 var2791) ; Statement: r1 := @this: jdk.nashorn.internal.runtime.AllocationStrategy 
(assert (not (= var2616 null-var2791)))
(define-const var2763 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2763)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2763!1 String)
(assert (= var2763!1 ""))
(assert true)
(define-const var2236 String (append/672562846 var2763!1 "AllocationStrategy[fieldCount=")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AllocationStrategy[fieldCount=") 
(declare-const var2763!2 String)
(assert (= var2763!2 (str.++ var2763!1 "AllocationStrategy[fieldCount=")))
(define-const var2578 Int (fieldCount/933143154 var2616)) ; Statement: $i0 = r1.<jdk.nashorn.internal.runtime.AllocationStrategy: int fieldCount> 
(assert true)
(define-const var917 String (append/-1001720160 var2236 var2578)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var2236!1 String)
(assert (str.prefixof var2236 var2236!1))
(assert true)
(define-const var3325 String (append/672562846 var917 "]")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var917!1 String)
(assert (= var917!1 (str.++ var917 "]")))
(assert true)
(define-const var1470 String (toString/-2075883882 var3325)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fieldCount/933143154=([jdk.nashorn.internal.runtime.AllocationStrategy], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2791=jdk.nashorn.internal.runtime.AllocationStrategy, var2616=r1, var2763=$r0, var2236=$r2, var2578=$i0, var917=$r3, var3325=$r4, var1470=$r5}
; {jdk.nashorn.internal.runtime.AllocationStrategy=var2791, r1=var2616, $r0=var2763, $r2=var2236, $i0=var2578, $r3=var917, $r4=var3325, $r5=var1470}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.runtime.AllocationStrategy;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("AllocationStrategy[fieldCount=");	$i0 = r1.<jdk.nashorn.internal.runtime.AllocationStrategy: int fieldCount>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1