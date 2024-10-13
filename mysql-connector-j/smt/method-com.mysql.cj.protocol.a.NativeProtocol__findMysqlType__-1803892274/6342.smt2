(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3264 0)
(declare-sort var3222 0)
(declare-sort var3504 0)
(declare-sort var121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/1489591041 (var3222) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var3264 var3264)
(declare-const null-Int Int)
(declare-const null-var3222 var3222)
(declare-const null-String String)
(declare-const var121-VECTOR var121)
(declare-const var975 var3264) ; Statement: r5 := @parameter0: com.mysql.cj.conf.PropertySet 
(assert (not (= var975 null-var3264)))
(declare-const var1834 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var1834 null-Int)))
(declare-const var2361 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var2361 null-Int)))
(declare-const var2333 Int) ; Statement: l6 := @parameter3: long 
(assert (not (= var2333 null-Int)))
(declare-const var3865 var3222) ; Statement: r1 := @parameter4: com.mysql.cj.util.LazyString 
(assert (not (= var3865 null-var3222)))
(declare-const var2855 var3222) ; Statement: r0 := @parameter5: com.mysql.cj.util.LazyString 
(assert (not (= var2855 null-var3222)))
(declare-const var3075 Int) ; Statement: i13 := @parameter6: int 
(assert (not (= var3075 null-Int)))
(declare-const var2003 String) ; Statement: r2 := @parameter7: java.lang.String 
(assert (not (= var2003 null-String)))
(define-const var3772 Int (bv2nat (bvand ((_ int2bv 64) var2361) ((_ int2bv 64) 32)))) ; Statement: $s1 = s0 & 32 
(define-const var1703 Int (cast-from-Int-to-Int var3772)) ; Statement: $i16 = (int) $s1 
 ; Statement: if $i16 <= 0 goto $z17 = 0 
(assert (not (<= var1703 0))) ; Negate: Cond: $i16 <= 0  
(define-const var3346 Bool (ite (= 1 1) true false)) ; Statement: $z17 = 1 
 ; Statement: goto [?= z0 = $z17] 
(assert true) ; Non Conditional
(define-const var256 Bool var3346) ; Statement: z0 = $z17 
(assert true)
(define-const var1454 Int (length/1489591041 var2855)) ; Statement: $i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i2 != 0 goto $z18 = 0 
(assert (not (= var1454 0))) ; Cond: $i2 != 0 
(define-const var1142 Bool (ite (= 1 0) true false)) ; Statement: $z18 = 0 
(assert true) ; Non Conditional
(define-const var3186 Bool var1142) ; Statement: z1 = $z18 
(define-const var2123 Int (bv2nat (bvand ((_ int2bv 64) var2361) ((_ int2bv 64) 128)))) ; Statement: $s3 = s0 & 128 
(define-const var2355 Int (cast-from-Int-to-Int var2123)) ; Statement: $i17 = (int) $s3 
 ; Statement: if $i17 <= 0 goto $z19 = 0 
