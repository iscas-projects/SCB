(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun username/-122403576 (var690) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var690 var690)
(declare-const var3351 var690) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var3351 null-var690)))
(define-const var199 String (username/-122403576 var3351)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String username> 
(define-const var2567 String (cast-from-String-to-String var199)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var2689 Int (String_length/-667254855 var2567)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var2689 0))) ; Cond: $i0 != 0 
(define-const var2311 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert (not (= (ite var2311 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {username/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var690=okhttp3.HttpUrl, var3351=r0, var199=$r1, var2567=$r2, var2689=$i0, var2311=$z0}
; {okhttp3.HttpUrl=var690, r0=var3351, $r1=var199, $r2=var2567, $i0=var2689, $z0=var2311}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String username>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	return ""
;block_num 4