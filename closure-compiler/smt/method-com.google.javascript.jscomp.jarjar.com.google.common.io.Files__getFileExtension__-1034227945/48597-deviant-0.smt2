(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1504 0)
(declare-sort var1931 0)
(declare-sort var3608 0)
(declare-sort var2704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1931_checkNotNull/1446102589 (var3608) var3608)
(declare-fun cast-from-String-to-var3608 (String) var3608)
(declare-fun var2704-init () var2704)
(declare-fun <init>/-1681595970 (var2704 String) void)
(declare-fun getName/1128186653 (var2704) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-String String)
(declare-const var136 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var136 null-String)))
;(assert (var1931_checkNotNull/1446102589 (cast-from-String-to-var3608 var136))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var136!1 String)
(define-const var1899 var2704 var2704-init) ; Statement: $r4 = new java.io.File 
(assert true)
;(assert (<init>/-1681595970 var1899 var136!1)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>(r0) 

(declare-const var1899!1 var2704)
(declare-const var136!2 String)
(assert true)
(define-const var620 String (getName/1128186653 var1899!1)) ; Statement: r2 = virtualinvoke $r4.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2249 Int (lastIndexOf/-1292097097 var620 46)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var2165 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto $i1 = i0 + 1 
(assert (not (= var2249 var2165))) ; Cond: i0 != $i3 
(define-const var2674 Int (+ var2249 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= var2674 0) (>= (str.len var620) var2674)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var1931_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var3608=([java.lang.String], java.lang.Object), var2704-init=([], java.io.File), <init>/-1681595970=([java.io.File, java.lang.String], void), getName/1128186653=([java.io.File], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var136=r0, var1504=null_type, var1931=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3608=java.lang.Object, var2704=java.io.File, var1899=$r4, var620=r2, var2249=i0, var2165=$i3, var2674=$i1, var1497=$r3}
; {r0=var136, null_type=var1504, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1931, java.lang.Object=var3608, java.io.File=var2704, $r4=var1899, r2=var620, i0=var2249, $i3=var2165, $i1=var2674, $r3=var1497}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r4 = new java.io.File;	specialinvoke $r4.<java.io.File: void <init>(java.lang.String)>(r0);	r2 = virtualinvoke $r4.<java.io.File: java.lang.String getName()>();	i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$i3 = (int) -1;	if i0 != $i3 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int)>($i1);	return $r3
;block_num 3