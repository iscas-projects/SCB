(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var509 0)
(declare-sort var800 0)
(declare-sort var2824 0)
(declare-sort var2893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/1489591041 (var800) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var509 var509)
(declare-const null-Int Int)
(declare-const null-var800 var800)
(declare-const null-String String)
(declare-const var2893-YEAR var2893)
(declare-const var2020 var509) ; Statement: r5 := @parameter0: com.mysql.cj.conf.PropertySet 
(assert (not (= var2020 null-var509)))
(declare-const var1091 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var1091 null-Int)))
(declare-const var3279 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var3279 null-Int)))
(declare-const var2584 Int) ; Statement: l6 := @parameter3: long 
(assert (not (= var2584 null-Int)))
(declare-const var1832 var800) ; Statement: r1 := @parameter4: com.mysql.cj.util.LazyString 
(assert (not (= var1832 null-var800)))
(declare-const var546 var800) ; Statement: r0 := @parameter5: com.mysql.cj.util.LazyString 
(assert (not (= var546 null-var800)))
(declare-const var1431 Int) ; Statement: i13 := @parameter6: int 
(assert (not (= var1431 null-Int)))
(declare-const var967 String) ; Statement: r2 := @parameter7: java.lang.String 
(assert (not (= var967 null-String)))
(define-const var3732 Int (bv2nat (bvand ((_ int2bv 64) var3279) ((_ int2bv 64) 32)))) ; Statement: $s1 = s0 & 32 
(define-const var1802 Int (cast-from-Int-to-Int var3732)) ; Statement: $i16 = (int) $s1 
 ; Statement: if $i16 <= 0 goto $z17 = 0 
(assert (<= var1802 0)) ; Cond: $i16 <= 0 
(define-const var1827 Bool (ite (= 1 0) true false)) ; Statement: $z17 = 0 
(assert true) ; Non Conditional
(define-const var3441 Bool var1827) ; Statement: z0 = $z17 
(assert true)
(define-const var2282 Int (length/1489591041 var546)) ; Statement: $i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i2 != 0 goto $z18 = 0 
(assert (not (= var2282 0))) ; Cond: $i2 != 0 
(define-const var1813 Bool (ite (= 1 0) true false)) ; Statement: $z18 = 0 
(assert true) ; Non Conditional
(define-const var45 Bool var1813) ; Statement: z1 = $z18 
(define-const var3229 Int (bv2nat (bvand ((_ int2bv 64) var3279) ((_ int2bv 64) 128)))) ; Statement: $s3 = s0 & 128 
(define-const var3071 Int (cast-from-Int-to-Int var3229)) ; Statement: $i17 = (int) $s3 
 ; Statement: if $i17 <= 0 goto $z19 = 0 
(assert (<= var3071 0)) ; Cond: $i17 <= 0 
(define-const var3169 Bool (ite (= 1 0) true false)) ; Statement: $z19 = 0 
(assert true) ; Non Conditional
(define-const var2953 Bool var3169) ; Statement: z2 = $z19 
(assert true)
(define-const var2450 Int (length/1489591041 var1832)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i4 <= 0 goto $z20 = 0 
(assert (<= var2450 0)) ; Cond: $i4 <= 0 
(define-const var101 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(assert true) ; Non Conditional
(define-const var3446 Bool var101) ; Statement: z3 = $z20 
 ; Statement: if z2 == 0 goto $r82 = "binary" 
(assert (= (ite var2953 1 0) 0)) ; Cond: z2 == 0 
(define-const var2167 String "binary") ; Statement: $r82 = "binary" 
(assert true)
(define-const var1534 Bool (equalsIgnoreCase/-92311102 var2167 var967)) ; Statement: $z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
(assert true) ; Non Conditional
 ; Statement: lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; } 
(assert (and (= var1091 13) (and (not (= var1091 12)) (and (not (= var1091 11)) (and (not (= var1091 10)) (and (not (= var1091 9)) (and (not (= var1091 8)) (and (not (= var1091 7)) (and (not (= var1091 6)) (and (not (= var1091 5)) (and (not (= var1091 4)) (and (not (= var1091 3)) (and (not (= var1091 2)) (and (not (= var1091 1)) (and (not (= var1091 0)) true))))))))))))))) ; Intersect: Cond: i5 == 13  and Intersect: Negate: Cond: i5 == 12   and Intersect: Negate: Cond: i5 == 11   and Intersect: Negate: Cond: i5 == 10   and Intersect: Negate: Cond: i5 == 9   and Intersect: Negate: Cond: i5 == 8   and Intersect: Negate: Cond: i5 == 7   and Intersect: Negate: Cond: i5 == 6   and Intersect: Negate: Cond: i5 == 5   and Intersect: Negate: Cond: i5 == 4   and Intersect: Negate: Cond: i5 == 3   and Intersect: Negate: Cond: i5 == 2   and Intersect: Negate: Cond: i5 == 1   and Intersect: Negate: Cond: i5 == 0   and Non Conditional              
(define-const var3368 var2893 var2893-YEAR) ; Statement: $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR> 
 ; Statement: return $r64 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), length/1489591041=([com.mysql.cj.util.LazyString], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var509=com.mysql.cj.conf.PropertySet, var2020=r5, var1091=i5, var3279=s0, var2584=l6, var800=com.mysql.cj.util.LazyString, var1832=r1, var546=r0, var1431=i13, var967=r2, var2824=null_type, var3732=$s1, var1802=$i16, var1827=$z17, var3441=z0, var2282=$i2, var1813=$z18, var45=z1, var3229=$s3, var3071=$i17, var3169=$z19, var2953=z2, var2450=$i4, var101=$z20, var3446=z3, var2167=$r82, var1534=$z21, var2893=com.mysql.cj.MysqlType, var3368=$r64}
; {com.mysql.cj.conf.PropertySet=var509, r5=var2020, i5=var1091, s0=var3279, l6=var2584, com.mysql.cj.util.LazyString=var800, r1=var1832, r0=var546, i13=var1431, r2=var967, null_type=var2824, $s1=var3732, $i16=var1802, $z17=var1827, z0=var3441, $i2=var2282, $z18=var1813, z1=var45, $s3=var3229, $i17=var3071, $z19=var3169, z2=var2953, $i4=var2450, $z20=var101, z3=var3446, $r82=var2167, $z21=var1534, com.mysql.cj.MysqlType=var2893, $r64=var3368}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r5 := @parameter0: com.mysql.cj.conf.PropertySet;	i5 := @parameter1: int;	s0 := @parameter2: short;	l6 := @parameter3: long;	r1 := @parameter4: com.mysql.cj.util.LazyString;	r0 := @parameter5: com.mysql.cj.util.LazyString;	i13 := @parameter6: int;	r2 := @parameter7: java.lang.String;	$s1 = s0 & 32;	$i16 = (int) $s1;	if $i16 <= 0 goto $z17 = 0;	$z17 = 0;	z0 = $z17;	$i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>();	if $i2 != 0 goto $z18 = 0;	$z18 = 0;	z1 = $z18;	$s3 = s0 & 128;	$i17 = (int) $s3;	if $i17 <= 0 goto $z19 = 0;	$z19 = 0;	z2 = $z19;	$i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>();	if $i4 <= 0 goto $z20 = 0;	$z20 = 0;	z3 = $z20;	if z2 == 0 goto $r82 = "binary";	$r82 = "binary";	$z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; };	$r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;	return $r64
;block_num 12