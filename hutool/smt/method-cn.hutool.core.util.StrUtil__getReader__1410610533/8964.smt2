(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2285-init () var2285)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun <init>/814598262 (var2285 String) void)
(declare-const null-String String)
(declare-const var1940 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var1940 null-String)))
 ; Statement: if null != r0 goto $r1 = new java.io.StringReader 
(assert (not (= null-String var1940))) ; Cond: null != r0 
(define-const var1518 var2285 var2285-init) ; Statement: $r1 = new java.io.StringReader 
(define-const var1709 String (String_toString/-1426662429 var1940)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
;(assert (<init>/814598262 var1518 var1709)) ; Statement: specialinvoke $r1.<java.io.StringReader: void <init>(java.lang.String)>($r2) 

(declare-const var1518!1 var2285)
(declare-const var1709!1 String)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2285-init=([], java.io.StringReader), String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), <init>/814598262=([java.io.StringReader, java.lang.String], void)}
; {var1940=r0, var2285=java.io.StringReader, var1518=$r1, var1709=$r2}
; {r0=var1940, java.io.StringReader=var2285, $r1=var1518, $r2=var1709}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.CharSequence;	if null != r0 goto $r1 = new java.io.StringReader;	$r1 = new java.io.StringReader;	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.String toString()>();	specialinvoke $r1.<java.io.StringReader: void <init>(java.lang.String)>($r2);	return $r1
;block_num 2