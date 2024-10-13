(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3490 0)
(declare-sort var2614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3490 var3490)
(declare-const null-String String)
(declare-const var3405 var3490) ; Statement: r1 := @this: org.apache.ibatis.session.Configuration 
(assert (not (= var3405 null-var3490)))
(declare-const var1218 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1218 null-String)))
(assert true)
(define-const var3011 Int (lastIndexOf/-1292097097 var1218 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 <= 0 goto $r2 = null 
(assert (not (<= var3011 0))) ; Negate: Cond: i0 <= 0  
(assert (not (and true (and (>= 0 0) (>= (str.len var1218) var3011) (>= var3011 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3490=org.apache.ibatis.session.Configuration, var3405=r1, var1218=r0, var2614=null_type, var3011=i0, var2549=$r2}
; {org.apache.ibatis.session.Configuration=var3490, r1=var3405, r0=var1218, null_type=var2614, i0=var3011, $r2=var2549}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r1 := @this: org.apache.ibatis.session.Configuration;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 <= 0 goto $r2 = null;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	goto [?= return $r2];	return $r2
;block_num 3