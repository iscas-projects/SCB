(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-const var3205 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3205)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3205!1 String)
(assert (= var3205!1 ""))
(define-const var1276 Int 65) ; Statement: c3 = 65 
(assert true) ; Non Conditional
 ; Statement: if c3 > 90 goto c4 = 97 
(assert (> var1276 90)) ; Cond: c3 > 90 
(define-const var1514 Int 97) ; Statement: c4 = 97 
(assert true) ; Non Conditional
 ; Statement: if c4 > 122 goto c5 = 48 
(assert (> var1514 122)) ; Cond: c4 > 122 
(define-const var2609 Int 48) ; Statement: c5 = 48 
(assert true) ; Non Conditional
 ; Statement: if c5 > 57 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_.-~") 
(assert (> var2609 57)) ; Cond: c5 > 57 
(assert true)
;(assert (append/672562846 var3205!1 "_.-~")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_.-~") 
(declare-const var3205!2 String)
(assert (= var3205!2 (str.++ var3205!1 "_.-~")))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3205=$r0, var1276=c3, var1514=c4, var2609=c5}
; {$r0=var3205, c3=var1276, c4=var1514, c5=var2609}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	c3 = 65;	if c3 > 90 goto c4 = 97;	c4 = 97;	if c4 > 122 goto c5 = 48;	c5 = 48;	if c5 > 57 goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_.-~");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("_.-~");	return $r0
;block_num 7