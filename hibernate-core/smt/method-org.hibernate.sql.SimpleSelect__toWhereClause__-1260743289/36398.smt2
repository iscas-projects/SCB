(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2243 0)
(declare-sort var1115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun whereTokens/-997014284 (var2243) var1115)
(declare-fun var1115_size/-959786421 (var1115) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var1115_iterator/-912451715 (var1115) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2243 var2243)
(declare-const var161 var2243) ; Statement: r1 := @this: org.hibernate.sql.SimpleSelect 
(assert (not (= var161 null-var2243)))
(define-const var2286 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var3594 var1115 (whereTokens/-997014284 var161)) ; Statement: $r2 = r1.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens> 
(define-const var3266 Int (var1115_size/-959786421 var3594)) ; Statement: $i0 = interfaceinvoke $r2.<java.util.List: int size()>() 
(define-const var922 Int (* var3266 5)) ; Statement: $i1 = $i0 * 5 
(assert true)
;(assert (<init>/543593434 var2286 var922)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var2286!1 String)
(declare-const var922!1 Int)
(define-const var2112 var1115 (whereTokens/-997014284 var161)) ; Statement: $r3 = r1.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens> 
(define-const var1862 Iterator (var1115_iterator/-912451715 var2112)) ; Statement: r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2707 Bool (Iterator_hasNext/-1669924200 var1862)) ; Statement: $z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var2707 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1252 String (toString/-2075883882 var2286!1)) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), whereTokens/-997014284=([org.hibernate.sql.SimpleSelect], java.util.List), var1115_size/-959786421=([java.util.List], int), <init>/543593434=([java.lang.StringBuilder, int], void), var1115_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2243=org.hibernate.sql.SimpleSelect, var161=r1, var2286=$r0, var1115=java.util.List, var3594=$r2, var3266=$i0, var922=$i1, var2112=$r3, var1862=r4, var2707=$z1, var1252=$r5}
; {org.hibernate.sql.SimpleSelect=var2243, r1=var161, $r0=var2286, java.util.List=var1115, $r2=var3594, $i0=var3266, $i1=var922, $r3=var2112, r4=var1862, $z1=var2707, $r5=var1252}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.SimpleSelect;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens>;	$i0 = interfaceinvoke $r2.<java.util.List: int size()>();	$i1 = $i0 * 5;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = r1.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens>;	r4 = interfaceinvoke $r3.<java.util.List: java.util.Iterator iterator()>();	$z1 = interfaceinvoke r4.<java.util.Iterator: boolean hasNext()>();	if $z1 == 0 goto $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 3