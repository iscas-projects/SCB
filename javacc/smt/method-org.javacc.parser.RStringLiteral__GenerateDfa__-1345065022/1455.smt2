(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3932 0)
(declare-sort var444 0)
(declare-sort var3555 0)
(declare-sort var2879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinal/319082119 (var3555) Int)
(declare-fun cast-from-var3932-to-var3555 (var3932) var3555)
(declare-fun image/-300401223 (var3932) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var2879_max/1360571700 (Int Int) Int)
(declare-const null-var3932 var3932)
(declare-const null-var444 var444)
(declare-const null-Int Int)
(declare-const var3932-maxStrKind Int)
(declare-const var3932-maxLen Int)
(declare-const var3932-maxLenForActive (Array Int Int))
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3932-allImages (Array Int String))
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var2233 var3932) ; Statement: r0 := @this: org.javacc.parser.RStringLiteral 
(assert (not (= var2233 null-var3932)))
(declare-const var3804 var444) ; Statement: r59 := @parameter0: org.javacc.parser.CodeGenerator 
(assert (not (= var3804 null-var444)))
(declare-const var2333 Int) ; Statement: i36 := @parameter1: int 
(assert (not (= var2333 null-Int)))
(define-const var206 Int var3932-maxStrKind) ; Statement: $i1 = <org.javacc.parser.RStringLiteral: int maxStrKind> 
(define-const var860 Int (ordinal/319082119 (cast-from-var3932-to-var3555 var2233))) ; Statement: $i0 = r0.<org.javacc.parser.RStringLiteral: int ordinal> 
 ; Statement: if $i1 > $i0 goto $r1 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image> 
(assert (> var206 var860)) ; Cond: $i1 > $i0 
(define-const var1981 String (image/-300401223 var2233)) ; Statement: $r1 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image> 
(assert true)
(define-const var2366 Int (length/-134980193 var1981)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var637 Int var3932-maxLen) ; Statement: $i3 = <org.javacc.parser.RStringLiteral: int maxLen> 
 ; Statement: if $i2 <= $i3 goto i37 = 0 
(assert (<= var2366 var637)) ; Cond: $i2 <= $i3 
(define-const var2573 Int 0) ; Statement: i37 = 0 
(assert true) ; Non Conditional
 ; Statement: if i37 >= $i2 goto $r3 = <org.javacc.parser.RStringLiteral: int[] maxLenForActive> 
