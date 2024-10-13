(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1808 0)
(declare-sort var1900 0)
(declare-sort var3859 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1900-init () var1900)
(declare-fun <init>/-1034978905 (var1900) void)
(declare-fun readLine/-1345345812 (var1808) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun build/1856585968 (var1900) var3859)
(declare-const null-var1808 var1808)
(declare-const var1882 var1808) ; Statement: r1 := @this: okhttp3.internal.http1.HeadersReader 
(assert (not (= var1882 null-var1808)))
(define-const var3984 var1900 var1900-init) ; Statement: $r0 = new okhttp3.Headers$Builder 
(assert true)
;(assert (<init>/-1034978905 var3984)) ; Statement: specialinvoke $r0.<okhttp3.Headers$Builder: void <init>()>() 

(declare-const var3984!1 var1900)
(assert true) ; Non Conditional
(assert true)
(define-const var92 String (readLine/-1345345812 var1882)) ; Statement: $r4 = virtualinvoke r1.<okhttp3.internal.http1.HeadersReader: java.lang.String readLine()>() 
(define-const var3952 String (cast-from-String-to-String var92)) ; Statement: $r2 = (java.lang.CharSequence) $r4 
(define-const var1710 Int (String_length/-667254855 var3952)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var1710 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3233 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r3 = virtualinvoke $r0.<okhttp3.Headers$Builder: okhttp3.Headers build()>() 
(assert (not (= (ite var3233 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var2959 var3859 (build/1856585968 var3984!1)) ; Statement: $r3 = virtualinvoke $r0.<okhttp3.Headers$Builder: okhttp3.Headers build()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1900-init=([], okhttp3.Headers$Builder), <init>/-1034978905=([okhttp3.Headers$Builder], void), readLine/-1345345812=([okhttp3.internal.http1.HeadersReader], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int), build/1856585968=([okhttp3.Headers$Builder], okhttp3.Headers)}
; {var1808=okhttp3.internal.http1.HeadersReader, var1882=r1, var1900=okhttp3.Headers$Builder, var3984=$r0, var92=$r4, var3952=$r2, var1710=$i0, var3233=$z0, var3859=okhttp3.Headers, var2959=$r3}
; {okhttp3.internal.http1.HeadersReader=var1808, r1=var1882, okhttp3.Headers$Builder=var1900, $r0=var3984, $r4=var92, $r2=var3952, $i0=var1710, $z0=var3233, okhttp3.Headers=var3859, $r3=var2959}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: okhttp3.internal.http1.HeadersReader;	$r0 = new okhttp3.Headers$Builder;	specialinvoke $r0.<okhttp3.Headers$Builder: void <init>()>();	$r4 = virtualinvoke r1.<okhttp3.internal.http1.HeadersReader: java.lang.String readLine()>();	$r2 = (java.lang.CharSequence) $r4;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r3 = virtualinvoke $r0.<okhttp3.Headers$Builder: okhttp3.Headers build()>();	$r3 = virtualinvoke $r0.<okhttp3.Headers$Builder: okhttp3.Headers build()>();	return $r3
;block_num 5