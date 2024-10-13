(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var138 0)
(declare-sort var3156 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var3156 var3156)
(declare-const var2404 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2404 null-String)))
(declare-const var3043 var3156) ; Statement: r1 := @parameter1: java.util.Vector 
(assert (not (= var3043 null-var3156)))
(declare-const var1864 var3156) ; Statement: r4 := @parameter2: java.util.Vector 
(assert (not (= var1864 null-var3156)))
(define-const var1729 Int 0) ; Statement: i10 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1675 Int (indexOf/1426977840 var2404 36 var1729)) ; Statement: $i11 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(36, i10) 
 ; Statement: if $i11 < 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (< var1675 0)) ; Cond: $i11 < 0 
(assert true)
(define-const var1198 Int (length/-134980193 var2404)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i10 >= $i0 goto return 
(assert (>= var1729 var1198)) ; Cond: i10 >= $i0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/1426977840=([java.lang.String, int, int], int), length/-134980193=([java.lang.String], int)}
; {var2404=r0, var138=null_type, var3156=java.util.Vector, var3043=r1, var1864=r4, var1729=i10, var1675=$i11, var1198=$i0}
; {r0=var2404, null_type=var138, java.util.Vector=var3156, r1=var3043, r4=var1864, i10=var1729, $i11=var1675, $i0=var1198}
;seq <java.lang.String: int indexOf(int,int)>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.util.Vector;	r4 := @parameter2: java.util.Vector;	i10 = 0;	$i11 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>(36, i10);	if $i11 < 0 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i10 >= $i0 goto return;	return
;block_num 4