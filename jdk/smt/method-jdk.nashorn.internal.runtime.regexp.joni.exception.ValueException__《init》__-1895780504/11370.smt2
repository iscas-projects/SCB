(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2902 0)
(declare-sort var171 0)
(declare-sort var3503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun <init>/1394195883 (var3503 String) void)
(declare-fun cast-from-var2902-to-var3503 (var2902) var3503)
(declare-const null-var2902 var2902)
(declare-const null-String String)
(declare-const var1801 var2902) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.exception.ValueException 
(assert (not (= var1801 null-var2902)))
(declare-const var1863 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1863 null-String)))
(declare-const var1062 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1062 null-String)))
(assert true)
(define-const var510 String (replaceAll/1692887130 var1863 "%n" var1062)) ; Statement: $r3 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("%n", r2) 
(assert (= (replaceAll/1692887130 var1863 "%n" var1062) (str.replace_re_all var1863 (str.to_re "%n") var1062)))
(assert true)
;(assert (<init>/1394195883 (cast-from-var2902-to-var3503 var1801) var510)) ; Statement: specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.exception.SyntaxException: void <init>(java.lang.String)>($r3) 

(declare-const var1801!1 var2902)
(declare-const var510!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), <init>/1394195883=([jdk.nashorn.internal.runtime.regexp.joni.exception.SyntaxException, java.lang.String], void), cast-from-var2902-to-var3503=([jdk.nashorn.internal.runtime.regexp.joni.exception.ValueException], jdk.nashorn.internal.runtime.regexp.joni.exception.SyntaxException)}
; {var2902=jdk.nashorn.internal.runtime.regexp.joni.exception.ValueException, var1801=r0, var1863=r1, var171=null_type, var1062=r2, var510=$r3, var3503=jdk.nashorn.internal.runtime.regexp.joni.exception.SyntaxException}
; {jdk.nashorn.internal.runtime.regexp.joni.exception.ValueException=var2902, r0=var1801, r1=var1863, null_type=var171, r2=var1062, $r3=var510, jdk.nashorn.internal.runtime.regexp.joni.exception.SyntaxException=var3503}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.regexp.joni.exception.ValueException;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	$r3 = virtualinvoke r1.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("%n", r2);	specialinvoke r0.<jdk.nashorn.internal.runtime.regexp.joni.exception.SyntaxException: void <init>(java.lang.String)>($r3);	return
;block_num 1