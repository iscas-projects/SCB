(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2371 0)
(declare-sort var2891 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_toString/-1426662429 (String) String)
(declare-fun put/-619492952 (var2371 String var2891) var2891)
(declare-const null-var2371 var2371)
(declare-const null-String String)
(declare-const null-var2891 var2891)
(declare-const var620 var2371) ; Statement: r0 := @this: org.apache.lucene.analysis.CharArrayMap 
(assert (not (= var620 null-var2371)))
(declare-const var289 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var289 null-String)))
(declare-const var3499 var2891) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var3499 null-var2891)))
(define-const var1640 String (String_toString/-1426662429 var289)) ; Statement: $r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>() 
(assert true)
(define-const var162 var2891 (put/-619492952 var620 var1640 var3499)) ; Statement: $r4 = virtualinvoke r0.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object put(java.lang.String,java.lang.Object)>($r3, r2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String_toString/-1426662429=([java.lang.CharSequence], java.lang.String), put/-619492952=([org.apache.lucene.analysis.CharArrayMap, java.lang.String, java.lang.Object], java.lang.Object)}
; {var2371=org.apache.lucene.analysis.CharArrayMap, var620=r0, var289=r1, var2891=java.lang.Object, var3499=r2, var1640=$r3, var162=$r4}
; {org.apache.lucene.analysis.CharArrayMap=var2371, r0=var620, r1=var289, java.lang.Object=var2891, r2=var3499, $r3=var1640, $r4=var162}
;seq <java.lang.CharSequence: java.lang.String toString()>
;cnt {"<java.lang.CharSequence: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.lucene.analysis.CharArrayMap;	r1 := @parameter0: java.lang.CharSequence;	r2 := @parameter1: java.lang.Object;	$r3 = interfaceinvoke r1.<java.lang.CharSequence: java.lang.String toString()>();	$r4 = virtualinvoke r0.<org.apache.lucene.analysis.CharArrayMap: java.lang.Object put(java.lang.String,java.lang.Object)>($r3, r2);	return $r4
;block_num 1