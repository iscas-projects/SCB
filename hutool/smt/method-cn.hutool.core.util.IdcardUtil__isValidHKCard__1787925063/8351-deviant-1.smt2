(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3820 0)
(declare-sort var1857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1857_toUpperCase/1913344327 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var3513 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3513 null-String)))
(assert true)
(define-const var3708 String (replaceAll/1692887130 var3513 "[()]" "")) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "") 
(assert (= (replaceAll/1692887130 var3513 "[()]" "") (str.replace_re_all var3513 (re.union (str.to_re "(") (str.to_re ")")) "")))
(assert true)
(define-const var1890 Int (length/-134980193 var3708)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var1890 9)))) ; Negate: Cond: $i0 != 9  
(assert (and true (and (> (str.len var3708) 0) (<= 0 0))))
(define-const var3686 Int (charAt/698050440 var3708 0)) ; Statement: $c10 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(define-const var1190 Int (var1857_toUpperCase/1913344327 var3686)) ; Statement: $c11 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c10) 
(define-const var1937 Int (cast-from-Int-to-Int var1190)) ; Statement: $i23 = (int) $c11 
(define-const var2483 Int (- var1937 55)) ; Statement: $i12 = $i23 - 55 
(define-const var1118 Int (* var2483 9)) ; Statement: $i17 = $i12 * 9 
(assert (not (and true (and (> (str.len var3708) 1) (<= 0 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var1857_toUpperCase/1913344327=([char], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3513=r0, var3820=null_type, var3708=r6, var1890=$i0, var3686=$c10, var1857=java.lang.Character, var1190=$c11, var1937=$i23, var2483=$i12, var1118=$i17, var2587=$c13, var3919=$c14, var1229=$i24, var2172=$i15, var3046=$i16, var3171=i19, var3694=$r3, var3287=$r4, var3959=$r5, var1271=i20, var777=$i18, var3508=i21, var3394=$r1, var1297=$z0, var710=i22, var3393=$i6, var1513=$z1}
; {r0=var3513, null_type=var3820, r6=var3708, $i0=var1890, $c10=var3686, java.lang.Character=var1857, $c11=var1190, $i23=var1937, $i12=var2483, $i17=var1118, $c13=var2587, $c14=var3919, $i24=var1229, $i15=var2172, $i16=var3046, i19=var3171, $r3=var3694, $r4=var3287, $r5=var3959, i20=var1271, $i18=var777, i21=var3508, $r1=var3394, $z0=var1297, i22=var710, $i6=var3393, $z1=var1513}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 3,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "");	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c10 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c11 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c10);	$i23 = (int) $c11;	$i12 = $i23 - 55;	$i17 = $i12 * 9;	$c13 = virtualinvoke r6.<java.lang.String: char charAt(int)>(1);	$c14 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c13);	$i24 = (int) $c14;	$i15 = $i24 - 55;	$i16 = $i15 * 8;	i19 = $i17 + $i16;	r6 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 9);	goto [?= $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7)];	$r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7);	$r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8);	$r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	i20 = 7;	$i18 = lengthof $r5;	i21 = 0;	if i21 >= $i18 goto $r1 = "A";	$r1 = "A";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	i22 = i19 + 10;	goto [?= $i6 = i22 % 11];	$i6 = i22 % 11;	if $i6 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 9