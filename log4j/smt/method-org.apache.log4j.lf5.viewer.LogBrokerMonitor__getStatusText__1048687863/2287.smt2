(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3426 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1845021834 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3426 var3426)
(declare-const null-Int Int)
(declare-const var3089 var3426) ; Statement: r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var3089 null-var3426)))
(declare-const var1406 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1406 null-Int)))
(declare-const var2674 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2674 null-Int)))
(define-const var2894 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2894)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2894!1 String)
(assert true)
;(assert (append/1560614132 var2894!1 "Displaying: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Displaying: ") 
(declare-const var2894!2 String)
(assert (str.prefixof var2894!1 var2894!2))
(assert true)
;(assert (append/1845021834 var2894!2 var1406)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0) 

(declare-const var2894!3 String)
(declare-const var1406!1 Int)
(assert true)
;(assert (append/1560614132 var2894!3 " records out of a total of: ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" records out of a total of: ") 
(declare-const var2894!4 String)
(assert (str.prefixof var2894!3 var2894!4))
(assert true)
;(assert (append/1845021834 var2894!4 var2674)) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1) 

(declare-const var2894!5 String)
(declare-const var2674!1 Int)
(assert true)
;(assert (append/1560614132 var2894!5 " records.")) ; Statement: virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" records.") 
(declare-const var2894!6 String)
(assert (str.prefixof var2894!5 var2894!6))
(assert true)
(define-const var461 String (toString/-222306083 var2894!6)) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1845021834=([java.lang.StringBuffer, int], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3426=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var3089=r2, var1406=i0, var2674=i1, var2894=$r0, var461=$r1}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var3426, r2=var3089, i0=var1406, i1=var2674, $r0=var2894, $r1=var461}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(int)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r2 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Displaying: ");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i0);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" records out of a total of: ");	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(int)>(i1);	virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" records.");	$r1 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.String toString()>();	return $r1
;block_num 1