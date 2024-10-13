(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1251 0)
(declare-sort var1509 0)
(declare-sort var3722 0)
(declare-sort var3408 0)
(declare-sort var1985 0)
(declare-sort var2479 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1509-init () var1509)
(declare-fun <init>/-325640736 (var1509) void)
(declare-fun mergeThreads/-320686676 (var1251) var3722)
(declare-fun var3722_size/-959786421 (var3722) Int)
(declare-fun var3408_timSort/1142032817 (var3722) void)
(declare-fun cast-from-var1509-to-var3722 (var1509) var3722)
(declare-fun var1985_nanoTime/-1409780067 () Int)
(declare-fun verbose/1600269962 (var2479) Bool)
(declare-fun cast-from-var1251-to-var2479 (var1251) var2479)
(declare-const null-var1251 var1251)
(declare-const null-String String)
(declare-const var2082 var1251) ; Statement: r1 := @this: org.apache.lucene.index.ConcurrentMergeScheduler 
(assert (not (= var2082 null-var1251)))
(define-const var2263 var1509 var1509-init) ; Statement: $r45 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var2263)) ; Statement: specialinvoke $r45.<java.util.ArrayList: void <init>()>() 

(declare-const var2263!1 var1509)
(define-const var3184 Int 0) ; Statement: i19 = 0 
(assert true) ; Non Conditional
(define-const var1303 var3722 (mergeThreads/-320686676 var2082)) ; Statement: $r40 = r1.<org.apache.lucene.index.ConcurrentMergeScheduler: java.util.List mergeThreads> 
(define-const var3572 Int (var3722_size/-959786421 var1303)) ; Statement: $i20 = interfaceinvoke $r40.<java.util.List: int size()>() 
 ; Statement: if i19 >= $i20 goto staticinvoke <org.apache.lucene.util.CollectionUtil: void timSort(java.util.List)>($r45) 
(assert (>= var3184 var3572)) ; Cond: i19 >= $i20 
;(assert (var3408_timSort/1142032817 (cast-from-var1509-to-var3722 var2263!1))) ; Statement: staticinvoke <org.apache.lucene.util.CollectionUtil: void timSort(java.util.List)>($r45) 

(declare-const var2263!2 var1509)
(define-const var446 Int (var3722_size/-959786421 (cast-from-var1509-to-var3722 var2263!2))) ; Statement: i21 = interfaceinvoke $r45.<java.util.List: int size()>() 
(define-const var2760 Int 0) ; Statement: i22 = 0 
(define-const var3581 Int (- var446 1)) ; Statement: i23 = i21 - 1 
(assert true) ; Non Conditional
 ; Statement: if i23 < 0 goto $l18 = staticinvoke <java.lang.System: long nanoTime()>() 
(assert (< var3581 0)) ; Cond: i23 < 0 
(define-const var1144 Int var1985_nanoTime/-1409780067) ; Statement: $l18 = staticinvoke <java.lang.System: long nanoTime()>() 
(assert true)
(define-const var1053 Bool (verbose/1600269962 (cast-from-var1251-to-var2479 var2082))) ; Statement: $z0 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>() 
 ; Statement: if $z0 == 0 goto r43 = null 
(assert (= (ite var1053 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3025 String null-String) ; Statement: r43 = null 
(assert true) ; Non Conditional
(define-const var3868 Int 0) ; Statement: i24 = 0 
(assert true) ; Non Conditional
 ; Statement: if i24 >= i21 goto $z1 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>() 
(assert (>= var3868 var446)) ; Cond: i24 >= i21 
(assert true)
(define-const var298 Bool (verbose/1600269962 (cast-from-var1251-to-var2479 var2082))) ; Statement: $z1 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>() 
 ; Statement: if $z1 == 0 goto return 
(assert (= (ite var298 1 0) 0)) ; Cond: $z1 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1509-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), mergeThreads/-320686676=([org.apache.lucene.index.ConcurrentMergeScheduler], java.util.List), var3722_size/-959786421=([java.util.List], int), var3408_timSort/1142032817=([java.util.List], void), cast-from-var1509-to-var3722=([java.util.ArrayList], java.util.List), var1985_nanoTime/-1409780067=([], long), verbose/1600269962=([org.apache.lucene.index.MergeScheduler], boolean), cast-from-var1251-to-var2479=([org.apache.lucene.index.ConcurrentMergeScheduler], org.apache.lucene.index.MergeScheduler)}
; {var1251=org.apache.lucene.index.ConcurrentMergeScheduler, var2082=r1, var1509=java.util.ArrayList, var2263=$r45, var3184=i19, var3722=java.util.List, var1303=$r40, var3572=$i20, var3408=org.apache.lucene.util.CollectionUtil, var446=i21, var2760=i22, var3581=i23, var1985=java.lang.System, var1144=$l18, var2479=org.apache.lucene.index.MergeScheduler, var1053=$z0, var3025=r43, var3868=i24, var298=$z1}
; {org.apache.lucene.index.ConcurrentMergeScheduler=var1251, r1=var2082, java.util.ArrayList=var1509, $r45=var2263, i19=var3184, java.util.List=var3722, $r40=var1303, $i20=var3572, org.apache.lucene.util.CollectionUtil=var3408, i21=var446, i22=var2760, i23=var3581, java.lang.System=var1985, $l18=var1144, org.apache.lucene.index.MergeScheduler=var2479, $z0=var1053, r43=var3025, i24=var3868, $z1=var298}
;seq 
;cnt {}
;stmts r1 := @this: org.apache.lucene.index.ConcurrentMergeScheduler;	$r45 = new java.util.ArrayList;	specialinvoke $r45.<java.util.ArrayList: void <init>()>();	i19 = 0;	$r40 = r1.<org.apache.lucene.index.ConcurrentMergeScheduler: java.util.List mergeThreads>;	$i20 = interfaceinvoke $r40.<java.util.List: int size()>();	if i19 >= $i20 goto staticinvoke <org.apache.lucene.util.CollectionUtil: void timSort(java.util.List)>($r45);	staticinvoke <org.apache.lucene.util.CollectionUtil: void timSort(java.util.List)>($r45);	i21 = interfaceinvoke $r45.<java.util.List: int size()>();	i22 = 0;	i23 = i21 - 1;	if i23 < 0 goto $l18 = staticinvoke <java.lang.System: long nanoTime()>();	$l18 = staticinvoke <java.lang.System: long nanoTime()>();	$z0 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>();	if $z0 == 0 goto r43 = null;	r43 = null;	i24 = 0;	if i24 >= i21 goto $z1 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>();	$z1 = virtualinvoke r1.<org.apache.lucene.index.ConcurrentMergeScheduler: boolean verbose()>();	if $z1 == 0 goto return;	return
;block_num 10