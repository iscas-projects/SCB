(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1540 0)
(declare-sort var2238 0)
(declare-sort var3722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2238-init () var2238)
(declare-fun <init>/-1034978905 (var2238) void)
(declare-fun readLine/-1345345812 (var1540) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun build/1856585968 (var2238) var3722)
(declare-const null-var1540 var1540)
(declare-const var508 var1540) ; Statement: r1 := @this: okhttp3.internal.http1.HeadersReader 
(assert (not (= var508 null-var1540)))
(define-const var1027 var2238 var2238-init) ; Statement: $r0 = new okhttp3.Headers$Builder 
(assert true)
;(assert (<init>/-1034978905 var1027)) ; Statement: specialinvoke $r0.<okhttp3.Headers$Builder: void <init>()>() 

(declare-const var1027!1 var2238)
(assert true) ; Non Conditional
(assert true)
(define-const var1288 String (readLine/-1345345812 var508)) ; Statement: $r4 = virtualinvoke r1.<okhttp3.internal.http1.HeadersReader: java.lang.String readLine()>() 
(define-const var2903 String (cast-from-String-to-String var1288)) ; Statement: $r2 = (java.lang.CharSequence) $r4 
(define-const var1855 Int (String_length/-667254855 var2903)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var1855 0))) ; Cond: $i0 != 0 
(define-const var2584 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke $r0.<okhttp3.Headers$Builder: okhttp3.Headers build()>() 
(assert (not (= (ite var2584 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2554 var3722 (build/1856585968 var1027!1)) ; Statement: $r3 = virtualinvoke $r0.<okhttp3.Headers$Builder: okhttp3.Headers build()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2238-init=([], okhttp3.Headers$Builder), <init>/-1034978905=([okhttp3.Headers$Builder], void), readLine/-1345345812=([okhttp3.internal.http1.HeadersReader], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), build/1856585968=([okhttp3.Headers$Builder], okhttp3.Headers)}
; {var1540=okhttp3.internal.http1.HeadersReader, var508=r1, var2238=okhttp3.Headers$Builder, var1027=$r0, var1288=$r4, var2903=$r2, var1855=$i0, var2584=$z0, var3722=okhttp3.Headers, var2554=$r3}
; {okhttp3.internal.http1.HeadersReader=var1540, r1=var508, okhttp3.Headers$Builder=var2238, $r0=var1027, $r4=var1288, $r2=var2903, $i0=var1855, $z0=var2584, okhttp3.Headers=var3722, $r3=var2554}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: okhttp3.internal.http1.HeadersReader;	$r0 = new okhttp3.Headers$Builder;	specialinvoke $r0.<okhttp3.Headers$Builder: void <init>()>();	$r4 = virtualinvoke r1.<okhttp3.internal.http1.HeadersReader: java.lang.String readLine()>();	$r2 = (java.lang.CharSequence) $r4;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r3 = virtualinvoke $r0.<okhttp3.Headers$Builder: okhttp3.Headers build()>();	$r3 = virtualinvoke $r0.<okhttp3.Headers$Builder: okhttp3.Headers build()>();	return $r3
;block_num 5