(assert (>= var2573 var2366)) ; Cond: i37 >= $i2 
(define-const var666 (Array Int Int) var3932-maxLenForActive) ; Statement: $r3 = <org.javacc.parser.RStringLiteral: int[] maxLenForActive> 
(define-const var2043 Int (ordinal/319082119 (cast-from-var3932-to-var3555 var2233))) ; Statement: $i4 = r0.<org.javacc.parser.RStringLiteral: int ordinal> 
(define-const var3099 Int (div var2043 64)) ; Statement: $i10 = $i4 / 64 
(define-const var2979 (Array Int Int) var3932-maxLenForActive) ; Statement: $r2 = <org.javacc.parser.RStringLiteral: int[] maxLenForActive> 
(define-const var2168 Int (ordinal/319082119 (cast-from-var3932-to-var3555 var2233))) ; Statement: $i5 = r0.<org.javacc.parser.RStringLiteral: int ordinal> 
(define-const var2474 Int (div var2168 64)) ; Statement: $i6 = $i5 / 64 
(define-const var2715 Int (select var2979 var2474)) ; Statement: $i8 = $r2[$i6] 
(define-const var1989 Int (- var2366 1)) ; Statement: $i7 = $i2 - 1 
(define-const var486 Int (var2879_max/1360571700 var2715 var1989)) ; Statement: $i9 = staticinvoke <java.lang.Math: int max(int,int)>($i8, $i7) 
(declare-const var666!1 (Array Int Int))
(assert (not (= var666!1 null-__Array__Int__Int__)))
(assert (= (select var666!1 var3099) var486)) ; Statement: $r3[$i10] = $i9 
(define-const var3067 (Array Int String) var3932-allImages) ; Statement: $r5 = <org.javacc.parser.RStringLiteral: java.lang.String[] allImages> 
(define-const var3642 Int (ordinal/319082119 (cast-from-var3932-to-var3555 var2233))) ; Statement: $i11 = r0.<org.javacc.parser.RStringLiteral: int ordinal> 
(define-const var809 String (image/-300401223 var2233)) ; Statement: $r4 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image> 
(declare-const var3067!1 (Array Int String))
(assert (not (= var3067!1 null-__Array__Int__String__)))
(assert (= (select var3067!1 var3642) var809)) ; Statement: $r5[$i11] = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinal/319082119=([org.javacc.parser.RegularExpression], int), cast-from-var3932-to-var3555=([org.javacc.parser.RStringLiteral], org.javacc.parser.RegularExpression), image/-300401223=([org.javacc.parser.RStringLiteral], java.lang.String), length/-134980193=([java.lang.String], int), var2879_max/1360571700=([int, int], int)}
; {var3932=org.javacc.parser.RStringLiteral, var2233=r0, var444=org.javacc.parser.CodeGenerator, var3804=r59, var2333=i36, var206=$i1, var3555=org.javacc.parser.RegularExpression, var860=$i0, var1981=$r1, var2366=$i2, var637=$i3, var2573=i37, var666=$r3, var2043=$i4, var3099=$i10, var2979=$r2, var2168=$i5, var2474=$i6, var2715=$i8, var1989=$i7, var2879=java.lang.Math, var486=$i9, var3067=$r5, var3642=$i11, var809=$r4}
; {org.javacc.parser.RStringLiteral=var3932, r0=var2233, org.javacc.parser.CodeGenerator=var444, r59=var3804, i36=var2333, $i1=var206, org.javacc.parser.RegularExpression=var3555, $i0=var860, $r1=var1981, $i2=var2366, $i3=var637, i37=var2573, $r3=var666, $i4=var2043, $i10=var3099, $r2=var2979, $i5=var2168, $i6=var2474, $i8=var2715, $i7=var1989, java.lang.Math=var2879, $i9=var486, $r5=var3067, $i11=var3642, $r4=var809}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: org.javacc.parser.RStringLiteral;	r59 := @parameter0: org.javacc.parser.CodeGenerator;	i36 := @parameter1: int;	$i1 = <org.javacc.parser.RStringLiteral: int maxStrKind>;	$i0 = r0.<org.javacc.parser.RStringLiteral: int ordinal>;	if $i1 > $i0 goto $r1 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image>;	$r1 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image>;	$i2 = virtualinvoke $r1.<java.lang.String: int length()>();	$i3 = <org.javacc.parser.RStringLiteral: int maxLen>;	if $i2 <= $i3 goto i37 = 0;	i37 = 0;	if i37 >= $i2 goto $r3 = <org.javacc.parser.RStringLiteral: int[] maxLenForActive>;	$r3 = <org.javacc.parser.RStringLiteral: int[] maxLenForActive>;	$i4 = r0.<org.javacc.parser.RStringLiteral: int ordinal>;	$i10 = $i4 / 64;	$r2 = <org.javacc.parser.RStringLiteral: int[] maxLenForActive>;	$i5 = r0.<org.javacc.parser.RStringLiteral: int ordinal>;	$i6 = $i5 / 64;	$i8 = $r2[$i6];	$i7 = $i2 - 1;	$i9 = staticinvoke <java.lang.Math: int max(int,int)>($i8, $i7);	$r3[$i10] = $i9;	$r5 = <org.javacc.parser.RStringLiteral: java.lang.String[] allImages>;	$i11 = r0.<org.javacc.parser.RStringLiteral: int ordinal>;	$r4 = r0.<org.javacc.parser.RStringLiteral: java.lang.String image>;	$r5[$i11] = $r4;	return
;block_num 5