(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3784 0)
(declare-sort var398 0)
(declare-sort var2470 0)
(declare-sort var1112 0)
(declare-sort var271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var398_getSuggestedBufferSize/1237181336 (Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var271_unableToCloseStream/-611455929 (var271 var1112) void)
(declare-const null-var3784 var3784)
(declare-const null-Int Int)
(declare-const null-var2470 var2470)
(declare-const null-var1112 var1112)
(declare-const var398-LOG var271)
(declare-const var3195 var3784) ; Statement: r1 := @parameter0: java.io.Reader 
(assert (not (= var3195 null-var3784)))
(declare-const var1049 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1049 null-Int)))
(define-const var1336 Int (var398_getSuggestedBufferSize/1237181336 var1049)) ; Statement: i1 = staticinvoke <org.hibernate.type.descriptor.java.DataHelper: int getSuggestedBufferSize(int)>(i0) 
(define-const var3062 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/543593434 var3062 var1336)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>(i1) 

(declare-const var3062!1 String)
(declare-const var1336!1 Int)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var80 var2470) ; Statement: $r5 := @caughtexception 
(assert (not (= var80 null-var2470)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var28 var1112) ; Statement: $r3 := @caughtexception 
(assert (not (= var28 null-var1112)))
(define-const var622 var271 var398-LOG) ; Statement: $r4 = <org.hibernate.type.descriptor.java.DataHelper: org.hibernate.internal.CoreMessageLogger LOG> 
;(assert (var271_unableToCloseStream/-611455929 var622 var28)) ; Statement: interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void unableToCloseStream(java.io.IOException)>($r3) 

(declare-const var622!1 var271)
(declare-const var28!1 var1112)
(assert true) ; Non Conditional
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var398_getSuggestedBufferSize/1237181336=([int], int), String-init=([], java.lang.StringBuilder), <init>/543593434=([java.lang.StringBuilder, int], void), var271_unableToCloseStream/-611455929=([org.hibernate.internal.CoreMessageLogger, java.io.IOException], void)}
; {var3784=java.io.Reader, var3195=r1, var1049=i0, var398=org.hibernate.type.descriptor.java.DataHelper, var1336=i1, var3062=$r11, var2470=java.lang.Throwable, var80=$r5, var1112=java.io.IOException, var28=$r3, var271=org.hibernate.internal.CoreMessageLogger, var622=$r4}
; {java.io.Reader=var3784, r1=var3195, i0=var1049, org.hibernate.type.descriptor.java.DataHelper=var398, i1=var1336, $r11=var3062, java.lang.Throwable=var2470, $r5=var80, java.io.IOException=var1112, $r3=var28, org.hibernate.internal.CoreMessageLogger=var271, $r4=var622}
;seq <java.lang.StringBuilder: void <init>(int)>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1}
;stmts r1 := @parameter0: java.io.Reader;	i0 := @parameter1: int;	i1 = staticinvoke <org.hibernate.type.descriptor.java.DataHelper: int getSuggestedBufferSize(int)>(i0);	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>(int)>(i1);	$r5 := @caughtexception;	$r3 := @caughtexception;	$r4 = <org.hibernate.type.descriptor.java.DataHelper: org.hibernate.internal.CoreMessageLogger LOG>;	interfaceinvoke $r4.<org.hibernate.internal.CoreMessageLogger: void unableToCloseStream(java.io.IOException)>($r3);	throw $r5
;block_num 4