(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2181 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun appendTo/-2046790522 (var2181 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2181 var2181)
(declare-const var548 var2181) ; Statement: r1 := @this: com.google.javascript.rhino.QualifiedName 
(assert (not (= var548 null-var2181)))
(define-const var2029 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2029)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2029!1 String)
(assert (= var2029!1 ""))
(assert true)
;(assert (appendTo/-2046790522 var548 var2029!1)) ; Statement: virtualinvoke r1.<com.google.javascript.rhino.QualifiedName: void appendTo(java.lang.StringBuilder)>($r0) 

(declare-const var548!1 var2181)
(declare-const var2029!2 String)
(assert true)
(define-const var2481 String (toString/-2075883882 var2029!2)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), appendTo/-2046790522=([com.google.javascript.rhino.QualifiedName, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2181=com.google.javascript.rhino.QualifiedName, var548=r1, var2029=$r0, var2481=$r2}
; {com.google.javascript.rhino.QualifiedName=var2181, r1=var548, $r0=var2029, $r2=var2481}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.rhino.QualifiedName;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke r1.<com.google.javascript.rhino.QualifiedName: void appendTo(java.lang.StringBuilder)>($r0);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1