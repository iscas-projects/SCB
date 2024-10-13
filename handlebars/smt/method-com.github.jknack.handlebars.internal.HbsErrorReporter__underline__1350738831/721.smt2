(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2686 0)
(declare-sort var2370 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2370_min/-1112089438 (Int Int) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2686 var2686)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const var1561 var2686) ; Statement: r4 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter 
(assert (not (= var1561 null-var2686)))
(declare-const var2838 String) ; Statement: r2 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2838 null-String)))
(declare-const var3400 (Array Int String)) ; Statement: r0 := @parameter1: java.lang.String[] 
(assert (not (= var3400 null-__Array__Int__String__)))
(declare-const var1511 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1511 null-Int)))
(declare-const var883 Int) ; Statement: i5 := @parameter3: int 
(assert (not (= var883 null-Int)))
(define-const var3024 Int (- var1511 1)) ; Statement: $i3 = i0 - 1 
(define-const var1216 Int (getLength-Arr-String-1 var3400)) ; Statement: $i1 = lengthof r0 
(define-const var3895 Int (- var1216 1)) ; Statement: $i2 = $i1 - 1 
(define-const var2726 Int (var2370_min/-1112089438 var3024 var3895)) ; Statement: $i4 = staticinvoke <java.lang.Math: int min(int,int)>($i3, $i2) 
(define-const var204 String (select var3400 var2726)) ; Statement: r1 = r0[$i4] 
(assert true)
(define-const var230 String (append/672562846 var2838 var204)) ; Statement: $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2838!1 String)
(assert (= var2838!1 (str.++ var2838 var204)))
(assert true)
;(assert (append/672562846 var230 "\n")) ; Statement: virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n") 
(declare-const var230!1 String)
(assert (= var230!1 (str.++ var230 "\n")))
(define-const var2062 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i5 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^") 
(assert (>= var2062 var883)) ; Cond: i6 >= i5 
(assert true)
;(assert (append/672562846 var2838!1 "^")) ; Statement: virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^") 
(declare-const var2838!2 String)
(assert (= var2838!2 (str.++ var2838!1 "^")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var2370_min/-1112089438=([int, int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2686=com.github.jknack.handlebars.internal.HbsErrorReporter, var1561=r4, var2838=r2, var3400=r0, var1511=i0, var883=i5, var3024=$i3, var1216=$i1, var3895=$i2, var2370=java.lang.Math, var2726=$i4, var204=r1, var230=$r3, var2062=i6}
; {com.github.jknack.handlebars.internal.HbsErrorReporter=var2686, r4=var1561, r2=var2838, r0=var3400, i0=var1511, i5=var883, $i3=var3024, $i1=var1216, $i2=var3895, java.lang.Math=var2370, $i4=var2726, r1=var204, $r3=var230, i6=var2062}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3}
;stmts r4 := @this: com.github.jknack.handlebars.internal.HbsErrorReporter;	r2 := @parameter0: java.lang.StringBuilder;	r0 := @parameter1: java.lang.String[];	i0 := @parameter2: int;	i5 := @parameter3: int;	$i3 = i0 - 1;	$i1 = lengthof r0;	$i2 = $i1 - 1;	$i4 = staticinvoke <java.lang.Math: int min(int,int)>($i3, $i2);	r1 = r0[$i4];	$r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\n");	i6 = 0;	if i6 >= i5 goto virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^");	virtualinvoke r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("^");	return
;block_num 3