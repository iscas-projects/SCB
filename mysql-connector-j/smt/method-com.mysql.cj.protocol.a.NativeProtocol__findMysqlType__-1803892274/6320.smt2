(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1259 0)
(declare-sort var2172 0)
(declare-sort var334 0)
(declare-sort var3959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/1489591041 (var2172) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1259 var1259)
(declare-const null-Int Int)
(declare-const null-var2172 var2172)
(declare-const null-String String)
(declare-const var3959-YEAR var3959)
(declare-const var1142 var1259) ; Statement: r5 := @parameter0: com.mysql.cj.conf.PropertySet 
(assert (not (= var1142 null-var1259)))
(declare-const var567 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var567 null-Int)))
(declare-const var2775 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var2775 null-Int)))
(declare-const var3985 Int) ; Statement: l6 := @parameter3: long 
(assert (not (= var3985 null-Int)))
(declare-const var3807 var2172) ; Statement: r1 := @parameter4: com.mysql.cj.util.LazyString 
(assert (not (= var3807 null-var2172)))
(declare-const var2368 var2172) ; Statement: r0 := @parameter5: com.mysql.cj.util.LazyString 
(assert (not (= var2368 null-var2172)))
(declare-const var736 Int) ; Statement: i13 := @parameter6: int 
(assert (not (= var736 null-Int)))
(declare-const var2689 String) ; Statement: r2 := @parameter7: java.lang.String 
(assert (not (= var2689 null-String)))
(define-const var2082 Int (bv2nat (bvand ((_ int2bv 64) var2775) ((_ int2bv 64) 32)))) ; Statement: $s1 = s0 & 32 
(define-const var2784 Int (cast-from-Int-to-Int var2082)) ; Statement: $i16 = (int) $s1 
 ; Statement: if $i16 <= 0 goto $z17 = 0 
(assert (not (<= var2784 0))) ; Negate: Cond: $i16 <= 0  
(define-const var535 Bool (ite (= 1 1) true false)) ; Statement: $z17 = 1 
 ; Statement: goto [?= z0 = $z17] 
(assert true) ; Non Conditional
(define-const var328 Bool var535) ; Statement: z0 = $z17 
(assert true)
(define-const var963 Int (length/1489591041 var2368)) ; Statement: $i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i2 != 0 goto $z18 = 0 
(assert (not (= var963 0))) ; Cond: $i2 != 0 
(define-const var132 Bool (ite (= 1 0) true false)) ; Statement: $z18 = 0 
(assert true) ; Non Conditional
(define-const var2429 Bool var132) ; Statement: z1 = $z18 
(define-const var651 Int (bv2nat (bvand ((_ int2bv 64) var2775) ((_ int2bv 64) 128)))) ; Statement: $s3 = s0 & 128 
(define-const var924 Int (cast-from-Int-to-Int var651)) ; Statement: $i17 = (int) $s3 
 ; Statement: if $i17 <= 0 goto $z19 = 0 
(assert (<= var924 0)) ; Cond: $i17 <= 0 
(define-const var1083 Bool (ite (= 1 0) true false)) ; Statement: $z19 = 0 
(assert true) ; Non Conditional
(define-const var848 Bool var1083) ; Statement: z2 = $z19 
(assert true)
(define-const var3857 Int (length/1489591041 var3807)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i4 <= 0 goto $z20 = 0 
(assert (<= var3857 0)) ; Cond: $i4 <= 0 
(define-const var1823 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(assert true) ; Non Conditional
(define-const var1593 Bool var1823) ; Statement: z3 = $z20 
 ; Statement: if z2 == 0 goto $r82 = "binary" 
(assert (= (ite var848 1 0) 0)) ; Cond: z2 == 0 
(define-const var3320 String "binary") ; Statement: $r82 = "binary" 
(assert true)
(define-const var504 Bool (equalsIgnoreCase/-92311102 var3320 var2689)) ; Statement: $z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
(assert true) ; Non Conditional
 ; Statement: lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; } 
(assert (and (= var567 13) (and (not (= var567 12)) (and (not (= var567 11)) (and (not (= var567 10)) (and (not (= var567 9)) (and (not (= var567 8)) (and (not (= var567 7)) (and (not (= var567 6)) (and (not (= var567 5)) (and (not (= var567 4)) (and (not (= var567 3)) (and (not (= var567 2)) (and (not (= var567 1)) (and (not (= var567 0)) true))))))))))))))) ; Intersect: Cond: i5 == 13  and Intersect: Negate: Cond: i5 == 12   and Intersect: Negate: Cond: i5 == 11   and Intersect: Negate: Cond: i5 == 10   and Intersect: Negate: Cond: i5 == 9   and Intersect: Negate: Cond: i5 == 8   and Intersect: Negate: Cond: i5 == 7   and Intersect: Negate: Cond: i5 == 6   and Intersect: Negate: Cond: i5 == 5   and Intersect: Negate: Cond: i5 == 4   and Intersect: Negate: Cond: i5 == 3   and Intersect: Negate: Cond: i5 == 2   and Intersect: Negate: Cond: i5 == 1   and Intersect: Negate: Cond: i5 == 0   and Non Conditional              
(define-const var115 var3959 var3959-YEAR) ; Statement: $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: return $r64 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), length/1489591041=([com.mysql.cj.util.LazyString], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1259=com.mysql.cj.conf.PropertySet, var1142=r5, var567=i5, var2775=s0, var3985=l6, var2172=com.mysql.cj.util.LazyString, var3807=r1, var2368=r0, var736=i13, var2689=r2, var334=null_type, var2082=$s1, var2784=$i16, var535=$z17, var328=z0, var963=$i2, var132=$z18, var2429=z1, var651=$s3, var924=$i17, var1083=$z19, var848=z2, var3857=$i4, var1823=$z20, var1593=z3, var3320=$r82, var504=$z21, var3959=com.mysql.cj.MysqlType, var115=$r64}
; {com.mysql.cj.conf.PropertySet=var1259, r5=var1142, i5=var567, s0=var2775, l6=var3985, com.mysql.cj.util.LazyString=var2172, r1=var3807, r0=var2368, i13=var736, r2=var2689, null_type=var334, $s1=var2082, $i16=var2784, $z17=var535, z0=var328, $i2=var963, $z18=var132, z1=var2429, $s3=var651, $i17=var924, $z19=var1083, z2=var848, $i4=var3857, $z20=var1823, z3=var1593, $r82=var3320, $z21=var504, com.mysql.cj.MysqlType=var3959, $r64=var115}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r5 := @parameter0: com.mysql.cj.conf.PropertySet;	i5 := @parameter1: int;	s0 := @parameter2: short;	l6 := @parameter3: long;	r1 := @parameter4: com.mysql.cj.util.LazyString;	r0 := @parameter5: com.mysql.cj.util.LazyString;	i13 := @parameter6: int;	r2 := @parameter7: java.lang.String;	$s1 = s0 & 32;	$i16 = (int) $s1;	if $i16 <= 0 goto $z17 = 0;	$z17 = 1;	goto [?= z0 = $z17];	z0 = $z17;	$i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>();	if $i2 != 0 goto $z18 = 0;	$z18 = 0;	z1 = $z18;	$s3 = s0 & 128;	$i17 = (int) $s3;	if $i17 <= 0 goto $z19 = 0;	$z19 = 0;	z2 = $z19;	$i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>();	if $i4 <= 0 goto $z20 = 0;	$z20 = 0;	z3 = $z20;	if z2 == 0 goto $r82 = "binary";	$r82 = "binary";	$z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; };	$r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	return $r64
;block_num 12