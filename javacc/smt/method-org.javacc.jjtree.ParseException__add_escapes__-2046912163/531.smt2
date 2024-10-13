(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3881 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const var2761 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2761 null-String)))
(define-const var3598 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3598)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3598!1 String)
(define-const var1595 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2026 Int (length/-134980193 var2761)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var1595 var2026)) ; Cond: i6 >= $i0 
(assert true)
(define-const var724 String (toString/-222306083 var3598!1)) ; Statement: $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), length/-134980193=([java.lang.String], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2761=r1, var3881=null_type, var3598=$r13, var1595=i6, var2026=$i0, var724=$r2}
; {r1=var2761, null_type=var3881, $r13=var3598, i6=var1595, $i0=var2026, $r2=var724}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.String: int length()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	i6 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i6 >= $i0 goto $r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3