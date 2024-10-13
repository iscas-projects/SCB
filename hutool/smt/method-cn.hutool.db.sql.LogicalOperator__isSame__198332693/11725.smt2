(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2014 0)
(declare-sort var2415 0)
(declare-sort var1002 0)
(declare-sort var2119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1002_isBlank/-1569658263 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun name/1633728430 (var2119) String)
(declare-fun cast-from-var2014-to-var2119 (var2014) var2119)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var2014 var2014)
(declare-const null-String String)
(declare-const var1652 var2014) ; Statement: r1 := @this: cn.hutool.db.sql.LogicalOperator 
(assert (not (= var1652 null-var2014)))
(declare-const var3192 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3192 null-String)))
(define-const var1186 Bool (var1002_isBlank/-1569658263 (cast-from-String-to-String var3192))) ; Statement: $z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke r1.<cn.hutool.db.sql.LogicalOperator: java.lang.String name()>() 
(assert (= (ite var1186 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1039 String (name/1633728430 (cast-from-var2014-to-var2119 var1652))) ; Statement: $r3 = virtualinvoke r1.<cn.hutool.db.sql.LogicalOperator: java.lang.String name()>() 
(assert true)
(define-const var182 String (trim/-847153721 var3192)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var1635 Bool (equalsIgnoreCase/-92311102 var1039 var182)) ; Statement: $z1 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2) 
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1002_isBlank/-1569658263=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), name/1633728430=([java.lang.Enum], java.lang.String), cast-from-var2014-to-var2119=([cn.hutool.db.sql.LogicalOperator], java.lang.Enum), trim/-847153721=([java.lang.String], java.lang.String), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var2014=cn.hutool.db.sql.LogicalOperator, var1652=r1, var3192=r0, var2415=null_type, var1002=cn.hutool.core.text.CharSequenceUtil, var1186=$z0, var2119=java.lang.Enum, var1039=$r3, var182=$r2, var1635=$z1}
; {cn.hutool.db.sql.LogicalOperator=var2014, r1=var1652, r0=var3192, null_type=var2415, cn.hutool.core.text.CharSequenceUtil=var1002, $z0=var1186, java.lang.Enum=var2119, $r3=var1039, $r2=var182, $z1=var1635}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r1 := @this: cn.hutool.db.sql.LogicalOperator;	r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <cn.hutool.core.util.StrUtil: boolean isBlank(java.lang.CharSequence)>(r0);	if $z0 == 0 goto $r3 = virtualinvoke r1.<cn.hutool.db.sql.LogicalOperator: java.lang.String name()>();	$r3 = virtualinvoke r1.<cn.hutool.db.sql.LogicalOperator: java.lang.String name()>();	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String trim()>();	$z1 = virtualinvoke $r3.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r2);	return $z1
;block_num 2