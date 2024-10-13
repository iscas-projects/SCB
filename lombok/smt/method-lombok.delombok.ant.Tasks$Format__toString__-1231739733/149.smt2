(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var743 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun value/1765519955 (var743) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var743 var743)
(declare-const var742 var743) ; Statement: r1 := @this: lombok.delombok.ant.Tasks$Format 
(assert (not (= var742 null-var743)))
(define-const var1574 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var1574 "FormatOption [value=")) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("FormatOption [value=") 
(declare-const var1574!1 String)
(assert (= var1574!1 "FormatOption [value="))
(define-const var1767 String (value/1765519955 var742)) ; Statement: $r2 = r1.<lombok.delombok.ant.Tasks$Format: java.lang.String value> 
(assert true)
(define-const var393 String (append/672562846 var1574!1 var1767)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1574!2 String)
(assert (= var1574!2 (str.++ var1574!1 var1767)))
(assert true)
(define-const var64 String (append/672562846 var393 "]")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var393!1 String)
(assert (= var393!1 (str.++ var393 "]")))
(assert true)
(define-const var978 String (toString/-2075883882 var64)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), value/1765519955=([lombok.delombok.ant.Tasks$Format], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var743=lombok.delombok.ant.Tasks$Format, var742=r1, var1574=$r0, var1767=$r2, var393=$r3, var64=$r4, var978=$r5}
; {lombok.delombok.ant.Tasks$Format=var743, r1=var742, $r0=var1574, $r2=var1767, $r3=var393, $r4=var64, $r5=var978}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: lombok.delombok.ant.Tasks$Format;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>("FormatOption [value=");	$r2 = r1.<lombok.delombok.ant.Tasks$Format: java.lang.String value>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1