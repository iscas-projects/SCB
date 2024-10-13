(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3715 0)
(declare-sort var3222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun name/-1200140381 (var3715) var3222)
(declare-fun utf8/-1619161984 (var3222) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-1200140381 (var3715) var3222)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3715 var3715)
(declare-const var1021 var3715) ; Statement: r1 := @this: okhttp3.internal.http2.Header 
(assert (not (= var1021 null-var3715)))
(define-const var1709 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1709)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1709!1 String)
(assert (= var1709!1 ""))
(define-const var1704 var3222 (name/-1200140381 var1021)) ; Statement: $r2 = r1.<okhttp3.internal.http2.Header: okio.ByteString name> 
(assert true)
(define-const var2777 String (utf8/-1619161984 var1704)) ; Statement: $r3 = virtualinvoke $r2.<okio.ByteString: java.lang.String utf8()>() 
(assert true)
(define-const var2794 String (append/672562846 var1709!1 var2777)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1709!2 String)
(assert (= var1709!2 (str.++ var1709!1 var2777)))
(assert true)
(define-const var278 String (append/672562846 var2794 ": ")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ") 
(declare-const var2794!1 String)
(assert (= var2794!1 (str.++ var2794 ": ")))
(define-const var1277 var3222 (value/-1200140381 var1021)) ; Statement: $r5 = r1.<okhttp3.internal.http2.Header: okio.ByteString value> 
(assert true)
(define-const var2698 String (utf8/-1619161984 var1277)) ; Statement: $r6 = virtualinvoke $r5.<okio.ByteString: java.lang.String utf8()>() 
(assert true)
(define-const var1103 String (append/672562846 var278 var2698)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var278!1 String)
(assert (= var278!1 (str.++ var278 var2698)))
(assert true)
(define-const var498 String (toString/-2075883882 var1103)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), name/-1200140381=([okhttp3.internal.http2.Header], okio.ByteString), utf8/-1619161984=([okio.ByteString], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-1200140381=([okhttp3.internal.http2.Header], okio.ByteString), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3715=okhttp3.internal.http2.Header, var1021=r1, var1709=$r0, var3222=okio.ByteString, var1704=$r2, var2777=$r3, var2794=$r4, var278=$r7, var1277=$r5, var2698=$r6, var1103=$r8, var498=$r9}
; {okhttp3.internal.http2.Header=var3715, r1=var1021, $r0=var1709, okio.ByteString=var3222, $r2=var1704, $r3=var2777, $r4=var2794, $r7=var278, $r5=var1277, $r6=var2698, $r8=var1103, $r9=var498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: okhttp3.internal.http2.Header;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<okhttp3.internal.http2.Header: okio.ByteString name>;	$r3 = virtualinvoke $r2.<okio.ByteString: java.lang.String utf8()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": ");	$r5 = r1.<okhttp3.internal.http2.Header: okio.ByteString value>;	$r6 = virtualinvoke $r5.<okio.ByteString: java.lang.String utf8()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1