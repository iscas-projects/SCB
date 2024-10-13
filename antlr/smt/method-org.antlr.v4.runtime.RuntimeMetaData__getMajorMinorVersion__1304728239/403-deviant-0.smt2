(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1263 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1263 null-String)))
(assert true)
(define-const var893 Int (indexOf/-1037706067 var1263 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
 ; Statement: if i0 < 0 goto $i7 = (int) -1 
(assert (< var893 0)) ; Cond: i0 < 0 
(define-const var1673 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
(define-const var1935 Int var1673) ; Statement: $i4 = $i7 
(assert true) ; Non Conditional
(assert true)
(define-const var3063 Int (indexOf/-1037706067 var1263 45)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(45) 
(assert true)
(define-const var2455 Int (length/-134980193 var1263)) ; Statement: $i3 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2683 Int var2455) ; Statement: i5 = $i3 
 ; Statement: if $i4 < 0 goto (branch) 
(assert (< var1935 0)) ; Cond: $i4 < 0 
 ; Statement: if $i2 < 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5) 
(assert (< var3063 0)) ; Cond: $i2 < 0 
(assert (not (and true (and (>= 0 0) (>= (str.len var1263) var2683) (>= var2683 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1263=r0, var1188=null_type, var893=i0, var1673=$i7, var1935=$i4, var3063=$i2, var2455=$i3, var2683=i5, var3477=$r1}
; {r0=var1263, null_type=var1188, i0=var893, $i7=var1673, $i4=var1935, $i2=var3063, $i3=var2455, i5=var2683, $r1=var3477}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	if i0 < 0 goto $i7 = (int) -1;	$i7 = (int) -1;	$i4 = $i7;	$i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(45);	$i3 = virtualinvoke r0.<java.lang.String: int length()>();	i5 = $i3;	if $i4 < 0 goto (branch);	if $i2 < 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5);	return $r1
;block_num 5