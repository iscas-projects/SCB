(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2974 0)
(declare-sort var2643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2643_toUpperCase/1913344327 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-String String)
(declare-const var2576 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2576 null-String)))
(assert true)
(define-const var1034 String (replaceAll/1692887130 var2576 "[()]" "")) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "") 
(assert (= (replaceAll/1692887130 var2576 "[()]" "") (str.replace_re_all var2576 (re.union (str.to_re "(") (str.to_re ")")) "")))
(assert true)
(define-const var2919 Int (length/-134980193 var1034)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var2919 9)))) ; Negate: Cond: $i0 != 9  
(assert (and true (and (> (str.len var1034) 0) (<= 0 0))))
(define-const var3506 Int (charAt/698050440 var1034 0)) ; Statement: $c10 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(define-const var282 Int (var2643_toUpperCase/1913344327 var3506)) ; Statement: $c11 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c10) 
(define-const var500 Int (cast-from-Int-to-Int var282)) ; Statement: $i23 = (int) $c11 
(define-const var94 Int (- var500 55)) ; Statement: $i12 = $i23 - 55 
(define-const var3196 Int (* var94 9)) ; Statement: $i17 = $i12 * 9 
(assert (and true (and (> (str.len var1034) 1) (<= 0 1))))
(define-const var360 Int (charAt/698050440 var1034 1)) ; Statement: $c13 = virtualinvoke r6.<java.lang.String: char charAt(int)>(1) 
(define-const var1721 Int (var2643_toUpperCase/1913344327 var360)) ; Statement: $c14 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c13) 
(define-const var127 Int (cast-from-Int-to-Int var1721)) ; Statement: $i24 = (int) $c14 
(define-const var3286 Int (- var127 55)) ; Statement: $i15 = $i24 - 55 
(define-const var1415 Int (* var3286 8)) ; Statement: $i16 = $i15 * 8 
(define-const var1192 Int (+ var3196 var1415)) ; Statement: i19 = $i17 + $i16 
(assert (not (and true (and (>= 1 0) (>= (str.len var1034) 9) (>= 9 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var2643_toUpperCase/1913344327=([char], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), Int_parseInt/1370970945=([java.lang.String], int)}
; {var2576=r0, var2974=null_type, var1034=r6, var2919=$i0, var3506=$c10, var2643=java.lang.Character, var282=$c11, var500=$i23, var94=$i12, var3196=$i17, var360=$c13, var1721=$c14, var127=$i24, var3286=$i15, var1415=$i16, var1192=i19, var2132=$r3, var1554=$r4, var2851=$r5, var2348=i20, var2060=$i18, var1746=i21, var191=$r1, var409=$z0, var2632=$i5, var2930=i22, var319=$i6, var1274=$z1}
; {r0=var2576, null_type=var2974, r6=var1034, $i0=var2919, $c10=var3506, java.lang.Character=var2643, $c11=var282, $i23=var500, $i12=var94, $i17=var3196, $c13=var360, $c14=var1721, $i24=var127, $i15=var3286, $i16=var1415, i19=var1192, $r3=var2132, $r4=var1554, $r5=var2851, i20=var2348, $i18=var2060, i21=var1746, $r1=var191, $z0=var409, $i5=var2632, i22=var2930, $i6=var319, $z1=var1274}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 3,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "");	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c10 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c11 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c10);	$i23 = (int) $c11;	$i12 = $i23 - 55;	$i17 = $i12 * 9;	$c13 = virtualinvoke r6.<java.lang.String: char charAt(int)>(1);	$c14 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c13);	$i24 = (int) $c14;	$i15 = $i24 - 55;	$i16 = $i15 * 8;	i19 = $i17 + $i16;	r6 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 9);	goto [?= $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7)];	$r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7);	$r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8);	$r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	i20 = 7;	$i18 = lengthof $r5;	i21 = 0;	if i21 >= $i18 goto $r1 = "A";	$r1 = "A";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	i22 = i19 + $i5;	$i6 = i22 % 11;	if $i6 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 9