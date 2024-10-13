(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var982 0)
(declare-sort var1333 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1333_toUpperCase/1913344327 (Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-String String)
(declare-const var2530 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2530 null-String)))
(assert true)
(define-const var2876 String (replaceAll/1692887130 var2530 "[()]" "")) ; Statement: r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "") 
(assert (= (replaceAll/1692887130 var2530 "[()]" "") (str.replace_re_all var2530 (re.union (str.to_re "(") (str.to_re ")")) "")))
(assert true)
(define-const var802 Int (length/-134980193 var2876)) ; Statement: $i0 = virtualinvoke r6.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var802 9))) ; Cond: $i0 != 9 
(assert (and true (and (> (str.len var2876) 0) (<= 0 0))))
(define-const var2000 Int (charAt/698050440 var2876 0)) ; Statement: $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0) 
(define-const var3009 Int (var1333_toUpperCase/1913344327 var2000)) ; Statement: $c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1) 
(define-const var2250 Int (cast-from-Int-to-Int var3009)) ; Statement: $i25 = (int) $c2 
(define-const var2730 Int (- var2250 55)) ; Statement: $i3 = $i25 - 55 
(define-const var394 Int (* var2730 8)) ; Statement: $i4 = $i3 * 8 
(define-const var3311 Int (+ 522 var394)) ; Statement: i19 = 522 + $i4 
(assert true) ; Non Conditional
(assert (and true (and (>= 1 0) (>= (str.len var2876) 7) (>= 7 1))))
(define-const var1569 String (substring/-1240304868 var2876 1 7)) ; Statement: $r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7) 
(assert (and true (and (>= 7 0) (>= (str.len var2876) 8) (>= 8 7))))
(define-const var3970 String (substring/-1240304868 var2876 7 8)) ; Statement: $r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8) 
(assert true)
(define-const var1857 (Array Int Int) (toCharArray/415275702 var1569)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>() 
(define-const var100 Int 7) ; Statement: i20 = 7 
(define-const var105 Int (getLength-Arr-Int-1 var1857)) ; Statement: $i18 = lengthof $r5 
(define-const var1107 Int 0) ; Statement: i21 = 0 
(assert true) ; Non Conditional
 ; Statement: if i21 >= $i18 goto $r1 = "A" 
(assert (>= var1107 var105)) ; Cond: i21 >= $i18 
(define-const var2993 String "A") ; Statement: $r1 = "A" 
(assert true)
(define-const var682 Bool (equalsIgnoreCase/-92311102 var2993 var3970)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4) 
 ; Statement: if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4) 
(assert (not (= (ite var682 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1229 Int (+ var3311 10)) ; Statement: i22 = i19 + 10 
 ; Statement: goto [?= $i6 = i22 % 11] 
(assert true) ; Non Conditional
(define-const var3334 Int (mod var1229 11)) ; Statement: $i6 = i22 % 11 
 ; Statement: if $i6 != 0 goto $z1 = 0 
(assert (not (= var3334 0))) ; Cond: $i6 != 0 
(define-const var2901 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), var1333_toUpperCase/1913344327=([char], char), cast-from-Int-to-Int=([char], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2530=r0, var982=null_type, var2876=r6, var802=$i0, var2000=$c1, var1333=java.lang.Character, var3009=$c2, var2250=$i25, var2730=$i3, var394=$i4, var3311=i19, var1569=$r3, var3970=$r4, var1857=$r5, var100=i20, var105=$i18, var1107=i21, var2993=$r1, var682=$z0, var1229=i22, var3334=$i6, var2901=$z1}
; {r0=var2530, null_type=var982, r6=var2876, $i0=var802, $c1=var2000, java.lang.Character=var1333, $c2=var3009, $i25=var2250, $i3=var2730, $i4=var394, i19=var3311, $r3=var1569, $r4=var3970, $r5=var1857, i20=var100, $i18=var105, i21=var1107, $r1=var2993, $z0=var682, i22=var1229, $i6=var3334, $z1=var2901}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 2,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r6 = virtualinvoke r0.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("[()]", "");	$i0 = virtualinvoke r6.<java.lang.String: int length()>();	if $i0 != 9 goto $c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c1 = virtualinvoke r6.<java.lang.String: char charAt(int)>(0);	$c2 = staticinvoke <java.lang.Character: char toUpperCase(char)>($c1);	$i25 = (int) $c2;	$i3 = $i25 - 55;	$i4 = $i3 * 8;	i19 = 522 + $i4;	$r3 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(1, 7);	$r4 = virtualinvoke r6.<java.lang.String: java.lang.String substring(int,int)>(7, 8);	$r5 = virtualinvoke $r3.<java.lang.String: char[] toCharArray()>();	i20 = 7;	$i18 = lengthof $r5;	i21 = 0;	if i21 >= $i18 goto $r1 = "A";	$r1 = "A";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r4);	if $z0 == 0 goto $i5 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String)>($r4);	i22 = i19 + 10;	goto [?= $i6 = i22 % 11];	$i6 = i22 % 11;	if $i6 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 9