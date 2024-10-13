(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var88 0)
(declare-sort var2577 0)
(declare-sort var1226 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2577) void)
(declare-fun cast-from-var88-to-var2577 (var88) var2577)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1226-init () var1226)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1226 String) void)
(declare-const null-var88 var88)
(declare-const null-Int Int)
(declare-const var540 var88) ; Statement: r0 := @this: org.apache.poi.ooxml.util.IdentifierManager 
(assert (not (= var540 null-var88)))
(declare-const var1127 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var1127 null-Int)))
(declare-const var3182 Int) ; Statement: l1 := @parameter1: long 
(assert (not (= var3182 null-Int)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var88-to-var2577 var540))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var540!1 var88)
(define-const var3137 Int (ite (> var1127 var3182) 1 (ite (< var1127 var3182) (- 1) 0))) ; Statement: $b2 = l0 cmp l1 
(define-const var3908 Int (cast-from-Int-to-Int var3137)) ; Statement: $i5 = (int) $b2 
 ; Statement: if $i5 <= 0 goto $b3 = l0 cmp 0L 
(assert (not (<= var3908 0))) ; Negate: Cond: $i5 <= 0  
(define-const var2752 var1226 var1226-init) ; Statement: $r18 = new java.lang.IllegalArgumentException 
(define-const var3354 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3354)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3354!1 String)
(assert (= var3354!1 ""))
(assert true)
(define-const var2319 String (append/672562846 var3354!1 "lowerbound must not be greater than upperbound, had ")) ; Statement: $r12 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lowerbound must not be greater than upperbound, had ") 
(declare-const var3354!2 String)
(assert (= var3354!2 (str.++ var3354!1 "lowerbound must not be greater than upperbound, had ")))
(assert true)
(define-const var1804 String (append/-901862667 var2319 var1127)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var2319!1 String)
(assert (str.prefixof var2319 var2319!1))
(assert true)
(define-const var3706 String (append/672562846 var1804 " and ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ") 
(declare-const var1804!1 String)
(assert (= var1804!1 (str.++ var1804 " and ")))
(assert true)
(define-const var2793 String (append/-901862667 var3706 var3182)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1) 
(declare-const var3706!1 String)
(assert (str.prefixof var3706 var3706!1))
(assert true)
(define-const var1323 String (toString/-2075883882 var2793)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2752 var1323)) ; Statement: specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16) 

(declare-const var2752!1 var1226)
(declare-const var1323!1 String)
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var88-to-var2577=([org.apache.poi.ooxml.util.IdentifierManager], java.lang.Object), cast-from-Int-to-Int=([byte], int), var1226-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var88=org.apache.poi.ooxml.util.IdentifierManager, var540=r0, var1127=l0, var3182=l1, var2577=java.lang.Object, var3137=$b2, var3908=$i5, var1226=java.lang.IllegalArgumentException, var2752=$r18, var3354=$r17, var2319=$r12, var1804=$r13, var3706=$r14, var2793=$r15, var1323=$r16}
; {org.apache.poi.ooxml.util.IdentifierManager=var88, r0=var540, l0=var1127, l1=var3182, java.lang.Object=var2577, $b2=var3137, $i5=var3908, java.lang.IllegalArgumentException=var1226, $r18=var2752, $r17=var3354, $r12=var2319, $r13=var1804, $r14=var3706, $r15=var2793, $r16=var1323}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.util.IdentifierManager;	l0 := @parameter0: long;	l1 := @parameter1: long;	specialinvoke r0.<java.lang.Object: void <init>()>();	$b2 = l0 cmp l1;	$i5 = (int) $b2;	if $i5 <= 0 goto $b3 = l0 cmp 0L;	$r18 = new java.lang.IllegalArgumentException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("lowerbound must not be greater than upperbound, had ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" and ");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l1);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r18.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r16);	throw $r18
;block_num 2