(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2009 0)
(declare-sort var2645 0)
(declare-sort var3941 0)
(declare-sort var1152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun length/1489591041 (var2645) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2009 var2009)
(declare-const null-Int Int)
(declare-const null-var2645 var2645)
(declare-const null-String String)
(declare-const var1152-GEOMETRY var1152)
(declare-const var3939 var2009) ; Statement: r5 := @parameter0: com.mysql.cj.conf.PropertySet 
(assert (not (= var3939 null-var2009)))
(declare-const var1282 Int) ; Statement: i5 := @parameter1: int 
(assert (not (= var1282 null-Int)))
(declare-const var1158 Int) ; Statement: s0 := @parameter2: short 
(assert (not (= var1158 null-Int)))
(declare-const var2598 Int) ; Statement: l6 := @parameter3: long 
(assert (not (= var2598 null-Int)))
(declare-const var1824 var2645) ; Statement: r1 := @parameter4: com.mysql.cj.util.LazyString 
(assert (not (= var1824 null-var2645)))
(declare-const var129 var2645) ; Statement: r0 := @parameter5: com.mysql.cj.util.LazyString 
(assert (not (= var129 null-var2645)))
(declare-const var43 Int) ; Statement: i13 := @parameter6: int 
(assert (not (= var43 null-Int)))
(declare-const var414 String) ; Statement: r2 := @parameter7: java.lang.String 
(assert (not (= var414 null-String)))
(define-const var740 Int (bv2nat (bvand ((_ int2bv 64) var1158) ((_ int2bv 64) 32)))) ; Statement: $s1 = s0 & 32 
(define-const var2994 Int (cast-from-Int-to-Int var740)) ; Statement: $i16 = (int) $s1 
 ; Statement: if $i16 <= 0 goto $z17 = 0 
(assert (not (<= var2994 0))) ; Negate: Cond: $i16 <= 0  
(define-const var3774 Bool (ite (= 1 1) true false)) ; Statement: $z17 = 1 
 ; Statement: goto [?= z0 = $z17] 
(assert true) ; Non Conditional
(define-const var3336 Bool var3774) ; Statement: z0 = $z17 
(assert true)
(define-const var1547 Int (length/1489591041 var129)) ; Statement: $i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i2 != 0 goto $z18 = 0 
(assert (not (= var1547 0))) ; Cond: $i2 != 0 
(define-const var1115 Bool (ite (= 1 0) true false)) ; Statement: $z18 = 0 
(assert true) ; Non Conditional
(define-const var3371 Bool var1115) ; Statement: z1 = $z18 
(define-const var2166 Int (bv2nat (bvand ((_ int2bv 64) var1158) ((_ int2bv 64) 128)))) ; Statement: $s3 = s0 & 128 
(define-const var1696 Int (cast-from-Int-to-Int var2166)) ; Statement: $i17 = (int) $s3 
 ; Statement: if $i17 <= 0 goto $z19 = 0 
(assert (not (<= var1696 0))) ; Negate: Cond: $i17 <= 0  
(define-const var2326 Bool (ite (= 1 1) true false)) ; Statement: $z19 = 1 
 ; Statement: goto [?= z2 = $z19] 
(assert true) ; Non Conditional
(define-const var3274 Bool var2326) ; Statement: z2 = $z19 
(assert true)
(define-const var71 Int (length/1489591041 var1824)) ; Statement: $i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>() 
 ; Statement: if $i4 <= 0 goto $z20 = 0 
(assert (<= var71 0)) ; Cond: $i4 <= 0 
(define-const var625 Bool (ite (= 1 0) true false)) ; Statement: $z20 = 0 
(assert true) ; Non Conditional
(define-const var3785 Bool var625) ; Statement: z3 = $z20 
 ; Statement: if z2 == 0 goto $r82 = "binary" 
(assert (= (ite var3274 1 0) 0)) ; Cond: z2 == 0 
(define-const var51 String "binary") ; Statement: $r82 = "binary" 
(assert true)
(define-const var1395 Bool (equalsIgnoreCase/-92311102 var51 var414)) ; Statement: $z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2) 
(assert true) ; Non Conditional
 ; Statement: lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; } 
