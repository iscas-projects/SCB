(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2103 0)
(declare-sort var1423 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1423-init () var1423)
(declare-fun <init>/-1517764957 (var1423 String String Bool) void)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun hasMoreTokens/711654492 (var1423) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3922 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3922 null-String)))
(define-const var1284 var1423 var1423-init) ; Statement: $r0 = new java.util.StringTokenizer 
(assert true)
;(assert (<init>/-1517764957 var1284 var3922 " \t\r\n" (ite (= 1 1) true false))) ; Statement: specialinvoke $r0.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r1, " \t\r\n", 1) 

(declare-const var1284!1 var1423)
(declare-const var3922!1 String)
(declare-const var2679 String)
(declare-const var2189 Int)
(define-const var2109 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
(define-const var507 Int (length/-134980193 var3922!1)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var2109 var507)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var2109!1 String)
(declare-const var507!1 Int)
(assert true) ; Non Conditional
(assert true)
(define-const var1451 Bool (hasMoreTokens/711654492 var1284!1)) ; Statement: $z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>() 
 ; Statement: if $z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var1451 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1937 String (toString/-2075883882 var2109!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1423-init=([], java.util.StringTokenizer), <init>/-1517764957=([java.util.StringTokenizer, java.lang.String, java.lang.String, boolean], void), String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), hasMoreTokens/711654492=([java.util.StringTokenizer], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3922=r1, var2103=null_type, var1423=java.util.StringTokenizer, var1284=$r0, var2679=" \t\r\n", var2189=1, var2109=$r2, var507=$i0, var1451=$z0, var1937=$r3}
; {r1=var3922, null_type=var2103, java.util.StringTokenizer=var1423, $r0=var1284, " \t\r\n"=var2679, 1=var2189, $r2=var2109, $i0=var507, $z0=var1451, $r3=var1937}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.util.StringTokenizer;	specialinvoke $r0.<java.util.StringTokenizer: void <init>(java.lang.String,java.lang.String,boolean)>(r1, " \t\r\n", 1);	$r2 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke $r2.<java.lang.StringBuilder: void <init>(int)>($i0);	$z0 = virtualinvoke $r0.<java.util.StringTokenizer: boolean hasMoreTokens()>();	if $z0 == 0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3