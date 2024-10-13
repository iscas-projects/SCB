(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3635 0)
(declare-sort var107 0)
(declare-sort var93 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun put/-1781726411 (var3635 (Array Int Int) var93) var93)
(declare-const null-var3635 var3635)
(declare-const null-String String)
(declare-const null-var93 var93)
(declare-const var2181 var3635) ; Statement: r0 := @this: org.apache.lucene.analysis.CharArrayMap 
(assert (not (= var2181 null-var3635)))
(declare-const var1002 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1002 null-String)))
(declare-const var3189 var93) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3189 null-var93)))
(assert true)
(define-const var73 (Array Int Int) (toCharArray/415275702 var1002)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(assert true)
(define-const var505 var93 (put/-1781726411 var2181 var73 var3189)) ; Statement: $r4 = virtualinvoke r0.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object put(char[],java.lang.Object)>($r3, r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), put/-1781726411=([org.apache.lucene.analysis.CharArrayMap, char[], java.lang.Object], java.lang.Object)}
; {var3635=org.apache.lucene.analysis.CharArrayMap, var2181=r0, var1002=r1, var107=null_type, var93=java.lang.Object, var3189=r2, var73=$r3, var505=$r4}
; {org.apache.lucene.analysis.CharArrayMap=var3635, r0=var2181, r1=var1002, null_type=var107, java.lang.Object=var93, r2=var3189, $r3=var73, $r4=var505}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.CharArrayMap;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object;	$r3 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	$r4 = virtualinvoke r0.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object put(char[],java.lang.Object)>($r3, r2);	return $r4
;block_num 1