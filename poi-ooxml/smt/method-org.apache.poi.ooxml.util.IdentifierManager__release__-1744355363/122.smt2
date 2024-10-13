(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var40 0)
(declare-sort var3554 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lowerbound/-65247735 (var40) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3554-init () var3554)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-901862667 (String Int) String)
(declare-fun upperbound/-65247735 (var40) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3554 String) void)
(declare-const null-var40 var40)
(declare-const null-Int Int)
(declare-const var42 var40) ; Statement: r0 := @this: org.apache.poi.ooxml.util.IdentifierManager 
(assert (not (= var42 null-var40)))
(declare-const var3868 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3868 null-Int)))
(define-const var344 Int (lowerbound/-65247735 var42)) ; Statement: $l1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound> 
(define-const var3940 Int (ite (> var3868 var344) 1 (ite (< var3868 var344) (- 1) 0))) ; Statement: $b2 = l0 cmp $l1 
(define-const var3861 Int (cast-from-Int-to-Int var3940)) ; Statement: $i46 = (int) $b2 
 ; Statement: if $i46 < 0 goto $r32 = new java.lang.IllegalArgumentException 
(assert (< var3861 0)) ; Cond: $i46 < 0 
(define-const var1907 var3554 var3554-init) ; Statement: $r32 = new java.lang.IllegalArgumentException 
(define-const var615 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var615)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var615!1 String)
(assert (= var615!1 ""))
(assert true)
(define-const var1258 String (append/672562846 var615!1 "Value for parameter \u0027id\u0027 was out of bounds, had ")) ; Statement: $r3 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value for parameter \'id\' was out of bounds, had ") 
(declare-const var615!2 String)
(assert (= var615!2 (str.++ var615!1 "Value for parameter \u0027id\u0027 was out of bounds, had ")))
(assert true)
(define-const var456 String (append/-901862667 var1258 var3868)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0) 
(declare-const var1258!1 String)
(assert (str.prefixof var1258 var1258!1))
(assert true)
(define-const var3609 String (append/672562846 var456 ", but should be within [")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but should be within [") 
(declare-const var456!1 String)
(assert (= var456!1 (str.++ var456 ", but should be within [")))
(define-const var3591 Int (lowerbound/-65247735 var42)) ; Statement: $l3 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound> 
(assert true)
(define-const var2401 String (append/-901862667 var3609 var3591)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3) 
(declare-const var3609!1 String)
(assert (str.prefixof var3609 var3609!1))
(assert true)
(define-const var3037 String (append/672562846 var2401 ":")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":") 
(declare-const var2401!1 String)
(assert (= var2401!1 (str.++ var2401 ":")))
(define-const var2666 Int (upperbound/-65247735 var42)) ; Statement: $l4 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long upperbound> 
(assert true)
(define-const var2987 String (append/-901862667 var3037 var2666)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var3037!1 String)
(assert (str.prefixof var3037 var3037!1))
(assert true)
(define-const var1161 String (append/672562846 var2987 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2987!1 String)
(assert (= var2987!1 (str.++ var2987 "]")))
(assert true)
(define-const var117 String (toString/-2075883882 var1161)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1907 var117)) ; Statement: specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var1907!1 var3554)
(declare-const var117!1 String)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {lowerbound/-65247735=([org.apache.poi.ooxml.util.IdentifierManager], long), cast-from-Int-to-Int=([byte], int), var3554-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), upperbound/-65247735=([org.apache.poi.ooxml.util.IdentifierManager], long), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var40=org.apache.poi.ooxml.util.IdentifierManager, var42=r0, var3868=l0, var344=$l1, var3940=$b2, var3861=$i46, var3554=java.lang.IllegalArgumentException, var1907=$r32, var615=$r31, var1258=$r3, var456=$r4, var3609=$r5, var3591=$l3, var2401=$r6, var3037=$r7, var2666=$l4, var2987=$r8, var1161=$r9, var117=$r10}
; {org.apache.poi.ooxml.util.IdentifierManager=var40, r0=var42, l0=var3868, $l1=var344, $b2=var3940, $i46=var3861, java.lang.IllegalArgumentException=var3554, $r32=var1907, $r31=var615, $r3=var1258, $r4=var456, $r5=var3609, $l3=var3591, $r6=var2401, $r7=var3037, $l4=var2666, $r8=var2987, $r9=var1161, $r10=var117}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.ooxml.util.IdentifierManager;	l0 := @parameter0: long;	$l1 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound>;	$b2 = l0 cmp $l1;	$i46 = (int) $b2;	if $i46 < 0 goto $r32 = new java.lang.IllegalArgumentException;	$r32 = new java.lang.IllegalArgumentException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Value for parameter \'id\' was out of bounds, had ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>(l0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", but should be within [");	$l3 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long lowerbound>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":");	$l4 = r0.<org.apache.poi.ooxml.util.IdentifierManager: long upperbound>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r32.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r32
;block_num 2