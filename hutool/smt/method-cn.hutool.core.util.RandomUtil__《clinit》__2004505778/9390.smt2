(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun toUpperCase/1156088314 ((s String)) String (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all s "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-const var3435 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3435)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3435!1 String)
(assert (= var3435!1 ""))
(define-const var347 String "abcdefghijklmnopqrstuvwxyz") ; Statement: $r1 = "abcdefghijklmnopqrstuvwxyz" 
(assert true)
(define-const var1961 String (toUpperCase/1156088314 var347)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toUpperCase()>() 
(assert true)
(define-const var1862 String (append/672562846 var3435!1 var1961)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3435!2 String)
(assert (= var3435!2 (str.++ var3435!1 var1961)))
(assert true)
(define-const var3677 String (append/672562846 var1862 "abcdefghijklmnopqrstuvwxyz0123456789")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("abcdefghijklmnopqrstuvwxyz0123456789") 
(declare-const var1862!1 String)
(assert (= var1862!1 (str.++ var1862 "abcdefghijklmnopqrstuvwxyz0123456789")))
(assert true)
(define-const var1099 String (toString/-2075883882 var3677)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var774 String var1099) ; Statement: <cn.hutool.core.util.RandomUtil: java.lang.String BASE_CHAR_NUMBER> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toUpperCase/1156088314=([java.lang.String], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3435=$r0, var347=$r1, var1961=$r2, var1862=$r3, var3677=$r4, var1099=$r5, var774=<cn.hutool.core.util.RandomUtil: java.lang.String BASE_CHAR_NUMBER>}
; {$r0=var3435, $r1=var347, $r2=var1961, $r3=var1862, $r4=var3677, $r5=var1099, <cn.hutool.core.util.RandomUtil: java.lang.String BASE_CHAR_NUMBER>=var774}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: java.lang.String toUpperCase()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: java.lang.String toUpperCase()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = "abcdefghijklmnopqrstuvwxyz";	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String toUpperCase()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("abcdefghijklmnopqrstuvwxyz0123456789");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	<cn.hutool.core.util.RandomUtil: java.lang.String BASE_CHAR_NUMBER> = $r5;	return
;block_num 1