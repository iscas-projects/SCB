(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2827 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun password/-122403576 (var2827) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2827 var2827)
(declare-const var1565 var2827) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var1565 null-var2827)))
(define-const var184 String (password/-122403576 var1565)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String password> 
(define-const var3522 String (cast-from-String-to-String var184)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var3952 Int (String_length/-667254855 var3522)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (= var3952 0))) ; Cond: $i0 != 0 
(define-const var1679 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (not (= (ite var1679 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {password/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var2827=okhttp3.HttpUrl, var1565=r0, var184=$r1, var3522=$r2, var3952=$i0, var1679=$z0}
; {okhttp3.HttpUrl=var2827, r0=var1565, $r1=var184, $r2=var3522, $i0=var3952, $z0=var1679}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String password>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 0;	if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String url>;	return ""
;block_num 4