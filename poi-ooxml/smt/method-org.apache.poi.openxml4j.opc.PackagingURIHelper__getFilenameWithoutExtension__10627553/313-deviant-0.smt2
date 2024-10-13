(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1763 0)
(declare-sort var3754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3754_getFilename/1762082616 (var1763) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1763 var1763)
(declare-const var647 var1763) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var647 null-var1763)))
(define-const var859 String (var3754_getFilename/1762082616 var647)) ; Statement: r1 = staticinvoke <org.apache.poi.openxml4j.opc.PackagingURIHelper: java.lang.String getFilename(java.net.URI)>(r0) 
(assert true)
(define-const var3358 Int (lastIndexOf/-1292097097 var859 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3487 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (= var3358 var3487))) ; Cond: i0 != $i2 
(assert (not (and true (and (>= 0 0) (>= (str.len var859) var3358) (>= var3358 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3754_getFilename/1762082616=([java.net.URI], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1763=java.net.URI, var647=r0, var3754=org.apache.poi.openxml4j.opc.PackagingURIHelper, var859=r1, var3358=i0, var3487=$i2, var796=$r2}
; {java.net.URI=var1763, r0=var647, org.apache.poi.openxml4j.opc.PackagingURIHelper=var3754, r1=var859, i0=var3358, $i2=var3487, $r2=var796}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.net.URI;	r1 = staticinvoke <org.apache.poi.openxml4j.opc.PackagingURIHelper: java.lang.String getFilename(java.net.URI)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return $r2
;block_num 2