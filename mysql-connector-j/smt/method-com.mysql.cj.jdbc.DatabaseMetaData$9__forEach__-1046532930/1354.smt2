(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2812 0)
(declare-sort var1807 0)
(declare-sort var3128 0)
(declare-sort var2686 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2812 var2812)
(declare-const null-String String)
(declare-const null-var3128 var3128)
(declare-const null-var2686 var2686)
(declare-const var3517 var2812) ; Statement: r3 := @this: com.mysql.cj.jdbc.DatabaseMetaData$9 
(assert (not (= var3517 null-var2812)))
(declare-const var3997 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3997 null-String)))
(define-const var3016 String "information_schema") ; Statement: $r1 = "information_schema" 
(assert true)
(define-const var896 Bool (equalsIgnoreCase/-92311102 var3016 var3997)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0) 
 ; Statement: if $z0 != 0 goto $z13 = 1 
(assert (not (= (ite var896 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3463 Bool (ite (= 1 1) true false)) ; Statement: $z13 = 1 
 ; Statement: goto [?= z1 = $z13] 
(assert true) ; Non Conditional
(define-const var836 Bool var3463) ; Statement: z1 = $z13 
(define-const var3039 var3128 null-var3128) ; Statement: r134 = null 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2077 var2686) ; Statement: $r126 := @caughtexception 
(assert (not (= var2077 null-var2686)))
(assert true) ; Non Conditional
 ; Statement: if r134 == null goto throw $r126 
(assert (= var3039 null-var3128)) ; Cond: r134 == null 
 ; Statement: throw $r126 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2812=com.mysql.cj.jdbc.DatabaseMetaData$9, var3517=r3, var3997=r0, var1807=null_type, var3016=$r1, var896=$z0, var3463=$z13, var836=z1, var3128=java.sql.ResultSet, var3039=r134, var2686=java.lang.Throwable, var2077=$r126}
; {com.mysql.cj.jdbc.DatabaseMetaData$9=var2812, r3=var3517, r0=var3997, null_type=var1807, $r1=var3016, $z0=var896, $z13=var3463, z1=var836, java.sql.ResultSet=var3128, r134=var3039, java.lang.Throwable=var2686, $r126=var2077}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r3 := @this: com.mysql.cj.jdbc.DatabaseMetaData$9;	r0 := @parameter0: java.lang.String;	$r1 = "information_schema";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r0);	if $z0 != 0 goto $z13 = 1;	$z13 = 1;	goto [?= z1 = $z13];	z1 = $z13;	r134 = null;	$r126 := @caughtexception;	if r134 == null goto throw $r126;	throw $r126
;block_num 6