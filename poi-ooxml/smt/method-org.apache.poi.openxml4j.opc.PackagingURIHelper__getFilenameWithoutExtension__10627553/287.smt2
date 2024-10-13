(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3612 0)
(declare-sort var1488 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1488_getFilename/1762082616 (var3612) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3612 var3612)
(declare-const var2670 var3612) ; Statement: r0 := @parameter0: java.net.URI 
(assert (not (= var2670 null-var3612)))
(define-const var3324 String (var1488_getFilename/1762082616 var2670)) ; Statement: r1 = staticinvoke <org.apache.poi.openxml4j.opc.PackagingURIHelper: java.lang.String getFilename(java.net.URI)>(r0) 
(assert true)
(define-const var2422 Int (lastIndexOf/-1292097097 var3324 46)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46) 
(define-const var3787 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var2422 var3787)))) ; Negate: Cond: i0 != $i2  
 ; Statement: return r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1488_getFilename/1762082616=([java.net.URI], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3612=java.net.URI, var2670=r0, var1488=org.apache.poi.openxml4j.opc.PackagingURIHelper, var3324=r1, var2422=i0, var3787=$i2}
; {java.net.URI=var3612, r0=var2670, org.apache.poi.openxml4j.opc.PackagingURIHelper=var1488, r1=var3324, i0=var2422, $i2=var3787}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @parameter0: java.net.URI;	r1 = staticinvoke <org.apache.poi.openxml4j.opc.PackagingURIHelper: java.lang.String getFilename(java.net.URI)>(r0);	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return r1
;block_num 2