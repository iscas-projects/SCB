(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var775 0)
(declare-sort var2735 0)
(declare-sort var525 0)
(declare-sort var2047 0)
(declare-sort var1051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2735_requireNonNull/1378936425 (var525 String) var525)
(declare-fun cast-from-__Array__Int__Int__-to-var525 ((Array Int Int)) var525)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun bufferSize/474035821 (var2047) Int)
(declare-fun cast-from-var775-to-var2047 (var775) var2047)
(declare-fun var1051-init () var1051)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1051 String) void)
(declare-const null-var775 var775)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var1426 var775) ; Statement: r1 := @this: org.apache.commons.io.input.buffer.PeekableInputStream 
(assert (not (= var1426 null-var775)))
(declare-const var1321 (Array Int Int)) ; Statement: r0 := @parameter0: byte[] 
(assert (not (= var1321 null-__Array__Int__Int__)))
(declare-const var1189 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var1189 null-Int)))
(declare-const var3072 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3072 null-Int)))
;(assert (var2735_requireNonNull/1378936425 (cast-from-__Array__Int__Int__-to-var525 var1321) "sourceBuffer")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "sourceBuffer") 

(declare-const var1321!1 (Array Int Int))
(declare-const var930 String)
(define-const var2569 Int (getLength-Arr-Int-1 var1321!1)) ; Statement: $i1 = lengthof r0 
(define-const var3900 Int (bufferSize/474035821 (cast-from-var775-to-var2047 var1426))) ; Statement: $i0 = r1.<org.apache.commons.io.input.buffer.PeekableInputStream: int bufferSize> 
 ; Statement: if $i1 <= $i0 goto $r2 = r1.<org.apache.commons.io.input.buffer.PeekableInputStream: org.apache.commons.io.input.buffer.CircularByteBuffer buffer> 
(assert (not (<= var2569 var3900))) ; Negate: Cond: $i1 <= $i0  
(define-const var1642 var1051 var1051-init) ; Statement: $r4 = new java.lang.IllegalArgumentException 
(define-const var1564 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1564)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1564!1 String)
(assert (= var1564!1 ""))
(assert true)
(define-const var1504 String (append/672562846 var1564!1 "Peek request size of ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Peek request size of ") 
(declare-const var1564!2 String)
(assert (= var1564!2 (str.++ var1564!1 "Peek request size of ")))
(define-const var1807 Int (getLength-Arr-Int-1 var1321!1)) ; Statement: $i6 = lengthof r0 
(assert true)
(define-const var1636 String (append/-1001720160 var1504 var1807)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6) 
(declare-const var1504!1 String)
(assert (str.prefixof var1504 var1504!1))
(assert true)
(define-const var3912 String (append/672562846 var1636 " bytes exceeds buffer size of ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes exceeds buffer size of ") 
(declare-const var1636!1 String)
(assert (= var1636!1 (str.++ var1636 " bytes exceeds buffer size of ")))
(define-const var2055 Int (bufferSize/474035821 (cast-from-var775-to-var2047 var1426))) ; Statement: $i7 = r1.<org.apache.commons.io.input.buffer.PeekableInputStream: int bufferSize> 
(assert true)
(define-const var2113 String (append/-1001720160 var3912 var2055)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var3912!1 String)
(assert (str.prefixof var3912 var3912!1))
(assert true)
(define-const var3802 String (append/672562846 var2113 " bytes")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes") 
(declare-const var2113!1 String)
(assert (= var2113!1 (str.++ var2113 " bytes")))
(assert true)
(define-const var2665 String (toString/-2075883882 var3802)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var1642 var2665)) ; Statement: specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var1642!1 var1051)
(declare-const var2665!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2735_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-__Array__Int__Int__-to-var525=([byte[]], java.lang.Object), getLength-Arr-Int-1=([byte[]], int), bufferSize/474035821=([org.apache.commons.io.input.buffer.CircularBufferInputStream], int), cast-from-var775-to-var2047=([org.apache.commons.io.input.buffer.PeekableInputStream], org.apache.commons.io.input.buffer.CircularBufferInputStream), var1051-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var775=org.apache.commons.io.input.buffer.PeekableInputStream, var1426=r1, var1321=r0, var1189=i4, var3072=i5, var2735=java.util.Objects, var525=java.lang.Object, var930="sourceBuffer", var2569=$i1, var2047=org.apache.commons.io.input.buffer.CircularBufferInputStream, var3900=$i0, var1051=java.lang.IllegalArgumentException, var1642=$r4, var1564=$r5, var1504=$r6, var1807=$i6, var1636=$r7, var3912=$r8, var2055=$i7, var2113=$r9, var3802=$r10, var2665=$r11}
; {org.apache.commons.io.input.buffer.PeekableInputStream=var775, r1=var1426, r0=var1321, i4=var1189, i5=var3072, java.util.Objects=var2735, java.lang.Object=var525, "sourceBuffer"=var930, $i1=var2569, org.apache.commons.io.input.buffer.CircularBufferInputStream=var2047, $i0=var3900, java.lang.IllegalArgumentException=var1051, $r4=var1642, $r5=var1564, $r6=var1504, $i6=var1807, $r7=var1636, $r8=var3912, $i7=var2055, $r9=var2113, $r10=var3802, $r11=var2665}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.commons.io.input.buffer.PeekableInputStream;	r0 := @parameter0: byte[];	i4 := @parameter1: int;	i5 := @parameter2: int;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r0, "sourceBuffer");	$i1 = lengthof r0;	$i0 = r1.<org.apache.commons.io.input.buffer.PeekableInputStream: int bufferSize>;	if $i1 <= $i0 goto $r2 = r1.<org.apache.commons.io.input.buffer.PeekableInputStream: org.apache.commons.io.input.buffer.CircularByteBuffer buffer>;	$r4 = new java.lang.IllegalArgumentException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Peek request size of ");	$i6 = lengthof r0;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i6);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes exceeds buffer size of ");	$i7 = r1.<org.apache.commons.io.input.buffer.PeekableInputStream: int bufferSize>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" bytes");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r4
;block_num 2