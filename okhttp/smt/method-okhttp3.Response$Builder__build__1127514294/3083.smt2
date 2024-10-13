(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var187 0)
(declare-sort var377 0)
(declare-sort var1007 0)
(declare-sort var3791 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun code/1471104503 (var187) Int)
(declare-fun request/1471104503 (var187) var377)
(declare-fun var1007-init () var1007)
(declare-fun toString/-522406933 (var3791) String)
(declare-fun cast-from-String-to-var3791 (String) var3791)
(declare-fun <init>/-1092629202 (var1007 String) void)
(declare-const null-var187 var187)
(declare-const null-var377 var377)
(declare-const var376 var187) ; Statement: r0 := @this: okhttp3.Response$Builder 
(assert (not (= var376 null-var187)))
(define-const var3693 Int (code/1471104503 var376)) ; Statement: $i0 = r0.<okhttp3.Response$Builder: int code> 
 ; Statement: if $i0 < 0 goto $z0 = 0 
(assert (not (< var3693 0))) ; Negate: Cond: $i0 < 0  
(define-const var1826 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
(assert (not (= (ite var1826 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2673 var377 (request/1471104503 var376)) ; Statement: $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request> 
 ; Statement: if $r1 != null goto $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol> 
(assert (not (not (= var2673 null-var377)))) ; Negate: Cond: $r1 != null  
(define-const var146 String "request == null") ; Statement: $r25 = "request == null" 
(define-const var293 var1007 var1007-init) ; Statement: $r17 = new java.lang.IllegalStateException 
(assert true)
(define-const var2799 String (toString/-522406933 (cast-from-String-to-var3791 var146))) ; Statement: $r18 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var293 var2799)) ; Statement: specialinvoke $r17.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18) 

(declare-const var293!1 var1007)
(declare-const var2799!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {code/1471104503=([okhttp3.Response$Builder], int), request/1471104503=([okhttp3.Response$Builder], okhttp3.Request), var1007-init=([], java.lang.IllegalStateException), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-String-to-var3791=([java.lang.String], java.lang.Object), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var187=okhttp3.Response$Builder, var376=r0, var3693=$i0, var1826=$z0, var377=okhttp3.Request, var2673=$r1, var146=$r25, var1007=java.lang.IllegalStateException, var293=$r17, var3791=java.lang.Object, var2799=$r18}
; {okhttp3.Response$Builder=var187, r0=var376, $i0=var3693, $z0=var1826, okhttp3.Request=var377, $r1=var2673, $r25=var146, java.lang.IllegalStateException=var1007, $r17=var293, java.lang.Object=var3791, $r18=var2799}
;seq <java.lang.Object: java.lang.String toString()>
;cnt {}
;stmts r0 := @this: okhttp3.Response$Builder;	$i0 = r0.<okhttp3.Response$Builder: int code>;	if $i0 < 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 != 0 goto $r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	$r1 = r0.<okhttp3.Response$Builder: okhttp3.Request request>;	if $r1 != null goto $r2 = r0.<okhttp3.Response$Builder: okhttp3.Protocol protocol>;	$r25 = "request == null";	$r17 = new java.lang.IllegalStateException;	$r18 = virtualinvoke $r25.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r17.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r18);	throw $r17
;block_num 5