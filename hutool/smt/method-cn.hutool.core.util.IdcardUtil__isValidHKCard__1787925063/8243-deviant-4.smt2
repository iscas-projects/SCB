(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2212 0)
(declare-sort var2883 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2883_toUpperCase/1913344327 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var895 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var895 null-String)))
(assert true)
(define-const var348 String (replaceAll/1692887130 var895 "[()]" "")) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "") 
(assert (= (replaceAll/1692887130 var895 "[()]" "") (str.replace_re_all var895 (re.union (str.to_re "(") (str.to_re ")")) "")))
(assert true)
(define-const var1211 Int (length/-134980193 var348)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var1211 9)))) ; Negate: Cond: $i0 != 9  
(assert (and true (and (> (str.len var348) 0) (<= 0 0))))
(define-const var301 Int (charAt/698050440 var348 0)) ; Statement: $c10 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(define-const var666 Int (var2883_toUpperCase/1913344327 var301)) ; Statement: $c11 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c10) 
(define-const var3306 Int (cast-from-Int-to-Int var666)) ; Statement: $i23 = (int) $c11 
(define-const var3697 Int (- var3306 55)) ; Statement: $i12 = $i23 - 55 
(define-const var3224 Int (* var3697 9)) ; Statement: $i17 = $i12 * 9 
(assert (and true (and (> (str.len var348) 1) (<= 0 1))))
(define-const var1796 Int (charAt/698050440 var348 1)) ; Statement: $c13 = virtualinvoke r6.<java.lang.String: char charAt(int)>(1) 
(define-const var3324 Int (var2883_toUpperCase/1913344327 var1796)) ; Statement: $c14 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c13) 
(define-const var1720 Int (cast-from-Int-to-Int var3324)) ; Statement: $i24 = (int) $c14 
(define-const var501 Int (- var1720 55)) ; Statement: $i15 = $i24 - 55 
(define-const var3850 Int (* var501 8)) ; Statement: $i16 = $i15 * 8 
(define-const var3309 Int (+ var3224 var3850)) ; Statement: i19 = $i17 + $i16 
(assert (and true (and (>= 1 0) (>= (str.len var348) 9) (>= 9 1))))
(define-const var348!1 String (substring/-1240304868 var348 1 9)) ; Statement: r6 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 9) 
 ; Statement: goto [?= $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7)] 
(assert true) ; Non Conditional
(assert (and true (and (>= 1 0) (>= (str.len var348!1) 7) (>= 7 1))))
(define-const var2790 String (substring/-1240304868 var348!1 1 7)) ; Statement: $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7) 
(assert (not (and true (and (>= 7 0) (>= (str.len var348!1) 8) (>= 8 7)))))
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var2883_toUpperCase/1913344327=([char], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var895=r0, var2212=null_type, var348=r6, var1211=$i0, var301=$c10, var2883=java.lang.Character, var666=$c11, var3306=$i23, var3697=$i12, var3224=$i17, var1796=$c13, var3324=$c14, var1720=$i24, var501=$i15, var3850=$i16, var3309=i19, var2790=$r3, var1651=$r4, var2145=$r5, var568=i20, var2162=$i18, var823=i21, var2688=$r1, var973=$z0, var3053=i22, var1107=$i6, var667=$z1}
; {r0=var895, null_type=var2212, r6=var348, $i0=var1211, $c10=var301, java.lang.Character=var2883, $c11=var666, $i23=var3306, $i12=var3697, $i17=var3224, $c13=var1796, $c14=var3324, $i24=var1720, $i15=var501, $i16=var3850, i19=var3309, $r3=var2790, $r4=var1651, $r5=var2145, i20=var568, $i18=var2162, i21=var823, $r1=var2688, $z0=var973, i22=var3053, $i6=var1107, $z1=var667}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 3,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "");	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c10 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c11 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c10);	$i23 = (int) $c11;	$i12 = $i23 - 55;	$i17 = $i12 * 9;	$c13 = virtualinvoke r6.<java.lang.String: char charAt(int)>(1);	$c14 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c13);	$i24 = (int) $c14;	$i15 = $i24 - 55;	$i16 = $i15 * 8;	i19 = $i17 + $i16;	r6 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 9);	goto [?= $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7)];	$r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7);	$r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8);	$r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	i20 = 7;	$i18 = lengthof $r5;	i21 = 0;	if i21 >= $i18 goto $r1 = "A";	$r1 = "A";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	i22 = i19 + 10;	goto [?= $i6 = i22 % 11];	$i6 = i22 % 11;	if $i6 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 9