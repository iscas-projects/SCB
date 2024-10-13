(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toByteArray/-1050398330 (var1356) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1356 var1356)
(declare-const var880 var1356) ; Statement: r1 := @parameter0: java.util.BitSet 
(assert (not (= var880 null-var1356)))
(define-const var412 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var412)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var412!1 String)
(assert (= var412!1 ""))
(assert true)
(define-const var991 (Array Int Int) (toByteArray/-1050398330 var880)) ; Statement: r2 = virtualinvoke r1.<java.util.BitSet: byte[] toByteArray()>() 
(define-const var3472 Int (getLength-Arr-Int-1 var991)) ; Statement: i0 = lengthof r2 
(define-const var1383 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1383 var3472)) ; Cond: i3 >= i0 
(assert true)
(define-const var2760 String (toString/-2075883882 var412!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toByteArray/-1050398330=([java.util.BitSet], byte[]), getLength-Arr-Int-1=([byte[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1356=java.util.BitSet, var880=r1, var412=$r0, var991=r2, var3472=i0, var1383=i3, var2760=$r3}
; {java.util.BitSet=var1356, r1=var880, $r0=var412, r2=var991, i0=var3472, i3=var1383, $r3=var2760}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.BitSet;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<java.util.BitSet: byte[] toByteArray()>();	i0 = lengthof r2;	i3 = 0;	if i3 >= i0 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3