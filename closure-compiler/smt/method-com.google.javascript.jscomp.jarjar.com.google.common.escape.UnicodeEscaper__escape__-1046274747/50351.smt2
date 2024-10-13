(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1581 0)
(declare-sort var3776 0)
(declare-sort var1622 0)
(declare-sort var134 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1622_checkNotNull/1446102589 (var134) var134)
(declare-fun cast-from-String-to-var134 (String) var134)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun nextEscapeIndex/63281088 (var1581 String Int Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var1581 var1581)
(declare-const null-String String)
(declare-const var726 var1581) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper 
(assert (not (= var726 null-var1581)))
(declare-const var1218 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1218 null-String)))
;(assert (var1622_checkNotNull/1446102589 (cast-from-String-to-var134 var1218))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var1218!1 String)
(assert true)
(define-const var3869 Int (length/-134980193 var1218!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var1746 Int (nextEscapeIndex/63281088 var726 (cast-from-String-to-String var1218!1) 0 var3869)) ; Statement: i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: int nextEscapeIndex(java.lang.CharSequence,int,int)>(r0, 0, i0) 
 ; Statement: if i1 != i0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: java.lang.String escapeSlow(java.lang.String,int)>(r0, i1) 
(assert (not (not (= var1746 var3869)))) ; Negate: Cond: i1 != i0  
(define-const var3317 String var1218!1) ; Statement: $r2 = r0 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1622_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var134=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), nextEscapeIndex/63281088=([com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper, java.lang.CharSequence, int, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var1581=com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper, var726=r1, var1218=r0, var3776=null_type, var1622=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var134=java.lang.Object, var3869=i0, var1746=i1, var3317=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper=var1581, r1=var726, r0=var1218, null_type=var3776, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1622, java.lang.Object=var134, i0=var3869, i1=var1746, $r2=var3317}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper;	r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: int nextEscapeIndex(java.lang.CharSequence,int,int)>(r0, 0, i0);	if i1 != i0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: java.lang.String escapeSlow(java.lang.String,int)>(r0, i1);	$r2 = r0;	goto [?= return $r2];	return $r2
;block_num 3