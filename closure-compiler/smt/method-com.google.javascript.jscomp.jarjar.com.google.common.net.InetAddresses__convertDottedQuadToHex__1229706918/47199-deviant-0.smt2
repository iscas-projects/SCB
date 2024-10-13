(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2620 0)
(declare-sort var3963 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var3963_textToNumericFormatV4/888634563 (String) (Array Int Int))
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var88 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var88 null-String)))
(assert true)
(define-const var2154 Int (lastIndexOf/-1292097097 var88 58)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58) 
(define-const var73 Int (+ var2154 1)) ; Statement: $i1 = i0 + 1 
(assert (not (and true (and (>= 0 0) (>= (str.len var88) var73) (>= var73 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var3963_textToNumericFormatV4/888634563=([java.lang.String], byte[])}
; {var88=r0, var2620=null_type, var2154=i0, var73=$i1, var2316=r1, var1756=$i2, var2990=r2, var3963=com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses, var3934=r3}
; {r0=var88, null_type=var2620, i0=var2154, $i1=var73, r1=var2316, $i2=var1756, r2=var2990, com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses=var3963, r3=var3934}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(58);	$i1 = i0 + 1;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	$i2 = i0 + 1;	r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i2);	r3 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InetAddresses: byte[] textToNumericFormatV4(java.lang.String)>(r2);	if r3 != null goto $b3 = r3[0];	return null
;block_num 2