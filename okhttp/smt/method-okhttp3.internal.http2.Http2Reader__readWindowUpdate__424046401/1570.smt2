(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var308 0)
(declare-sort var1371 0)
(declare-sort var1013 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1013-init () var1013)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1013 String) void)
(declare-const null-var308 var308)
(declare-const null-var1371 var1371)
(declare-const null-Int Int)
(declare-const var2362 var308) ; Statement: r0 := @this: okhttp3.internal.http2.Http2Reader 
(assert (not (= var2362 null-var308)))
(declare-const var677 var1371) ; Statement: r2 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler 
(assert (not (= var677 null-var1371)))
(declare-const var1622 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1622 null-Int)))
(declare-const var3743 Int) ; Statement: i5 := @parameter2: int 
(assert (not (= var3743 null-Int)))
(declare-const var1692 Int) ; Statement: i4 := @parameter3: int 
(assert (not (= var1692 null-Int)))
 ; Statement: if i0 == 4 goto $r1 = r0.<okhttp3.internal.http2.Http2Reader: okio.BufferedSource source> 
(assert (not (= var1622 4))) ; Negate: Cond: i0 == 4  
(define-const var646 var1013 var1013-init) ; Statement: $r4 = new java.io.IOException 
(define-const var772 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var772)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var772!1 String)
(assert (= var772!1 ""))
(assert true)
(define-const var1535 String (append/672562846 var772!1 "TYPE_WINDOW_UPDATE length !=4: ")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_WINDOW_UPDATE length !=4: ") 
(declare-const var772!2 String)
(assert (= var772!2 (str.++ var772!1 "TYPE_WINDOW_UPDATE length !=4: ")))
(assert true)
(define-const var2252 String (append/-1001720160 var1535 var1622)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1535!1 String)
(assert (str.prefixof var1535 var1535!1))
(assert true)
(define-const var2905 String (toString/-2075883882 var2252)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var646 var2905)) ; Statement: specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8) 

(declare-const var646!1 var1013)
(declare-const var2905!1 String)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1013-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var308=okhttp3.internal.http2.Http2Reader, var2362=r0, var1371=okhttp3.internal.http2.Http2Reader$Handler, var677=r2, var1622=i0, var3743=i5, var1692=i4, var1013=java.io.IOException, var646=$r4, var772=$r5, var1535=$r6, var2252=$r7, var2905=$r8}
; {okhttp3.internal.http2.Http2Reader=var308, r0=var2362, okhttp3.internal.http2.Http2Reader$Handler=var1371, r2=var677, i0=var1622, i5=var3743, i4=var1692, java.io.IOException=var1013, $r4=var646, $r5=var772, $r6=var1535, $r7=var2252, $r8=var2905}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: okhttp3.internal.http2.Http2Reader;	r2 := @parameter0: okhttp3.internal.http2.Http2Reader$Handler;	i0 := @parameter1: int;	i5 := @parameter2: int;	i4 := @parameter3: int;	if i0 == 4 goto $r1 = r0.<okhttp3.internal.http2.Http2Reader: okio.BufferedSource source>;	$r4 = new java.io.IOException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("TYPE_WINDOW_UPDATE length !=4: ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.io.IOException: void <init>(java.lang.String)>($r8);	throw $r4
;block_num 2