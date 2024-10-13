(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3545 0)
(declare-sort var2813 0)
(declare-sort var426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun start/-396089531 (var3545) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun callers/-396089531 (var3545) var2813)
(declare-fun var426_toString/-522406933 (var426) String)
(declare-fun cast-from-var2813-to-var426 (var2813) var426)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3545 var3545)
(declare-const var2386 var3545) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Subroutine 
(assert (not (= var2386 null-var3545)))
(define-const var1700 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1700)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1700!1 String)
(assert (= var1700!1 ""))
(assert true)
(define-const var847 String (append/672562846 var1700!1 "start = ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("start = ") 
(declare-const var1700!2 String)
(assert (= var1700!2 (str.++ var1700!1 "start = ")))
(define-const var1963 Int (start/-396089531 var2386)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Subroutine: int start> 
(assert true)
(define-const var2193 String (append/-1001720160 var847 var1963)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var847!1 String)
(assert (str.prefixof var847 var847!1))
(assert true)
(define-const var2979 String (append/672562846 var2193 " callers = ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" callers = ") 
(declare-const var2193!1 String)
(assert (= var2193!1 (str.++ var2193 " callers = ")))
(define-const var2858 var2813 (callers/-396089531 var2386)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Subroutine: java.util.List callers> 
(define-const var2090 String (var426_toString/-522406933 (cast-from-var2813-to-var426 var2858))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.List: java.lang.String toString()>() 
(assert true)
(define-const var2743 String (append/672562846 var2979 var2090)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2979!1 String)
(assert (= var2979!1 (str.++ var2979 var2090)))
(assert true)
(define-const var2665 String (toString/-2075883882 var2743)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), start/-396089531=([org.apache.ibatis.javassist.bytecode.analysis.Subroutine], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), callers/-396089531=([org.apache.ibatis.javassist.bytecode.analysis.Subroutine], java.util.List), var426_toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2813-to-var426=([java.util.List], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3545=org.apache.ibatis.javassist.bytecode.analysis.Subroutine, var2386=r1, var1700=$r0, var847=$r2, var1963=$i0, var2193=$r3, var2979=$r6, var2813=java.util.List, var2858=$r4, var426=java.lang.Object, var2090=$r5, var2743=$r7, var2665=$r8}
; {org.apache.ibatis.javassist.bytecode.analysis.Subroutine=var3545, r1=var2386, $r0=var1700, $r2=var847, $i0=var1963, $r3=var2193, $r6=var2979, java.util.List=var2813, $r4=var2858, java.lang.Object=var426, $r5=var2090, $r7=var2743, $r8=var2665}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.analysis.Subroutine;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("start = ");	$i0 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Subroutine: int start>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" callers = ");	$r4 = r1.<org.apache.ibatis.javassist.bytecode.analysis.Subroutine: java.util.List callers>;	$r5 = interfaceinvoke $r4.<java.util.List: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1