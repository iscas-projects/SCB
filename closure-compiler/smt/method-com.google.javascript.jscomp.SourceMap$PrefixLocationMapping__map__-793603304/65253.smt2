(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1192 0)
(declare-sort var2959 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefix/-1104953881 (var1192) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1192 var1192)
(declare-const null-String String)
(declare-const var451 var1192) ; Statement: r1 := @this: com.google.javascript.jscomp.SourceMap$PrefixLocationMapping 
(assert (not (= var451 null-var1192)))
(declare-const var276 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var276 null-String)))
(define-const var592 String (prefix/-1104953881 var451)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.SourceMap$PrefixLocationMapping: java.lang.String prefix> 
(assert true)
(define-const var1048 Bool (startsWith/-1785782452 var276 var592)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1048 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {prefix/-1104953881=([com.google.javascript.jscomp.SourceMap$PrefixLocationMapping], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1192=com.google.javascript.jscomp.SourceMap$PrefixLocationMapping, var451=r1, var276=r0, var2959=null_type, var592=$r2, var1048=$z0}
; {com.google.javascript.jscomp.SourceMap$PrefixLocationMapping=var1192, r1=var451, r0=var276, null_type=var2959, $r2=var592, $z0=var1048}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.SourceMap$PrefixLocationMapping;	r0 := @parameter0: java.lang.String;	$r2 = r1.<com.google.javascript.jscomp.SourceMap$PrefixLocationMapping: java.lang.String prefix>;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r2);	if $z0 == 0 goto return null;	return null
;block_num 2