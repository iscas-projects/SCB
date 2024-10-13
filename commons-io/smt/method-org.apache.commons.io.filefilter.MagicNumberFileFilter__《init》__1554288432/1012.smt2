(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1272 0)
(declare-sort var1138 0)
(declare-sort var268 0)
(declare-sort var387 0)
(declare-sort var1057 0)
(declare-sort var2985 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-433403571 (var268) void)
(declare-fun cast-from-var1272-to-var268 (var1272) var268)
(declare-fun var387_requireNonNull/1378936425 (var1057 String) var1057)
(declare-fun cast-from-String-to-var1057 (String) var1057)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2985-init () var2985)
(declare-fun <init>/875830710 (var2985 String) void)
(declare-const null-var1272 var1272)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1728 var1272) ; Statement: r0 := @this: org.apache.commons.io.filefilter.MagicNumberFileFilter 
(assert (not (= var1728 null-var1272)))
(declare-const var400 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var400 null-String)))
(declare-const var3957 Int) ; Statement: l0 := @parameter1: long 
(assert (not (= var3957 null-Int)))
(assert true)
;(assert (<init>/-433403571 (cast-from-var1272-to-var268 var1728))) ; Statement: specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: void <init>()>() 

(declare-const var1728!1 var1272)
;(assert (var387_requireNonNull/1378936425 (cast-from-String-to-var1057 var400) "magicNumber")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "magicNumber") 

(declare-const var400!1 String)
(declare-const var3865 String)
(assert true)
(define-const var2134 Bool (isEmpty/-1285796103 var400!1)) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $b1 = l0 cmp 0L 
(assert (not (= (ite var2134 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1450 var2985 var2985-init) ; Statement: $r6 = new java.lang.IllegalArgumentException 
(assert true)
;(assert (<init>/875830710 var1450 "The magic number must contain at least one byte")) ; Statement: specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("The magic number must contain at least one byte") 

(declare-const var1450!1 var2985)
(declare-const var3514 String)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-433403571=([org.apache.commons.io.filefilter.AbstractFileFilter], void), cast-from-var1272-to-var268=([org.apache.commons.io.filefilter.MagicNumberFileFilter], org.apache.commons.io.filefilter.AbstractFileFilter), var387_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var1057=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean), var2985-init=([], java.lang.IllegalArgumentException), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1272=org.apache.commons.io.filefilter.MagicNumberFileFilter, var1728=r0, var400=r1, var1138=null_type, var3957=l0, var268=org.apache.commons.io.filefilter.AbstractFileFilter, var387=java.util.Objects, var1057=java.lang.Object, var3865="magicNumber", var2134=$z0, var2985=java.lang.IllegalArgumentException, var1450=$r6, var3514="The magic number must contain at least one byte"}
; {org.apache.commons.io.filefilter.MagicNumberFileFilter=var1272, r0=var1728, r1=var400, null_type=var1138, l0=var3957, org.apache.commons.io.filefilter.AbstractFileFilter=var268, java.util.Objects=var387, java.lang.Object=var1057, "magicNumber"=var3865, $z0=var2134, java.lang.IllegalArgumentException=var2985, $r6=var1450, "The magic number must contain at least one byte"=var3514}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.apache.commons.io.filefilter.MagicNumberFileFilter;	r1 := @parameter0: java.lang.String;	l0 := @parameter1: long;	specialinvoke r0.<org.apache.commons.io.filefilter.AbstractFileFilter: void <init>()>();	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r1, "magicNumber");	$z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $b1 = l0 cmp 0L;	$r6 = new java.lang.IllegalArgumentException;	specialinvoke $r6.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>("The magic number must contain at least one byte");	throw $r6
;block_num 2