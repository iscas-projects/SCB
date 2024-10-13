(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var313 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prologWriter/-1672903383 (var1777) var313)
(declare-fun getBuffer/-1377036288 (var313) String)
(declare-fun length/-1112840705 (String) Int)
(declare-fun write/791407750 (var313 (Array Int Int) Int Int) void)
(declare-const null-var1777 var1777)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2886 var1777) ; Statement: r0 := @this: org.apache.commons.io.output.XmlStreamWriter 
(assert (not (= var2886 null-var1777)))
(declare-const var569 (Array Int Int)) ; Statement: r3 := @parameter0: char[] 
(assert (not (= var569 null-__Array__Int__Int__)))
(declare-const var2211 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2211 null-Int)))
(declare-const var2469 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var2469 null-Int)))
(define-const var2113 Int var2469) ; Statement: i12 = i0 
(define-const var62 var313 (prologWriter/-1672903383 var2886)) ; Statement: $r1 = r0.<org.apache.commons.io.output.XmlStreamWriter: java.io.StringWriter prologWriter> 
(assert true)
(define-const var665 String (getBuffer/-1377036288 var62)) ; Statement: r2 = virtualinvoke $r1.<java.io.StringWriter: java.lang.StringBuffer getBuffer()>() 
(assert true)
(define-const var35 Int (length/-1112840705 var665)) ; Statement: $i1 = virtualinvoke r2.<java.lang.StringBuffer: int length()>() 
(define-const var2612 Int (+ var35 var2469)) ; Statement: $i2 = $i1 + i0 
 ; Statement: if $i2 <= 8192 goto $r4 = r0.<org.apache.commons.io.output.XmlStreamWriter: java.io.StringWriter prologWriter> 
(assert (<= var2612 8192)) ; Cond: $i2 <= 8192 
(define-const var3920 var313 (prologWriter/-1672903383 var2886)) ; Statement: $r4 = r0.<org.apache.commons.io.output.XmlStreamWriter: java.io.StringWriter prologWriter> 
(assert true)
;(assert (write/791407750 var3920 var569 var2211 var2113)) ; Statement: virtualinvoke $r4.<java.io.StringWriter: void write(char[],int,int)>(r3, i3, i12) 

(declare-const var3920!1 var313)
(declare-const var569!1 (Array Int Int))
(declare-const var2211!1 Int)
(declare-const var2113!1 Int)
(assert true)
(define-const var3076 Int (length/-1112840705 var665)) ; Statement: $i4 = virtualinvoke r2.<java.lang.StringBuffer: int length()>() 
 ; Statement: if $i4 < 5 goto return 
(assert (< var3076 5)) ; Cond: $i4 < 5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {prologWriter/-1672903383=([org.apache.commons.io.output.XmlStreamWriter], java.io.StringWriter), getBuffer/-1377036288=([java.io.StringWriter], java.lang.StringBuffer), length/-1112840705=([java.lang.StringBuffer], int), write/791407750=([java.io.StringWriter, char[], int, int], void)}
; {var1777=org.apache.commons.io.output.XmlStreamWriter, var2886=r0, var569=r3, var2211=i3, var2469=i0, var2113=i12, var313=java.io.StringWriter, var62=$r1, var665=r2, var35=$i1, var2612=$i2, var3920=$r4, var3076=$i4}
; {org.apache.commons.io.output.XmlStreamWriter=var1777, r0=var2886, r3=var569, i3=var2211, i0=var2469, i12=var2113, java.io.StringWriter=var313, $r1=var62, r2=var665, $i1=var35, $i2=var2612, $r4=var3920, $i4=var3076}
;seq <java.lang.StringBuffer: int length()>;	<java.lang.StringBuffer: int length()>
;cnt {"<java.lang.StringBuffer: int length()>": 2}
;stmts r0 := @this: org.apache.commons.io.output.XmlStreamWriter;	r3 := @parameter0: char[];	i3 := @parameter1: int;	i0 := @parameter2: int;	i12 = i0;	$r1 = r0.<org.apache.commons.io.output.XmlStreamWriter: java.io.StringWriter prologWriter>;	r2 = virtualinvoke $r1.<java.io.StringWriter: java.lang.StringBuffer getBuffer()>();	$i1 = virtualinvoke r2.<java.lang.StringBuffer: int length()>();	$i2 = $i1 + i0;	if $i2 <= 8192 goto $r4 = r0.<org.apache.commons.io.output.XmlStreamWriter: java.io.StringWriter prologWriter>;	$r4 = r0.<org.apache.commons.io.output.XmlStreamWriter: java.io.StringWriter prologWriter>;	virtualinvoke $r4.<java.io.StringWriter: void write(char[],int,int)>(r3, i3, i12);	$i4 = virtualinvoke r2.<java.lang.StringBuffer: int length()>();	if $i4 < 5 goto return;	return
;block_num 3