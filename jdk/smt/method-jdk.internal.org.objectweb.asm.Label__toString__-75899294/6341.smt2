(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1579 0)
(declare-sort var3126 0)
(declare-sort var748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3126_identityHashCode/1096208673 (var748) Int)
(declare-fun cast-from-var1579-to-var748 (var1579) var748)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1579 var1579)
(declare-const var3687 var1579) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.Label 
(assert (not (= var3687 null-var1579)))
(define-const var1203 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1203)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1203!1 String)
(assert (= var1203!1 ""))
(assert true)
(define-const var1310 String (append/672562846 var1203!1 "L")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("L") 
(declare-const var1203!2 String)
(assert (= var1203!2 (str.++ var1203!1 "L")))
(define-const var360 Int (var3126_identityHashCode/1096208673 (cast-from-var1579-to-var748 var3687))) ; Statement: $i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1) 
(assert true)
(define-const var1311 String (append/-1001720160 var1310 var360)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1310!1 String)
(assert (str.prefixof var1310 var1310!1))
(assert true)
(define-const var1328 String (toString/-2075883882 var1311)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3126_identityHashCode/1096208673=([java.lang.Object], int), cast-from-var1579-to-var748=([jdk.internal.org.objectweb.asm.Label], java.lang.Object), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1579=jdk.internal.org.objectweb.asm.Label, var3687=r1, var1203=$r0, var1310=$r2, var3126=java.lang.System, var748=java.lang.Object, var360=$i0, var1311=$r3, var1328=$r4}
; {jdk.internal.org.objectweb.asm.Label=var1579, r1=var3687, $r0=var1203, $r2=var1310, java.lang.System=var3126, java.lang.Object=var748, $i0=var360, $r3=var1311, $r4=var1328}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.Label;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("L");	$i0 = staticinvoke <java.lang.System: int identityHashCode(java.lang.Object)>(r1);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1