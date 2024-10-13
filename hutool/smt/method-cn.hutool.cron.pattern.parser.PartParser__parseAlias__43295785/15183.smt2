(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var654 0)
(declare-sort var1090 0)
(declare-sort var1967 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun part/444376233 (var654) var1967)
(declare-fun getMax/1007632969 (var1967) Int)
(declare-const null-var654 var654)
(declare-const null-String String)
(declare-const var975 var654) ; Statement: r2 := @this: cn.hutool.cron.pattern.parser.PartParser 
(assert (not (= var975 null-var654)))
(declare-const var3423 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3423 null-String)))
(define-const var3551 String "L") ; Statement: $r1 = "L" 
(assert true)
(define-const var3145 Bool (equalsIgnoreCase/-92311102 var3551 var3423)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r4 = <cn.hutool.cron.pattern.parser.PartParser$1: int[] $SwitchMap$cn$hutool$cron$pattern$Part> 
(assert (not (= (ite var3145 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var562 var1967 (part/444376233 var975)) ; Statement: $r9 = r2.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.Part part> 
(assert true)
(define-const var3465 Int (getMax/1007632969 var562)) ; Statement: $i4 = virtualinvoke $r9.<cn.hutool.cron.pattern.Part: int getMax()>() 
 ; Statement: return $i4 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), part/444376233=([cn.hutool.cron.pattern.parser.PartParser], cn.hutool.cron.pattern.Part), getMax/1007632969=([cn.hutool.cron.pattern.Part], int)}
; {var654=cn.hutool.cron.pattern.parser.PartParser, var975=r2, var3423=r0, var1090=null_type, var3551=$r1, var3145=$z0, var1967=cn.hutool.cron.pattern.Part, var562=$r9, var3465=$i4}
; {cn.hutool.cron.pattern.parser.PartParser=var654, r2=var975, r0=var3423, null_type=var1090, $r1=var3551, $z0=var3145, cn.hutool.cron.pattern.Part=var1967, $r9=var562, $i4=var3465}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r2 := @this: cn.hutool.cron.pattern.parser.PartParser;	r0 := @parameter0: java.lang.String;	$r1 = "L";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 == 0 goto $r4 = <cn.hutool.cron.pattern.parser.PartParser$1: int[] $SwitchMap$cn$hutool$cron$pattern$Part>;	$r9 = r2.<cn.hutool.cron.pattern.parser.PartParser: cn.hutool.cron.pattern.Part part>;	$i4 = virtualinvoke $r9.<cn.hutool.cron.pattern.Part: int getMax()>();	return $i4
;block_num 2