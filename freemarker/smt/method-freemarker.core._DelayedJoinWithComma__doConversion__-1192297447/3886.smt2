(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2634 0)
(declare-sort var3436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3436-to-__Array__Int__String__ (var3436) (Array Int String))
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2634 var2634)
(declare-const null-var3436 var3436)
(declare-const var3806 var2634) ; Statement: r7 := @this: freemarker.core._DelayedJoinWithComma 
(assert (not (= var3806 null-var2634)))
(declare-const var266 var3436) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var266 null-var3436)))
(define-const var394 (Array Int String) (cast-from-var3436-to-__Array__Int__String__ var266)) ; Statement: $r1 = (java.lang.String[]) r0 
(define-const var1848 (Array Int String) (cast-from-__Array__Int__String__-to-__Array__Int__String__ var394)) ; Statement: r2 = (java.lang.String[]) $r1 
(define-const var3140 Int 0) ; Statement: i3 = 0 
(define-const var1483 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var1623 Int (getLength-Arr-String-1 var1848)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i4 >= $i0 goto $r3 = new java.lang.StringBuilder 
(assert (>= var1483 var1623)) ; Cond: i4 >= $i0 
(define-const var3832 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3832 var3140)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(i3) 

(declare-const var3832!1 String)
(declare-const var3140!1 Int)
(define-const var1696 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(define-const var2632 Int (getLength-Arr-String-1 var1848)) ; Statement: $i1 = lengthof r2 
 ; Statement: if i5 >= $i1 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1696 var2632)) ; Cond: i5 >= $i1 
(assert true)
(define-const var2676 String (toString/-2075883882 var3832!1)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3436-to-__Array__Int__String__=([java.lang.Object], java.lang.String[]), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2634=freemarker.core._DelayedJoinWithComma, var3806=r7, var3436=java.lang.Object, var266=r0, var394=$r1, var1848=r2, var3140=i3, var1483=i4, var1623=$i0, var3832=$r3, var1696=i5, var2632=$i1, var2676=$r4}
; {freemarker.core._DelayedJoinWithComma=var2634, r7=var3806, java.lang.Object=var3436, r0=var266, $r1=var394, r2=var1848, i3=var3140, i4=var1483, $i0=var1623, $r3=var3832, i5=var1696, $i1=var2632, $r4=var2676}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: freemarker.core._DelayedJoinWithComma;	r0 := @parameter0: java.lang.Object;	$r1 = (java.lang.String[]) r0;	r2 = (java.lang.String[]) $r1;	i3 = 0;	i4 = 0;	$i0 = lengthof r2;	if i4 >= $i0 goto $r3 = new java.lang.StringBuilder;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>(int)>(i3);	i5 = 0;	$i1 = lengthof r2;	if i5 >= $i1 goto $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 5