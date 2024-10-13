(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3509 0)
(declare-sort var3787 0)
(declare-sort var2596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getThrowableStrRep/1876146384 (var3787) (Array Int String))
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun _thrownStackTrace/919102232 (var2596) String)
(declare-fun cast-from-var3509-to-var2596 (var3509) var2596)
(declare-const null-var3509 var3509)
(declare-const null-var3787 var3787)
(declare-const var1882 var3509) ; Statement: r3 := @this: org.apache.log4j.lf5.Log4JLogRecord 
(assert (not (= var1882 null-var3509)))
(declare-const var1903 var3787) ; Statement: r0 := @parameter0: org.apache.log4j.spi.ThrowableInformation 
(assert (not (= var1903 null-var3787)))
(assert true)
(define-const var1587 (Array Int String) (getThrowableStrRep/1876146384 var1903)) ; Statement: r1 = virtualinvoke r0.<org.apache.log4j.spi.ThrowableInformation: java.lang.String[] getThrowableStrRep()>() 
(define-const var3698 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3698)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3698!1 String)
(define-const var2863 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var613 Int (getLength-Arr-String-1 var1587)) ; Statement: $i0 = lengthof r1 
 ; Statement: if i1 >= $i0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert (>= var2863 var613)) ; Cond: i1 >= $i0 
(assert true)
(define-const var1378 String (toString/-222306083 var3698!1)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>() 
(declare-const var1882!1 var3509)
(assert (not (= var1882!1 null-var3509)))
(assert (= (_thrownStackTrace/919102232 (cast-from-var3509-to-var2596 var1882!1)) var1378)) ; Statement: r3.<org.apache.log4j.lf5.Log4JLogRecord: java.lang.String _thrownStackTrace> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getThrowableStrRep/1876146384=([org.apache.log4j.spi.ThrowableInformation], java.lang.String[]), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-222306083=([java.lang.StringBuffer], java.lang.String), _thrownStackTrace/919102232=([org.apache.log4j.lf5.LogRecord], java.lang.String), cast-from-var3509-to-var2596=([org.apache.log4j.lf5.Log4JLogRecord], org.apache.log4j.lf5.LogRecord)}
; {var3509=org.apache.log4j.lf5.Log4JLogRecord, var1882=r3, var3787=org.apache.log4j.spi.ThrowableInformation, var1903=r0, var1587=r1, var3698=$r2, var2863=i1, var613=$i0, var1378=$r4, var2596=org.apache.log4j.lf5.LogRecord}
; {org.apache.log4j.lf5.Log4JLogRecord=var3509, r3=var1882, org.apache.log4j.spi.ThrowableInformation=var3787, r0=var1903, r1=var1587, $r2=var3698, i1=var2863, $i0=var613, $r4=var1378, org.apache.log4j.lf5.LogRecord=var2596}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r3 := @this: org.apache.log4j.lf5.Log4JLogRecord;	r0 := @parameter0: org.apache.log4j.spi.ThrowableInformation;	r1 = virtualinvoke r0.<org.apache.log4j.spi.ThrowableInformation: java.lang.String[] getThrowableStrRep()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	i1 = 0;	$i0 = lengthof r1;	if i1 >= $i0 goto $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.String toString()>();	r3.<org.apache.log4j.lf5.Log4JLogRecord: java.lang.String _thrownStackTrace> = $r4;	return
;block_num 3