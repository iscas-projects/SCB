(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1047 0)
(declare-sort var564 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var564-init () var564)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var564 String) void)
(declare-const null-var1047 var1047)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1393 var1047) ; Statement: r12 := @this: org.apache.commons.io.output.ClosedWriter 
(assert (not (= var1393 null-var1047)))
(declare-const var3800 (Array Int Int)) ; Statement: r3 := @parameter0: char[] 
(assert (not (= var3800 null-__Array__Int__Int__)))
(declare-const var16 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var16 null-Int)))
(declare-const var3840 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3840 null-Int)))
(define-const var3965 var564 var564-init) ; Statement: $r0 = new java.io.IOException 
(define-const var1500 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1500)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1500!1 String)
(assert (= var1500!1 ""))
(assert true)
(define-const var2357 String (append/672562846 var1500!1 "write(")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write(") 
(declare-const var1500!2 String)
(assert (= var1500!2 (str.++ var1500!1 "write(")))
(define-const var1312 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/-915723298 var1312 var3800)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(char[])>(r3) 

(declare-const var1312!1 String)
(declare-const var3800!1 (Array Int Int))
(assert true)
(define-const var913 String (append/672562846 var2357 var1312!1)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2357!1 String)
(assert (= var2357!1 (str.++ var2357 var1312!1)))
(assert true)
(define-const var2958 String (append/672562846 var913 ", ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var913!1 String)
(assert (= var913!1 (str.++ var913 ", ")))
(assert true)
(define-const var3182 String (append/-1001720160 var2958 var16)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2958!1 String)
(assert (str.prefixof var2958 var2958!1))
(assert true)
(define-const var3365 String (append/672562846 var3182 ", ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var3182!1 String)
(assert (= var3182!1 (str.++ var3182 ", ")))
(assert true)
(define-const var2645 String (append/-1001720160 var3365 var3840)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var3365!1 String)
(assert (str.prefixof var3365 var3365!1))
(assert true)
(define-const var2268 String (append/672562846 var2645 ") failed: stream is closed")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") failed: stream is closed") 
(declare-const var2645!1 String)
(assert (= var2645!1 (str.++ var2645 ") failed: stream is closed")))
(assert true)
(define-const var1722 String (toString/-2075883882 var2268)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3965 var1722)) ; Statement: specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r11) 

(declare-const var3965!1 var564)
(declare-const var1722!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var564-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/-915723298=([java.lang.String, char[]], void), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1047=org.apache.commons.io.output.ClosedWriter, var1393=r12, var3800=r3, var16=i0, var3840=i1, var564=java.io.IOException, var3965=$r0, var1500=$r1, var2357=$r4, var1312=$r2, var913=$r5, var2958=$r6, var3182=$r7, var3365=$r8, var2645=$r9, var2268=$r10, var1722=$r11}
; {org.apache.commons.io.output.ClosedWriter=var1047, r12=var1393, r3=var3800, i0=var16, i1=var3840, java.io.IOException=var564, $r0=var3965, $r1=var1500, $r4=var2357, $r2=var1312, $r5=var913, $r6=var2958, $r7=var3182, $r8=var3365, $r9=var2645, $r10=var2268, $r11=var1722}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(char[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.String: void <init>(char[])>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r12 := @this: org.apache.commons.io.output.ClosedWriter;	r3 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r0 = new java.io.IOException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("write(");	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(char[])>(r3);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") failed: stream is closed");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r11);	throw $r0
;block_num 1