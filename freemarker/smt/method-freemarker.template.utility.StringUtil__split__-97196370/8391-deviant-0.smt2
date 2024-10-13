(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(declare-fun arr-String-init () (Array Int String))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3915 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3915 null-String)))
(declare-const var1088 Int) ; Statement: c1 := @parameter1: char 
(assert (not (= var1088 null-Int)))
(assert true)
(define-const var3075 Int (length/-134980193 var3915)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1005 Int 0) ; Statement: i4 = 0 
(define-const var1848 Int 1) ; Statement: i5 = 1 
(assert true) ; Non Conditional
(define-const var2678 Int (cast-from-Int-to-Int var1088)) ; Statement: $i9 = (int) c1 
(assert true)
(define-const var3283 Int (indexOf/1426977840 var3915 var2678 var1005)) ; Statement: $i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i9, i4) 
(define-const var3798 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i11 = (int) -1 
 ; Statement: if $i2 == $i11 goto r1 = newarray (java.lang.String)[i5] 
(assert (= var3283 var3798)) ; Cond: $i2 == $i11 
(define-const var2148 (Array Int String) arr-String-init) ; Statement: r1 = newarray (java.lang.String)[i5] 
(define-const var2716 Int 0) ; Statement: i6 = 0 
(define-const var1114 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
 ; Statement: if i7 > i0 goto return r1 
(assert (not (> var1114 var3075))) ; Negate: Cond: i7 > i0  
(define-const var1862 Int (cast-from-Int-to-Int var1088)) ; Statement: $i12 = (int) c1 
(assert true)
(define-const var1192 Int (indexOf/1426977840 var3915 var1862 var1114)) ; Statement: i8 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i12, i7) 
(define-const var1270 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i8 != $i14 goto $i3 = i6 
(assert (not (= var1192 var1270))) ; Cond: i8 != $i14 
(define-const var3521 Int var2716) ; Statement: $i3 = i6 
(define-const var2716!1 Int (+ var2716 1)) ; Statement: i6 = i6 + 1 
(assert (not (and true (and (>= var1114 0) (>= (str.len var3915) var1192) (>= var1192 var1114)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), arr-String-init=([], java.lang.String[]), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3915=r0, var2445=null_type, var1088=c1, var3075=i0, var1005=i4, var1848=i5, var2678=$i9, var3283=$i2, var3798=$i11, var2148=r1, var2716=i6, var1114=i7, var1862=$i12, var1192=i8, var1270=$i14, var3521=$i3, var2076=$r2}
; {r0=var3915, null_type=var2445, c1=var1088, i0=var3075, i4=var1005, i5=var1848, $i9=var2678, $i2=var3283, $i11=var3798, r1=var2148, i6=var2716, i7=var1114, $i12=var1862, i8=var1192, $i14=var1270, $i3=var3521, $r2=var2076}
;seq <java.lang.String: int length()>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int indexOf(int,int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	c1 := @parameter1: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i4 = 0;	i5 = 1;	$i9 = (int) c1;	$i2 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i9, i4);	$i11 = (int) -1;	if $i2 == $i11 goto r1 = newarray (java.lang.String)[i5];	r1 = newarray (java.lang.String)[i5];	i6 = 0;	i7 = 0;	if i7 > i0 goto return r1;	$i12 = (int) c1;	i8 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i12, i7);	$i14 = (int) -1;	if i8 != $i14 goto $i3 = i6;	$i3 = i6;	i6 = i6 + 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i7, i8);	r1[$i3] = $r2;	i7 = i8 + 1;	goto [?= (branch)];	if i7 > i0 goto return r1;	return r1
;block_num 8