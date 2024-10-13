(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1755 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var1755) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun first/55237717 (var1755) var1755)
(declare-fun isGetProp/-1072994147 (var1755) Bool)
(declare-fun getQualifiedNameForGetProp/2144673950 (var1755 Int) String)
(declare-const null-var1755 var1755)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1580 var1755) ; Statement: r0 := @this: com.google.javascript.rhino.Node 
(assert (not (= var1580 null-var1755)))
(declare-const var531 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var531 null-Int)))
(assert true)
(define-const var1833 String (getString/-897720134 var1580)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var1198 Int (length/-134980193 var1833)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var2082 Int (+ 1 var1198)) ; Statement: $i1 = 1 + $i0 
(define-const var2855 Int (+ var531 var2082)) ; Statement: i5 = i4 + $i1 
(define-const var3769 var1755 (first/55237717 var1580)) ; Statement: $r2 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert true)
(define-const var992 Bool (isGetProp/-1072994147 var3769)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert (not (= (ite var992 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2422 var1755 (first/55237717 var1580)) ; Statement: $r7 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert true)
(define-const var3940 String (getQualifiedNameForGetProp/2144673950 var2422 var2855)) ; Statement: r8 = virtualinvoke $r7.<com.google.javascript.rhino.Node: java.lang.StringBuilder getQualifiedNameForGetProp(int)>(i5) 
 ; Statement: if r8 != null goto $r6 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(assert (not (not (= var3940 null-String)))) ; Negate: Cond: r8 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), length/-134980193=([java.lang.String], int), first/55237717=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), getQualifiedNameForGetProp/2144673950=([com.google.javascript.rhino.Node, int], java.lang.StringBuilder)}
; {var1755=com.google.javascript.rhino.Node, var1580=r0, var531=i4, var1833=r1, var1198=$i0, var2082=$i1, var2855=i5, var3769=$r2, var992=$z0, var2422=$r7, var3940=r8}
; {com.google.javascript.rhino.Node=var1755, r0=var1580, i4=var531, r1=var1833, $i0=var1198, $i1=var2082, i5=var2855, $r2=var3769, $z0=var992, $r7=var2422, r8=var3940}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.rhino.Node;	i4 := @parameter0: int;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 1 + $i0;	i5 = i4 + $i1;	$r2 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	$z0 = virtualinvoke $r2.<com.google.javascript.rhino.Node: boolean isGetProp()>();	if $z0 == 0 goto $r3 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	$r7 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	r8 = virtualinvoke $r7.<com.google.javascript.rhino.Node: java.lang.StringBuilder getQualifiedNameForGetProp(int)>(i5);	if r8 != null goto $r6 = virtualinvoke r8.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	return null
;block_num 3