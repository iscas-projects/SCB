(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3334 0)
(declare-sort var1966 0)
(declare-sort var2298 0)
(declare-sort var1834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/1489591041 (var1966) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3334 var3334)
(declare-const null-Int Int)
(declare-const null-var1966 var1966)
(declare-const null-String String)
(declare-const var1834-DATE var1834)
(declare-const var431 var3334) ; Statement: r5 := @parameter0: com.mysql.cj.conf.PropertySet 
(assert (not (= var431 null-var3334)))
(declare-const var1860 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var1860 null-Int)))
(declare-const var839 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var839 null-Int)))
(declare-const var3956 Int) ; Statement: l6 := @parameter3: long 
(assert (not (= var3956 null-Int)))
(declare-const var2922 var1966) ; Statement: r1 := @parameter4: com.mysql.cj.util.LazyString 
(assert (not (= var2922 null-var1966)))
(declare-const var53 var1966) ; Statement: r0 := @parameter5: com.mysql.cj.util.LazyString 
(assert (not (= var53 null-var1966)))
(declare-const var192 Int) ; Statement: i13 := @parameter6: int 
(assert (not (= var192 null-Int)))
(declare-const var1241 String) ; Statement: r2 := @parameter7: java.lang.String 
(assert (not (= var1241 null-String)))
(define-const var2369 Int (bv2nat (bvand ((_ int2bv 64) var839) ((_ int2bv 64) 32)))) ; Statement: $s1 = s0 & 32 
(define-const var977 Int (cast-from-Int-to-Int var2369)) ; Statement: $i16 = (int) $s1 
 ; Statement: if $i16 <= 0 goto $z17 = 0 
(assert (<= var977 0)) ; Cond: $i16 <= 0 
(define-const var3408 Bool (ite (= 1 0) true false)) ; Statement: $z17 = 0 
(assert true) ; Non Conditional
(define-const var2504 Bool var3408) ; Statement: z0 = $z17 
(assert true)
(define-const var3084 Int (length/1489591041 var53)) ; Statement: $i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i2 != 0 goto $z18 = 0 
(assert (not (= var3084 0))) ; Cond: $i2 != 0 
(define-const var2895 Bool (ite (= 1 0) true false)) ; Statement: $z18 = 0 
(assert true) ; Non Conditional
(define-const var1840 Bool var2895) ; Statement: z1 = $z18 
(define-const var2334 Int (bv2nat (bvand ((_ int2bv 64) var839) ((_ int2bv 64) 128)))) ; Statement: $s3 = s0 & 128 
(define-const var1201 Int (cast-from-Int-to-Int var2334)) ; Statement: $i17 = (int) $s3 
 ; Statement: if $i17 <= 0 goto $z19 = 0 
(assert (<= var1201 0)) ; Cond: $i17 <= 0 
(define-const var3647 Bool (ite (= 1 0) true false)) ; Statement: $z19 = 0 
(assert true) ; Non Conditional
(define-const var1694 Bool var3647) ; Statement: z2 = $z19 
(assert true)
(define-const var2981 Int (length/1489591041 var2922)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i4 <= 0 goto $z20 = 0 
(assert (<= var2981 0)) ; Cond: $i4 <= 0 
(define-const var924 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(assert true) ; Non Conditional
(define-const var1765 Bool var924) ; Statement: z3 = $z20 
 ; Statement: if z2 == 0 goto $r82 = "binary" 
(assert (= (ite var1694 1 0) 0)) ; Cond: z2 == 0 
(define-const var1120 String "binary") ; Statement: $r82 = "binary" 
(assert true)
(define-const var3733 Bool (equalsIgnoreCase/-92311102 var1120 var1241)) ; Statement: $z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
(assert true) ; Non Conditional
 ; Statement: lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; } 
(assert (and (= var1860 10) (and (not (= var1860 9)) (and (not (= var1860 8)) (and (not (= var1860 7)) (and (not (= var1860 6)) (and (not (= var1860 5)) (and (not (= var1860 4)) (and (not (= var1860 3)) (and (not (= var1860 2)) (and (not (= var1860 1)) (and (not (= var1860 0)) true)))))))))))) ; Intersect: Cond: i5 == 10  and Intersect: Negate: Cond: i5 == 9   and Intersect: Negate: Cond: i5 == 8   and Intersect: Negate: Cond: i5 == 7   and Intersect: Negate: Cond: i5 == 6   and Intersect: Negate: Cond: i5 == 5   and Intersect: Negate: Cond: i5 == 4   and Intersect: Negate: Cond: i5 == 3   and Intersect: Negate: Cond: i5 == 2   and Intersect: Negate: Cond: i5 == 1   and Intersect: Negate: Cond: i5 == 0   and Non Conditional           
(define-const var198 var1834 var1834-DATE) ; Statement: $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE> 
 ; Statement: return $r67 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), length/1489591041=([com.mysql.cj.util.LazyString], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3334=com.mysql.cj.conf.PropertySet, var431=r5, var1860=i5, var839=s0, var3956=l6, var1966=com.mysql.cj.util.LazyString, var2922=r1, var53=r0, var192=i13, var1241=r2, var2298=null_type, var2369=$s1, var977=$i16, var3408=$z17, var2504=z0, var3084=$i2, var2895=$z18, var1840=z1, var2334=$s3, var1201=$i17, var3647=$z19, var1694=z2, var2981=$i4, var924=$z20, var1765=z3, var1120=$r82, var3733=$z21, var1834=com.mysql.cj.MysqlType, var198=$r67}
; {com.mysql.cj.conf.PropertySet=var3334, r5=var431, i5=var1860, s0=var839, l6=var3956, com.mysql.cj.util.LazyString=var1966, r1=var2922, r0=var53, i13=var192, r2=var1241, null_type=var2298, $s1=var2369, $i16=var977, $z17=var3408, z0=var2504, $i2=var3084, $z18=var2895, z1=var1840, $s3=var2334, $i17=var1201, $z19=var3647, z2=var1694, $i4=var2981, $z20=var924, z3=var1765, $r82=var1120, $z21=var3733, com.mysql.cj.MysqlType=var1834, $r67=var198}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r5 := @parameter0: com.mysql.cj.conf.PropertySet;	i5 := @parameter1: int;	s0 := @parameter2: short;	l6 := @parameter3: long;	r1 := @parameter4: com.mysql.cj.util.LazyString;	r0 := @parameter5: com.mysql.cj.util.LazyString;	i13 := @parameter6: int;	r2 := @parameter7: java.lang.String;	$s1 = s0 & 32;	$i16 = (int) $s1;	if $i16 <= 0 goto $z17 = 0;	$z17 = 0;	z0 = $z17;	$i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>();	if $i2 != 0 goto $z18 = 0;	$z18 = 0;	z1 = $z18;	$s3 = s0 & 128;	$i17 = (int) $s3;	if $i17 <= 0 goto $z19 = 0;	$z19 = 0;	z2 = $z19;	$i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>();	if $i4 <= 0 goto $z20 = 0;	$z20 = 0;	z3 = $z20;	if z2 == 0 goto $r82 = "binary";	$r82 = "binary";	$z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; };	$r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;	return $r67
;block_num 12