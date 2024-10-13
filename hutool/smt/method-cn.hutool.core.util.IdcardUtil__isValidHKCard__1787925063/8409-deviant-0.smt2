(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var541 0)
(declare-sort var3762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var3762_toUpperCase/1913344327 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun Int_parseInt/1370970945 (String) Int)
(declare-const null-String String)
(declare-const var2878 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2878 null-String)))
(assert true)
(define-const var2205 String (replaceAll/1692887130 var2878 "[()]" "")) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "") 
(assert (= (replaceAll/1692887130 var2878 "[()]" "") (str.replace_re_all var2878 (re.union (str.to_re "(") (str.to_re ")")) "")))
(assert true)
(define-const var1690 Int (length/-134980193 var2205)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var1690 9)))) ; Negate: Cond: $i0 != 9  
(assert (not (and true (and (> (str.len var2205) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var3762_toUpperCase/1913344327=([char], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), Int_parseInt/1370970945=([java.lang.String], int)}
; {var2878=r0, var541=null_type, var2205=r6, var1690=$i0, var3805=$c10, var3762=java.lang.Character, var2984=$c11, var1385=$i23, var80=$i12, var1290=$i17, var3533=$c13, var1115=$c14, var1338=$i24, var1663=$i15, var3049=$i16, var2904=i19, var2022=$r3, var1855=$r4, var1505=$r5, var3827=i20, var2953=$i18, var1103=i21, var2044=$r1, var267=$z0, var2711=$i5, var3099=i22, var2729=$i6, var3582=$z1}
; {r0=var2878, null_type=var541, r6=var2205, $i0=var1690, $c10=var3805, java.lang.Character=var3762, $c11=var2984, $i23=var1385, $i12=var80, $i17=var1290, $c13=var3533, $c14=var1115, $i24=var1338, $i15=var1663, $i16=var3049, i19=var2904, $r3=var2022, $r4=var1855, $r5=var1505, i20=var3827, $i18=var2953, i21=var1103, $r1=var2044, $z0=var267, $i5=var2711, i22=var3099, $i6=var2729, $z1=var3582}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 3,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "");	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c10 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c11 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c10);	$i23 = (int) $c11;	$i12 = $i23 - 55;	$i17 = $i12 * 9;	$c13 = virtualinvoke r6.<java.lang.String: char charAt(int)>(1);	$c14 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c13);	$i24 = (int) $c14;	$i15 = $i24 - 55;	$i16 = $i15 * 8;	i19 = $i17 + $i16;	r6 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 9);	goto [?= $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7)];	$r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7);	$r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8);	$r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	i20 = 7;	$i18 = lengthof $r5;	i21 = 0;	if i21 >= $i18 goto $r1 = "A";	$r1 = "A";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	$i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	i22 = i19 + $i5;	$i6 = i22 % 11;	if $i6 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 9