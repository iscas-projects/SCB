(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var141 0)
(declare-sort var892 0)
(declare-sort var3076 0)
(declare-sort var3573 0)
(declare-sort var3400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/1471104503 (var141) Int)
(declare-fun request/1471104503 (var141) var892)
(declare-fun protocol/1471104503 (var141) var3076)
(declare-fun var3573-init () var3573)
(declare-fun toString/-522406933 (var3400) String)
(declare-fun cast-from-String-to-var3400 (String) var3400)
(declare-fun <init>/-1092629202 (var3573 String) void)
(declare-const null-var141 var141)
(declare-const null-var892 var892)
(declare-const null-var3076 var3076)
(declare-const var3201 var141) ; Statement: r0 := @this: okhttp3.Response$Builder 
(assert (not (= var3201 null-var141)))
(define-const var3535 Int (code/1471104503 var3201)) ; Statement: $i0 = r0.<okhttp3.Response$Builder: int code> 
 ; Statement: if $i0 < 0 goto $z0 = 0 
(assert (< var3535 0)) ; Cond: $i0 < 0 
(define-const var864 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
(assert (not (= (ite var864 1 0) 0))) ; Cond: $z0 != 0 
(define-const var706 var892 (request/1471104503 var3201)) ; Statement: $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
 ; Statement: if $r1 != null goto $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol> 
(assert (not (= var706 null-var892))) ; Cond: $r1 != null 
(define-const var3456 var3076 (protocol/1471104503 var3201)) ; Statement: $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol> 
 ; Statement: if $r2 != null goto $r3 = r0.<okhttp3.Response$Builder: java.lang.String message> 
(assert (not (not (= var3456 null-var3076)))) ; Negate: Cond: $r2 != null  
(define-const var2593 String "protocol == null") ; Statement: $r26 = "protocol == null" 
(define-const var1240 var3573 var3573-init) ; Statement: $r15 = new java.lang.IllegalStateException 
(assert true)
(define-const var1194 String (toString/-522406933 (cast-from-String-to-var3400 var2593))) ; Statement: $r16 = virtualinvoke $r26.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var1240 var1194)) ; Statement: specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var1240!1 var3573)
(declare-const var1194!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {code/1471104503=([okhttp3.Response$Builder], int), request/1471104503=([okhttp3.Response$Builder], okhttp3.Request), protocol/1471104503=([okhttp3.Response$Builder], okhttp3.Protocol), var3573-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3400=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var141=okhttp3.Response$Builder, var3201=r0, var3535=$i0, var864=$z0, var892=okhttp3.Request, var706=$r1, var3076=okhttp3.Protocol, var3456=$r2, var2593=$r26, var3573=java.lang.IllegalStateException, var1240=$r15, var3400=java.lang.Object, var1194=$r16}
; {okhttp3.Response$Builder=var141, r0=var3201, $i0=var3535, $z0=var864, okhttp3.Request=var892, $r1=var706, okhttp3.Protocol=var3076, $r2=var3456, $r26=var2593, java.lang.IllegalStateException=var3573, $r15=var1240, java.lang.Object=var3400, $r16=var1194}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: okhttp3.Response$Builder;	$i0 = r0.<okhttp3.Response$Builder: int code>;	if $i0 < 0 goto $z0 = 0;	$z0 = 0;	if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	$r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	if $r1 != null goto $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol>;	$r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol>;	if $r2 != null goto $r3 = r0.<okhttp3.Response$Builder: java.lang.String message>;	$r26 = "protocol == null";	$r15 = new java.lang.IllegalStateException;	$r16 = virtualinvoke $r26.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r15
;block_num 6