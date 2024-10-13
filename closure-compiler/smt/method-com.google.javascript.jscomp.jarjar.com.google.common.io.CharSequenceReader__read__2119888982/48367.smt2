(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2903 0)
(declare-sort var2142 0)
(declare-sort var449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkOpen/1503243063 (var2903) void)
(declare-fun seq/455216022 (var2903) String)
(declare-fun var2142_requireNonNull/-961817614 (var449) var449)
(declare-fun cast-from-String-to-var449 (String) var449)
(declare-fun hasRemaining/573199081 (var2903) Bool)
(declare-fun pos/455216022 (var2903) Int)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-const null-var2903 var2903)
(declare-const var3247 var2903) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader 
(assert (not (= var3247 null-var2903)))
(assert true)
;(assert (checkOpen/1503243063 var3247)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: void checkOpen()>() 

(declare-const var3247!1 var2903)
(define-const var1643 String (seq/455216022 var3247!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq> 
;(assert (var2142_requireNonNull/-961817614 (cast-from-String-to-var449 var1643))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1) 

(declare-const var1643!1 String)
(assert true)
(define-const var3620 Bool (hasRemaining/573199081 var3247!1)) ; Statement: $z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: boolean hasRemaining()>() 
 ; Statement: if $z0 == 0 goto $s2 = -1 
(assert (not (= (ite var3620 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3251 String (seq/455216022 var3247!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq> 
(define-const var3511 Int (pos/455216022 var3247!1)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: int pos> 
(define-const var1086 Int (+ var3511 1)) ; Statement: $i1 = $i0 + 1 
(declare-const var3247!2 var2903)
(assert (not (= var3247!2 null-var2903)))
(assert (= (pos/455216022 var3247!2) var1086)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: int pos> = $i1 
(define-const var2416 Int (String_charAt/1466887330 var3251 var3511)) ; Statement: $s2 = interfaceinvoke $r2.<java.lang.CharSequence: char charAt(int)>($i0) 
 ; Statement: goto [?= return $s2] 
(assert true) ; Non Conditional
 ; Statement: return $s2 
(check-sat)
(get-model)
(get-unsat-core)
; {checkOpen/1503243063=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], void), seq/455216022=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], java.lang.CharSequence), var2142_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var449=([java.lang.CharSequence], java.lang.Object), hasRemaining/573199081=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], boolean), pos/455216022=([com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader], int), String_charAt/1466887330=([java.lang.CharSequence, int], char)}
; {var2903=com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader, var3247=r0, var1643=$r1, var2142=java.util.Objects, var449=java.lang.Object, var3620=$z0, var3251=$r2, var3511=$i0, var1086=$i1, var2416=$s2}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader=var2903, r0=var3247, $r1=var1643, java.util.Objects=var2142, java.lang.Object=var449, $z0=var3620, $r2=var3251, $i0=var3511, $i1=var1086, $s2=var2416}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: void checkOpen()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq>;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>($r1);	$z0 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: boolean hasRemaining()>();	if $z0 == 0 goto $s2 = -1;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: java.lang.CharSequence seq>;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: int pos>;	$i1 = $i0 + 1;	r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.CharSequenceReader: int pos> = $i1;	$s2 = interfaceinvoke $r2.<java.lang.CharSequence: char charAt(int)>($i0);	goto [?= return $s2];	return $s2
;block_num 3