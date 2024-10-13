(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun password/-122403576 (var2141) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun String_length/-667254855 (String) Int)
(declare-const null-var2141 var2141)
(declare-const var3113 var2141) ; Statement: r0 := @this: okhttp3.HttpUrl 
(assert (not (= var3113 null-var2141)))
(define-const var3333 String (password/-122403576 var3113)) ; Statement: $r1 = r0.<okhttp3.HttpUrl: java.lang.String password> 
(define-const var2994 String (cast-from-String-to-String var3333)) ; Statement: $r2 = (java.lang.CharSequence) $r1 
(define-const var3105 Int (String_length/-667254855 var2994)) ; Statement: $i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>() 
 ; Statement: if $i0 != 0 goto $z0 = 0 
(assert (not (not (= var3105 0)))) ; Negate: Cond: $i0 != 0  
(define-const var1151 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String url> 
(assert (not (= (ite var1151 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {password/-122403576=([okhttp3.HttpUrl], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), String_length/-667254855=([java.lang.CharSequence], int)}
; {var2141=okhttp3.HttpUrl, var3113=r0, var3333=$r1, var2994=$r2, var3105=$i0, var1151=$z0}
; {okhttp3.HttpUrl=var2141, r0=var3113, $r1=var3333, $r2=var2994, $i0=var3105, $z0=var1151}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: okhttp3.HttpUrl;	$r1 = r0.<okhttp3.HttpUrl: java.lang.String password>;	$r2 = (java.lang.CharSequence) $r1;	$i0 = interfaceinvoke $r2.<java.lang.CharSequence: int length()>();	if $i0 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= (branch)];	if $z0 == 0 goto $r3 = r0.<okhttp3.HttpUrl: java.lang.String url>;	return ""
;block_num 4