(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var547 0)
(declare-sort var2386 0)
(declare-sort var2463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun require/77558198 (var547 var2386 String) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-const null-var547 var547)
(declare-const null-var2386 var2386)
(declare-const null-String String)
(declare-const var3623 var547) ; Statement: r0 := @this: org.apache.lucene.analysis.AbstractAnalysisFactory 
(assert (not (= var3623 null-var547)))
(declare-const var2010 var2386) ; Statement: r1 := @parameter0: java.util.Map 
(assert (not (= var2010 null-var2386)))
(declare-const var3607 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3607 null-String)))
(assert true)
(define-const var3231 String (require/77558198 var3623 var2010 var3607)) ; Statement: $r3 = virtualinvoke r0.<org.apache.lucene.analysis.AbstractAnalysisFactory: java.lang.String require(java.util.Map,java.lang.String)>(r1, r2) 
(assert (not (and true (and (> (str.len var3231) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {require/77558198=([org.apache.lucene.analysis.AbstractAnalysisFactory, java.util.Map, java.lang.String], java.lang.String), charAt/698050440=([java.lang.String, int], char)}
; {var547=org.apache.lucene.analysis.AbstractAnalysisFactory, var3623=r0, var2386=java.util.Map, var2010=r1, var3607=r2, var2463=null_type, var3231=$r3, var1298=$c0}
; {org.apache.lucene.analysis.AbstractAnalysisFactory=var547, r0=var3623, java.util.Map=var2386, r1=var2010, r2=var3607, null_type=var2463, $r3=var3231, $c0=var1298}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.AbstractAnalysisFactory;	r1 := @parameter0: java.util.Map;	r2 := @parameter1: java.lang.String;	$r3 = virtualinvoke r0.<org.apache.lucene.analysis.AbstractAnalysisFactory: java.lang.String require(java.util.Map,java.lang.String)>(r1, r2);	$c0 = virtualinvoke $r3.<java.lang.String: char charAt(int)>(0);	return $c0
;block_num 1