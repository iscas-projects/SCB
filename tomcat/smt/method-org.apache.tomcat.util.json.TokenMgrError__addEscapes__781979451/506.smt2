(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var510 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const var3443 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3443 null-String)))
(define-const var3676 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3676)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3676!1 String)
(define-const var2408 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var1045 Int (length/-134980193 var3443)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var2408 var1045)) ; Cond: i6 >= $i0 
(assert true)
(define-const var666 String (toString/-222306083 var3676!1)) ; Statement: $r2 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), length/-134980193=([java.lang.String], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3443=r1, var510=null_type, var3676=$r7, var2408=i6, var1045=$i0, var666=$r2}
; {r1=var3443, null_type=var510, $r7=var3676, i6=var2408, $i0=var1045, $r2=var666}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i0 goto $r2 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3