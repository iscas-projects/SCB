(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1411 0)
(declare-sort var3552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3552_getFileName/799746367 (String) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var1657 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1657 null-String)))
 ; Statement: if r1 != null goto r2 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getFileName(java.lang.String)>(r1) 
(assert (not (= var1657 null-String))) ; Cond: r1 != null 
(define-const var1130 String (var3552_getFileName/799746367 var1657)) ; Statement: r2 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getFileName(java.lang.String)>(r1) 
(assert true)
(define-const var3375 Int (lastIndexOf/-1292097097 var1130 46)) ; Statement: $i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46) 
(assert (and true (and (>= 0 0) (>= (str.len var1130) var3375) (>= var3375 0))))
(define-const var2283 String (substring/-1240304868 var1130 0 var3375)) ; Statement: $r0 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3552_getFileName/799746367=([java.lang.String], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1657=r1, var1411=null_type, var3552=org.stringtemplate.v4.misc.Misc, var1130=r2, var3375=$i0, var2283=$r0}
; {r1=var1657, null_type=var1411, org.stringtemplate.v4.misc.Misc=var3552, r2=var1130, $i0=var3375, $r0=var2283}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	if r1 != null goto r2 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getFileName(java.lang.String)>(r1);	r2 = staticinvoke <org.stringtemplate.v4.misc.Misc: java.lang.String getFileName(java.lang.String)>(r1);	$i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(46);	$r0 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	return $r0
;block_num 2