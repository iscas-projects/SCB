(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2690 0)
(declare-sort var1570 0)
(declare-sort var3001 0)
(declare-sort var2190 0)
(declare-sort var3574 0)
(declare-sort var3553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun settingValueAssignmentException/1789186881 (var3574 String String var3553) var2190)
(declare-fun cast-from-var2690-to-var3574 (var2690) var3574)
(declare-fun cast-from-var3001-to-var3553 (var3001) var3553)
(declare-const null-var2690 var2690)
(declare-const null-String String)
(declare-const null-var3001 var3001)
(declare-const var2303 var2690) ; Statement: r4 := @this: freemarker.template.Configuration 
(assert (not (= var2303 null-var2690)))
(declare-const var1855 String) ; Statement: r127 := @parameter0: java.lang.String 
(assert (not (= var1855 null-String)))
(declare-const var2984 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2984 null-String)))
(define-const var3746 Bool (ite (= 1 0) true false)) ; Statement: z85 = 0 
(define-const var650 String "TemplateUpdateInterval") ; Statement: $r0 = "TemplateUpdateInterval" 
(assert true) ; Non Conditional
(assert true)
(define-const var2786 Bool (equalsIgnoreCase/-92311102 var650 var1855)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r127) 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r1 = "DefaultEncoding" 
(assert (= (ite var2786 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2179 String "DefaultEncoding") ; Statement: $r1 = "DefaultEncoding" 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3427 var3001) ; Statement: $r123 := @caughtexception 
(assert (not (= var3427 null-var3001)))
(assert true)
(define-const var1012 var2190 (settingValueAssignmentException/1789186881 (cast-from-var2690-to-var3574 var2303) var1855 var2984 (cast-from-var3001-to-var3553 var3427))) ; Statement: $r124 = virtualinvoke r4.<freemarker.template.Configuration: freemarker.template.TemplateException settingValueAssignmentException(java.lang.String,java.lang.String,java.lang.Throwable)>(r127, r2, $r123) 
 ; Statement: throw $r124 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), settingValueAssignmentException/1789186881=([freemarker.core.Configurable, java.lang.String, java.lang.String, java.lang.Throwable], freemarker.template.TemplateException), cast-from-var2690-to-var3574=([freemarker.template.Configuration], freemarker.core.Configurable), cast-from-var3001-to-var3553=([java.lang.Exception], java.lang.Throwable)}
; {var2690=freemarker.template.Configuration, var2303=r4, var1855=r127, var1570=null_type, var2984=r2, var3746=z85, var650=$r0, var2786=$z0, var2179=$r1, var3001=java.lang.Exception, var3427=$r123, var2190=freemarker.template.TemplateException, var3574=freemarker.core.Configurable, var3553=java.lang.Throwable, var1012=$r124}
; {freemarker.template.Configuration=var2690, r4=var2303, r127=var1855, null_type=var1570, r2=var2984, z85=var3746, $r0=var650, $z0=var2786, $r1=var2179, java.lang.Exception=var3001, $r123=var3427, freemarker.template.TemplateException=var2190, freemarker.core.Configurable=var3574, java.lang.Throwable=var3553, $r124=var1012}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r4 := @this: freemarker.template.Configuration;	r127 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	z85 = 0;	$r0 = "TemplateUpdateInterval";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r127);	if $z0 == 0 goto $r1 = "DefaultEncoding";	$r1 = "DefaultEncoding";	$r123 := @caughtexception;	$r124 = virtualinvoke r4.<freemarker.template.Configuration: freemarker.template.TemplateException settingValueAssignmentException(java.lang.String,java.lang.String,java.lang.Throwable)>(r127, r2, $r123);	throw $r124
;block_num 5