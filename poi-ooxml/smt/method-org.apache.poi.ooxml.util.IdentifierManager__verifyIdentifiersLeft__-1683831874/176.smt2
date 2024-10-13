(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1012 0)
(declare-sort var2572 0)
(declare-sort var961 0)
(declare-sort var996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun segments/-65247735 (var1012) var2572)
(declare-fun isEmpty/-367311564 (var961) Bool)
(declare-fun cast-from-var2572-to-var961 (var2572) var961)
(declare-fun var996-init () var996)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun lowerbound/-65247735 (var1012) Int)
(declare-fun append/-901862667 (String Int) String)
(declare-fun upperbound/-65247735 (var1012) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var996 String) void)
(declare-const null-var1012 var1012)
(declare-const var210 var1012) ; Statement: r0 := @this: org.apache.poi.ooxml.util.IdentifierManager 
(assert (not (= var210 null-var1012)))
(define-const var3530 var2572 (segments/-65247735 var210)) ; Statement: $r1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: java.util.LinkedList segments> 
(assert true)
(define-const var1472 Bool (isEmpty/-367311564 (cast-from-var2572-to-var961 var3530))) ; Statement: $z0 = virtualinvoke $r1.<java.util.LinkedList: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto return 
(assert (not (= (ite var1472 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1159 var996 var996-init) ; Statement: $r2 = new java.lang.IllegalStateException 
(define-const var2505 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2505)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2505!1 String)
(assert (= var2505!1 ""))
(assert true)
(define-const var3099 String (append/672562846 var2505!1 "No identifiers left for range [")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No identifiers left for range [") 
(declare-const var2505!2 String)
(assert (= var2505!2 (str.++ var2505!1 "No identifiers left for range [")))
(define-const var276 Int (lowerbound/-65247735 var210)) ; Statement: $l0 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound> 
(assert true)
(define-const var1465 String (append/-901862667 var3099 var276)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0) 
(declare-const var3099!1 String)
(assert (str.prefixof var3099 var3099!1))
(assert true)
(define-const var3691 String (append/672562846 var1465 ",")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var1465!1 String)
(assert (= var1465!1 (str.++ var1465 ",")))
(define-const var3247 Int (upperbound/-65247735 var210)) ; Statement: $l1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long upperbound> 
(assert true)
(define-const var1714 String (append/-901862667 var3691 var3247)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1) 
(declare-const var3691!1 String)
(assert (str.prefixof var3691 var3691!1))
(assert true)
(define-const var3277 String (append/672562846 var1714 "]")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1714!1 String)
(assert (= var1714!1 (str.++ var1714 "]")))
(assert true)
(define-const var406 String (toString/-2075883882 var3277)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1159 var406)) ; Statement: specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9) 

(declare-const var1159!1 var996)
(declare-const var406!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {segments/-65247735=([org.apache.poi.ooxml.util.IdentifierManager], java.util.LinkedList), isEmpty/-367311564=([java.util.AbstractCollection], boolean), cast-from-var2572-to-var961=([java.util.LinkedList], java.util.AbstractCollection), var996-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), lowerbound/-65247735=([org.apache.poi.ooxml.util.IdentifierManager], long), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), upperbound/-65247735=([org.apache.poi.ooxml.util.IdentifierManager], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1012=org.apache.poi.ooxml.util.IdentifierManager, var210=r0, var2572=java.util.LinkedList, var3530=$r1, var961=java.util.AbstractCollection, var1472=$z0, var996=java.lang.IllegalStateException, var1159=$r2, var2505=$r3, var3099=$r4, var276=$l0, var1465=$r5, var3691=$r6, var3247=$l1, var1714=$r7, var3277=$r8, var406=$r9}
; {org.apache.poi.ooxml.util.IdentifierManager=var1012, r0=var210, java.util.LinkedList=var2572, $r1=var3530, java.util.AbstractCollection=var961, $z0=var1472, java.lang.IllegalStateException=var996, $r2=var1159, $r3=var2505, $r4=var3099, $l0=var276, $r5=var1465, $r6=var3691, $l1=var3247, $r7=var1714, $r8=var3277, $r9=var406}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.util.IdentifierManager;	$r1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: java.util.LinkedList segments>;	$z0 = virtualinvoke $r1.<java.util.LinkedList: boolean isEmpty()>();	if $z0 == 0 goto return;	$r2 = new java.lang.IllegalStateException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No identifiers left for range [");	$l0 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$l1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long upperbound>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l1);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2