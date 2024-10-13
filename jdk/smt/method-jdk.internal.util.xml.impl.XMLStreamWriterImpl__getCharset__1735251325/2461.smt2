(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1187 0)
(declare-sort var339 0)
(declare-sort var1968 0)
(declare-sort var203 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var203-init () var203)
(declare-fun <init>/-645024055 (var203 String) void)
(declare-const null-var1187 var1187)
(declare-const null-String String)
(declare-const null-var1968 var1968)
(declare-const var20 var1187) ; Statement: r9 := @this: jdk.internal.util.xml.impl.XMLStreamWriterImpl 
(assert (not (= var20 null-var1187)))
(declare-const var3606 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3606 null-String)))
(assert true)
(define-const var2099 Bool (equalsIgnoreCase/-92311102 var3606 "UTF-32")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("UTF-32") 
 ; Statement: if $z0 == 0 goto r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0) 
(assert (not (= (ite var2099 1 0) 0))) ; Negate: Cond: $z0 == 0  
(declare-const var2442 var1968) ; Statement: $r7 := @caughtexception 
(assert (not (= var2442 null-var1968)))
(define-const var3403 var203 var203-init) ; Statement: $r8 = new java.io.UnsupportedEncodingException 
(assert true)
;(assert (<init>/-645024055 var3403 var3606)) ; Statement: specialinvoke $r8.<java.io.UnsupportedEncodingException: void <init>(java.lang.String)>(r0) 

(declare-const var3403!1 var203)
(declare-const var3606!1 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var203-init=([], java.io.UnsupportedEncodingException), <init>/-645024055=([java.io.UnsupportedEncodingException, java.lang.String], void)}
; {var1187=jdk.internal.util.xml.impl.XMLStreamWriterImpl, var20=r9, var3606=r0, var339=null_type, var2099=$z0, var1968=java.lang.IllegalArgumentException, var2442=$r7, var203=java.io.UnsupportedEncodingException, var3403=$r8}
; {jdk.internal.util.xml.impl.XMLStreamWriterImpl=var1187, r9=var20, r0=var3606, null_type=var339, $z0=var2099, java.lang.IllegalArgumentException=var1968, $r7=var2442, java.io.UnsupportedEncodingException=var203, $r8=var3403}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r9 := @this: jdk.internal.util.xml.impl.XMLStreamWriterImpl;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>("UTF-32");	if $z0 == 0 goto r1 = staticinvoke <java.nio.charset.Charset: java.nio.charset.Charset forName(java.lang.String)>(r0);	$r7 := @caughtexception;	$r8 = new java.io.UnsupportedEncodingException;	specialinvoke $r8.<java.io.UnsupportedEncodingException: void <init>(java.lang.String)>(r0);	throw $r8
;block_num 2