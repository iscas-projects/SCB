(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2225 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun copyChars/-1502743917 (var2225 String Int Int) void)
(declare-const null-var2225 var2225)
(declare-const null-String String)
(declare-const var20 var2225) ; Statement: r0 := @this: org.apache.lucene.util.BytesRefBuilder 
(assert (not (= var20 null-var2225)))
(declare-const var261 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var261 null-String)))
(define-const var1710 Int (String_length/-667254855 var261)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert true)
;(assert (copyChars/-1502743917 var20 var261 0 var1710)) ; Statement: virtualinvoke r0.<org.apache.lucene.util.BytesRefBuilder: void copyChars(java.lang.CharSequence,int,int)>(r1, 0, $i0) 

(declare-const var20!1 var2225)
(declare-const var261!1 String)
(declare-const var1542 Int)
(declare-const var1710!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), copyChars/-1502743917=([org.apache.lucene.util.BytesRefBuilder, java.lang.CharSequence, int, int], void)}
; {var2225=org.apache.lucene.util.BytesRefBuilder, var20=r0, var261=r1, var1710=$i0, var1542=0}
; {org.apache.lucene.util.BytesRefBuilder=var2225, r0=var20, r1=var261, $i0=var1710, 0=var1542}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r0 := @this: org.apache.lucene.util.BytesRefBuilder;	r1 := @parameter0: java.lang.CharSequence;	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	virtualinvoke r0.<org.apache.lucene.util.BytesRefBuilder: void copyChars(java.lang.CharSequence,int,int)>(r1, 0, $i0);	return
;block_num 1