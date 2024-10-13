(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var485 0)
(declare-sort var75 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var75_toUpperCase/1913344327 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var1560 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1560 null-String)))
(assert true)
(define-const var374 String (replaceAll/1692887130 var1560 "[()]" "")) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "") 
(assert (= (replaceAll/1692887130 var1560 "[()]" "") (str.replace_re_all var1560 (re.union (str.to_re "(") (str.to_re ")")) "")))
(assert true)
(define-const var2149 Int (length/-134980193 var374)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var2149 9))) ; Cond: $i0 != 9 
(assert (and true (and (> (str.len var374) 0) (<= 0 0))))
(define-const var3487 Int (charAt/698050440 var374 0)) ; Statement: $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(define-const var1800 Int (var75_toUpperCase/1913344327 var3487)) ; Statement: $c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1) 
(define-const var303 Int (cast-from-Int-to-Int var1800)) ; Statement: $i25 = (int) $c2 
(define-const var678 Int (- var303 55)) ; Statement: $i3 = $i25 - 55 
(define-const var3654 Int (* var678 8)) ; Statement: $i4 = $i3 * 8 
(define-const var3477 Int (+ 522 var3654)) ; Statement: i19 = 522 + $i4 
(assert true) ; Non Conditional
(assert (not (and true (and (>= 1 0) (>= (str.len var374) 7) (>= 7 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var75_toUpperCase/1913344327=([char], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1560=r0, var485=null_type, var374=r6, var2149=$i0, var3487=$c1, var75=java.lang.Character, var1800=$c2, var303=$i25, var678=$i3, var3654=$i4, var3477=i19, var3109=$r3, var3848=$r4, var1672=$r5, var758=i20, var3141=$i18, var1379=i21, var981=$r1, var341=$z0, var2327=i22, var2839=$i6, var141=$z1}
; {r0=var1560, null_type=var485, r6=var374, $i0=var2149, $c1=var3487, java.lang.Character=var75, $c2=var1800, $i25=var303, $i3=var678, $i4=var3654, i19=var3477, $r3=var3109, $r4=var3848, $r5=var1672, i20=var758, $i18=var3141, i21=var1379, $r1=var981, $z0=var341, i22=var2327, $i6=var2839, $z1=var141}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 2,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "");	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1);	$i25 = (int) $c2;	$i3 = $i25 - 55;	$i4 = $i3 * 8;	i19 = 522 + $i4;	$r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7);	$r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8);	$r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	i20 = 7;	$i18 = lengthof $r5;	i21 = 0;	if i21 >= $i18 goto $r1 = "A";	$r1 = "A";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	i22 = i19 + 10;	goto [?= $i6 = i22 % 11];	$i6 = i22 % 11;	if $i6 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 9