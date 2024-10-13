(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3110 0)
(declare-sort var51 0)
(declare-sort var1043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1043-init () var1043)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1043 String) void)
(declare-const null-var3110 var3110)
(declare-const null-var51 var51)
(declare-const null-Int Int)
(declare-const var822 var3110) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Reader 
(assert (not (= var822 null-var3110)))
(declare-const var3820 var51) ; Statement: r4 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler 
(assert (not (= var3820 null-var51)))
(declare-const var3127 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3127 null-Int)))
(declare-const var2187 Int) ; Statement: i3 := @parameter2: int 
(assert (not (= var2187 null-Int)))
(declare-const var639 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var639 null-Int)))
 ; Statement: if i0 == 4 goto (branch) 
(assert (not (= var3127 4))) ; Negate: Cond: i0 == 4  
(define-const var1574 var1043 var1043-init) ; Statement: $r11 = new java.io.IOException 
(define-const var3299 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3299)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3299!1 String)
(assert (= var3299!1 ""))
(assert true)
(define-const var2068 String (append/672562846 var3299!1 "TYPE_RST_STREAM length: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_RST_STREAM length: ") 
(declare-const var3299!2 String)
(assert (= var3299!2 (str.++ var3299!1 "TYPE_RST_STREAM length: ")))
(assert true)
(define-const var3312 String (append/-1001720160 var2068 var3127)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2068!1 String)
(assert (str.prefixof var2068 var2068!1))
(assert true)
(define-const var3814 String (append/672562846 var3312 " != 4")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" != 4") 
(declare-const var3312!1 String)
(assert (= var3312!1 (str.++ var3312 " != 4")))
(assert true)
(define-const var3328 String (toString/-2075883882 var3814)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1574 var3328)) ; Statement: specialinvoke $r11.<java.io.IOException: void <init>(java.lang.String)>($r16) 

(declare-const var1574!1 var1043)
(declare-const var3328!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var1043-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var3110=okhttp3.internal.http2.Http2Reader, var822=r0, var51=okhttp3.internal.http2.Http2Reader$Handler, var3820=r4, var3127=i0, var2187=i3, var639=i1, var1043=java.io.IOException, var1574=$r11, var3299=$r12, var2068=$r13, var3312=$r14, var3814=$r15, var3328=$r16}
; {okhttp3.internal.http2.Http2Reader=var3110, r0=var822, okhttp3.internal.http2.Http2Reader$Handler=var51, r4=var3820, i0=var3127, i3=var2187, i1=var639, java.io.IOException=var1043, $r11=var1574, $r12=var3299, $r13=var2068, $r14=var3312, $r15=var3814, $r16=var3328}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Reader;	r4 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler;	i0 := @parameter1: int;	i3 := @parameter2: int;	i1 := @parameter3: int;	if i0 == 4 goto (branch);	$r11 = new java.io.IOException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_RST_STREAM length: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" != 4");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.io.IOException: void <init>(java.lang.String)>($r16);	throw $r11
;block_num 2