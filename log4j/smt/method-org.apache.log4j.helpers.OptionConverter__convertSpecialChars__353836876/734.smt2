(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-String String)
(declare-const var3051 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3051 null-String)))
(assert true)
(define-const var506 Int (length/-134980193 var3051)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1244 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1244 var506)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(i0) 

(declare-const var1244!1 String)
(declare-const var506!1 Int)
(define-const var3842 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var3842 var506!1)) ; Cond: i3 >= i0 
(assert true)
(define-const var2041 String (toString/-222306083 var1244!1)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3051=r0, var2837=null_type, var506=i0, var1244=$r1, var3842=i3, var2041=$r2}
; {r0=var3051, null_type=var2837, i0=var506, $r1=var1244, i3=var3842, $r2=var2041}
;seq <java.lang.String: int length()>;	<java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>(int)>(i0);	i3 = 0;	if i3 >= i0 goto $r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$r2 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	return $r2
;block_num 3