(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var159 0)
(declare-sort var15 0)
(declare-sort var2989 0)
(declare-sort var3160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var15_requireNonNull/1378936425 (var2989 String) var2989)
(declare-fun cast-from-__Array__Int__Int__-to-var2989 ((Array Int Int)) var2989)
(declare-fun var3160-init () var3160)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1107025377 (var3160 String) void)
(declare-const null-var159 var159)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var3221 var159) ; Statement: r1 := @this: org.apache.commons.io.input.SequenceReader 
(assert (not (= var3221 null-var159)))
(declare-const var2394 (Array Int Int)) ; Statement: r0 := @parameter0: char[] 
(assert (not (= var2394 null-__Array__Int__Int__)))
(declare-const var1091 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1091 null-Int)))
(declare-const var2175 Int) ; Statement: i4 := @parameter2: int 
(assert (not (= var2175 null-Int)))
;(assert (var15_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var2989 var2394) "cbuf")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "cbuf") 

(declare-const var2394!1 (Array Int Int))
(declare-const var2170 String)
 ; Statement: if i4 < 0 goto $r14 = new java.lang.IndexOutOfBoundsException 
(assert (< var2175 0)) ; Cond: i4 < 0 
(define-const var1550 var3160 var3160-init) ; Statement: $r14 = new java.lang.IndexOutOfBoundsException 
(define-const var2838 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2838)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2838!1 String)
(assert (= var2838!1 ""))
(assert true)
(define-const var3039 String (append/672562846 var2838!1 "Array Size=")) ; Statement: $r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array Size=") 
(declare-const var2838!2 String)
(assert (= var2838!2 (str.++ var2838!1 "Array Size=")))
(define-const var3336 Int (getLength-Arr-Int-1 var2394!1)) ; Statement: $i5 = lengthof r0 
(assert true)
(define-const var2959 String (append/-1001720160 var3039 var3336)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5) 
(declare-const var3039!1 String)
(assert (str.prefixof var3039 var3039!1))
(assert true)
(define-const var3316 String (append/672562846 var2959 ", offset=")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=") 
(declare-const var2959!1 String)
(assert (= var2959!1 (str.++ var2959 ", offset=")))
(assert true)
(define-const var1988 String (append/-1001720160 var3316 var1091)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3316!1 String)
(assert (str.prefixof var3316 var3316!1))
(assert true)
(define-const var631 String (append/672562846 var1988 ", length=")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=") 
(declare-const var1988!1 String)
(assert (= var1988!1 (str.++ var1988 ", length=")))
(assert true)
(define-const var3265 String (append/-1001720160 var631 var2175)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var631!1 String)
(assert (str.prefixof var631 var631!1))
(assert true)
(define-const var77 String (toString/-2075883882 var3265)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1107025377 var1550 var77)) ; Statement: specialinvoke $r14.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r12) 

(declare-const var1550!1 var3160)
(declare-const var77!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var15_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var2989=([char[]], java.lang.Object), var3160-init=([], java.lang.IndexOutOfBoundsException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getLength-Arr-Int-1=([char[]], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1107025377=([java.lang.IndexOutOfBoundsException, java.lang.String], void)}
; {var159=org.apache.commons.io.input.SequenceReader, var3221=r1, var2394=r0, var1091=i3, var2175=i4, var15=java.util.Objects, var2989=java.lang.Object, var2170="cbuf", var3160=java.lang.IndexOutOfBoundsException, var1550=$r14, var2838=$r13, var3039=$r6, var3336=$i5, var2959=$r7, var3316=$r8, var1988=$r9, var631=$r10, var3265=$r11, var77=$r12}
; {org.apache.commons.io.input.SequenceReader=var159, r1=var3221, r0=var2394, i3=var1091, i4=var2175, java.util.Objects=var15, java.lang.Object=var2989, "cbuf"=var2170, java.lang.IndexOutOfBoundsException=var3160, $r14=var1550, $r13=var2838, $r6=var3039, $i5=var3336, $r7=var2959, $r8=var3316, $r9=var1988, $r10=var631, $r11=var3265, $r12=var77}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.input.SequenceReader;	r0 := @parameter0: char[];	i3 := @parameter1: int;	i4 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "cbuf");	if i4 < 0 goto $r14 = new java.lang.IndexOutOfBoundsException;	$r14 = new java.lang.IndexOutOfBoundsException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Array Size=");	$i5 = lengthof r0;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", offset=");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", length=");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<java.lang.IndexOutOfBoundsException: void <init>(java.lang.String)>($r12);	throw $r14
;block_num 2