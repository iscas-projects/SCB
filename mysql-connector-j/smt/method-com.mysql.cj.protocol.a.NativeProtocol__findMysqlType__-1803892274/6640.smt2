(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1866 0)
(declare-sort var3397 0)
(declare-sort var3164 0)
(declare-sort var1760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/1489591041 (var3397) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1866 var1866)
(declare-const null-Int Int)
(declare-const null-var3397 var3397)
(declare-const null-String String)
(declare-const var1760-GEOMETRY var1760)
(declare-const var2170 var1866) ; Statement: r5 := @parameter0: com.mysql.cj.conf.PropertySet 
(assert (not (= var2170 null-var1866)))
(declare-const var2466 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var2466 null-Int)))
(declare-const var3398 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var3398 null-Int)))
(declare-const var1860 Int) ; Statement: l6 := @parameter3: long 
(assert (not (= var1860 null-Int)))
(declare-const var1845 var3397) ; Statement: r1 := @parameter4: com.mysql.cj.util.LazyString 
(assert (not (= var1845 null-var3397)))
(declare-const var3339 var3397) ; Statement: r0 := @parameter5: com.mysql.cj.util.LazyString 
(assert (not (= var3339 null-var3397)))
(declare-const var3320 Int) ; Statement: i13 := @parameter6: int 
(assert (not (= var3320 null-Int)))
(declare-const var1667 String) ; Statement: r2 := @parameter7: java.lang.String 
(assert (not (= var1667 null-String)))
(define-const var1923 Int (bv2nat (bvand ((_ int2bv 64) var3398) ((_ int2bv 64) 32)))) ; Statement: $s1 = s0 & 32 
(define-const var3918 Int (cast-from-Int-to-Int var1923)) ; Statement: $i16 = (int) $s1 
 ; Statement: if $i16 <= 0 goto $z17 = 0 
(assert (<= var3918 0)) ; Cond: $i16 <= 0 
(define-const var776 Bool (ite (= 1 0) true false)) ; Statement: $z17 = 0 
(assert true) ; Non Conditional
(define-const var2969 Bool var776) ; Statement: z0 = $z17 
(assert true)
(define-const var1046 Int (length/1489591041 var3339)) ; Statement: $i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i2 != 0 goto $z18 = 0 
(assert (not (not (= var1046 0)))) ; Negate: Cond: $i2 != 0  
(define-const var556 Bool (ite (= 1 1) true false)) ; Statement: $z18 = 1 
 ; Statement: goto [?= z1 = $z18] 
(assert true) ; Non Conditional
(define-const var1539 Bool var556) ; Statement: z1 = $z18 
(define-const var123 Int (bv2nat (bvand ((_ int2bv 64) var3398) ((_ int2bv 64) 128)))) ; Statement: $s3 = s0 & 128 
(define-const var1638 Int (cast-from-Int-to-Int var123)) ; Statement: $i17 = (int) $s3 
 ; Statement: if $i17 <= 0 goto $z19 = 0 
