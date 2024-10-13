(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2375 0)
(declare-sort var2718 0)
(declare-sort var851 0)
(declare-sort var748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2718_checkNotNull/1446102589 (var851) var851)
(declare-fun cast-from-String-to-var851 (String) var851)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun var748-init () var748)
(declare-fun <init>/-1788180247 (var748 String) void)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var876 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var876 null-String)))
(declare-const var707 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var707 null-Int)))
;(assert (var2718_checkNotNull/1446102589 (cast-from-String-to-var851 var876))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var876!1 String)
(assert true)
(define-const var3210 Int (length/-134980193 var876!1)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto (branch) 
(assert (not (not (= var3210 0)))) ; Negate: Cond: $i0 != 0  
(define-const var225 var748 var748-init) ; Statement: $r14 = new java.lang.NumberFormatException 
(assert true)
;(assert (<init>/-1788180247 var225 "empty string")) ; Statement: specialinvoke $r14.<java.lang.NumberFormatException: void <init>(java.lang.String)>("empty string") 

(declare-const var225!1 var748)
(declare-const var2775 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var2718_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var851=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), var748-init=([], java.lang.NumberFormatException), <init>/-1788180247=([java.lang.NumberFormatException, java.lang.String], void)}
; {var876=r0, var2375=null_type, var707=i1, var2718=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var851=java.lang.Object, var3210=$i0, var748=java.lang.NumberFormatException, var225=$r14, var2775="empty string"}
; {r0=var876, null_type=var2375, i1=var707, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2718, java.lang.Object=var851, $i0=var3210, java.lang.NumberFormatException=var748, $r14=var225, "empty string"=var2775}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto (branch);	$r14 = new java.lang.NumberFormatException;	specialinvoke $r14.<java.lang.NumberFormatException: void <init>(java.lang.String)>("empty string");	throw $r14
;block_num 2