(assert (and (= var1282 255) (and (not (= var1282 254)) (and (not (= var1282 253)) (and (not (= var1282 252)) (and (not (= var1282 251)) (and (not (= var1282 250)) (and (not (= var1282 249)) (and (not (= var1282 248)) (and (not (= var1282 247)) (and (not (= var1282 246)) (and (not (= var1282 245)) (and (not (= var1282 242)) (and (not (= var1282 16)) (and (not (= var1282 15)) (and (not (= var1282 13)) (and (not (= var1282 12)) (and (not (= var1282 11)) (and (not (= var1282 10)) (and (not (= var1282 9)) (and (not (= var1282 8)) (and (not (= var1282 7)) (and (not (= var1282 6)) (and (not (= var1282 5)) (and (not (= var1282 4)) (and (not (= var1282 3)) (and (not (= var1282 2)) (and (not (= var1282 1)) (and (not (= var1282 0)) true))))))))))))))))))))))))))))) ; Intersect: Cond: i5 == 255  and Intersect: Negate: Cond: i5 == 254   and Intersect: Negate: Cond: i5 == 253   and Intersect: Negate: Cond: i5 == 252   and Intersect: Negate: Cond: i5 == 251   and Intersect: Negate: Cond: i5 == 250   and Intersect: Negate: Cond: i5 == 249   and Intersect: Negate: Cond: i5 == 248   and Intersect: Negate: Cond: i5 == 247   and Intersect: Negate: Cond: i5 == 246   and Intersect: Negate: Cond: i5 == 245   and Intersect: Negate: Cond: i5 == 242   and Intersect: Negate: Cond: i5 == 16   and Intersect: Negate: Cond: i5 == 15   and Intersect: Negate: Cond: i5 == 13   and Intersect: Negate: Cond: i5 == 12   and Intersect: Negate: Cond: i5 == 11   and Intersect: Negate: Cond: i5 == 10   and Intersect: Negate: Cond: i5 == 9   and Intersect: Negate: Cond: i5 == 8   and Intersect: Negate: Cond: i5 == 7   and Intersect: Negate: Cond: i5 == 6   and Intersect: Negate: Cond: i5 == 5   and Intersect: Negate: Cond: i5 == 4   and Intersect: Negate: Cond: i5 == 3   and Intersect: Negate: Cond: i5 == 2   and Intersect: Negate: Cond: i5 == 1   and Intersect: Negate: Cond: i5 == 0   and Non Conditional                            
(define-const var869 var1152 var1152-GEOMETRY) ; Statement: $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), length/1489591041=([com.mysql.cj.util.LazyString], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2009=com.mysql.cj.conf.PropertySet, var3939=r5, var1282=i5, var1158=s0, var2598=l6, var2645=com.mysql.cj.util.LazyString, var1824=r1, var129=r0, var43=i13, var414=r2, var3941=null_type, var740=$s1, var2994=$i16, var3774=$z17, var3336=z0, var1547=$i2, var1115=$z18, var3371=z1, var2166=$s3, var1696=$i17, var2326=$z19, var3274=z2, var71=$i4, var625=$z20, var3785=z3, var51=$r82, var1395=$z21, var1152=com.mysql.cj.MysqlType, var869=$r3}
; {com.mysql.cj.conf.PropertySet=var2009, r5=var3939, i5=var1282, s0=var1158, l6=var2598, com.mysql.cj.util.LazyString=var2645, r1=var1824, r0=var129, i13=var43, r2=var414, null_type=var3941, $s1=var740, $i16=var2994, $z17=var3774, z0=var3336, $i2=var1547, $z18=var1115, z1=var3371, $s3=var2166, $i17=var1696, $z19=var2326, z2=var3274, $i4=var71, $z20=var625, z3=var3785, $r82=var51, $z21=var1395, com.mysql.cj.MysqlType=var1152, $r3=var869}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r5 := @parameter0: com.mysql.cj.conf.PropertySet;	i5 := @parameter1: int;	s0 := @parameter2: short;	l6 := @parameter3: long;	r1 := @parameter4: com.mysql.cj.util.LazyString;	r0 := @parameter5: com.mysql.cj.util.LazyString;	i13 := @parameter6: int;	r2 := @parameter7: java.lang.String;	$s1 = s0 & 32;	$i16 = (int) $s1;	if $i16 <= 0 goto $z17 = 0;	$z17 = 1;	goto [?= z0 = $z17];	z0 = $z17;	$i2 = virtualinvoke r0.<com.mysql.cj.util.LazyString: int length()>();	if $i2 != 0 goto $z18 = 0;	$z18 = 0;	z1 = $z18;	$s3 = s0 & 128;	$i17 = (int) $s3;	if $i17 <= 0 goto $z19 = 0;	$z19 = 1;	goto [?= z2 = $z19];	z2 = $z19;	$i4 = virtualinvoke r1.<com.mysql.cj.util.LazyString: int length()>();	if $i4 <= 0 goto $z20 = 0;	$z20 = 0;	z3 = $z20;	if z2 == 0 goto $r82 = "binary";	$r82 = "binary";	$z21 = virtualinvoke $r82.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r2);	lookupswitch(i5) {     case 0: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 1: goto if z0 != 0 goto (branch);     case 2: goto if z0 == 0 goto $r85 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SMALLINT>;     case 3: goto if z0 == 0 goto $r86 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType INT>;     case 4: goto if z0 == 0 goto $r87 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType FLOAT>;     case 5: goto if z0 == 0 goto $r88 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DOUBLE>;     case 6: goto $r69 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType NULL>;     case 7: goto $r68 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIMESTAMP>;     case 8: goto if z0 == 0 goto $r89 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIGINT>;     case 9: goto if z0 == 0 goto $r90 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMINT>;     case 10: goto $r67 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATE>;     case 11: goto $r66 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TIME>;     case 12: goto $r65 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DATETIME>;     case 13: goto $r64 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType YEAR>;     case 15: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 16: goto $r57 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType BIT>;     case 242: goto $r56 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VECTOR>;     case 245: goto $r55 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType JSON>;     case 246: goto if z0 == 0 goto $r83 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType DECIMAL>;     case 247: goto $r54 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType ENUM>;     case 248: goto $r53 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType SET>;     case 249: goto if z2 == 0 goto $r91 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYTEXT>;     case 250: goto if z2 == 0 goto $r92 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType MEDIUMTEXT>;     case 251: goto if z2 == 0 goto $r93 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType LONGTEXT>;     case 252: goto $r11 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType TINYBLOB>;     case 253: goto if $z21 == 0 goto $r58 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType VARCHAR>;     case 254: goto if $z21 == 0 goto $r4 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType CHAR>;     case 255: goto $r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;     default: goto $r80 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType UNKNOWN>; };	$r3 = <com.mysql.cj.MysqlType: com.mysql.cj.MysqlType GEOMETRY>;	return $r3
;block_num 12