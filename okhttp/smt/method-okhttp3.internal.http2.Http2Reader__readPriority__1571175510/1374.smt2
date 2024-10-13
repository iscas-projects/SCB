(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1734 0)
(declare-sort var3043 0)
(declare-sort var1312 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1312-init () var1312)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1312 String) void)
(declare-const null-var1734 var1734)
(declare-const null-var3043 var3043)
(declare-const null-Int Int)
(declare-const var415 var1734) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Reader 
(assert (not (= var415 null-var1734)))
(declare-const var698 var3043) ; Statement: r1 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler 
(assert (not (= var698 null-var3043)))
(declare-const var2563 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2563 null-Int)))
(declare-const var475 Int) ; Statement: i2 := @parameter2: int 
(assert (not (= var475 null-Int)))
(declare-const var132 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var132 null-Int)))
 ; Statement: if i0 == 5 goto (branch) 
(assert (not (= var2563 5))) ; Negate: Cond: i0 == 5  
(define-const var2722 var1312 var1312-init) ; Statement: $r3 = new java.io.IOException 
(define-const var3013 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3013)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3013!1 String)
(assert (= var3013!1 ""))
(assert true)
(define-const var580 String (append/672562846 var3013!1 "TYPE_PRIORITY length: ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_PRIORITY length: ") 
(declare-const var3013!2 String)
(assert (= var3013!2 (str.++ var3013!1 "TYPE_PRIORITY length: ")))
(assert true)
(define-const var1150 String (append/-1001720160 var580 var2563)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var580!1 String)
(assert (str.prefixof var580 var580!1))
(assert true)
(define-const var659 String (append/672562846 var1150 " != 5")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" != 5") 
(declare-const var1150!1 String)
(assert (= var1150!1 (str.++ var1150 " != 5")))
(assert true)
(define-const var2522 String (toString/-2075883882 var659)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var2722 var2522)) ; Statement: specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r8) 

(declare-const var2722!1 var1312)
(declare-const var2522!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1312-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1734=okhttp3.internal.http2.Http2Reader, var415=r0, var3043=okhttp3.internal.http2.Http2Reader$Handler, var698=r1, var2563=i0, var475=i2, var132=i1, var1312=java.io.IOException, var2722=$r3, var3013=$r4, var580=$r5, var1150=$r6, var659=$r7, var2522=$r8}
; {okhttp3.internal.http2.Http2Reader=var1734, r0=var415, okhttp3.internal.http2.Http2Reader$Handler=var3043, r1=var698, i0=var2563, i2=var475, i1=var132, java.io.IOException=var1312, $r3=var2722, $r4=var3013, $r5=var580, $r6=var1150, $r7=var659, $r8=var2522}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Reader;	r1 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler;	i0 := @parameter1: int;	i2 := @parameter2: int;	i1 := @parameter3: int;	if i0 == 5 goto (branch);	$r3 = new java.io.IOException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_PRIORITY length: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" != 5");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.IOException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 2