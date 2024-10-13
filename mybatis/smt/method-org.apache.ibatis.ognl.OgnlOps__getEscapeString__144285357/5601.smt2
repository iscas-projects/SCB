(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/592609754 (String String) void)
(declare-const null-String String)
(declare-const var776 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var776 null-String)))
(define-const var2281 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2281)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2281!1 String)
(assert (= var2281!1 ""))
(define-const var1811 Int 0) ; Statement: i2 = 0 
(assert true)
(define-const var2736 Int (length/-134980193 var776)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r2 = new java.lang.String 
(assert (>= var1811 var2736)) ; Cond: i2 >= i0 
(define-const var1066 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/592609754 var1066 var2281!1)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(java.lang.StringBuilder)>($r0) 

(declare-const var1066!1 String)
(declare-const var2281!2 String)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), length/-134980193=([java.lang.String], int), <init>/592609754=([java.lang.String, java.lang.StringBuilder], void)}
; {var776=r1, var1525=null_type, var2281=$r0, var1811=i2, var2736=i0, var1066=$r2}
; {r1=var776, null_type=var1525, $r0=var2281, i2=var1811, i0=var2736, $r2=var1066}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: void <init>(java.lang.StringBuilder)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: void <init>(java.lang.StringBuilder)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i2 >= i0 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(java.lang.StringBuilder)>($r0);	return $r2
;block_num 3