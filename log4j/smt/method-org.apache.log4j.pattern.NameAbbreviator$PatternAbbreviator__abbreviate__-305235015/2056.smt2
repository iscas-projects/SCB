(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1596 0)
(declare-sort var964 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun fragments/-1286120409 (var1596) (Array Int var964))
(declare-fun getLength-Arr-var964-1 ((Array Int var964)) Int)
(declare-fun length/-1112840705 (String) Int)
(declare-const null-var1596 var1596)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var558 var1596) ; Statement: r0 := @this: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator 
(assert (not (= var558 null-var1596)))
(declare-const var3877 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3877 null-Int)))
(declare-const var3246 String) ; Statement: r4 := @parameter1: java.lang.StringBuffer 
(assert (not (= var3246 null-String)))
(define-const var3922 Int var3877) ; Statement: i6 = i0 
(define-const var3720 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(define-const var495 (Array Int var964) (fragments/-1286120409 var558)) ; Statement: $r1 = r0.<org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[] fragments> 
(define-const var192 Int (getLength-Arr-var964-1 var495)) ; Statement: $i1 = lengthof $r1 
(define-const var2799 Int (- var192 1)) ; Statement: $i2 = $i1 - 1 
 ; Statement: if i7 >= $i2 goto $r3 = r0.<org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[] fragments> 
(assert (>= var3720 var2799)) ; Cond: i7 >= $i2 
(define-const var321 (Array Int var964) (fragments/-1286120409 var558)) ; Statement: $r3 = r0.<org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[] fragments> 
(define-const var2332 (Array Int var964) (fragments/-1286120409 var558)) ; Statement: $r2 = r0.<org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[] fragments> 
(define-const var1580 Int (getLength-Arr-var964-1 var2332)) ; Statement: $i3 = lengthof $r2 
(define-const var503 Int (- var1580 1)) ; Statement: $i4 = $i3 - 1 
(define-const var3899 var964 (select var321 var503)) ; Statement: $r5 = $r3[$i4] 
(assert true) ; Non Conditional
(assert true)
(define-const var1434 Int (length/-1112840705 var3246)) ; Statement: $i8 = virtualinvoke r4.<java.lang.StringBuffer: int length()>() 
 ; Statement: if i6 >= $i8 goto return 
(assert (>= var3922 var1434)) ; Cond: i6 >= $i8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {fragments/-1286120409=([org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator], org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[]), getLength-Arr-var964-1=([org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[]], int), length/-1112840705=([java.lang.StringBuffer], int)}
; {var1596=org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator, var558=r0, var3877=i0, var3246=r4, var3922=i6, var3720=i7, var964=org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment, var495=$r1, var192=$i1, var2799=$i2, var321=$r3, var2332=$r2, var1580=$i3, var503=$i4, var3899=$r5, var1434=$i8}
; {org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator=var1596, r0=var558, i0=var3877, r4=var3246, i6=var3922, i7=var3720, org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment=var964, $r1=var495, $i1=var192, $i2=var2799, $r3=var321, $r2=var2332, $i3=var1580, $i4=var503, $r5=var3899, $i8=var1434}
;seq <java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 1}
;stmts r0 := @this: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator;	i0 := @parameter0: int;	r4 := @parameter1: java.lang.StringBuffer;	i6 = i0;	i7 = 0;	$r1 = r0.<org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[] fragments>;	$i1 = lengthof $r1;	$i2 = $i1 - 1;	if i7 >= $i2 goto $r3 = r0.<org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[] fragments>;	$r3 = r0.<org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[] fragments>;	$r2 = r0.<org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviator: org.apache.log4j.pattern.NameAbbreviator$PatternAbbreviatorFragment[] fragments>;	$i3 = lengthof $r2;	$i4 = $i3 - 1;	$r5 = $r3[$i4];	$i8 = virtualinvoke r4.<java.lang.StringBuffer: int length()>();	if i6 >= $i8 goto return;	return
;block_num 5