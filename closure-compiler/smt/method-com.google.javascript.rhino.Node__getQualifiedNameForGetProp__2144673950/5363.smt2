(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2882 0)
(declare-sort var2191 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getString/-897720134 (var2882) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun first/55237717 (var2882) var2882)
(declare-fun isGetProp/-1072994147 (var2882) Bool)
(declare-fun getQualifiedName/48314856 (var2882) String)
(declare-const null-var2882 var2882)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3774 var2882) ; Statement: r0 := @this: com.google.javascript.rhino.Node 
(assert (not (= var3774 null-var2882)))
(declare-const var1585 Int) ; Statement: i4 := @parameter0: int 
(assert (not (= var1585 null-Int)))
(assert true)
(define-const var2024 String (getString/-897720134 var3774)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
(define-const var2836 Int (length/-134980193 var2024)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1826 Int (+ 1 var2836)) ; Statement: $i1 = 1 + $i0 
(define-const var1333 Int (+ var1585 var1826)) ; Statement: i5 = i4 + $i1 
(define-const var1886 var2882 (first/55237717 var3774)) ; Statement: $r2 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert true)
(define-const var3240 Bool (isGetProp/-1072994147 var1886)) ; Statement: $z0 = virtualinvoke $r2.<com.google.javascript.rhino.Node: boolean isGetProp()>() 
 ; Statement: if $z0 == 0 goto $r3 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert (= (ite var3240 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2718 var2882 (first/55237717 var3774)) ; Statement: $r3 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first> 
(assert true)
(define-const var3298 String (getQualifiedName/48314856 var2718)) ; Statement: r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>() 
 ; Statement: if r4 != null goto $r5 = new java.lang.StringBuilder 
(assert (not (not (= var3298 null-String)))) ; Negate: Cond: r4 != null  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), length/-134980193=([java.lang.String], int), first/55237717=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Node), isGetProp/-1072994147=([com.google.javascript.rhino.Node], boolean), getQualifiedName/48314856=([com.google.javascript.rhino.Node], java.lang.String)}
; {var2882=com.google.javascript.rhino.Node, var3774=r0, var1585=i4, var2024=r1, var2836=$i0, var1826=$i1, var1333=i5, var1886=$r2, var3240=$z0, var2718=$r3, var3298=r4, var2191=null_type}
; {com.google.javascript.rhino.Node=var2882, r0=var3774, i4=var1585, r1=var2024, $i0=var2836, $i1=var1826, i5=var1333, $r2=var1886, $z0=var3240, $r3=var2718, r4=var3298, null_type=var2191}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.rhino.Node;	i4 := @parameter0: int;	r1 = virtualinvoke r0.<com.google.javascript.rhino.Node: java.lang.String getString()>();	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = 1 + $i0;	i5 = i4 + $i1;	$r2 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	$z0 = virtualinvoke $r2.<com.google.javascript.rhino.Node: boolean isGetProp()>();	if $z0 == 0 goto $r3 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	$r3 = r0.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Node first>;	r4 = virtualinvoke $r3.<com.google.javascript.rhino.Node: java.lang.String getQualifiedName()>();	if r4 != null goto $r5 = new java.lang.StringBuilder;	return null
;block_num 3