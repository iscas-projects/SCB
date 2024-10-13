(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1278 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1278 var1278)
(declare-const var784 var1278) ; Statement: r1 := @parameter0: antlr.collections.AST 
(assert (not (= var784 null-var1278)))
(define-const var3025 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3025)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3025!1 String)
(assert (= var3025!1 ""))
(assert true)
;(assert (append/672562846 var3025!1 "[ ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ ") 
(declare-const var3025!2 String)
(assert (= var3025!2 (str.++ var3025!1 "[ ")))
 ; Statement: if r1 != null goto $r3 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String toStringTree()>() 
(assert (not (not (= var784 null-var1278)))) ; Negate: Cond: r1 != null  
(define-const var626 String "{null}") ; Statement: $r3 = "{null}" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3025!2 var626)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3025!3 String)
(assert (= var3025!3 (str.++ var3025!2 var626)))
(assert true)
;(assert (append/672562846 var3025!3 " ]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(declare-const var3025!4 String)
(assert (= var3025!4 (str.++ var3025!3 " ]")))
(assert true)
(define-const var699 String (toString/-2075883882 var3025!4)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1278=antlr.collections.AST, var784=r1, var3025=$r0, var626=$r3, var699=$r2}
; {antlr.collections.AST=var1278, r1=var784, $r0=var3025, $r3=var626, $r2=var699}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: antlr.collections.AST;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ ");	if r1 != null goto $r3 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String toStringTree()>();	$r3 = "{null}";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3