(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2398 0)
(declare-sort var577 0)
(declare-sort var1647 0)
(declare-sort var3214 0)
(declare-sort var2417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/1471104503 (var2398) Int)
(declare-fun request/1471104503 (var2398) var577)
(declare-fun protocol/1471104503 (var2398) var1647)
(declare-fun var3214-init () var3214)
(declare-fun toString/-522406933 (var2417) String)
(declare-fun cast-from-String-to-var2417 (String) var2417)
(declare-fun <init>/-1092629202 (var3214 String) void)
(declare-const null-var2398 var2398)
(declare-const null-var577 var577)
(declare-const null-var1647 var1647)
(declare-const var2668 var2398) ; Statement: r0 := @this: okhttp3.Response$Builder 
(assert (not (= var2668 null-var2398)))
(define-const var135 Int (code/1471104503 var2668)) ; Statement: $i0 = r0.<okhttp3.Response$Builder: int code> 
 ; Statement: if $i0 < 0 goto $z0 = 0 
(assert (not (< var135 0))) ; Negate: Cond: $i0 < 0  
(define-const var3654 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
(assert (not (= (ite var3654 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3218 var577 (request/1471104503 var2668)) ; Statement: $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
 ; Statement: if $r1 != null goto $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol> 
(assert (not (= var3218 null-var577))) ; Cond: $r1 != null 
(define-const var1849 var1647 (protocol/1471104503 var2668)) ; Statement: $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol> 
 ; Statement: if $r2 != null goto $r3 = r0.<okhttp3.Response$Builder: java.lang.String message> 
(assert (not (not (= var1849 null-var1647)))) ; Negate: Cond: $r2 != null  
(define-const var3013 String "protocol == null") ; Statement: $r26 = "protocol == null" 
(define-const var2513 var3214 var3214-init) ; Statement: $r15 = new java.lang.IllegalStateException 
(assert true)
(define-const var3662 String (toString/-522406933 (cast-from-String-to-var2417 var3013))) ; Statement: $r16 = virtualinvoke $r26.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2513 var3662)) ; Statement: specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16) 

(declare-const var2513!1 var3214)
(declare-const var3662!1 String)
 ; Statement: throw $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {code/1471104503=([okhttp3.Response$Builder], int), request/1471104503=([okhttp3.Response$Builder], okhttp3.Request), protocol/1471104503=([okhttp3.Response$Builder], okhttp3.Protocol), var3214-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var2417=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2398=okhttp3.Response$Builder, var2668=r0, var135=$i0, var3654=$z0, var577=okhttp3.Request, var3218=$r1, var1647=okhttp3.Protocol, var1849=$r2, var3013=$r26, var3214=java.lang.IllegalStateException, var2513=$r15, var2417=java.lang.Object, var3662=$r16}
; {okhttp3.Response$Builder=var2398, r0=var2668, $i0=var135, $z0=var3654, okhttp3.Request=var577, $r1=var3218, okhttp3.Protocol=var1647, $r2=var1849, $r26=var3013, java.lang.IllegalStateException=var3214, $r15=var2513, java.lang.Object=var2417, $r16=var3662}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: okhttp3.Response$Builder;	$i0 = r0.<okhttp3.Response$Builder: int code>;	if $i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	$r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	if $r1 != null goto $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol>;	$r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol>;	if $r2 != null goto $r3 = r0.<okhttp3.Response$Builder: java.lang.String message>;	$r26 = "protocol == null";	$r15 = new java.lang.IllegalStateException;	$r16 = virtualinvoke $r26.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r15.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r16);	throw $r15
;block_num 6