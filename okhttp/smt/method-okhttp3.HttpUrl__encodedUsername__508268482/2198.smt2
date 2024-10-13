(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun username/-122403576 (var1133) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var1133 var1133)
(declare-const var1086 var1133) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var1086 null-var1133)))
(define-const var48 String (username/-122403576 var1086)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String username> 
(define-const var3894 String (cast-from-String-to-String var48)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var617 Int (String_length/-667254855 var3894)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var617 0)))) ; Negate: Cond: $i0 != 0  
(define-const var2515 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme> 
(assert (not (= (ite var2515 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {username/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var1133=okhttp3.HttpUrl, var1086=r0, var48=$r1, var3894=$r2, var617=$i0, var2515=$z0}
; {okhttp3.HttpUrl=var1133, r0=var1086, $r1=var48, $r2=var3894, $i0=var617, $z0=var2515}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String username>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String scheme>;	return ""
;block_num 4