(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2405 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun reverse/1133943941 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var480 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var480 null-String)))
 ; Statement: if r0 != null goto $r1 = new java.lang.StringBuilder 
(assert (not (= var480 null-String))) ; Cond: r0 != null 
(define-const var934 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var934 var480)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r0) 
(declare-const var934!1 String)
(assert (= var934!1 var480))
(assert true)
(define-const var2981 String (reverse/1133943941 var934!1)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder reverse()>() 
(assert true)
(define-const var1936 String (toString/-2075883882 var2981)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), reverse/1133943941=([java.lang.StringBuilder], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var480=r0, var2405=null_type, var934=$r1, var2981=$r2, var1936=$r3}
; {r0=var480, null_type=var2405, $r1=var934, $r2=var2981, $r3=var1936}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder reverse()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder reverse()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>(r0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder reverse()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 2