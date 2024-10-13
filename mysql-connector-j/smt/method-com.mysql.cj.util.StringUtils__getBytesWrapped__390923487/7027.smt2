(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var776 0)
(declare-sort var1728 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1728_getBytes/-813242536 (String String) (Array Int Int))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2872 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var2872 null-String)))
(declare-const var2435 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var2435 null-Int)))
(declare-const var1994 Int) ; Statement: c3 := @parameter2: char 
(assert (not (= var1994 null-Int)))
(declare-const var1229 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var1229 null-String)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var1229 null-String))) ; Cond: r0 != null 
(define-const var1678 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
(define-const var2875 Int (length/-134980193 var2872)) ; Statement: $i0 = virtualinvoke r4.<java.lang.String: int length()>() 
(define-const var493 Int (+ var2875 2)) ; Statement: $i1 = $i0 + 2 
(assert true)
;(assert (<init>/543593434 var1678 var493)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1678!1 String)
(declare-const var493!1 Int)
(assert true)
;(assert (append/-1166366385 var1678!1 var2435)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(declare-const var1678!2 String)
(assert (str.prefixof var1678!1 var1678!2))
(assert true)
;(assert (append/672562846 var1678!2 var2872)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1678!3 String)
(assert (= var1678!3 (str.++ var1678!2 var2872)))
(assert true)
;(assert (append/-1166366385 var1678!3 var1994)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3) 
(declare-const var1678!4 String)
(assert (str.prefixof var1678!3 var1678!4))
(assert true)
(define-const var511 String (toString/-2075883882 var1678!4)) ; Statement: r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1383 (Array Int Int) (var1728_getBytes/-813242536 var511 var1229)) ; Statement: r5 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r6, r0) 
(assert true) ; Non Conditional
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1728_getBytes/-813242536=([java.lang.String, java.lang.String], byte[])}
; {var2872=r4, var776=null_type, var2435=c2, var1994=c3, var1229=r0, var1678=$r1, var2875=$i0, var493=$i1, var511=r6, var1728=com.mysql.cj.util.StringUtils, var1383=r5}
; {r4=var2872, null_type=var776, c2=var2435, c3=var1994, r0=var1229, $r1=var1678, $i0=var2875, $i1=var493, r6=var511, com.mysql.cj.util.StringUtils=var1728, r5=var1383}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @parameter0: java.lang.String;	c2 := @parameter1: char;	c3 := @parameter2: char;	r0 := @parameter3: java.lang.String;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	$i0 = virtualinvoke r4.<java.lang.String: int length()>();	$i1 = $i0 + 2;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(int)>($i1);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c3);	r6 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	r5 = staticinvoke <com.mysql.cj.util.StringUtils: byte[] getBytes(java.lang.String,java.lang.String)>(r6, r0);	return r5
;block_num 3