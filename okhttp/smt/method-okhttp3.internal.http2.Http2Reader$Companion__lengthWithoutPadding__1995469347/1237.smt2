(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1586 0)
(declare-sort var2464 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2464-init () var2464)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2464 String) void)
(declare-const null-var1586 var1586)
(declare-const null-Int Int)
(declare-const var2596 var1586) ; Statement: r7 := @this: okhttp3.internal.http2.Http2Reader$Companion 
(assert (not (= var2596 null-var1586)))
(declare-const var2248 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2248 null-Int)))
(declare-const var2795 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2795 null-Int)))
(declare-const var1221 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var1221 null-Int)))
(define-const var2451 Int var2248) ; Statement: i4 = i0 
(define-const var1637 Int (bv2nat (bvand ((_ int2bv 64) var2795) ((_ int2bv 64) 8)))) ; Statement: $i2 = i1 & 8 
 ; Statement: if $i2 == 0 goto (branch) 
(assert (= var1637 0)) ; Cond: $i2 == 0 
 ; Statement: if i3 <= i4 goto i5 = i4 - i3 
(assert (not (<= var1221 var2451))) ; Negate: Cond: i3 <= i4  
(define-const var3216 var2464 var2464-init) ; Statement: $r9 = new java.io.IOException 
(define-const var1239 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1239)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1239!1 String)
(assert (= var1239!1 ""))
(assert true)
(define-const var3786 String (append/672562846 var1239!1 "PROTOCOL_ERROR padding ")) ; Statement: $r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PROTOCOL_ERROR padding ") 
(declare-const var1239!2 String)
(assert (= var1239!2 (str.++ var1239!1 "PROTOCOL_ERROR padding ")))
(assert true)
(define-const var528 String (append/-1001720160 var3786 var1221)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3) 
(declare-const var3786!1 String)
(assert (str.prefixof var3786 var3786!1))
(assert true)
(define-const var3780 String (append/672562846 var528 " > remaining length ")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" > remaining length ") 
(declare-const var528!1 String)
(assert (= var528!1 (str.++ var528 " > remaining length ")))
(assert true)
(define-const var3948 String (append/-1001720160 var3780 var2451)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4) 
(declare-const var3780!1 String)
(assert (str.prefixof var3780 var3780!1))
(assert true)
(define-const var3451 String (toString/-2075883882 var3948)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3216 var3451)) ; Statement: specialinvoke $r9.<java.io.IOException: void <init>(java.lang.String)>($r6) 

(declare-const var3216!1 var2464)
(declare-const var3451!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2464-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1586=okhttp3.internal.http2.Http2Reader$Companion, var2596=r7, var2248=i0, var2795=i1, var1221=i3, var2451=i4, var1637=$i2, var2464=java.io.IOException, var3216=$r9, var1239=$r8, var3786=$r2, var528=$r3, var3780=$r4, var3948=$r5, var3451=$r6}
; {okhttp3.internal.http2.Http2Reader$Companion=var1586, r7=var2596, i0=var2248, i1=var2795, i3=var1221, i4=var2451, $i2=var1637, java.io.IOException=var2464, $r9=var3216, $r8=var1239, $r2=var3786, $r3=var528, $r4=var3780, $r5=var3948, $r6=var3451}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: okhttp3.internal.http2.Http2Reader$Companion;	i0 := @parameter0: int;	i1 := @parameter1: int;	i3 := @parameter2: int;	i4 = i0;	$i2 = i1 & 8;	if $i2 == 0 goto (branch);	if i3 <= i4 goto i5 = i4 - i3;	$r9 = new java.io.IOException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PROTOCOL_ERROR padding ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i3);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" > remaining length ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<java.io.IOException: void <init>(java.lang.String)>($r6);	throw $r9
;block_num 3