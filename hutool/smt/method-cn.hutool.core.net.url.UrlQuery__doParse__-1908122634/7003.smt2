(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort var3624 0)
(declare-sort var580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun addParam/-1848051803 (var1969 String String var580) void)
(declare-const null-var1969 var1969)
(declare-const null-String String)
(declare-const null-var580 var580)
(declare-const var429 var1969) ; Statement: r1 := @this: cn.hutool.core.net.url.UrlQuery 
(assert (not (= var429 null-var1969)))
(declare-const var1420 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1420 null-String)))
(declare-const var3499 var580) ; Statement: r2 := @parameter1: java.nio.charset.Charset 
(assert (not (= var3499 null-var580)))
(assert true)
(define-const var2883 Int (length/-134980193 var1420)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var160 String null-String) ; Statement: r7 = null 
(define-const var1001 Int 0) ; Statement: i5 = 0 
(define-const var3354 Int 0) ; Statement: i6 = 0 
(assert true) ; Non Conditional
 ; Statement: if i6 >= i0 goto $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i5, i6) 
(assert (>= var3354 var2883)) ; Cond: i6 >= i0 
(assert (and true (and (>= var1001 0) (>= (str.len var1420) var3354) (>= var3354 var1001))))
(define-const var2609 String (substring/-1240304868 var1420 var1001 var3354)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i5, i6) 
(assert true)
;(assert (addParam/-1848051803 var429 var160 var2609 var3499)) ; Statement: specialinvoke r1.<cn.hutool.core.net.url.UrlQuery: void addParam(java.lang.String,java.lang.String,java.nio.charset.Charset)>(r7, $r3, r2) 

(declare-const var429!1 var1969)
(declare-const var160!1 String)
(declare-const var2609!1 String)
(declare-const var3499!1 var580)
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), addParam/-1848051803=([cn.hutool.core.net.url.UrlQuery, java.lang.String, java.lang.String, java.nio.charset.Charset], void)}
; {var1969=cn.hutool.core.net.url.UrlQuery, var429=r1, var1420=r0, var3624=null_type, var580=java.nio.charset.Charset, var3499=r2, var2883=i0, var160=r7, var1001=i5, var3354=i6, var2609=$r3}
; {cn.hutool.core.net.url.UrlQuery=var1969, r1=var429, r0=var1420, null_type=var3624, java.nio.charset.Charset=var580, r2=var3499, i0=var2883, r7=var160, i5=var1001, i6=var3354, $r3=var2609}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: cn.hutool.core.net.url.UrlQuery;	r0 := @parameter0: java.lang.String;	r2 := @parameter1: java.nio.charset.Charset;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r7 = null;	i5 = 0;	i6 = 0;	if i6 >= i0 goto $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i5, i6);	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i5, i6);	specialinvoke r1.<cn.hutool.core.net.url.UrlQuery: void addParam(java.lang.String,java.lang.String,java.nio.charset.Charset)>(r7, $r3, r2);	return r1
;block_num 3