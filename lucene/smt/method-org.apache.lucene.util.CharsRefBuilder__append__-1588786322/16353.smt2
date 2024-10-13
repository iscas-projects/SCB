(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3178 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun append/1526296564 (var3178 String Int Int) var3178)
(declare-const null-var3178 var3178)
(declare-const null-String String)
(declare-const var1902 var3178) ; Statement: r1 := @this: org.apache.lucene.util.CharsRefBuilder 
(assert (not (= var1902 null-var3178)))
(declare-const var2866 String) ; Statement: r0 := @parameter0: java.lang.CharSequence 
(assert (not (= var2866 null-String)))
 ; Statement: if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert (not (= var2866 null-String))) ; Cond: r0 != null 
(define-const var1633 Int (String_length/-667254855 var2866)) ; Statement: $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>() 
(assert true)
(define-const var1051 var3178 (append/1526296564 var1902 var2866 0 var1633)) ; Statement: $r2 = virtualinvoke r1.<org.apache.lucene.util.CharsRefBuilder: org.apache.lucene.util.CharsRefBuilder append(java.lang.CharSequence,int,int)>(r0, 0, $i0) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String_length/-667254855=([java.lang.CharSequence], int), append/1526296564=([org.apache.lucene.util.CharsRefBuilder, java.lang.CharSequence, int, int], org.apache.lucene.util.CharsRefBuilder)}
; {var3178=org.apache.lucene.util.CharsRefBuilder, var1902=r1, var2866=r0, var1633=$i0, var1051=$r2}
; {org.apache.lucene.util.CharsRefBuilder=var3178, r1=var1902, r0=var2866, $i0=var1633, $r2=var1051}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @this: org.apache.lucene.util.CharsRefBuilder;	r0 := @parameter0: java.lang.CharSequence;	if r0 != null goto $i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$i0 = interfaceinvoke r0.<java.lang.CharSequence: int length()>();	$r2 = virtualinvoke r1.<org.apache.lucene.util.CharsRefBuilder: org.apache.lucene.util.CharsRefBuilder append(java.lang.CharSequence,int,int)>(r0, 0, $i0);	return $r2
;block_num 2