(assert (<= var2355 0)) ; Cond: $i17 <= 0 
(define-const var3598 Bool (ite (= 1 0) true false)) ; Statement: $z19 = 0 
(assert true) ; Non Conditional
(define-const var2616 Bool var3598) ; Statement: z2 = $z19 
(assert true)
(define-const var1593 Int (length/1489591041 var3865)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i4 <= 0 goto $z20 = 0 
(assert (<= var1593 0)) ; Cond: $i4 <= 0 
(define-const var3800 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(assert true) ; Non Conditional
(define-const var1938 Bool var3800) ; Statement: z3 = $z20 
 ; Statement: if z2 == 0 goto $r82 = "binary" 
(assert (= (ite var2616 1 0) 0)) ; Cond: z2 == 0 
(define-const var1028 String "binary") ; Statement: $r82 = "binary" 
(assert true)
(define-const var1297 Bool (equalsIgnoreCase/-92311102 var1028 var2003)) ; Statement: $z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
(assert true) ; Non Conditional
 ; Statement: lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; } 
(assert (and (= var1834 242) (and (not (= var1834 16)) (and (not (= var1834 15)) (and (not (= var1834 13)) (and (not (= var1834 12)) (and (not (= var1834 11)) (and (not (= var1834 10)) (and (not (= var1834 9)) (and (not (= var1834 8)) (and (not (= var1834 7)) (and (not (= var1834 6)) (and (not (= var1834 5)) (and (not (= var1834 4)) (and (not (= var1834 3)) (and (not (= var1834 2)) (and (not (= var1834 1)) (and (not (= var1834 0)) true)))))))))))))))))) ; Intersect: Cond: i5 == 242  and Intersect: Negate: Cond: i5 == 16   and Intersect: Negate: Cond: i5 == 15   and Intersect: Negate: Cond: i5 == 13   and Intersect: Negate: Cond: i5 == 12   and Intersect: Negate: Cond: i5 == 11   and Intersect: Negate: Cond: i5 == 10   and Intersect: Negate: Cond: i5 == 9   and Intersect: Negate: Cond: i5 == 8   and Intersect: Negate: Cond: i5 == 7   and Intersect: Negate: Cond: i5 == 6   and Intersect: Negate: Cond: i5 == 5   and Intersect: Negate: Cond: i5 == 4   and Intersect: Negate: Cond: i5 == 3   and Intersect: Negate: Cond: i5 == 2   and Intersect: Negate: Cond: i5 == 1   and Intersect: Negate: Cond: i5 == 0   and Non Conditional                 
(define-const var331 var121 var121-VECTOR) ; Statement: $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR> 
 ; Statement: return $r56 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), length/1489591041=([com.mysql.cj.util.LazyString], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var3264=com.mysql.cj.conf.PropertySet, var975=r5, var1834=i5, var2361=s0, var2333=l6, var3222=com.mysql.cj.util.LazyString, var3865=r1, var2855=r0, var3075=i13, var2003=r2, var3504=null_type, var3772=$s1, var1703=$i16, var3346=$z17, var256=z0, var1454=$i2, var1142=$z18, var3186=z1, var2123=$s3, var2355=$i17, var3598=$z19, var2616=z2, var1593=$i4, var3800=$z20, var1938=z3, var1028=$r82, var1297=$z21, var121=com.mysql.cj.MysqlType, var331=$r56}
; {com.mysql.cj.conf.PropertySet=var3264, r5=var975, i5=var1834, s0=var2361, l6=var2333, com.mysql.cj.util.LazyString=var3222, r1=var3865, r0=var2855, i13=var3075, r2=var2003, null_type=var3504, $s1=var3772, $i16=var1703, $z17=var3346, z0=var256, $i2=var1454, $z18=var1142, z1=var3186, $s3=var2123, $i17=var2355, $z19=var3598, z2=var2616, $i4=var1593, $z20=var3800, z3=var1938, $r82=var1028, $z21=var1297, com.mysql.cj.MysqlType=var121, $r56=var331}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r5 := @parameter0: com.mysql.cj.conf.PropertySet;	i5 := @parameter1: int;	s0 := @parameter2: short;	l6 := @parameter3: long;	r1 := @parameter4: com.mysql.cj.util.LazyString;	r0 := @parameter5: com.mysql.cj.util.LazyString;	i13 := @parameter6: int;	r2 := @parameter7: java.lang.String;	$s1 = s0 & 32;	$i16 = (int) $s1;	if $i16 <= 0 goto $z17 = 0;	$z17 = 1;	goto [?= z0 = $z17];	z0 = $z17;	$i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>();	if $i2 != 0 goto $z18 = 0;	$z18 = 0;	z1 = $z18;	$s3 = s0 & 128;	$i17 = (int) $s3;	if $i17 <= 0 goto $z19 = 0;	$z19 = 0;	z2 = $z19;	$i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>();	if $i4 <= 0 goto $z20 = 0;	$z20 = 0;	z3 = $z20;	if z2 == 0 goto $r82 = "binary";	$r82 = "binary";	$z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; };	$r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;	return $r56
;block_num 12