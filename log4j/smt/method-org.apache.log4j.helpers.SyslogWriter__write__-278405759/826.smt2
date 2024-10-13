(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var798 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun write/375765608 (var798 String) void)
(declare-const null-var798 var798)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3811 var798) ; Statement: r0 := @this: org.apache.log4j.helpers.SyslogWriter 
(assert (not (= var3811 null-var798)))
(declare-const var658 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var658 null-__Array__Int__Int__)))
(declare-const var935 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var935 null-Int)))
(declare-const var167 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var167 null-Int)))
(define-const var2666 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var2666 var658 var935 var167)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>(r2, i0, i1) 

(declare-const var2666!1 String)
(declare-const var658!1 (Array Int Int))
(declare-const var935!1 Int)
(declare-const var167!1 Int)
(assert true)
;(assert (write/375765608 var3811 var2666!1)) ; Statement: virtualinvoke r0.<org.apache.log4j.helpers.SyslogWriter: void write(java.lang.String)>($r1) 

(declare-const var3811!1 var798)
(declare-const var2666!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), write/375765608=([org.apache.log4j.helpers.SyslogWriter, java.lang.String], void)}
; {var798=org.apache.log4j.helpers.SyslogWriter, var3811=r0, var658=r2, var935=i0, var167=i1, var2666=$r1}
; {org.apache.log4j.helpers.SyslogWriter=var798, r0=var3811, r2=var658, i0=var935, i1=var167, $r1=var2666}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.log4j.helpers.SyslogWriter;	r2 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>(r2, i0, i1);	virtualinvoke r0.<org.apache.log4j.helpers.SyslogWriter: void write(java.lang.String)>($r1);	return
;block_num 1