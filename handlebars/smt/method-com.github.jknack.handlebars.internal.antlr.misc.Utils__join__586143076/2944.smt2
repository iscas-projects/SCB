(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3487 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Iterator Iterator)
(declare-const null-String String)
(declare-const var2152 Iterator) ; Statement: r1 := @parameter0: java.util.Iterator 
(assert (not (= var2152 null-Iterator)))
(declare-const var3625 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3625 null-String)))
(define-const var2860 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2860)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2860!1 String)
(assert (= var2860!1 ""))
(assert true) ; Non Conditional
(define-const var58 Bool (Iterator_hasNext/-1669924200 var2152)) ; Statement: $z1 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var58 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1318 String (toString/-2075883882 var2860!1)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2152=r1, var3625=r4, var3487=null_type, var2860=$r0, var58=$z1, var1318=$r2}
; {r1=var2152, r4=var3625, null_type=var3487, $r0=var2860, $z1=var58, $r2=var1318}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.util.Iterator;	r4 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$z1 = interfaceinvoke r1.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3