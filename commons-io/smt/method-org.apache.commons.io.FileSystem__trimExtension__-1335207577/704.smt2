(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2799 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2799_indexOf/-65807857 (String Int Int) Int)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-const null-var2799 var2799)
(declare-const null-String String)
(declare-const var1367 var2799) ; Statement: r1 := @this: org.apache.commons.io.FileSystem 
(assert (not (= var1367 null-var2799)))
(declare-const var2970 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2970 null-String)))
(define-const var1338 Int (var2799_indexOf/-65807857 var2970 46 0)) ; Statement: i0 = staticinvoke <org.apache.commons.io.FileSystem: int indexOf(java.lang.CharSequence,int,int)>(r0, 46, 0) 
 ; Statement: if i0 >= 0 goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i0) 
(assert (>= var1338 0)) ; Cond: i0 >= 0 
(define-const var2637 String (String_subSequence/-1087362312 var2970 0 var1338)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i0) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2799_indexOf/-65807857=([java.lang.CharSequence, int, int], int), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence)}
; {var2799=org.apache.commons.io.FileSystem, var1367=r1, var2970=r0, var1338=i0, var2637=$r2}
; {org.apache.commons.io.FileSystem=var2799, r1=var1367, r0=var2970, i0=var1338, $r2=var2637}
;seq <java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1}
;stmts r1 := @this: org.apache.commons.io.FileSystem;	r0 := @parameter0: java.lang.CharSequence;	i0 = staticinvoke <org.apache.commons.io.FileSystem: int indexOf(java.lang.CharSequence,int,int)>(r0, 46, 0);	if i0 >= 0 goto $r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i0);	$r2 = interfaceinvoke r0.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(0, i0);	return $r2
;block_num 3