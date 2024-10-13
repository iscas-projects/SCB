(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun indexOf/-1077578550 (String String) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var1975 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1975 null-String)))
(define-const var2599 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2599 var1975)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1) 
(declare-const var2599!1 String)
(assert (= var2599!1 var1975))
(assert true)
(define-const var3358 Int (indexOf/-1077578550 var2599!1 ":")) ; Statement: i0 = virtualinvoke $r0.<java.lang.StringBuilder: int indexOf(java.lang.String)>(":") 
(assert true) ; Non Conditional
 ; Statement: if i0 >= 40 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3358 40)) ; Cond: i0 >= 40 
(assert true)
(define-const var1984 String (toString/-2075883882 var2599!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), indexOf/-1077578550=([java.lang.StringBuilder, java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1975=r1, var1385=null_type, var2599=$r0, var3358=i0, var1984=$r2}
; {r1=var1975, null_type=var1385, $r0=var2599, i0=var3358, $r2=var1984}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: int indexOf(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: int indexOf(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>(r1);	i0 = virtualinvoke $r0.<java.lang.StringBuilder: int indexOf(java.lang.String)>(":");	if i0 >= 40 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3