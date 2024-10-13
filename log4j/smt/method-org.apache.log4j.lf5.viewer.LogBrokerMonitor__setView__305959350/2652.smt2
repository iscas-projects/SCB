(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1678 0)
(declare-sort var15 0)
(declare-sort var1516 0)
(declare-sort var136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var136-init () var136)
(declare-fun <init>/875830710 (var136 String) void)
(declare-const null-var1678 var1678)
(declare-const null-String String)
(declare-const null-var1516 var1516)
(declare-const var1913 var1678) ; Statement: r8 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor 
(assert (not (= var1913 null-var1678)))
(declare-const var1585 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1585 null-String)))
(declare-const var2309 var1516) ; Statement: r7 := @parameter1: org.apache.log4j.lf5.viewer.LogTable 
(assert (not (= var2309 null-var1516)))
(define-const var3028 String "Detailed") ; Statement: $r1 = "Detailed" 
(assert true)
(define-const var149 Bool (= var3028 var1585)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuffer 
(assert (= (ite var149 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3674 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3674)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3674!1 String)
(assert true)
(define-const var3585 String (append/1560614132 var3674!1 var1585)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0) 
(declare-const var3674!2 String)
(assert (str.prefixof var3674!1 var3674!2))
(assert true)
(define-const var3244 String (append/1560614132 var3585 "does not match a supported view.")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("does not match a supported view.") 
(declare-const var3585!1 String)
(assert (str.prefixof var3585 var3585!1))
(assert true)
(define-const var1399 String (toString/-222306083 var3244)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(define-const var2400 var136 var136-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var2400 var1399)) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r5) 

(declare-const var2400!1 var136)
(declare-const var1399!1 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var136-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1678=org.apache.log4j.lf5.viewer.LogBrokerMonitor, var1913=r8, var1585=r0, var15=null_type, var1516=org.apache.log4j.lf5.viewer.LogTable, var2309=r7, var3028=$r1, var149=$z0, var3674=$r2, var3585=$r3, var3244=$r4, var1399=r5, var136=java.lang.IllegalArgumentException, var2400=$r6}
; {org.apache.log4j.lf5.viewer.LogBrokerMonitor=var1678, r8=var1913, r0=var1585, null_type=var15, org.apache.log4j.lf5.viewer.LogTable=var1516, r7=var2309, $r1=var3028, $z0=var149, $r2=var3674, $r3=var3585, $r4=var3244, r5=var1399, java.lang.IllegalArgumentException=var136, $r6=var2400}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.log4j.lf5.viewer.LogBrokerMonitor;	r0 := @parameter0: java.lang.String;	r7 := @parameter1: org.apache.log4j.lf5.viewer.LogTable;	$r1 = "Detailed";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = new java.lang.StringBuffer;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r0);	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("does not match a supported view.");	r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	$r6 = new java.lang.IllegalArgumentException;	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>(r5);	throw $r6
;block_num 2