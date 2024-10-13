(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var405 0)
(declare-sort var3559 0)
(declare-sort var2256 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2256-init () var2256)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var2256 String) void)
(declare-const null-var405 var405)
(declare-const null-var3559 var3559)
(declare-const null-Int Int)
(declare-const var3361 var405) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Reader 
(assert (not (= var3361 null-var405)))
(declare-const var3774 var3559) ; Statement: r5 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler 
(assert (not (= var3774 null-var3559)))
(declare-const var1416 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1416 null-Int)))
(declare-const var3580 Int) ; Statement: i6 := @parameter2: int 
(assert (not (= var3580 null-Int)))
(declare-const var1744 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var1744 null-Int)))
 ; Statement: if i0 >= 8 goto (branch) 
(assert (not (>= var1416 8))) ; Negate: Cond: i0 >= 8  
(define-const var882 var2256 var2256-init) ; Statement: $r13 = new java.io.IOException 
(define-const var3596 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3596)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3596!1 String)
(assert (= var3596!1 ""))
(assert true)
(define-const var1314 String (append/672562846 var3596!1 "TYPE_GOAWAY length < 8: ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_GOAWAY length < 8: ") 
(declare-const var3596!2 String)
(assert (= var3596!2 (str.++ var3596!1 "TYPE_GOAWAY length < 8: ")))
(assert true)
(define-const var3907 String (append/-1001720160 var1314 var1416)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1314!1 String)
(assert (str.prefixof var1314 var1314!1))
(assert true)
(define-const var1089 String (toString/-2075883882 var3907)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var882 var1089)) ; Statement: specialinvoke $r13.<java.io.IOException: void <init>(java.lang.String)>($r17) 

(declare-const var882!1 var2256)
(declare-const var1089!1 String)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {var2256-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var405=okhttp3.internal.http2.Http2Reader, var3361=r0, var3559=okhttp3.internal.http2.Http2Reader$Handler, var3774=r5, var1416=i0, var3580=i6, var1744=i1, var2256=java.io.IOException, var882=$r13, var3596=$r14, var1314=$r15, var3907=$r16, var1089=$r17}
; {okhttp3.internal.http2.Http2Reader=var405, r0=var3361, okhttp3.internal.http2.Http2Reader$Handler=var3559, r5=var3774, i0=var1416, i6=var3580, i1=var1744, java.io.IOException=var2256, $r13=var882, $r14=var3596, $r15=var1314, $r16=var3907, $r17=var1089}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Reader;	r5 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler;	i0 := @parameter1: int;	i6 := @parameter2: int;	i1 := @parameter3: int;	if i0 >= 8 goto (branch);	$r13 = new java.io.IOException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_GOAWAY length < 8: ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<java.io.IOException: void <init>(java.lang.String)>($r17);	throw $r13
;block_num 2