(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2721 0)
(declare-sort var2060 0)
(declare-sort var2745 0)
(declare-sort var149 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var149-init () var149)
(declare-fun <init>/-2066235451 (var149) void)
(declare-const null-String String)
(declare-const null-var2060 var2060)
(declare-const null-var2745 var2745)
(declare-const var3913 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var3913 null-String)))
(declare-const var2371 var2060) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task 
(assert (not (= var2371 null-var2060)))
(declare-const var1059 var2745) ; Statement: r6 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path 
(assert (not (= var1059 null-var2745)))
(define-const var3030 String "default") ; Statement: $r0 = "default" 
(assert true)
(define-const var2561 Bool (equalsIgnoreCase/-92311102 var3030 var3913)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r15) 
 ; Statement: if $z0 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: boolean isAvailable()>() 
(assert (not (not (= (ite var2561 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var2074 Bool (isEmpty/-1285796103 var3913)) ; Statement: $z7 = virtualinvoke r15.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z7 == 0 goto $r16 = "sun" 
(assert (= (ite var2074 1 0) 0)) ; Cond: $z7 == 0 
(define-const var391 String "sun") ; Statement: $r16 = "sun" 
(assert true)
(define-const var2151 Bool (equalsIgnoreCase/-92311102 var391 var3913)) ; Statement: $z8 = virtualinvoke $r16.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r15) 
 ; Statement: if $z8 == 0 goto $r1 = "kaffe" 
(assert (not (= (ite var2151 1 0) 0))) ; Negate: Cond: $z8 == 0  
(define-const var1057 var149 var149-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.SunRmic 
(assert true)
;(assert (<init>/-2066235451 var1057)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.SunRmic: void <init>()>() 

(declare-const var1057!1 var149)
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), isEmpty/-1285796103=([java.lang.String], boolean), var149-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.SunRmic), <init>/-2066235451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.SunRmic], void)}
; {var3913=r15, var2721=null_type, var2060=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2371=r5, var2745=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var1059=r6, var3030=$r0, var2561=$z0, var2074=$z7, var391=$r16, var2151=$z8, var149=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.SunRmic, var1057=$r14}
; {r15=var3913, null_type=var2721, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2060, r5=var2371, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var2745, r6=var1059, $r0=var3030, $z0=var2561, $z7=var2074, $r16=var391, $z8=var2151, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.SunRmic=var149, $r14=var1057}
;seq <java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean isEmpty()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r15 := @parameter0: java.lang.String;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task;	r6 := @parameter2: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path;	$r0 = "default";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r15);	if $z0 != 0 goto $z1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.KaffeRmic: boolean isAvailable()>();	$z7 = virtualinvoke r15.<java.lang.String: boolean isEmpty()>();	if $z7 == 0 goto $r16 = "sun";	$r16 = "sun";	$z8 = virtualinvoke $r16.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r15);	if $z8 == 0 goto $r1 = "kaffe";	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.SunRmic;	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.rmic.SunRmic: void <init>()>();	return $r14
;block_num 4