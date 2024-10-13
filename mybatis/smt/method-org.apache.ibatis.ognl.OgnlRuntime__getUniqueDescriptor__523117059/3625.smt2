(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun <init>/592609754 (String String) void)
(declare-const null-var1239 var1239)
(declare-const null-Bool Bool)
(declare-const var3376 var1239) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var3376 null-var1239)))
(declare-const var1642 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1642 null-Bool)))
(define-const var208 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var208)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var208!1 String)
(assert (= var208!1 ""))
 ; Statement: if r8 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>") 
(assert (= var3376 null-var1239)) ; Cond: r8 == null 
(assert true)
;(assert (append/672562846 var208!1 "<null>")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>") 
(declare-const var208!2 String)
(assert (= var208!2 (str.++ var208!1 "<null>")))
(assert true) ; Non Conditional
(define-const var126 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/592609754 var126 var208!2)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(java.lang.StringBuilder)>($r0) 

(declare-const var126!1 String)
(declare-const var208!3 String)
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), <init>/592609754=([java.lang.String, java.lang.StringBuilder], void)}
; {var1239=java.lang.Object, var3376=r8, var1642=z1, var208=$r0, var126=$r1}
; {java.lang.Object=var1239, r8=var3376, z1=var1642, $r0=var208, $r1=var126}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: void <init>(java.lang.StringBuilder)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.String: void <init>(java.lang.StringBuilder)>": 1}
;stmts r8 := @parameter0: java.lang.Object;	z1 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	if r8 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<null>");	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(java.lang.StringBuilder)>($r0);	return $r1
;block_num 3