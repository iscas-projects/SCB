(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3032 0)
(declare-sort var3448 0)
(declare-sort var3528 0)
(declare-sort var2360 0)
(declare-sort var1216 0)
(declare-sort var3652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun settingValueAssignmentException/1789186881 (var1216 String String var3652) var2360)
(declare-fun cast-from-var3032-to-var1216 (var3032) var1216)
(declare-fun cast-from-var3528-to-var3652 (var3528) var3652)
(declare-const null-var3032 var3032)
(declare-const null-String String)
(declare-const null-var3528 var3528)
(declare-const var1311 var3032) ; Statement: r4 := @this: freemarker.template.Configuration 
(assert (not (= var1311 null-var3032)))
(declare-const var1983 String) ; Statement: r127 := @parameter0: java.lang.String 
(assert (not (= var1983 null-String)))
(declare-const var3147 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3147 null-String)))
(define-const var794 Bool (ite (= 1 0) true false)) ; Statement: z85 = 0 
(define-const var2548 String "TemplateUpdateInterval") ; Statement: $r0 = "TemplateUpdateInterval" 
(assert true) ; Non Conditional
(assert true)
(define-const var386 Bool (equalsIgnoreCase/-92311102 var2548 var1983)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r127) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3592 var3528) ; Statement: $r123 := @caughtexception 
(assert (not (= var3592 null-var3528)))
(assert true)
(define-const var2302 var2360 (settingValueAssignmentException/1789186881 (cast-from-var3032-to-var1216 var1311) var1983 var3147 (cast-from-var3528-to-var3652 var3592))) ; Statement: $r124 = virtualinvoke r4.<freemarker.template.Configuration: freemarker.template.TemplateException settingValueAssignmentException(java.lang.String,java.lang.String,java.lang.Throwable)>(r127, r2, $r123) 
 ; Statement: throw $r124 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), settingValueAssignmentException/1789186881=([freemarker.core.Configurable, java.lang.String, java.lang.String, java.lang.Throwable], freemarker.template.TemplateException), cast-from-var3032-to-var1216=([freemarker.template.Configuration], freemarker.core.Configurable), cast-from-var3528-to-var3652=([java.lang.Exception], java.lang.Throwable)}
; {var3032=freemarker.template.Configuration, var1311=r4, var1983=r127, var3448=null_type, var3147=r2, var794=z85, var2548=$r0, var386=$z0, var3528=java.lang.Exception, var3592=$r123, var2360=freemarker.template.TemplateException, var1216=freemarker.core.Configurable, var3652=java.lang.Throwable, var2302=$r124}
; {freemarker.template.Configuration=var3032, r4=var1311, r127=var1983, null_type=var3448, r2=var3147, z85=var794, $r0=var2548, $z0=var386, java.lang.Exception=var3528, $r123=var3592, freemarker.template.TemplateException=var2360, freemarker.core.Configurable=var1216, java.lang.Throwable=var3652, $r124=var2302}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r4 := @this: freemarker.template.Configuration;	r127 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z85 = 0;	$r0 = "TemplateUpdateInterval";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r127);	$r123 := @caughtexception;	$r124 = virtualinvoke r4.<freemarker.template.Configuration: freemarker.template.TemplateException settingValueAssignmentException(java.lang.String,java.lang.String,java.lang.Throwable)>(r127, r2, $r123);	throw $r124
;block_num 3