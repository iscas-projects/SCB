(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var452 0)
(declare-sort var2190 0)
(declare-sort var1363 0)
(declare-sort var3445 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2190_checkNotNull/1446102589 (var1363) var1363)
(declare-fun cast-from-String-to-var1363 (String) var1363)
(declare-fun var3445-init () var3445)
(declare-fun <init>/-1681595970 (var3445 String) void)
(declare-fun getName/1128186653 (var3445) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var855 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var855 null-String)))
;(assert (var2190_checkNotNull/1446102589 (cast-from-String-to-var1363 var855))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var855!1 String)
(define-const var2736 var3445 var3445-init) ; Statement: $r4 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var2736 var855!1)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>(r0) 

(declare-const var2736!1 var3445)
(declare-const var855!2 String)
(assert true)
(define-const var2013 String (getName/1128186653 var2736!1)) ; Statement: r2 = virtualinvoke $r4.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var626 Int (lastIndexOf/-1292097097 var2013 46)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2152 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var626 var2152))) ; Cond: i0 != $i2 
(assert (and true (and (>= 0 0) (>= (str.len var2013) var626) (>= var626 0))))
(define-const var2508 String (substring/-1240304868 var2013 0 var626)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2190_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1363=([java.lang.String], java.lang.Object), var3445-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var855=r0, var452=null_type, var2190=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var1363=java.lang.Object, var3445=java.io.File, var2736=$r4, var2013=r2, var626=i0, var2152=$i2, var2508=$r3}
; {r0=var855, null_type=var452, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2190, java.lang.Object=var1363, java.io.File=var3445, $r4=var2736, r2=var2013, i0=var626, $i2=var2152, $r3=var2508}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r4 = new java.io.File;	specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>(r0);	r2 = virtualinvoke $r4.<java.io.File: java.lang.String getName()>();	i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r3
;block_num 3