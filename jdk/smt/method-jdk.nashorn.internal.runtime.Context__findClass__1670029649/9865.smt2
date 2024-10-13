(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2593 0)
(declare-sort var3012 0)
(declare-sort var2308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var2308-init () var2308)
(declare-fun <init>/1087086210 (var2308 String) void)
(declare-const null-var2593 var2593)
(declare-const null-String String)
(declare-const var1541 var2593) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.Context 
(assert (not (= var1541 null-var2593)))
(declare-const var1865 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1865 null-String)))
(assert true)
(define-const var3026 Int (indexOf/-1037706067 var1865 91)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(91) 
(define-const var1642 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if $i0 != $i3 goto $r13 = new java.lang.ClassNotFoundException 
(assert (not (= var3026 var1642))) ; Cond: $i0 != $i3 
(define-const var1582 var2308 var2308-init) ; Statement: $r13 = new java.lang.ClassNotFoundException 
(assert true)
;(assert (<init>/1087086210 var1582 var1865)) ; Statement: specialinvoke $r13.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r0) 

(declare-const var1582!1 var2308)
(declare-const var1865!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var2308-init=([], java.lang.ClassNotFoundException), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var2593=jdk.nashorn.internal.runtime.Context, var1541=r2, var1865=r0, var3012=null_type, var3026=$i0, var1642=$i3, var2308=java.lang.ClassNotFoundException, var1582=$r13}
; {jdk.nashorn.internal.runtime.Context=var2593, r2=var1541, r0=var1865, null_type=var3012, $i0=var3026, $i3=var1642, java.lang.ClassNotFoundException=var2308, $r13=var1582}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.Context;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(91);	$i3 = (int) -1;	if $i0 != $i3 goto $r13 = new java.lang.ClassNotFoundException;	$r13 = new java.lang.ClassNotFoundException;	specialinvoke $r13.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>(r0);	throw $r13
;block_num 2