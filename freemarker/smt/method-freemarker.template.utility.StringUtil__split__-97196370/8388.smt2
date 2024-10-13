(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var864 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun arr-String-init () (Array Int String))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3754 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3754 null-String)))
(declare-const var2572 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var2572 null-Int)))
(assert true)
(define-const var1958 Int (length/-134980193 var3754)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var2675 Int 0) ; Statement: i4 = 0 
(define-const var1091 Int 1) ; Statement: i5 = 1 
(assert true) ; Non Conditional
(define-const var2695 Int (cast-from-Int-to-Int var2572)) ; Statement: $i9 = (int) c1 
(assert true)
(define-const var1169 Int (indexOf/1426977840 var3754 var2695 var2675)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i9, i4) 
(define-const var3474 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if $i2 == $i11 goto r1 = newarray (java.lang.String)[i5] 
(assert (not (= var1169 var3474))) ; Negate: Cond: $i2 == $i11  
(define-const var1091!1 Int (+ var1091 1)) ; Statement: i5 = i5 + 1 
(define-const var2675!1 Int (+ var1169 1)) ; Statement: i4 = $i2 + 1 
 ; Statement: goto [?= $i9 = (int) c1] 
(assert true) ; Non Conditional
(define-const var2695!1 Int (cast-from-Int-to-Int var2572)) ; Statement: $i9 = (int) c1 
(assert true)
(define-const var1169!1 Int (indexOf/1426977840 var3754 var2695!1 var2675!1)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i9, i4) 
(define-const var3474!1 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if $i2 == $i11 goto r1 = newarray (java.lang.String)[i5] 
(assert (= var1169!1 var3474!1)) ; Cond: $i2 == $i11 
(define-const var1611 (Array Int String) arr-String-init) ; Statement: r1 = newarray (java.lang.String)[i5] 
(define-const var1357 Int 0) ; Statement: i6 = 0 
(define-const var1069 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 > i0 goto return r1 
(assert (> var1069 var1958)) ; Cond: i7 > i0 
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), arr-String-init=([], java.lang.String[])}
; {var3754=r0, var864=null_type, var2572=c1, var1958=i0, var2675=i4, var1091=i5, var2695=$i9, var1169=$i2, var3474=$i11, var1611=r1, var1357=i6, var1069=i7}
; {r0=var3754, null_type=var864, c1=var2572, i0=var1958, i4=var2675, i5=var1091, $i9=var2695, $i2=var1169, $i11=var3474, r1=var1611, i6=var1357, i7=var1069}
;seq <java.lang.String: int length()>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: int indexOf(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(int,int)>": 2}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	i5 = 1;	$i9 = (int) c1;	$i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i9, i4);	$i11 = (int) -1;	if $i2 == $i11 goto r1 = newarray (java.lang.String)[i5];	i5 = i5 + 1;	i4 = $i2 + 1;	goto [?= $i9 = (int) c1];	$i9 = (int) c1;	$i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i9, i4);	$i11 = (int) -1;	if $i2 == $i11 goto r1 = newarray (java.lang.String)[i5];	r1 = newarray (java.lang.String)[i5];	i6 = 0;	i7 = 0;	if i7 > i0 goto return r1;	return r1
;block_num 7