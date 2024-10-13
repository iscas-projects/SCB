(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1447 0)
(declare-sort var250 0)
(declare-sort var3780 0)
(declare-sort var2316 0)
(declare-sort var45 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toLowerCase/1946809429 (String var1447) String)
(declare-fun add/397686517 (var250 var45) Bool)
(declare-fun cast-from-String-to-var45 (String) var45)
(declare-const null-var1447 var1447)
(declare-const null-var250 var250)
(declare-const null-var3780 var3780)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3169 var1447) ; Statement: r1 := @parameter0: java.util.Locale 
(assert (not (= var3169 null-var1447)))
(declare-const var2685 var250) ; Statement: r3 := @parameter1: java.util.TreeSet 
(assert (not (= var2685 null-var250)))
(declare-const var1228 var3780) ; Statement: r4 := @parameter2: java.util.Map 
(assert (not (= var1228 null-var3780)))
(declare-const var3551 String) ; Statement: r0 := @parameter3: java.lang.String 
(assert (not (= var3551 null-String)))
(declare-const var1257 Int) ; Statement: r5 := @parameter4: java.lang.Integer 
(assert (not (= var1257 null-Int)))
(assert true)
(define-const var15 String (toLowerCase/1946809429 var3551 var3169)) ; Statement: r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>(r1) 
(assert true)
(define-const var2524 Bool (add/397686517 var2685 (cast-from-String-to-var45 var15))) ; Statement: $z0 = virtualinvoke r3.<java.util.TreeSet: boolean add(java.lang.Object)>(r2) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2524 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String), add/397686517=([java.util.TreeSet, java.lang.Object], boolean), cast-from-String-to-var45=([java.lang.String], java.lang.Object)}
; {var1447=java.util.Locale, var3169=r1, var250=java.util.TreeSet, var2685=r3, var3780=java.util.Map, var1228=r4, var3551=r0, var2316=null_type, var1257=r5, var15=r2, var45=java.lang.Object, var2524=$z0}
; {java.util.Locale=var1447, r1=var3169, java.util.TreeSet=var250, r3=var2685, java.util.Map=var3780, r4=var1228, r0=var3551, null_type=var2316, r5=var1257, r2=var15, java.lang.Object=var45, $z0=var2524}
;seq <java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r1 := @parameter0: java.util.Locale;	r3 := @parameter1: java.util.TreeSet;	r4 := @parameter2: java.util.Map;	r0 := @parameter3: java.lang.String;	r5 := @parameter4: java.lang.Integer;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>(r1);	$z0 = virtualinvoke r3.<java.util.TreeSet: boolean add(java.lang.Object)>(r2);	if $z0 == 0 goto return;	return
;block_num 2