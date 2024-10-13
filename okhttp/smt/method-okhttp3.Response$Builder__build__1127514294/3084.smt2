(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2296 0)
(declare-sort var3001 0)
(declare-sort var2400 0)
(declare-sort var3318 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/1471104503 (var2296) Int)
(declare-fun request/1471104503 (var2296) var3001)
(declare-fun var2400-init () var2400)
(declare-fun toString/-522406933 (var3318) String)
(declare-fun cast-from-String-to-var3318 (String) var3318)
(declare-fun <init>/-1092629202 (var2400 String) void)
(declare-const null-var2296 var2296)
(declare-const null-var3001 var3001)
(declare-const var2457 var2296) ; Statement: r0 := @this: okhttp3.Response$Builder 
(assert (not (= var2457 null-var2296)))
(define-const var1795 Int (code/1471104503 var2457)) ; Statement: $i0 = r0.<okhttp3.Response$Builder: int code> 
 ; Statement: if $i0 < 0 goto $z0 = 0 
(assert (< var1795 0)) ; Cond: $i0 < 0 
(define-const var986 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
(assert (not (= (ite var986 1 0) 0))) ; Cond: $z0 != 0 
(define-const var675 var3001 (request/1471104503 var2457)) ; Statement: $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
 ; Statement: if $r1 != null goto $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol> 
(assert (not (not (= var675 null-var3001)))) ; Negate: Cond: $r1 != null  
(define-const var2284 String "request == null") ; Statement: $r25 = "request == null" 
(define-const var3492 var2400 var2400-init) ; Statement: $r17 = new java.lang.IllegalStateException 
(assert true)
(define-const var3184 String (toString/-522406933 (cast-from-String-to-var3318 var2284))) ; Statement: $r18 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var3492 var3184)) ; Statement: specialinvoke $r17.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18) 

(declare-const var3492!1 var2400)
(declare-const var3184!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {code/1471104503=([okhttp3.Response$Builder], int), request/1471104503=([okhttp3.Response$Builder], okhttp3.Request), var2400-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3318=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2296=okhttp3.Response$Builder, var2457=r0, var1795=$i0, var986=$z0, var3001=okhttp3.Request, var675=$r1, var2284=$r25, var2400=java.lang.IllegalStateException, var3492=$r17, var3318=java.lang.Object, var3184=$r18}
; {okhttp3.Response$Builder=var2296, r0=var2457, $i0=var1795, $z0=var986, okhttp3.Request=var3001, $r1=var675, $r25=var2284, java.lang.IllegalStateException=var2400, $r17=var3492, java.lang.Object=var3318, $r18=var3184}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: okhttp3.Response$Builder;	$i0 = r0.<okhttp3.Response$Builder: int code>;	if $i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	$r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	if $r1 != null goto $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol>;	$r25 = "request == null";	$r17 = new java.lang.IllegalStateException;	$r18 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18);	throw $r17
;block_num 5