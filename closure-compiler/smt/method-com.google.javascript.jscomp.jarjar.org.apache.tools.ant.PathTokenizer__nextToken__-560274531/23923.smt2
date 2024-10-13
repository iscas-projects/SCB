(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var956 0)
(declare-sort var1930 0)
(declare-sort var251 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lookahead/-1282206061 (var956) String)
(declare-fun tokenizer/-1282206061 (var956) var251)
(declare-fun nextToken/-418815358 (var251) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun onNetWare/-1282206061 (var956) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var956 var956)
(declare-const null-String String)
(declare-const var1764 var956) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer 
(assert (not (= var1764 null-var956)))
(define-const var3367 String (lookahead/-1282206061 var1764)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.lang.String lookahead> 
 ; Statement: if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.util.StringTokenizer tokenizer> 
(assert (= var3367 null-String)) ; Cond: $r1 == null 
(define-const var1934 var251 (tokenizer/-1282206061 var1764)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.util.StringTokenizer tokenizer> 
(assert true)
(define-const var365 String (nextToken/-418815358 var1934)) ; Statement: $r3 = virtualinvoke $r2.<java.util.StringTokenizer: java.lang.String nextToken()>() 
(assert true)
(define-const var2433 String (trim/-847153721 var365)) ; Statement: r30 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>() 
(assert true) ; Non Conditional
(define-const var2813 Bool (onNetWare/-1282206061 var1764)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: boolean onNetWare> 
 ; Statement: if $z0 != 0 goto $r4 = <java.io.File: java.lang.String pathSeparator> 
(assert (not (not (= (ite var2813 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(assert true)
(define-const var1079 Int (length/-134980193 var2433)) ; Statement: $i0 = virtualinvoke r30.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 1 goto return r30 
(assert (not (= var1079 1))) ; Cond: $i0 != 1 
 ; Statement: return r30 
(check-sat)
(get-model)
(get-unsat-core)
; {lookahead/-1282206061=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer], java.lang.String), tokenizer/-1282206061=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer], java.util.StringTokenizer), nextToken/-418815358=([java.util.StringTokenizer], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), onNetWare/-1282206061=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer], boolean), length/-134980193=([java.lang.String], int)}
; {var956=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer, var1764=r0, var3367=$r1, var1930=null_type, var251=java.util.StringTokenizer, var1934=$r2, var365=$r3, var2433=r30, var2813=$z0, var1079=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer=var956, r0=var1764, $r1=var3367, null_type=var1930, java.util.StringTokenizer=var251, $r2=var1934, $r3=var365, r30=var2433, $z0=var2813, $i0=var1079}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.lang.String lookahead>;	if $r1 == null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.util.StringTokenizer tokenizer>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: java.util.StringTokenizer tokenizer>;	$r3 = virtualinvoke $r2.<java.util.StringTokenizer: java.lang.String nextToken()>();	r30 = virtualinvoke $r3.<java.lang.String: java.lang.String trim()>();	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.PathTokenizer: boolean onNetWare>;	if $z0 != 0 goto $r4 = <java.io.File: java.lang.String pathSeparator>;	$i0 = virtualinvoke r30.<java.lang.String: int length()>();	if $i0 != 1 goto return r30;	return r30
;block_num 5