(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var799 0)
(declare-sort var569 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun target/744633556 (var799) String)
(declare-const null-var799 var799)
(declare-const null-String String)
(declare-const var1393 var799) ; Statement: r4 := @this: org.apache.log4j.ConsoleAppender 
(assert (not (= var1393 null-var799)))
(declare-const var2950 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2950 null-String)))
(assert true)
(define-const var3696 String (trim/-847153721 var2950)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(define-const var782 String "System.out") ; Statement: $r2 = "System.out" 
(assert true)
(define-const var1876 Bool (equalsIgnoreCase/-92311102 var782 var3696)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = "System.err" 
(assert (not (= (ite var1876 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var1393!1 var799)
(assert (not (= var1393!1 null-var799)))
(assert (= (target/744633556 var1393!1) "System.out")) ; Statement: r4.<org.apache.log4j.ConsoleAppender: java.lang.String target> = "System.out" 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), target/744633556=([org.apache.log4j.ConsoleAppender], java.lang.String)}
; {var799=org.apache.log4j.ConsoleAppender, var1393=r4, var2950=r0, var569=null_type, var3696=r1, var782=$r2, var1876=$z0}
; {org.apache.log4j.ConsoleAppender=var799, r4=var1393, r0=var2950, null_type=var569, r1=var3696, $r2=var782, $z0=var1876}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r4 := @this: org.apache.log4j.ConsoleAppender;	r0 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$r2 = "System.out";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r1);	if $z0 == 0 goto $r3 = "System.err";	r4.<org.apache.log4j.ConsoleAppender: java.lang.String target> = "System.out";	goto [?= return];	return
;block_num 3