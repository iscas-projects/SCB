(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var98 0)
(declare-sort var1670 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var1670-init () var1670)
(declare-fun <init>/875830710 (var1670 String) void)
(declare-const null-String String)
(declare-const var681 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var681 null-String)))
(assert true)
(define-const var2929 Int (length/-134980193 var681)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= var2929 0)))) ; Negate: Cond: $i0 != 0  
(define-const var817 var1670 var1670-init) ; Statement: $r45 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var817 "Name cannot be blank")) ; Statement: specialinvoke $r45.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Name cannot be blank") 

(declare-const var817!1 var1670)
(declare-const var14 String)
 ; Statement: throw $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), var1670-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var681=r0, var98=null_type, var2929=$i0, var1670=java.lang.IllegalArgumentException, var817=$r45, var14="Name cannot be blank"}
; {r0=var681, null_type=var98, $i0=var2929, java.lang.IllegalArgumentException=var1670, $r45=var817, "Name cannot be blank"=var14}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	$r45 = new java.lang.IllegalArgumentException;	specialinvoke $r45.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("Name cannot be blank");	throw $r45
;block_num 2