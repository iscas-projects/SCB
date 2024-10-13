(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2235 0)
(declare-sort var1584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1584_toUpperCase/1913344327 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-String String)
(declare-const var544 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var544 null-String)))
(assert true)
(define-const var3718 String (replaceAll/1692887130 var544 "[()]" "")) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "") 
(assert (= (replaceAll/1692887130 var544 "[()]" "") (str.replace_re_all var544 (re.union (str.to_re "(") (str.to_re ")")) "")))
(assert true)
(define-const var1076 Int (length/-134980193 var3718)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var1076 9))) ; Cond: $i0 != 9 
(assert (and true (and (> (str.len var3718) 0) (<= 0 0))))
(define-const var3581 Int (charAt/698050440 var3718 0)) ; Statement: $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(define-const var284 Int (var1584_toUpperCase/1913344327 var3581)) ; Statement: $c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1) 
(define-const var337 Int (cast-from-Int-to-Int var284)) ; Statement: $i25 = (int) $c2 
(define-const var1794 Int (- var337 55)) ; Statement: $i3 = $i25 - 55 
(define-const var3817 Int (* var1794 8)) ; Statement: $i4 = $i3 * 8 
(define-const var3307 Int (+ 522 var3817)) ; Statement: i19 = 522 + $i4 
(assert true) ; Non Conditional
(assert (and true (and (>= 1 0) (>= (str.len var3718) 7) (>= 7 1))))
(define-const var3998 String (substring/-1240304868 var3718 1 7)) ; Statement: $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7) 
(assert (not (and true (and (>= 7 0) (>= (str.len var3718) 8) (>= 8 7)))))
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var1584_toUpperCase/1913344327=([char], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), Int_parseInt/1370970945=([java.lang.String], int)}
; {var544=r0, var2235=null_type, var3718=r6, var1076=$i0, var3581=$c1, var1584=java.lang.Character, var284=$c2, var337=$i25, var1794=$i3, var3817=$i4, var3307=i19, var3998=$r3, var2116=$r4, var2394=$r5, var3381=i20, var3984=$i18, var2345=i21, var3645=$r1, var1542=$z0, var364=$i5, var848=i22, var1019=$i6, var3218=$z1}
; {r0=var544, null_type=var2235, r6=var3718, $i0=var1076, $c1=var3581, java.lang.Character=var1584, $c2=var284, $i25=var337, $i3=var1794, $i4=var3817, i19=var3307, $r3=var3998, $r4=var2116, $r5=var2394, i20=var3381, $i18=var3984, i21=var2345, $r1=var3645, $z0=var1542, $i5=var364, i22=var848, $i6=var1019, $z1=var3218}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 2,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "");	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1);	$i25 = (int) $c2;	$i3 = $i25 - 55;	$i4 = $i3 * 8;	i19 = 522 + $i4;	$r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7);	$r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8);	$r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	i20 = 7;	$i18 = lengthof $r5;	i21 = 0;	if i21 >= $i18 goto $r1 = "A";	$r1 = "A";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	i22 = i19 + $i5;	$i6 = i22 % 11;	if $i6 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 9