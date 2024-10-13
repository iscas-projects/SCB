(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1733 0)
(declare-sort var1817 0)
(declare-sort var1714 0)
(declare-sort var413 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1714_checkNotNull/1446102589 (var413) var413)
(declare-fun cast-from-String-to-var413 (String) var413)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun nextEscapeIndex/63281088 (var1733 String Int Int) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun escapeSlow/-427811833 (var1733 String Int) String)
(declare-const null-var1733 var1733)
(declare-const null-String String)
(declare-const var263 var1733) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper 
(assert (not (= var263 null-var1733)))
(declare-const var784 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var784 null-String)))
;(assert (var1714_checkNotNull/1446102589 (cast-from-String-to-var413 var784))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var784!1 String)
(assert true)
(define-const var628 Int (length/-134980193 var784!1)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true)
(define-const var2612 Int (nextEscapeIndex/63281088 var263 (cast-from-String-to-String var784!1) 0 var628)) ; Statement: i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: int nextEscapeIndex(java.lang.CharSequence,int,int)>(r0, 0, i0) 
 ; Statement: if i1 != i0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: java.lang.String escapeSlow(java.lang.String,int)>(r0, i1) 
(assert (not (= var2612 var628))) ; Cond: i1 != i0 
(assert true)
(define-const var3698 String (escapeSlow/-427811833 var263 var784!1 var2612)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: java.lang.String escapeSlow(java.lang.String,int)>(r0, i1) 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1714_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var413=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int), nextEscapeIndex/63281088=([com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper, java.lang.CharSequence, int, int], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), escapeSlow/-427811833=([com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper, java.lang.String, int], java.lang.String)}
; {var1733=com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper, var263=r1, var784=r0, var1817=null_type, var1714=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var413=java.lang.Object, var628=i0, var2612=i1, var3698=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper=var1733, r1=var263, r0=var784, null_type=var1817, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var1714, java.lang.Object=var413, i0=var628, i1=var2612, $r2=var3698}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper;	r0 := @parameter0: java.lang.String;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	i0 = virtualinvoke r0.<java.lang.String: int length()>();	i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: int nextEscapeIndex(java.lang.CharSequence,int,int)>(r0, 0, i0);	if i1 != i0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: java.lang.String escapeSlow(java.lang.String,int)>(r0, i1);	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.escape.UnicodeEscaper: java.lang.String escapeSlow(java.lang.String,int)>(r0, i1);	return $r2
;block_num 3