(assert (<= var1638 0)) ; Cond: $i17 <= 0 
(define-const var365 Bool (ite (= 1 0) true false)) ; Statement: $z19 = 0 
(assert true) ; Non Conditional
(define-const var282 Bool var365) ; Statement: z2 = $z19 
(assert true)
(define-const var671 Int (length/1489591041 var1845)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i4 <= 0 goto $z20 = 0 
(assert (<= var671 0)) ; Cond: $i4 <= 0 
(define-const var139 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(assert true) ; Non Conditional
(define-const var1920 Bool var139) ; Statement: z3 = $z20 
 ; Statement: if z2 == 0 goto $r82 = "binary" 
(assert (= (ite var282 1 0) 0)) ; Cond: z2 == 0 
(define-const var996 String "binary") ; Statement: $r82 = "binary" 
(assert true)
(define-const var673 Bool (equalsIgnoreCase/-92311102 var996 var1667)) ; Statement: $z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
(assert true) ; Non Conditional
 ; Statement: lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; } 
(assert (and (= var2466 255) (and (not (= var2466 254)) (and (not (= var2466 253)) (and (not (= var2466 252)) (and (not (= var2466 251)) (and (not (= var2466 250)) (and (not (= var2466 249)) (and (not (= var2466 248)) (and (not (= var2466 247)) (and (not (= var2466 246)) (and (not (= var2466 245)) (and (not (= var2466 242)) (and (not (= var2466 16)) (and (not (= var2466 15)) (and (not (= var2466 13)) (and (not (= var2466 12)) (and (not (= var2466 11)) (and (not (= var2466 10)) (and (not (= var2466 9)) (and (not (= var2466 8)) (and (not (= var2466 7)) (and (not (= var2466 6)) (and (not (= var2466 5)) (and (not (= var2466 4)) (and (not (= var2466 3)) (and (not (= var2466 2)) (and (not (= var2466 1)) (and (not (= var2466 0)) true))))))))))))))))))))))))))))) ; Intersect: Cond: i5 == 255  and Intersect: Negate: Cond: i5 == 254   and Intersect: Negate: Cond: i5 == 253   and Intersect: Negate: Cond: i5 == 252   and Intersect: Negate: Cond: i5 == 251   and Intersect: Negate: Cond: i5 == 250   and Intersect: Negate: Cond: i5 == 249   and Intersect: Negate: Cond: i5 == 248   and Intersect: Negate: Cond: i5 == 247   and Intersect: Negate: Cond: i5 == 246   and Intersect: Negate: Cond: i5 == 245   and Intersect: Negate: Cond: i5 == 242   and Intersect: Negate: Cond: i5 == 16   and Intersect: Negate: Cond: i5 == 15   and Intersect: Negate: Cond: i5 == 13   and Intersect: Negate: Cond: i5 == 12   and Intersect: Negate: Cond: i5 == 11   and Intersect: Negate: Cond: i5 == 10   and Intersect: Negate: Cond: i5 == 9   and Intersect: Negate: Cond: i5 == 8   and Intersect: Negate: Cond: i5 == 7   and Intersect: Negate: Cond: i5 == 6   and Intersect: Negate: Cond: i5 == 5   and Intersect: Negate: Cond: i5 == 4   and Intersect: Negate: Cond: i5 == 3   and Intersect: Negate: Cond: i5 == 2   and Intersect: Negate: Cond: i5 == 1   and Intersect: Negate: Cond: i5 == 0   and Non Conditional                            
(define-const var3191 var1760 var1760-GEOMETRY) ; Statement: $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), length/1489591041=([com.mysql.cj.util.LazyString], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1866=com.mysql.cj.conf.PropertySet, var2170=r5, var2466=i5, var3398=s0, var1860=l6, var3397=com.mysql.cj.util.LazyString, var1845=r1, var3339=r0, var3320=i13, var1667=r2, var3164=null_type, var1923=$s1, var3918=$i16, var776=$z17, var2969=z0, var1046=$i2, var556=$z18, var1539=z1, var123=$s3, var1638=$i17, var365=$z19, var282=z2, var671=$i4, var139=$z20, var1920=z3, var996=$r82, var673=$z21, var1760=com.mysql.cj.MysqlType, var3191=$r3}
; {com.mysql.cj.conf.PropertySet=var1866, r5=var2170, i5=var2466, s0=var3398, l6=var1860, com.mysql.cj.util.LazyString=var3397, r1=var1845, r0=var3339, i13=var3320, r2=var1667, null_type=var3164, $s1=var1923, $i16=var3918, $z17=var776, z0=var2969, $i2=var1046, $z18=var556, z1=var1539, $s3=var123, $i17=var1638, $z19=var365, z2=var282, $i4=var671, $z20=var139, z3=var1920, $r82=var996, $z21=var673, com.mysql.cj.MysqlType=var1760, $r3=var3191}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r5 := @parameter0: com.mysql.cj.conf.PropertySet;	i5 := @parameter1: int;	s0 := @parameter2: short;	l6 := @parameter3: long;	r1 := @parameter4: com.mysql.cj.util.LazyString;	r0 := @parameter5: com.mysql.cj.util.LazyString;	i13 := @parameter6: int;	r2 := @parameter7: java.lang.String;	$s1 = s0 & 32;	$i16 = (int) $s1;	if $i16 <= 0 goto $z17 = 0;	$z17 = 0;	z0 = $z17;	$i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>();	if $i2 != 0 goto $z18 = 0;	$z18 = 1;	goto [?= z1 = $z18];	z1 = $z18;	$s3 = s0 & 128;	$i17 = (int) $s3;	if $i17 <= 0 goto $z19 = 0;	$z19 = 0;	z2 = $z19;	$i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>();	if $i4 <= 0 goto $z20 = 0;	$z20 = 0;	z3 = $z20;	if z2 == 0 goto $r82 = "binary";	$r82 = "binary";	$z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; };	$r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;	return $r3
;block_num 12