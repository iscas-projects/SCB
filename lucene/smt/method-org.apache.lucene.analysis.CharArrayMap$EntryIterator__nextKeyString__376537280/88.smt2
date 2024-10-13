(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun nextKey/1765364510 (var354) (Array Int Int))
(declare-fun <init>/-915723298 (String (Array Int Int)) void)
(declare-const null-var354 var354)
(declare-const var3323 var354) ; Statement: r1 := @this: org.apache.lucene.analysis.CharArrayMap$EntryIterator 
(assert (not (= var3323 null-var354)))
(define-const var796 String String-init) ; Statement: $r0 = new java.lang.String 
(assert true)
(define-const var1839 (Array Int Int) (nextKey/1765364510 var3323)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.analysis.CharArrayMap$EntryIterator: char[] nextKey()>() 
(assert true)
;(assert (<init>/-915723298 var796 var1839)) ; Statement: specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2) 

(declare-const var796!1 String)
(declare-const var1839!1 (Array Int Int))
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.String), nextKey/1765364510=([org.apache.lucene.analysis.CharArrayMap$EntryIterator], char[]), <init>/-915723298=([java.lang.String, char[]], void)}
; {var354=org.apache.lucene.analysis.CharArrayMap$EntryIterator, var3323=r1, var796=$r0, var1839=$r2}
; {org.apache.lucene.analysis.CharArrayMap$EntryIterator=var354, r1=var3323, $r0=var796, $r2=var1839}
;seq <java.lang.String: void <init>(char[])>
;cnt {"<java.lang.String: void <init>(char[])>": 1}
;stmts r1 := @this: org.apache.lucene.analysis.CharArrayMap$EntryIterator;	$r0 = new java.lang.String;	$r2 = virtualinvoke r1.<org.apache.lucene.analysis.CharArrayMap$EntryIterator: char[] nextKey()>();	specialinvoke $r0.<java.lang.String: void <init>(char[])>($r2);	return $r0
;block_num 1