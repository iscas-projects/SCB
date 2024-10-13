(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1917 0)
(declare-sort var1569 0)
(declare-sort var245 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var245) void)
(declare-fun cast-from-var1917-to-var245 (var1917) var245)
(declare-fun logName/2114464271 (var1917) String)
(declare-fun setLevel/-733977423 (var1917 Int) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1917_getStringProperty/2067472328 (String) String)
(declare-fun String_valueOf/-333372740 (var245) String)
(declare-fun cast-from-String-to-var245 (String) var245)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-const null-var1917 var1917)
(declare-const null-String String)
(declare-const var75 var1917) ; Statement: r0 := @this: org.apache.commons.logging.impl.SimpleLog 
(assert (not (= var75 null-var1917)))
(declare-const var3428 String) ; Statement: r20 := @parameter0: java.lang.String 
(assert (not (= var3428 null-String)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var1917-to-var245 var75))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var75!1 var1917)
(declare-const var75!2 var1917)
(assert (not (= var75!2 null-var1917)))
(assert (= (logName/2114464271 var75!2) var3428)) ; Statement: r0.<org.apache.commons.logging.impl.SimpleLog: java.lang.String logName> = r20 
(assert true)
;(assert (setLevel/-733977423 var75!2 3)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.SimpleLog: void setLevel(int)>(3) 

(declare-const var75!3 var1917)
(declare-const var2203 Int)
(define-const var408 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var408)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var408!1 String)
(assert (= var408!1 ""))
(assert true)
(define-const var405 String (append/672562846 var408!1 "org.apache.commons.logging.simplelog.log.")) ; Statement: $r3 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.commons.logging.simplelog.log.") 
(declare-const var408!2 String)
(assert (= var408!2 (str.++ var408!1 "org.apache.commons.logging.simplelog.log.")))
(define-const var663 String (logName/2114464271 var75!3)) ; Statement: $r2 = r0.<org.apache.commons.logging.impl.SimpleLog: java.lang.String logName> 
(assert true)
(define-const var227 String (append/672562846 var405 var663)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var405!1 String)
(assert (= var405!1 (str.++ var405 var663)))
(assert true)
(define-const var2809 String (toString/-2075883882 var227)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1192 String (var1917_getStringProperty/2067472328 var2809)) ; Statement: r21 = staticinvoke <org.apache.commons.logging.impl.SimpleLog: java.lang.String getStringProperty(java.lang.String)>($r5) 
(define-const var1548 String (String_valueOf/-333372740 (cast-from-String-to-var245 var3428))) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r20) 
(assert true)
(define-const var3243 Int (lastIndexOf/-618837785 var1548 ".")) ; Statement: i0 = virtualinvoke $r6.<java.lang.String: int lastIndexOf(java.lang.String)>(".") 
(assert true) ; Non Conditional
 ; Statement: if null != r21 goto (branch) 
(assert (not (= null-String var1192))) ; Cond: null != r21 
 ; Statement: if null != r21 goto $r7 = "all" 
(assert (not (= null-String var1192))) ; Cond: null != r21 
(define-const var741 String "all") ; Statement: $r7 = "all" 
(assert true)
(define-const var3532 Bool (equalsIgnoreCase/-92311102 var741 var1192)) ; Statement: $z0 = virtualinvoke $r7.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r21) 
 ; Statement: if $z0 == 0 goto $r8 = "trace" 
(assert (not (= (ite var3532 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (setLevel/-733977423 var75!3 0)) ; Statement: virtualinvoke r0.<org.apache.commons.logging.impl.SimpleLog: void setLevel(int)>(0) 

(declare-const var75!4 var1917)
(declare-const var3656 Int)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var1917-to-var245=([org.apache.commons.logging.impl.SimpleLog], java.lang.Object), logName/2114464271=([org.apache.commons.logging.impl.SimpleLog], java.lang.String), setLevel/-733977423=([org.apache.commons.logging.impl.SimpleLog, int], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1917_getStringProperty/2067472328=([java.lang.String], java.lang.String), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-String-to-var245=([java.lang.String], java.lang.Object), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean)}
; {var1917=org.apache.commons.logging.impl.SimpleLog, var75=r0, var3428=r20, var1569=null_type, var245=java.lang.Object, var2203=3, var408=$r22, var405=$r3, var663=$r2, var227=$r4, var2809=$r5, var1192=r21, var1548=$r6, var3243=i0, var741=$r7, var3532=$z0, var3656=0}
; {org.apache.commons.logging.impl.SimpleLog=var1917, r0=var75, r20=var3428, null_type=var1569, java.lang.Object=var245, 3=var2203, $r22=var408, $r3=var405, $r2=var663, $r4=var227, $r5=var2809, r21=var1192, $r6=var1548, i0=var3243, $r7=var741, $z0=var3532, 0=var3656}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.String: int lastIndexOf(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.String: int lastIndexOf(java.lang.String)>": 1,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.commons.logging.impl.SimpleLog;	r20 := @parameter0: java.lang.String;	specialinvoke r0.<java.lang.Object: void <init>()>();	r0.<org.apache.commons.logging.impl.SimpleLog: java.lang.String logName> = r20;	virtualinvoke r0.<org.apache.commons.logging.impl.SimpleLog: void setLevel(int)>(3);	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("org.apache.commons.logging.simplelog.log.");	$r2 = r0.<org.apache.commons.logging.impl.SimpleLog: java.lang.String logName>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r21 = staticinvoke <org.apache.commons.logging.impl.SimpleLog: java.lang.String getStringProperty(java.lang.String)>($r5);	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r20);	i0 = virtualinvoke $r6.<java.lang.String: int lastIndexOf(java.lang.String)>(".");	if null != r21 goto (branch);	if null != r21 goto $r7 = "all";	$r7 = "all";	$z0 = virtualinvoke $r7.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>(r21);	if $z0 == 0 goto $r8 = "trace";	virtualinvoke r0.<org.apache.commons.logging.impl.SimpleLog: void setLevel(int)>(0);	goto [?= return];	return
;block_num 6