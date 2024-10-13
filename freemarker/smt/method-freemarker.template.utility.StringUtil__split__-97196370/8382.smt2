(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1212 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1212 null-String)))
(declare-const var521 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var521 null-Int)))
(assert true)
(define-const var3301 Int (length/-134980193 var1212)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1503 Int 0) ; Statement: i4 = 0 
(define-const var3291 Int 1) ; Statement: i5 = 1 
(assert true) ; Non Conditional
(define-const var2566 Int (cast-from-Int-to-Int var521)) ; Statement: $i9 = (int) c1 
(assert true)
(define-const var3307 Int (indexOf/1426977840 var1212 var2566 var1503)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i9, i4) 
(define-const var3865 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if $i2 == $i11 goto r1 = newarray (java.lang.String)[i5] 
(assert (= var3307 var3865)) ; Cond: $i2 == $i11 
(define-const var1995 (Array Int String) arr-String-init) ; Statement: r1 = newarray (java.lang.String)[i5] 
(define-const var1159 Int 0) ; Statement: i6 = 0 
(define-const var460 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 > i0 goto return r1 
(assert (> var460 var3301)) ; Cond: i7 > i0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), arr-String-init=([], java.lang.String[])}
; {var1212=r0, var1837=null_type, var521=c1, var3301=i0, var1503=i4, var3291=i5, var2566=$i9, var3307=$i2, var3865=$i11, var1995=r1, var1159=i6, var460=i7}
; {r0=var1212, null_type=var1837, c1=var521, i0=var3301, i4=var1503, i5=var3291, $i9=var2566, $i2=var3307, $i11=var3865, r1=var1995, i6=var1159, i7=var460}
;seq <java.lang.String: int length()>;	<java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	i5 = 1;	$i9 = (int) c1;	$i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i9, i4);	$i11 = (int) -1;	if $i2 == $i11 goto r1 = newarray (java.lang.String)[i5];	r1 = newarray (java.lang.String)[i5];	i6 = 0;	i7 = 0;	if i7 > i0 goto return r1;	return r1
;block_num 5