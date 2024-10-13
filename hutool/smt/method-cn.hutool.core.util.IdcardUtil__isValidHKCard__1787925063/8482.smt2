(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var787 0)
(declare-sort var2194 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var2194_toUpperCase/1913344327 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-String String)
(declare-const var816 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var816 null-String)))
(assert true)
(define-const var2292 String (replaceAll/1692887130 var816 "[()]" "")) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "") 
(assert (= (replaceAll/1692887130 var816 "[()]" "") (str.replace_re_all var816 (re.union (str.to_re "(") (str.to_re ")")) "")))
(assert true)
(define-const var2205 Int (length/-134980193 var2292)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var2205 9))) ; Cond: $i0 != 9 
(assert (and true (and (> (str.len var2292) 0) (<= 0 0))))
(define-const var2733 Int (charAt/698050440 var2292 0)) ; Statement: $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(define-const var1204 Int (var2194_toUpperCase/1913344327 var2733)) ; Statement: $c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1) 
(define-const var1554 Int (cast-from-Int-to-Int var1204)) ; Statement: $i25 = (int) $c2 
(define-const var724 Int (- var1554 55)) ; Statement: $i3 = $i25 - 55 
(define-const var2807 Int (* var724 8)) ; Statement: $i4 = $i3 * 8 
(define-const var199 Int (+ 522 var2807)) ; Statement: i19 = 522 + $i4 
(assert true) ; Non Conditional
(assert (and true (and (>= 1 0) (>= (str.len var2292) 7) (>= 7 1))))
(define-const var1500 String (substring/-1240304868 var2292 1 7)) ; Statement: $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7) 
(assert (and true (and (>= 7 0) (>= (str.len var2292) 8) (>= 8 7))))
(define-const var855 String (substring/-1240304868 var2292 7 8)) ; Statement: $r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8) 
(assert true)
(define-const var2862 (Array Int Int) (toCharArray/415275702 var1500)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>() 
(define-const var2529 Int 7) ; Statement: i20 = 7 
(define-const var1849 Int (getLength-Arr-Int-1 var2862)) ; Statement: $i18 = lengthof $r5 
(define-const var2276 Int 0) ; Statement: i21 = 0 
(assert true) ; Non Conditional
 ; Statement: if i21 >= $i18 goto $r1 = "A" 
(assert (>= var2276 var1849)) ; Cond: i21 >= $i18 
(define-const var1643 String "A") ; Statement: $r1 = "A" 
(assert true)
(define-const var2873 Bool (equalsIgnoreCase/-92311102 var1643 var855)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4) 
 ; Statement: if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(assert (= (ite var2873 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1052 Int (Int_parseInt/1370970945 var855)) ; Statement: $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(define-const var94 Int (+ var199 var1052)) ; Statement: i22 = i19 + $i5 
(assert true) ; Non Conditional
(define-const var3306 Int (mod var94 11)) ; Statement: $i6 = i22 % 11 
 ; Statement: if $i6 != 0 goto $z1 = 0 
(assert (not (not (= var3306 0)))) ; Negate: Cond: $i6 != 0  
(define-const var77 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var2194_toUpperCase/1913344327=([char], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), Int_parseInt/1370970945=([java.lang.String], int)}
; {var816=r0, var787=null_type, var2292=r6, var2205=$i0, var2733=$c1, var2194=java.lang.Character, var1204=$c2, var1554=$i25, var724=$i3, var2807=$i4, var199=i19, var1500=$r3, var855=$r4, var2862=$r5, var2529=i20, var1849=$i18, var2276=i21, var1643=$r1, var2873=$z0, var1052=$i5, var94=i22, var3306=$i6, var77=$z1}
; {r0=var816, null_type=var787, r6=var2292, $i0=var2205, $c1=var2733, java.lang.Character=var2194, $c2=var1204, $i25=var1554, $i3=var724, $i4=var2807, i19=var199, $r3=var1500, $r4=var855, $r5=var2862, i20=var2529, $i18=var1849, i21=var2276, $r1=var1643, $z0=var2873, $i5=var1052, i22=var94, $i6=var3306, $z1=var77}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 2,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "");	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1);	$i25 = (int) $c2;	$i3 = $i25 - 55;	$i4 = $i3 * 8;	i19 = 522 + $i4;	$r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7);	$r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8);	$r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	i20 = 7;	$i18 = lengthof $r5;	i21 = 0;	if i21 >= $i18 goto $r1 = "A";	$r1 = "A";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	i22 = i19 + $i5;	$i6 = i22 % 11;	if $i6 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 9